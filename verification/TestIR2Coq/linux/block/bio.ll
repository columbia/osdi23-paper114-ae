; ModuleID = 'block/bio.c'
source_filename = "block/bio.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_bio__452_1753_init_bio4:\09\09\09"
module asm ".long\09init_bio - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.77, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.45, %struct.list_head, %struct.list_head, %union.anon.46 }
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
%union.anon.45 = type { %struct.list_head }
%union.anon.46 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.47 }
%union.anon.47 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.2, %union.anon.68, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.68 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.48, %union.anon.49 }
%union.anon.48 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.49 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.41, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.39, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.24, %union.anon.25, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.71, %union.anon.72, %union.anon.73, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.76, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.70, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.70 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.lockdep_map = type {}
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { %struct.rb_node }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.76 = type { %struct.__call_single_data }
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
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.69, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.69 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.44, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.44 = type { %struct.kernfs_elem_dir }
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
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type { %struct.bio_list, i32 }
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.26 }
%struct.anon.26 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.30 }
%struct.anon.30 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.38, i32, [12 x i8] }
%union.anon.38 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.39 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.40, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.40 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.41 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.42, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.43, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.42 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.43 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.53 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.51, %struct.qspinlock }
%union.anon.51 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.53 = type { %struct.nfs_lock_info }
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
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.81 = type { %struct.pipe_inode_info* }
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
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.77 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.biovec_slab = type { i32, i8*, %struct.kmem_cache* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.bvec_iter_all = type { %struct.bio_vec, i32, i32 }
%struct.bio_slab = type { %struct.kmem_cache*, i32, i32, [8 x i8] }
%struct.anon.62 = type { i64, i8, i8, %struct.atomic_t, i32 }

@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@bio_dirty_lock = internal global %struct.spinlock zeroinitializer, align 4
@bio_dirty_list = internal unnamed_addr global %struct.bio* null, align 8
@bio_dirty_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @bio_dirty_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @bio_dirty_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @bio_dirty_fn }, align 8
@bvec_slabs = internal global [4 x %struct.biovec_slab] [%struct.biovec_slab { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct.kmem_cache* null }, %struct.biovec_slab { i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct.kmem_cache* null }, %struct.biovec_slab { i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.kmem_cache* null }, %struct.biovec_slab { i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct.kmem_cache* null }], section ".data..read_mostly", align 8
@.str = private unnamed_addr constant [7 x i8] c"bioset\00", align 1
@__UNIQUE_ID___addressable_init_bio453 = internal global i8* bitcast (i32 ()* @init_bio to i8*), section ".discard.addressable", align 8
@fs_bio_set = dso_local global %struct.bio_set zeroinitializer, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"biovec-16\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"biovec-64\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"biovec-128\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"biovec-max\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@bio_slab_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @bio_slab_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @bio_slab_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@bio_slabs = internal global %struct.xarray zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"\013bio: unable to find slab!\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bio-%d\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"block/bio:dead\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"bio: can't allocate bios\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_bio453 to i8*)], section "llvm.metadata"
@switch.table.biovec_slab = private unnamed_addr constant [124 x %struct.biovec_slab*] [%struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 0), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 1), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2), %struct.biovec_slab* getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 2)], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bvec_free(%struct.mempool_s* noundef %pool, %struct.bio_vec* noundef %bv, i16 noundef %nr_vecs) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i16 %nr_vecs, 256
  br i1 %cmp, label %do.body4, label %do.end7, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 159; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !9
  unreachable

do.end7:                                          ; preds = %entry
  %cmp9 = icmp eq i16 %nr_vecs, 256
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end7
  %0 = bitcast %struct.bio_vec* %bv to i8*
  call void @mempool_free(i8* noundef %0, %struct.mempool_s* noundef %pool) #20
  br label %if.end17

if.else:                                          ; preds = %do.end7
  %cmp13 = icmp ugt i16 %nr_vecs, 4
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  %call = call fastcc %struct.biovec_slab* @biovec_slab(i16 noundef %nr_vecs) #21
  %slab = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %call, i64 0, i32 2
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %slab, align 8
  %2 = bitcast %struct.bio_vec* %bv to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %1, i8* noundef %2) #20
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(i8* noundef, %struct.mempool_s* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.biovec_slab* @biovec_slab(i16 noundef %nr_vecs) unnamed_addr #0 {
entry:
  %switch.tableidx = add i16 %nr_vecs, -5
  %0 = icmp ult i16 %switch.tableidx, 124
  br i1 %0, label %switch.lookup, label %sw.caserange

sw.caserange:                                     ; preds = %entry
  %conv = zext i16 %nr_vecs to i32
  %1 = add nsw i32 %conv, -129
  %inbounds = icmp ult i32 %1, 128
  br i1 %inbounds, label %return, label %do.body

do.body:                                          ; preds = %sw.caserange
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 57; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !10
  unreachable

switch.lookup:                                    ; preds = %entry
  %2 = sext i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [124 x %struct.biovec_slab*], [124 x %struct.biovec_slab*]* @switch.table.biovec_slab, i64 0, i64 %2
  %switch.load = load %struct.biovec_slab*, %struct.biovec_slab** %switch.gep, align 8
  br label %return

return:                                           ; preds = %switch.lookup, %sw.caserange
  %retval.0 = phi %struct.biovec_slab* [ getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 3), %sw.caserange ], [ %switch.load, %switch.lookup ]
  ret %struct.biovec_slab* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.bio_vec* @bvec_alloc(%struct.mempool_s* noundef %pool, i16* nocapture noundef %nr_vecs, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %0 = load i16, i16* %nr_vecs, align 2
  %call = call fastcc %struct.biovec_slab* @biovec_slab(i16 noundef %0) #21
  %tobool.not = icmp eq %struct.biovec_slab* %call, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 182; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !11
  br label %cleanup39

if.end18:                                         ; preds = %entry
  %nr_vecs19 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %call, i64 0, i32 0
  %1 = load i32, i32* %nr_vecs19, align 8
  %conv20 = trunc i32 %1 to i16
  store i16 %conv20, i16* %nr_vecs, align 2
  %conv21 = and i32 %1, 65280
  %cmp = icmp eq i32 %conv21, 0
  br i1 %cmp, label %if.then23, label %if.end37

if.then23:                                        ; preds = %if.end18
  %slab = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %call, i64 0, i32 2
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** %slab, align 8
  %call24 = call fastcc i32 @bvec_alloc_gfp(i32 noundef %gfp_mask) #21, !range !12
  %call25 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef %call24) #20
  %3 = bitcast i8* %call25 to %struct.bio_vec*
  %tobool26.not = icmp eq i8* %call25, null
  br i1 %tobool26.not, label %lor.lhs.false, label %cleanup39, !prof !8

lor.lhs.false:                                    ; preds = %if.then23
  %and = and i32 %gfp_mask, 1024
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %cleanup39, label %if.end36

if.end36:                                         ; preds = %lor.lhs.false
  store i16 256, i16* %nr_vecs, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end18
  %call38 = call noalias i8* @mempool_alloc(%struct.mempool_s* noundef %pool, i32 noundef %gfp_mask) #20
  %4 = bitcast i8* %call38 to %struct.bio_vec*
  br label %cleanup39

cleanup39:                                        ; preds = %if.then, %lor.lhs.false, %if.then23, %if.end37
  %retval.1 = phi %struct.bio_vec* [ %4, %if.end37 ], [ null, %if.then ], [ %3, %if.then23 ], [ %3, %lor.lhs.false ]
  ret %struct.bio_vec* %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @bvec_alloc_gfp(i32 noundef %gfp) unnamed_addr #3 {
entry:
  %and = and i32 %gfp, -599105
  %or2 = or i32 %and, 598016
  ret i32 %or2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @mempool_alloc(%struct.mempool_s* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @bio_uninit(%struct.bio* nocapture %bio) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @bio_init(%struct.bio* noundef %bio, %struct.bio_vec* noundef %table, i16 noundef %max_vecs) local_unnamed_addr #4 {
entry:
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 0
  store %struct.bio* null, %struct.bio** %bi_next, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  store %struct.block_device* null, %struct.block_device** %bi_bdev, align 8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 0, i32* %bi_opf, align 8
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  store i16 0, i16* %bi_flags, align 4
  %bi_ioprio = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 4
  store i16 0, i16* %bi_ioprio, align 2
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 5
  store i16 0, i16* %bi_write_hint, align 8
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  store i8 0, i8* %bi_status, align 2
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  store i64 0, i64* %bi_sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  store i32 0, i32* %bi_size, align 8
  %bi_idx = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 2
  store i32 0, i32* %bi_idx, align 4
  %bi_bvec_done = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 3
  store i32 0, i32* %bi_bvec_done, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 9
  store void (%struct.bio*)* null, void (%struct.bio*)** %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  store i8* null, i8** %bi_private, align 8
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  store i16 0, i16* %bi_vcnt, align 8
  %counter.i = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 7, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  %counter.i22 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 14, i32 0
  store volatile i32 1, i32* %counter.i22, align 4
  %bi_max_vecs = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 13
  store i16 %max_vecs, i16* %bi_max_vecs, align 2
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  store %struct.bio_vec* %table, %struct.bio_vec** %bi_io_vec, align 8
  %bi_pool = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 16
  store %struct.bio_set* null, %struct.bio_set** %bi_pool, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_reset(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bio* %bio to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 74) #20
  %counter.i = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 7, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_chain(%struct.bio* nocapture noundef %bio, %struct.bio* noundef %parent) local_unnamed_addr #0 {
entry:
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = load i8*, i8** %bi_private, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %lor.rhs, label %do.body4, !prof !13

lor.rhs:                                          ; preds = %entry
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 9
  %1 = load void (%struct.bio*)*, void (%struct.bio*)** %bi_end_io, align 8
  %tobool1.not = icmp eq void (%struct.bio*)* %1, null
  br i1 %tobool1.not, label %do.end7, label %do.body4, !prof !13

do.body4:                                         ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 337; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !14
  unreachable

do.end7:                                          ; preds = %lor.rhs
  %2 = bitcast i8** %bi_private to %struct.bio**
  store %struct.bio* %parent, %struct.bio** %2, align 8
  store void (%struct.bio*)* @bio_chain_endio, void (%struct.bio*)** %bi_end_io, align 8
  call fastcc void @bio_inc_remaining(%struct.bio* noundef %parent) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bio_chain_endio(%struct.bio* noundef %bio) #0 {
entry:
  %call = call fastcc %struct.bio* @__bio_chain_endio(%struct.bio* noundef %bio) #21
  call void @bio_endio(%struct.bio* noundef %call) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_inc_remaining(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 5) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %__bi_remaining = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 7
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %__bi_remaining) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.bio* @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef %nr_iovecs, %struct.bio_set* noundef %bs) local_unnamed_addr #0 {
entry:
  %nr_iovecs.addr = alloca i16, align 4
  store i16 %nr_iovecs, i16* %nr_iovecs.addr, align 4
  %bvec_pool = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 4
  %call = call fastcc i1 @mempool_initialized(%struct.mempool_s* noundef %bvec_pool) #21
  %cmp = icmp eq i16 %nr_iovecs, 0
  %0 = or i1 %cmp, %call
  br i1 %0, label %if.end18, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 439; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !16
  br label %cleanup87

if.end18:                                         ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !17
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %bio_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 108
  %3 = load %struct.bio_list*, %struct.bio_list** %bio_list, align 16
  %tobool20.not = icmp eq %struct.bio_list* %3, null
  br i1 %tobool20.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %call23 = call fastcc i32 @bio_list_empty(%struct.bio_list* noundef nonnull %3) #21
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx27 = getelementptr %struct.bio_list, %struct.bio_list* %3, i64 1
  %call28 = call fastcc i32 @bio_list_empty(%struct.bio_list* noundef %arrayidx27) #21
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.end33

land.lhs.true30:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %rescue_workqueue = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 9
  %4 = load %struct.workqueue_struct*, %struct.workqueue_struct** %rescue_workqueue, align 8
  %tobool31.not = icmp eq %struct.workqueue_struct* %4, null
  %and = and i32 %gfp_mask, -1025
  %spec.select = select i1 %tobool31.not, i32 %gfp_mask, i32 %and
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true30, %lor.lhs.false, %if.end18
  %gfp_mask.addr.0 = phi i32 [ %gfp_mask, %lor.lhs.false ], [ %gfp_mask, %if.end18 ], [ %spec.select, %land.lhs.true30 ]
  %bio_pool = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 3
  %call34 = call noalias i8* @mempool_alloc(%struct.mempool_s* noundef %bio_pool, i32 noundef %gfp_mask.addr.0) #20
  %tobool35.not = icmp eq i8* %call34, null
  br i1 %tobool35.not, label %land.lhs.true36, label %if.end54

land.lhs.true36:                                  ; preds = %if.end33
  %cmp37.not = icmp eq i32 %gfp_mask.addr.0, %gfp_mask
  br i1 %cmp37.not, label %cleanup87, label %if.end42

if.end42:                                         ; preds = %land.lhs.true36
  call fastcc void @punt_bios_to_rescuer(%struct.bio_set* noundef %bs) #21
  %call41 = call noalias i8* @mempool_alloc(%struct.mempool_s* noundef %bio_pool, i32 noundef %gfp_mask) #20
  %tobool43.not = icmp eq i8* %call41, null
  br i1 %tobool43.not, label %cleanup87, label %if.end54, !prof !8

if.end54:                                         ; preds = %if.end33, %if.end42
  %p.0135 = phi i8* [ %call41, %if.end42 ], [ %call34, %if.end33 ]
  %gfp_mask.addr.1134 = phi i32 [ %gfp_mask, %if.end42 ], [ %gfp_mask.addr.0, %if.end33 ]
  %front_pad = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 1
  %5 = load i32, i32* %front_pad, align 8
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr i8, i8* %p.0135, i64 %idx.ext
  %6 = bitcast i8* %add.ptr to %struct.bio*
  %cmp56 = icmp ugt i16 %nr_iovecs, 4
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end54
  %call60 = call %struct.bio_vec* @bvec_alloc(%struct.mempool_s* noundef %bvec_pool, i16* noundef nonnull %nr_iovecs.addr, i32 noundef %gfp_mask.addr.1134) #21
  %tobool61.not = icmp eq %struct.bio_vec* %call60, null
  br i1 %tobool61.not, label %land.lhs.true62, label %cleanup

land.lhs.true62:                                  ; preds = %if.then58
  %cmp63.not = icmp eq i32 %gfp_mask.addr.1134, %gfp_mask
  br i1 %cmp63.not, label %err_free, label %if.end68

if.end68:                                         ; preds = %land.lhs.true62
  call fastcc void @punt_bios_to_rescuer(%struct.bio_set* noundef %bs) #21
  %call67 = call %struct.bio_vec* @bvec_alloc(%struct.mempool_s* noundef %bvec_pool, i16* noundef nonnull %nr_iovecs.addr, i32 noundef %gfp_mask) #21
  %tobool69.not = icmp eq %struct.bio_vec* %call67, null
  br i1 %tobool69.not, label %err_free, label %cleanup, !prof !8

cleanup:                                          ; preds = %if.then58, %if.end68
  %bvl.0141 = phi %struct.bio_vec* [ %call67, %if.end68 ], [ %call60, %if.then58 ]
  %7 = load i16, i16* %nr_iovecs.addr, align 4
  call void @bio_init(%struct.bio* noundef %6, %struct.bio_vec* noundef nonnull %bvl.0141, i16 noundef %7) #21
  br label %if.end85

if.else:                                          ; preds = %if.end54
  br i1 %cmp, label %if.else83, label %if.then82

if.then82:                                        ; preds = %if.else
  %bi_inline_vecs = getelementptr inbounds i8, i8* %add.ptr, i64 96
  %arraydecay = bitcast i8* %bi_inline_vecs to %struct.bio_vec*
  call void @bio_init(%struct.bio* noundef %6, %struct.bio_vec* noundef %arraydecay, i16 noundef 4) #21
  br label %if.end85

if.else83:                                        ; preds = %if.else
  call void @bio_init(%struct.bio* noundef %6, %struct.bio_vec* noundef null, i16 noundef 0) #21
  br label %if.end85

if.end85:                                         ; preds = %cleanup, %if.then82, %if.else83
  %bi_pool = getelementptr inbounds i8, i8* %add.ptr, i64 88
  %8 = bitcast i8* %bi_pool to %struct.bio_set**
  store %struct.bio_set* %bs, %struct.bio_set** %8, align 8
  br label %cleanup87

err_free:                                         ; preds = %land.lhs.true62, %if.end68
  call void @mempool_free(i8* noundef nonnull %p.0135, %struct.mempool_s* noundef %bio_pool) #20
  br label %cleanup87

cleanup87:                                        ; preds = %land.lhs.true36, %if.then, %if.end42, %err_free, %if.end85
  %retval.0 = phi %struct.bio* [ null, %err_free ], [ %6, %if.end85 ], [ null, %if.then ], [ null, %if.end42 ], [ null, %land.lhs.true36 ]
  ret %struct.bio* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mempool_initialized(%struct.mempool_s* nocapture noundef readonly %pool) unnamed_addr #5 {
entry:
  %elements = getelementptr inbounds %struct.mempool_s, %struct.mempool_s* %pool, i64 0, i32 3
  %0 = load i8**, i8*** %elements, align 8
  %cmp = icmp ne i8** %0, null
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bio_list_empty(%struct.bio_list* nocapture noundef readonly %bl) unnamed_addr #5 {
entry:
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %head, align 8
  %cmp = icmp eq %struct.bio* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @punt_bios_to_rescuer(%struct.bio_set* noundef %bs) unnamed_addr #0 {
entry:
  %punt = alloca %struct.bio_list, align 8
  %nopunt = alloca %struct.bio_list, align 8
  %0 = bitcast %struct.bio_list* %punt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !18
  %1 = bitcast %struct.bio_list* %nopunt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !18
  %rescue_workqueue = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 9
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** %rescue_workqueue, align 8
  %tobool.not = icmp eq %struct.workqueue_struct* %2, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 367; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !19
  br label %cleanup

if.end18:                                         ; preds = %entry
  call fastcc void @bio_list_init(%struct.bio_list* noundef nonnull %punt) #21
  call fastcc void @bio_list_init(%struct.bio_list* noundef nonnull %nopunt) #21
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !17
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %bio_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 108
  %5 = load %struct.bio_list*, %struct.bio_list** %bio_list, align 16
  %call1964 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef %5) #21
  %tobool20.not65 = icmp eq %struct.bio* %call1964, null
  br i1 %tobool20.not65, label %while.end, label %while.body

while.body:                                       ; preds = %if.end18, %while.body
  %call1966 = phi %struct.bio* [ %call19, %while.body ], [ %call1964, %if.end18 ]
  %bi_pool = getelementptr inbounds %struct.bio, %struct.bio* %call1966, i64 0, i32 16
  %6 = load %struct.bio_set*, %struct.bio_set** %bi_pool, align 8
  %cmp = icmp eq %struct.bio_set* %6, %bs
  %punt.nopunt = select i1 %cmp, %struct.bio_list* %punt, %struct.bio_list* %nopunt
  call fastcc void @bio_list_add(%struct.bio_list* noundef nonnull %punt.nopunt, %struct.bio* noundef nonnull %call1966) #21
  %7 = load %struct.bio_list*, %struct.bio_list** %bio_list, align 16
  %call19 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef %7) #21
  %tobool20.not = icmp eq %struct.bio* %call19, null
  br i1 %tobool20.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end18
  %8 = bitcast %struct.bio_list** %bio_list to i8**
  %9 = load i8*, i8** %8, align 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call fastcc void @bio_list_init(%struct.bio_list* noundef nonnull %nopunt) #21
  %10 = load %struct.bio_list*, %struct.bio_list** %bio_list, align 16
  %arrayidx2867 = getelementptr %struct.bio_list, %struct.bio_list* %10, i64 1
  %call2968 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef %arrayidx2867) #21
  %tobool30.not69 = icmp eq %struct.bio* %call2968, null
  br i1 %tobool30.not69, label %while.end39, label %while.body31

while.body31:                                     ; preds = %while.end, %while.body31
  %call2970 = phi %struct.bio* [ %call29, %while.body31 ], [ %call2968, %while.end ]
  %bi_pool32 = getelementptr inbounds %struct.bio, %struct.bio* %call2970, i64 0, i32 16
  %11 = load %struct.bio_set*, %struct.bio_set** %bi_pool32, align 8
  %cmp33 = icmp eq %struct.bio_set* %11, %bs
  %punt.nopunt48 = select i1 %cmp33, %struct.bio_list* %punt, %struct.bio_list* %nopunt
  call fastcc void @bio_list_add(%struct.bio_list* noundef nonnull %punt.nopunt48, %struct.bio* noundef nonnull %call2970) #21
  %12 = load %struct.bio_list*, %struct.bio_list** %bio_list, align 16
  %arrayidx28 = getelementptr %struct.bio_list, %struct.bio_list* %12, i64 1
  %call29 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef %arrayidx28) #21
  %tobool30.not = icmp eq %struct.bio* %call29, null
  br i1 %tobool30.not, label %while.end39, label %while.body31

while.end39:                                      ; preds = %while.body31, %while.end
  %13 = load %struct.bio_list*, %struct.bio_list** %bio_list, align 16
  %arrayidx42 = getelementptr %struct.bio_list, %struct.bio_list* %13, i64 1
  %14 = bitcast %struct.bio_list* %arrayidx42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %14, i8* noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %rlock.i = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %rescue_list = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 7
  call fastcc void @bio_list_merge(%struct.bio_list* noundef %rescue_list, %struct.bio_list* noundef nonnull %punt) #21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** %rescue_workqueue, align 8
  %rescue_work = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %15, %struct.work_struct* noundef %rescue_work) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.end39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.bio* @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef %nr_iovecs) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i16 %nr_iovecs, 1024
  br i1 %cmp, label %cleanup, label %if.end9.i

if.end9.i:                                        ; preds = %entry
  %conv2 = zext i16 %nr_iovecs to i64
  %call = call fastcc i64 @__ab_c_size(i64 noundef %conv2) #21
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %call, i32 noundef %gfp_mask) #20
  %0 = bitcast i8* %call10.i to %struct.bio*
  %tobool.not = icmp eq i8* %call10.i, null
  br i1 %tobool.not, label %cleanup, label %if.end9, !prof !8

if.end9:                                          ; preds = %if.end9.i
  %tobool11.not = icmp eq i16 %nr_iovecs, 0
  %bi_inline_vecs = getelementptr inbounds i8, i8* %call10.i, i64 96
  %arraydecay = bitcast i8* %bi_inline_vecs to %struct.bio_vec*
  %cond = select i1 %tobool11.not, %struct.bio_vec* null, %struct.bio_vec* %arraydecay
  call void @bio_init(%struct.bio* noundef nonnull %0, %struct.bio_vec* noundef %cond, i16 noundef %nr_iovecs) #21
  %bi_pool = getelementptr inbounds i8, i8* %call10.i, i64 88
  %1 = bitcast i8* %bi_pool to %struct.bio_set**
  store %struct.bio_set* null, %struct.bio_set** %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %entry, %if.end9
  %retval.0 = phi %struct.bio* [ %0, %if.end9 ], [ null, %entry ], [ null, %if.end9.i ]
  ret %struct.bio* %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size(i64 noundef %a) unnamed_addr #6 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 16)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %2, i64 96)
  %retval.0 = select i1 %1, i64 -1, i64 %spec.select
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @zero_fill_bio(%struct.bio* nocapture noundef readonly %bio) local_unnamed_addr #0 {
entry:
  %bv = alloca %struct.bio_vec, align 8
  %iter = alloca %struct.bvec_iter, align 8
  %0 = bitcast %struct.bio_vec* %bv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %1 = bitcast %struct.bvec_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #19
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8
  %2 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8* noundef align 8 dereferenceable(24) %2, i64 24, i1 false)
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %tobool.not59 = icmp eq i32 %3, 0
  br i1 %tobool.not59, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 0
  %.compoundliteral.sroa.2.0..sroa_idx51 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 1
  %.compoundliteral.sroa.3.0..sroa_idx52 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %land.rhs
  %4 = phi i32 [ %3, %land.rhs.lr.ph ], [ %12, %land.rhs ]
  %5 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %6 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %6 to i64
  %bv_page1 = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom, i32 0
  %7 = load %struct.page*, %struct.page** %bv_page1, align 8
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom, i32 2
  %8 = load i32, i32* %bv_offset, align 4
  %9 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %9, %8
  %10 = lshr i32 %add, 12
  %div = zext i32 %10 to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %7, i64 %div
  %bv_len11 = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom, i32 1
  %11 = load i32, i32* %bv_len11, align 8
  %sub = sub i32 %11, %9
  %cmp = icmp ult i32 %4, %sub
  %cond = select i1 %cmp, i32 %4, i32 %sub
  %rem = and i32 %add, 4095
  %conv23 = sub nuw nsw i32 4096, %rem
  %cmp25 = icmp ult i32 %cond, %conv23
  %cond30 = select i1 %cmp25, i32 %cond, i32 %conv23
  store %struct.page* %add.ptr, %struct.page** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  store i32 %cond30, i32* %.compoundliteral.sroa.2.0..sroa_idx51, align 8
  store i32 %rem, i32* %.compoundliteral.sroa.3.0..sroa_idx52, align 4
  call fastcc void @memzero_bvec(%struct.bio_vec* noundef nonnull %bv) #21
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef %bio, %struct.bvec_iter* noundef nonnull %iter, i32 noundef %cond30) #21
  %12 = load i32, i32* %bi_size, align 8
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memzero_bvec(%struct.bio_vec* nocapture noundef readonly %bvec) unnamed_addr #0 {
entry:
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %bv_page, align 8
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 2
  %1 = load i32, i32* %bv_offset, align 4
  %conv = zext i32 %1 to i64
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 1
  %2 = load i32, i32* %bv_len, align 8
  %conv1 = zext i32 %2 to i64
  call fastcc void @memzero_page(%struct.page* noundef %0, i64 noundef %conv, i64 noundef %conv1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_advance_iter_single(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #9 {
entry:
  %shr = lshr i32 %bytes, 9
  %conv = zext i32 %shr to i64
  %bi_sector = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %bi_sector, align 8
  %add = add i64 %0, %conv
  store i64 %add, i64* %bi_sector, align 8
  %call = call fastcc i1 @bio_no_advance_iter(%struct.bio* noundef %bio) #21
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %1, %bytes
  store i32 %sub, i32* %bi_size, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  call fastcc void @bvec_iter_advance_single(%struct.bio_vec* noundef %2, %struct.bvec_iter* noundef %iter, i32 noundef %bytes) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_truncate(%struct.bio* nocapture noundef %bio, i32 noundef %new_size) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.bvec_iter, align 8
  %0 = bitcast %struct.bvec_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %cmp.not = icmp ugt i32 %1, %new_size
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %2 = load i32, i32* %bi_opf, align 8
  %and = and i32 %2, 255
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end3, label %exit

if.end3:                                          ; preds = %if.end
  %3 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %3, i64 24, i1 false)
  %bi_size5 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %4 = load i32, i32* %bi_size5, align 8
  %tobool.not112 = icmp eq i32 %4, 0
  br i1 %tobool.not112, label %exit, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end3
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end60
  %5 = phi i32 [ %4, %land.rhs.lr.ph ], [ %13, %if.end60 ]
  %done.0114 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add49, %if.end60 ]
  %truncated.0.off0113 = phi i1 [ false, %land.rhs.lr.ph ], [ %truncated.1.off0, %if.end60 ]
  %6 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %7 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %7 to i64
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 2
  %8 = load i32, i32* %bv_offset, align 4
  %9 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %9, %8
  %bv_len16 = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 1
  %10 = load i32, i32* %bv_len16, align 8
  %sub = sub i32 %10, %9
  %cmp18 = icmp ult i32 %5, %sub
  %cond = select i1 %cmp18, i32 %5, i32 %sub
  %rem = and i32 %add, 4095
  %sub28 = sub nuw nsw i32 4096, %rem
  %cmp31 = icmp ult i32 %cond, %sub28
  %cond36 = select i1 %cmp31, i32 %cond, i32 %sub28
  %add49 = add i32 %cond36, %done.0114
  %cmp50 = icmp ugt i32 %add49, %new_size
  br i1 %cmp50, label %if.then52, label %if.end60

if.then52:                                        ; preds = %land.rhs
  %bv_page6 = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 0
  %11 = load %struct.page*, %struct.page** %bv_page6, align 8
  %12 = lshr i32 %add, 12
  %div = zext i32 %12 to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %11, i64 %div
  %sub55 = sub i32 %new_size, %done.0114
  %offset.0 = select i1 %truncated.0.off0113, i32 0, i32 %sub55
  %sub59 = sub i32 %cond36, %offset.0
  call fastcc void @zero_user(%struct.page* noundef %add.ptr, i32 noundef %offset.0, i32 noundef %sub59) #21
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %land.rhs
  %truncated.1.off0 = phi i1 [ true, %if.then52 ], [ %truncated.0.off0113, %land.rhs ]
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef %bio, %struct.bvec_iter* noundef nonnull %iter, i32 noundef %cond36) #21
  %13 = load i32, i32* %bi_size5, align 8
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %exit, label %land.rhs

exit:                                             ; preds = %if.end60, %if.end3, %if.end
  store i32 %new_size, i32* %bi_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %exit
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user(%struct.page* noundef %page, i32 noundef %start, i32 noundef %size) unnamed_addr #0 {
entry:
  %add = add i32 %size, %start
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start, i32 noundef %add) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @guard_bio_eod(%struct.bio* nocapture noundef %bio) local_unnamed_addr #0 {
entry:
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %call = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef %0) #21
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %1 = load i64, i64* %bi_sector, align 8
  %cmp.not = icmp ugt i64 %call, %1
  br i1 %cmp.not, label %if.end4, label %cleanup, !prof !13

if.end4:                                          ; preds = %if.end
  %sub = sub i64 %call, %1
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %2 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %2, 9
  %conv8 = zext i32 %shr to i64
  %cmp9.not = icmp ult i64 %sub, %conv8
  br i1 %cmp9.not, label %if.end19, label %cleanup, !prof !8

if.end19:                                         ; preds = %if.end4
  %sub.tr = trunc i64 %sub to i32
  %conv20 = shl i32 %sub.tr, 9
  call void @bio_truncate(%struct.bio* noundef %bio, i32 noundef %conv20) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @bdev_nr_sectors(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #5 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #21
  %shr = ashr i64 %call, 9
  ret i64 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_put(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 6) #21
  br i1 %call, label %do.body, label %if.end22, !prof !8

do.body:                                          ; preds = %entry
  %__bi_cnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 14
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %__bi_cnt, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool3.not, label %do.body14, label %do.end17, !prof !8

do.body14:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 680; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !20
  unreachable

do.end17:                                         ; preds = %do.body
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %__bi_cnt) #20
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end22, label %if.end42

if.end22:                                         ; preds = %do.end17, %entry
  %call23 = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 13) #21
  br i1 %call23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22
  %bi_pool = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 16
  %1 = load %struct.bio_set*, %struct.bio_set** %bi_pool, align 8
  %cache27 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %1, i64 0, i32 2
  %2 = load %struct.bio_alloc_cache*, %struct.bio_alloc_cache** %cache27, align 8
  %3 = ptrtoint %struct.bio_alloc_cache* %2 to i64
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %call37 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call37, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add to i32*
  %5 = load i32, i32* %4, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add38 = add i64 %6, %3
  %7 = inttoptr i64 %add38 to %struct.bio_alloc_cache*
  %free_list = getelementptr inbounds %struct.bio_alloc_cache, %struct.bio_alloc_cache* %7, i64 0, i32 0
  call fastcc void @bio_list_add_head(%struct.bio_list* noundef %free_list, %struct.bio* noundef %bio) #21
  %nr = getelementptr inbounds %struct.bio_alloc_cache, %struct.bio_alloc_cache* %7, i64 0, i32 1
  %8 = load i32, i32* %nr, align 8
  %inc = add i32 %8, 1
  store i32 %inc, i32* %nr, align 8
  %cmp = icmp ugt i32 %inc, 576
  br i1 %cmp, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then24
  call fastcc void @bio_alloc_cache_prune(%struct.bio_alloc_cache* noundef %7, i32 noundef 64) #21
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then24
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  br label %if.end42

if.else:                                          ; preds = %if.end22
  call fastcc void @bio_free(%struct.bio* noundef %bio) #21
  br label %if.end42

if.end42:                                         ; preds = %do.end17, %if.else, %if.end41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_flagged(%struct.bio* nocapture noundef readonly %bio, i32 noundef %bit) unnamed_addr #5 {
entry:
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %conv = zext i16 %0 to i32
  %shl = shl nuw i32 1, %bit
  %and = and i32 %shl, %conv
  %cmp = icmp ne i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #23, !srcloc !23
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_list_add_head(%struct.bio_list* nocapture noundef %bl, %struct.bio* noundef %bio) unnamed_addr #9 {
entry:
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %head, align 8
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 0
  store %struct.bio* %0, %struct.bio** %bi_next, align 8
  store %struct.bio* %bio, %struct.bio** %head, align 8
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  %1 = load %struct.bio*, %struct.bio** %tail, align 8
  %tobool.not = icmp eq %struct.bio* %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.bio* %bio, %struct.bio** %tail, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_alloc_cache_prune(%struct.bio_alloc_cache* nocapture noundef %cache, i32 noundef %nr) unnamed_addr #0 {
entry:
  %nr1 = getelementptr inbounds %struct.bio_alloc_cache, %struct.bio_alloc_cache* %cache, i64 0, i32 1
  %free_list = getelementptr inbounds %struct.bio_alloc_cache, %struct.bio_alloc_cache* %cache, i64 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %call = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef %free_list) #21
  %cmp.not = icmp eq %struct.bio* %call, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %nr1, align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* %nr1, align 8
  call fastcc void @bio_free(%struct.bio* noundef nonnull %call) #21
  %inc = add i32 %i.0, 1
  %cmp2 = icmp eq i32 %inc, %nr
  br i1 %cmp2, label %while.end, label %while.cond

while.end:                                        ; preds = %while.body, %while.cond
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_free(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_pool = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 16
  %0 = load %struct.bio_set*, %struct.bio_set** %bi_pool, align 8
  %tobool.not = icmp eq %struct.bio_set* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bvec_pool = getelementptr inbounds %struct.bio_set, %struct.bio_set* %0, i64 0, i32 4
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %1 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bi_max_vecs = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 13
  %2 = load i16, i16* %bi_max_vecs, align 2
  call void @bvec_free(%struct.mempool_s* noundef %bvec_pool, %struct.bio_vec* noundef %1, i16 noundef %2) #21
  %3 = bitcast %struct.bio* %bio to i8*
  %front_pad = getelementptr inbounds %struct.bio_set, %struct.bio_set* %0, i64 0, i32 1
  %4 = load i32, i32* %front_pad, align 8
  %idx.ext = zext i32 %4 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.neg
  %bio_pool = getelementptr inbounds %struct.bio_set, %struct.bio_set* %0, i64 0, i32 3
  call void @mempool_free(i8* noundef %add.ptr, %struct.mempool_s* noundef %bio_pool) #20
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = bitcast %struct.bio* %bio to i8*
  call void @kfree(i8* noundef %5) #20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__bio_clone_fast(%struct.bio* nocapture noundef %bio, %struct.bio* nocapture noundef readonly %bio_src) local_unnamed_addr #0 {
entry:
  %bi_pool = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 16
  %0 = load %struct.bio_set*, %struct.bio_set** %bi_pool, align 8
  %tobool.not = icmp eq %struct.bio_set* %0, null
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %bi_max_vecs = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 13
  %1 = load i16, i16* %bi_max_vecs, align 2
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 713; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio_src, i64 0, i32 1
  %2 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bi_bdev17 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  store %struct.block_device* %2, %struct.block_device** %bi_bdev17, align 8
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 1) #21
  %call = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio_src, i32 noundef 7) #21
  br i1 %call, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 7) #21
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end
  %call20 = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio_src, i32 noundef 11) #21
  br i1 %call20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 11) #21
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio_src, i64 0, i32 2
  %3 = load i32, i32* %bi_opf, align 8
  %bi_opf23 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 %3, i32* %bi_opf23, align 8
  %bi_ioprio = getelementptr inbounds %struct.bio, %struct.bio* %bio_src, i64 0, i32 4
  %4 = load i16, i16* %bi_ioprio, align 2
  %bi_ioprio24 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 4
  store i16 %4, i16* %bi_ioprio24, align 2
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %bio_src, i64 0, i32 5
  %5 = load i16, i16* %bi_write_hint, align 8
  %bi_write_hint25 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 5
  store i16 %5, i16* %bi_write_hint25, align 8
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8
  %bi_iter26 = getelementptr inbounds %struct.bio, %struct.bio* %bio_src, i64 0, i32 8
  %6 = bitcast %struct.bvec_iter* %bi_iter to i8*
  %7 = bitcast %struct.bvec_iter* %bi_iter26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %6, i8* noundef align 8 dereferenceable(24) %7, i64 24, i1 false)
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio_src, i64 0, i32 15
  %8 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bi_io_vec27 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  store %struct.bio_vec* %8, %struct.bio_vec** %bi_io_vec27, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_set_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #9 {
entry:
  %shl = shl nuw i32 1, %bit
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = trunc i32 %shl to i16
  %conv1 = or i16 %0, %1
  store i16 %conv1, i16* %bi_flags, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.bio* @bio_clone_fast(%struct.bio* nocapture noundef readonly %bio, i32 noundef %gfp_mask, %struct.bio_set* noundef %bs) local_unnamed_addr #0 {
entry:
  %call = call %struct.bio* @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef 0, %struct.bio_set* noundef %bs) #21
  %tobool.not = icmp eq %struct.bio* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @__bio_clone_fast(%struct.bio* noundef nonnull %call, %struct.bio* noundef %bio) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.bio* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @bio_devname(%struct.bio* nocapture noundef readonly %bio, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %call = call i8* @bdevname(%struct.block_device* noundef %0, i8* noundef %buf) #20
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @bdevname(%struct.block_device* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bio_add_hw_page(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* nocapture noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset, i32 noundef %max_sectors, i8* nocapture noundef writeonly %same_page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 1) #21
  br i1 %call, label %if.then, label %if.end16, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 834; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !25
  br label %cleanup

if.end16:                                         ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %add = add i32 %0, %len
  %shr = lshr i32 %add, 9
  %cmp = icmp ugt i32 %shr, %max_sectors
  br i1 %cmp, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end16
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %1 = load i16, i16* %bi_vcnt, align 8
  %cmp21.not = icmp eq i16 %1, 0
  br i1 %cmp21.not, label %if.end32, label %if.then23

if.then23:                                        ; preds = %if.end19
  %call24 = call fastcc i1 @bio_try_merge_hw_seg(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset, i8* noundef %same_page) #21
  br i1 %call24, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.then23
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %3 = load i16, i16* %bi_vcnt, align 8
  %conv28 = zext i16 %3 to i64
  %sub = add nsw i64 %conv28, -1
  %arrayidx = getelementptr %struct.bio_vec, %struct.bio_vec* %2, i64 %sub
  %call29 = call fastcc i1 @bvec_gap_to_prev(%struct.request_queue* noundef %q, %struct.bio_vec* noundef %arrayidx, i32 noundef %offset) #21
  br i1 %call29, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end26, %if.end19
  %4 = phi i16 [ %3, %if.end26 ], [ 0, %if.end19 ]
  %call33 = call fastcc i1 @bio_full(%struct.bio* noundef %bio, i32 noundef %len) #21
  br i1 %call33, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end32
  %call38 = call fastcc i16 @queue_max_segments(%struct.request_queue* noundef %q) #21
  %cmp40.not = icmp ult i16 %4, %call38
  br i1 %cmp40.not, label %if.end43, label %cleanup

if.end43:                                         ; preds = %if.end35
  %bi_io_vec44 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %5 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec44, align 8
  %idxprom46 = zext i16 %4 to i64
  %bv_page = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom46, i32 0
  store %struct.page* %page, %struct.page** %bv_page, align 8
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom46, i32 1
  store i32 %len, i32* %bv_len, align 8
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom46, i32 2
  store i32 %offset, i32* %bv_offset, align 4
  %6 = load i16, i16* %bi_vcnt, align 8
  %inc = add i16 %6, 1
  store i16 %inc, i16* %bi_vcnt, align 8
  %7 = load i32, i32* %bi_size, align 8
  %add51 = add i32 %7, %len
  store i32 %add51, i32* %bi_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end35, %if.end32, %if.end26, %if.then23, %if.end16, %if.end43
  %retval.0 = phi i32 [ %len, %if.end43 ], [ 0, %if.then ], [ 0, %if.end16 ], [ %len, %if.then23 ], [ 0, %if.end26 ], [ 0, %if.end32 ], [ 0, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bio_try_merge_hw_seg(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* nocapture noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset, i8* nocapture noundef writeonly %same_page) unnamed_addr #0 {
entry:
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %0 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %1 = load i16, i16* %bi_vcnt, align 8
  %conv = zext i16 %1 to i64
  %sub = add nsw i64 %conv, -1
  %call = call fastcc i64 @queue_segment_boundary(%struct.request_queue* noundef %q) #21
  %bv_page = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %sub, i32 0
  %2 = load %struct.page*, %struct.page** %bv_page, align 8
  %3 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %3, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %sub, i32 2
  %4 = load i32, i32* %bv_offset, align 4
  %conv1 = zext i32 %4 to i64
  %add = add i64 %shl, %conv1
  %sub.ptr.lhs.cast5 = ptrtoint %struct.page* %page to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast
  %shl9 = shl i64 %sub.ptr.sub7, 6
  %conv10 = zext i32 %offset to i64
  %conv12 = zext i32 %len to i64
  %add11 = add nsw i64 %conv12, -1
  %add13 = add nsw i64 %add11, %conv10
  %sub14 = add i64 %add13, %shl9
  %or = or i64 %add, %call
  %or15 = or i64 %sub14, %call
  %cmp.not = icmp eq i64 %or, %or15
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %sub, i32 1
  %5 = load i32, i32* %bv_len, align 8
  %add17 = add i32 %5, %len
  %call18 = call fastcc i32 @queue_max_segment_size(%struct.request_queue* noundef %q) #21
  %cmp19 = icmp ugt i32 %add17, %call18
  br i1 %cmp19, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end
  %call23 = call i1 @__bio_try_merge_page(%struct.bio* noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset, i8* noundef %same_page) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end22
  %retval.0 = phi i1 [ %call23, %if.end22 ], [ false, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bvec_gap_to_prev(%struct.request_queue* nocapture noundef readonly %q, %struct.bio_vec* nocapture noundef readonly %bprv, i32 noundef %offset) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @queue_virt_boundary(%struct.request_queue* noundef %q) #21
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @__bvec_gap_to_prev(%struct.request_queue* noundef %q, %struct.bio_vec* noundef %bprv, i32 noundef %offset) #21
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call1, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_full(%struct.bio* nocapture noundef readonly %bio, i32 noundef %len) unnamed_addr #5 {
entry:
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %0 = load i16, i16* %bi_vcnt, align 8
  %bi_max_vecs = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 13
  %1 = load i16, i16* %bi_max_vecs, align 2
  %cmp.not = icmp ult i16 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %2 = load i32, i32* %bi_size, align 8
  %sub = xor i32 %len, -1
  %cmp3 = icmp ugt i32 %2, %sub
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %cmp3, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @queue_max_segments(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %max_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 21
  %0 = load i16, i16* %max_segments, align 8
  ret i16 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bio_add_pc_page(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* nocapture noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %same_page = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %same_page) #19
  %call = call fastcc i32 @queue_max_hw_sectors(%struct.request_queue* noundef %q) #21
  %call1 = call i32 @bio_add_hw_page(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset, i32 noundef %call, i8* noundef nonnull %same_page) #21
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %same_page) #19
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_hw_sectors(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %max_hw_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 3
  %0 = load i32, i32* %max_hw_sectors, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bio_add_zone_append_page(%struct.bio* nocapture noundef readonly %bio, %struct.page* nocapture noundef readnone %page, i32 noundef %len, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %and = and i32 %0, 255
  %cmp.not = icmp eq i32 %and, 13
  br i1 %cmp.not, label %if.end16, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 914; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !26
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 917; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end16
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_zone_append_sectors(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %max_zone_append_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 17
  %0 = load i32, i32* %max_zone_append_sectors, align 8
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %1 = load i32, i32* %max_sectors, align 4
  %cmp = icmp ult i32 %0, %1
  %cond = select i1 %cmp, i32 %0, i32 %1
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__bio_try_merge_page(%struct.bio* nocapture noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %off, i8* nocapture noundef writeonly %same_page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 1) #21
  br i1 %call, label %if.then, label %if.end16, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 944; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !28
  br label %return

if.end16:                                         ; preds = %entry
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %0 = load i16, i16* %bi_vcnt, align 8
  %cmp.not = icmp eq i16 %0, 0
  br i1 %cmp.not, label %return, label %if.then19

if.then19:                                        ; preds = %if.end16
  %conv17 = zext i16 %0 to i64
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %1 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %sub = add nuw nsw i64 %conv17, 4294967295
  %2 = and i64 %sub, 4294967295
  %arrayidx = getelementptr %struct.bio_vec, %struct.bio_vec* %1, i64 %2
  %call22 = call fastcc i1 @page_is_mergeable(%struct.bio_vec* noundef %arrayidx, %struct.page* noundef %page, i32 noundef %off, i8* noundef %same_page) #21
  br i1 %call22, label %if.then23, label %return

if.then23:                                        ; preds = %if.then19
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %sub24 = xor i32 %len, -1
  %cmp25 = icmp ugt i32 %3, %sub24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  store i8 0, i8* %same_page, align 1
  br label %return

if.end28:                                         ; preds = %if.then23
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %1, i64 %2, i32 1
  %4 = load i32, i32* %bv_len, align 8
  %add = add i32 %4, %len
  store i32 %add, i32* %bv_len, align 8
  %5 = load i32, i32* %bi_size, align 8
  %add31 = add i32 %5, %len
  store i32 %add31, i32* %bi_size, align 8
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.end16, %if.then19, %if.then
  %retval.1 = phi i1 [ false, %if.then ], [ false, %if.then19 ], [ false, %if.end16 ], [ true, %if.end28 ], [ false, %if.then27 ]
  ret i1 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @page_is_mergeable(%struct.bio_vec* nocapture noundef readonly %bv, %struct.page* noundef %page, i32 noundef %off, i8* nocapture noundef writeonly %same_page) unnamed_addr #9 {
entry:
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 2
  %0 = load i32, i32* %bv_offset, align 4
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 1
  %1 = load i32, i32* %bv_len, align 8
  %add = add i32 %1, %0
  %conv = zext i32 %add to i64
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 0
  %2 = load %struct.page*, %struct.page** %bv_page, align 8
  %3 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %3, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %add1 = add i64 %shl, %conv
  %sub.ptr.lhs.cast5 = ptrtoint %struct.page* %page to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast
  %shl9 = shl i64 %sub.ptr.sub7, 6
  %conv11 = zext i32 %off to i64
  %add12 = add i64 %shl9, %conv11
  %cmp.not = icmp eq i64 %add1, %add12
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i64 %add1, -1
  %and = and i64 %sub, -4096
  %cmp14 = icmp eq i64 %and, %shl9
  %frombool = zext i1 %cmp14 to i8
  store i8 %frombool, i8* %same_page, align 1
  br i1 %cmp14, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end
  %4 = load %struct.page*, %struct.page** %bv_page, align 8
  %div = lshr i64 %conv, 12
  %add.ptr19 = getelementptr %struct.page, %struct.page* %4, i64 %div
  %div21 = lshr i64 %conv11, 12
  %add.ptr22 = getelementptr %struct.page, %struct.page* %page, i64 %div21
  %cmp23 = icmp eq %struct.page* %add.ptr19, %add.ptr22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end17
  %retval.0 = phi i1 [ %cmp23, %if.end17 ], [ false, %entry ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__bio_add_page(%struct.bio* nocapture noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %off) local_unnamed_addr #0 {
entry:
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %0 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %1 = load i16, i16* %bi_vcnt, align 8
  %idxprom = zext i16 %1 to i64
  %call = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 1) #21
  br i1 %call, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 979; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call fastcc i1 @bio_full(%struct.bio* noundef %bio, i32 noundef %len) #21
  br i1 %call15, label %if.then28, label %if.end29, !prof !8

if.then28:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 980; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !30
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end
  %bv_page = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 0
  store %struct.page* %page, %struct.page** %bv_page, align 8
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 2
  store i32 %off, i32* %bv_offset, align 4
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 1
  store i32 %len, i32* %bv_len, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %2 = load i32, i32* %bi_size, align 8
  %add = add i32 %2, %len
  store i32 %add, i32* %bi_size, align 8
  %3 = load i16, i16* %bi_vcnt, align 8
  %inc = add i16 %3, 1
  store i16 %inc, i16* %bi_vcnt, align 8
  %call39 = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 3) #21
  br i1 %call39, label %if.end50, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end29
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #20
  %4 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 64
  %tobool41.not = icmp eq i64 %6, 0
  br i1 %tobool41.not, label %if.end50, label %if.then49, !prof !13

if.then49:                                        ; preds = %land.lhs.true
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 3) #21
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true, %if.end29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bio_add_page(%struct.bio* nocapture noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %same_page = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %same_page) #19
  %call = call i1 @__bio_try_merge_page(%struct.bio* noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset, i8* noundef nonnull %same_page) #21
  br i1 %call, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i1 @bio_full(%struct.bio* noundef %bio, i32 noundef %len) #21
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  call void @__bio_add_page(%struct.bio* noundef %bio, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %len, %if.end ], [ %len, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %same_page) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_release_pages(%struct.bio* nocapture noundef readonly %bio, i1 noundef %mark_dirty) local_unnamed_addr #0 {
entry:
  %iter_all = alloca %struct.bvec_iter_all, align 8
  %0 = bitcast %struct.bvec_iter_all* %iter_all to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !18
  %call = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 0) #21
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef nonnull %iter_all) #21
  %call216 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #21
  br i1 %call216, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call1, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end8
  br i1 %mark_dirty, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 65536
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.end8

PageCompound.exit:                                ; preds = %land.lhs.true
  %4 = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.2* %4 to i64*
  %5 = load volatile i64, i64* %compound_head.i.i, align 8
  %6 = and i64 %5, 1
  %tobool4.not = icmp eq i64 %6, 0
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %PageCompound.exit
  %call7 = call i32 @set_page_dirty_lock(%struct.page* noundef %1) #20
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.then5, %PageCompound.exit, %for.body
  %7 = load %struct.page*, %struct.page** %bv_page, align 8
  call fastcc void @put_page(%struct.page* noundef %7) #21
  %call2 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #21
  br i1 %call2, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef writeonly %iter_all) unnamed_addr #11 {
entry:
  %done = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 2
  store i32 0, i32* %done, align 4
  %idx = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 1
  store i32 0, i32* %idx, align 8
  %bv = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0
  ret %struct.bio_vec* %bv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @bio_next_segment(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter_all* nocapture noundef %iter) unnamed_addr #9 {
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
  call fastcc void @bvec_advance(%struct.bio_vec* noundef %arrayidx, %struct.bvec_iter_all* noundef %iter) #21
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(%struct.page* noundef) local_unnamed_addr #1

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
define dso_local i32 @bio_iov_iter_get_pages(%struct.bio* nocapture noundef %bio, %struct.iov_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %iter) #21
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  br i1 %call, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %bi_opf, align 8
  %and = and i32 %0, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call fastcc void @bio_iov_bvec_set_append(%struct.bio* noundef %bio, %struct.iov_iter* noundef %iter) #21
  br label %cleanup

if.end:                                           ; preds = %if.then
  call fastcc void @bio_iov_bvec_set(%struct.bio* noundef %bio, %struct.iov_iter* noundef %iter) #21
  br label %cleanup

do.body:                                          ; preds = %entry, %land.rhs
  %1 = load i32, i32* %bi_opf, align 8
  %and6 = and i32 %1, 255
  %cmp7 = icmp eq i32 %and6, 13
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.body
  %call9 = call fastcc i32 @__bio_iov_append_get_pages(%struct.bio* noundef %bio, %struct.iov_iter* noundef %iter) #21
  br label %do.cond

if.else:                                          ; preds = %do.body
  %call10 = call fastcc i32 @__bio_iov_iter_get_pages(%struct.bio* noundef %bio, %struct.iov_iter* noundef %iter) #21
  br label %do.cond

do.cond:                                          ; preds = %if.then8, %if.else
  %ret.0 = phi i32 [ %call9, %if.then8 ], [ %call10, %if.else ]
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %do.cond
  %call12 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #21
  %tobool13.not = icmp eq i64 %call12, 0
  br i1 %tobool13.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call14 = call fastcc i1 @bio_full(%struct.bio* noundef %bio, i32 noundef 0) #21
  br i1 %call14, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond, %land.lhs.true, %land.rhs
  call fastcc void @bio_clear_flag(%struct.bio* noundef %bio, i32 noundef 3) #21
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %2 = load i16, i16* %bi_vcnt, align 8
  %tobool15.not = icmp eq i16 %2, 0
  %cond = select i1 %tobool15.not, i32 %ret.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.end ], [ %cond, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #21
  %cmp = icmp eq i32 %call, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_iov_bvec_set_append(%struct.bio* nocapture noundef %bio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %i = alloca %struct.iov_iter, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %3 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #19
  %4 = getelementptr %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef align 8 dereferenceable(40) %4, i64 40, i1 false)
  %call = call fastcc i32 @queue_max_zone_append_sectors(%struct.request_queue* noundef %2) #21
  %shl = shl i32 %call, 9
  %conv = zext i32 %shl to i64
  call fastcc void @iov_iter_truncate(%struct.iov_iter* noundef nonnull %i, i64 noundef %conv) #21
  call fastcc void @__bio_iov_bvec_set(%struct.bio* noundef %bio, %struct.iov_iter* noundef nonnull %i) #21
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %5 = load i64, i64* %count, align 8
  call void @iov_iter_advance(%struct.iov_iter* noundef %iter, i64 noundef %5) #20
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_iov_bvec_set(%struct.bio* nocapture noundef %bio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  call fastcc void @__bio_iov_bvec_set(%struct.bio* noundef %bio, %struct.iov_iter* noundef %iter) #21
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  call void @iov_iter_advance(%struct.iov_iter* noundef %iter, i64 noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__bio_iov_append_get_pages(%struct.bio* nocapture noundef %bio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %offset = alloca i64, align 8
  %same_page = alloca i8, align 4
  %bi_max_vecs = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 13
  %0 = load i16, i16* %bi_max_vecs, align 2
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %1 = load i16, i16* %bi_vcnt, align 8
  %sub = sub i16 %0, %1
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %2 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %2, i64 0, i32 16
  %3 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %3, i64 0, i32 9
  %4 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_max_zone_append_sectors(%struct.request_queue* noundef %4) #21
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %5 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %6 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #19
  store i64 0, i64* %offset, align 8, !annotation !18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 1142; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !31
  br label %cleanup72

do.end:                                           ; preds = %entry
  %7 = zext i16 %1 to i64
  %8 = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %7, i32 0
  %conv30 = zext i16 %sub to i64
  %add.ptr31 = getelementptr %struct.page*, %struct.page** %8, i64 %conv30
  %conv32 = zext i16 %sub to i32
  %call33 = call i64 @iov_iter_get_pages(%struct.iov_iter* noundef %iter, %struct.page** noundef %add.ptr31, i64 noundef 9223372036854775807, i32 noundef %conv32, i64* noundef nonnull %offset) #20
  %cmp = icmp slt i64 %call33, 1
  br i1 %cmp, label %if.then42, label %for.body.preheader, !prof !8

for.body.preheader:                               ; preds = %do.end
  %.pre = load i64, i64* %offset, align 8
  br label %for.body

if.then42:                                        ; preds = %do.end
  %tobool43.not = icmp eq i64 %call33, 0
  %9 = trunc i64 %call33 to i32
  %conv44 = select i1 %tobool43.not, i32 -14, i32 %9
  br label %cleanup72

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %10 = phi i64 [ 0, %for.inc ], [ %.pre, %for.body.preheader ]
  %i.0136 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %left.0135 = phi i64 [ %sub70, %for.inc ], [ %call33, %for.body.preheader ]
  %idxprom = zext i32 %i.0136 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %add.ptr31, i64 %idxprom
  %11 = load %struct.page*, %struct.page** %arrayidx, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %same_page) #19
  store i8 0, i8* %same_page, align 4
  %sub48 = sub i64 4096, %10
  %cmp50 = icmp ult i64 %sub48, %left.0135
  %cond55 = select i1 %cmp50, i64 %sub48, i64 %left.0135
  %conv56 = trunc i64 %cond55 to i32
  %conv57 = trunc i64 %10 to i32
  %call58 = call i32 @bio_add_hw_page(%struct.request_queue* noundef %4, %struct.bio* noundef %bio, %struct.page* noundef %11, i32 noundef %conv56, i32 noundef %conv57, i32 noundef %call, i8* noundef nonnull %same_page) #21
  %cmp59.not = icmp eq i32 %call58, %conv56
  br i1 %cmp59.not, label %if.end64, label %cleanup

if.end64:                                         ; preds = %for.body
  %12 = load i8, i8* %same_page, align 4, !range !32
  %tobool65.not = icmp eq i8 %12, 0
  br i1 %tobool65.not, label %for.inc, label %if.then66

if.then66:                                        ; preds = %if.end64
  call fastcc void @put_page(%struct.page* noundef %11) #21
  br label %for.inc

cleanup:                                          ; preds = %for.body
  %idxprom.le = zext i32 %i.0136 to i64
  %arrayidx.le = getelementptr %struct.page*, %struct.page** %add.ptr31, i64 %idxprom.le
  %13 = load i64, i64* %offset, align 8
  call fastcc void @bio_put_pages(%struct.page** noundef %arrayidx.le, i64 noundef %left.0135, i64 noundef %13) #21
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %same_page) #19
  br label %for.end

for.inc:                                          ; preds = %if.end64, %if.then66
  store i64 0, i64* %offset, align 8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %same_page) #19
  %conv69 = and i64 %cond55, 4294967295
  %sub70 = sub nsw i64 %left.0135, %conv69
  %inc = add i32 %i.0136, 1
  %cmp46 = icmp sgt i64 %sub70, 0
  br i1 %cmp46, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %cleanup
  %left.0133 = phi i64 [ %left.0135, %cleanup ], [ %sub70, %for.inc ]
  %ret.2 = phi i32 [ -22, %cleanup ], [ 0, %for.inc ]
  %sub71 = sub i64 %call33, %left.0133
  call void @iov_iter_advance(%struct.iov_iter* noundef %iter, i64 noundef %sub71) #20
  br label %cleanup72

cleanup72:                                        ; preds = %if.then, %for.end, %if.then42
  %retval.0 = phi i32 [ %conv44, %if.then42 ], [ %ret.2, %for.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__bio_iov_iter_get_pages(%struct.bio* nocapture noundef %bio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %same_page = alloca i8, align 4
  %offset = alloca i64, align 8
  %bi_max_vecs = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 13
  %0 = load i16, i16* %bi_max_vecs, align 2
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %1 = load i16, i16* %bi_vcnt, align 8
  %sub = sub i16 %0, %1
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %3 = zext i16 %1 to i64
  %4 = getelementptr %struct.bio_vec, %struct.bio_vec* %2, i64 %3, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %same_page) #19
  store i8 0, i8* %same_page, align 4
  %5 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #19
  store i64 0, i64* %offset, align 8, !annotation !18
  %conv11 = zext i16 %sub to i64
  %add.ptr12 = getelementptr %struct.page*, %struct.page** %4, i64 %conv11
  %conv13 = zext i16 %sub to i32
  %call = call i64 @iov_iter_get_pages(%struct.iov_iter* noundef %iter, %struct.page** noundef %add.ptr12, i64 noundef 9223372036854775807, i32 noundef %conv13, i64* noundef nonnull %offset) #20
  %cmp = icmp slt i64 %call, 1
  br i1 %cmp, label %if.then, label %for.body.preheader, !prof !8

for.body.preheader:                               ; preds = %entry
  %.pre = load i64, i64* %offset, align 8
  br label %for.body

if.then:                                          ; preds = %entry
  %tobool17.not = icmp eq i64 %call, 0
  %6 = trunc i64 %call to i32
  %conv18 = select i1 %tobool17.not, i32 -14, i32 %6
  br label %cleanup67

for.body:                                         ; preds = %for.body.preheader, %if.end64
  %7 = phi i64 [ 0, %if.end64 ], [ %.pre, %for.body.preheader ]
  %left.0123 = phi i64 [ %sub66, %if.end64 ], [ %call, %for.body.preheader ]
  %i.0121 = phi i32 [ %inc, %if.end64 ], [ 0, %for.body.preheader ]
  %idxprom = zext i32 %i.0121 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %add.ptr12, i64 %idxprom
  %8 = load %struct.page*, %struct.page** %arrayidx, align 8
  %sub21 = sub i64 4096, %7
  %cmp22 = icmp ult i64 %sub21, %left.0123
  %cond27 = select i1 %cmp22, i64 %sub21, i64 %left.0123
  %conv28 = trunc i64 %cond27 to i32
  %conv29 = trunc i64 %7 to i32
  %call30 = call i1 @__bio_try_merge_page(%struct.bio* noundef %bio, %struct.page* noundef %8, i32 noundef %conv28, i32 noundef %conv29, i8* noundef nonnull %same_page) #21
  br i1 %call30, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body
  %9 = load i8, i8* %same_page, align 4, !range !32
  %tobool32.not = icmp eq i8 %9, 0
  br i1 %tobool32.not, label %if.end64, label %if.then33

if.then33:                                        ; preds = %if.then31
  call fastcc void @put_page(%struct.page* noundef %8) #21
  br label %if.end64

if.else:                                          ; preds = %for.body
  %call35 = call fastcc i1 @bio_full(%struct.bio* noundef %bio, i32 noundef %conv28) #21
  br i1 %call35, label %if.then48, label %if.end62, !prof !8

if.then48:                                        ; preds = %if.else
  %idxprom.le = zext i32 %i.0121 to i64
  %arrayidx.le = getelementptr %struct.page*, %struct.page** %add.ptr12, i64 %idxprom.le
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 1116; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !33
  %10 = load i64, i64* %offset, align 8
  call fastcc void @bio_put_pages(%struct.page** noundef %arrayidx.le, i64 noundef %left.0123, i64 noundef %10) #21
  br label %cleanup67

if.end62:                                         ; preds = %if.else
  %11 = load i64, i64* %offset, align 8
  %conv63 = trunc i64 %11 to i32
  call void @__bio_add_page(%struct.bio* noundef %bio, %struct.page* noundef %8, i32 noundef %conv28, i32 noundef %conv63) #21
  br label %if.end64

if.end64:                                         ; preds = %if.then31, %if.then33, %if.end62
  store i64 0, i64* %offset, align 8
  %conv65 = and i64 %cond27, 4294967295
  %sub66 = sub nsw i64 %left.0123, %conv65
  %inc = add i32 %i.0121, 1
  %cmp19 = icmp sgt i64 %sub66, 0
  br i1 %cmp19, label %for.body, label %for.end

for.end:                                          ; preds = %if.end64
  call void @iov_iter_advance(%struct.iov_iter* noundef %iter, i64 noundef %call) #20
  br label %cleanup67

cleanup67:                                        ; preds = %if.then48, %for.end, %if.then
  %retval.2 = phi i32 [ %conv18, %if.then ], [ -22, %if.then48 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #19
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %same_page) #19
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #9 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @submit_bio_wait(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %done = alloca %struct.completion, align 8
  %0 = bitcast %struct.completion* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19
  %task_list = getelementptr inbounds %struct.completion, %struct.completion* %done, i64 0, i32 1, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %task_list, i64 0, i32 0
  %1 = bitcast %struct.completion* %done to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store %struct.list_head* %task_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.completion, %struct.completion* %done, i64 0, i32 1, i32 1, i32 1
  store %struct.list_head* %task_list, %struct.list_head** %prev, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %2 = bitcast i8** %bi_private to %struct.completion**
  store %struct.completion* %done, %struct.completion** %2, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 9
  store void (%struct.bio*)* @submit_bio_wait_endio, void (%struct.bio*)** %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %3 = load i32, i32* %bi_opf, align 8
  %4 = or i32 %3, 2048
  store i32 %4, i32* %bi_opf, align 8
  %call = call i32 @submit_bio(%struct.bio* noundef %bio) #20
  call void @wait_for_completion_io(%struct.completion* noundef nonnull %done) #20
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  %5 = load i8, i8* %bi_status, align 2
  %call9 = call i32 @blk_status_to_errno(i8 noundef %5) #20
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19
  ret i32 %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @submit_bio_wait_endio(%struct.bio* nocapture noundef readonly %bio) #0 {
entry:
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = bitcast i8** %bi_private to %struct.completion**
  %1 = load %struct.completion*, %struct.completion** %0, align 8
  call void @complete(%struct.completion* noundef %1) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion_io(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_advance(%struct.bio* nocapture noundef %bio, i32 noundef %bytes) local_unnamed_addr #0 {
entry:
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8
  call fastcc void @bio_advance_iter(%struct.bio* noundef %bio, %struct.bvec_iter* noundef %bi_iter, i32 noundef %bytes) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_advance_iter(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #0 {
entry:
  %shr = lshr i32 %bytes, 9
  %conv = zext i32 %shr to i64
  %bi_sector = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %bi_sector, align 8
  %add = add i64 %0, %conv
  store i64 %add, i64* %bi_sector, align 8
  %call = call fastcc i1 @bio_no_advance_iter(%struct.bio* noundef %bio) #21
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %1, %bytes
  store i32 %sub, i32* %bi_size, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  call fastcc void @bvec_iter_advance(%struct.bio_vec* noundef %2, %struct.bvec_iter* noundef %iter, i32 noundef %bytes) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_copy_data_iter(%struct.bio* nocapture noundef readonly %dst, %struct.bvec_iter* nocapture noundef %dst_iter, %struct.bio* nocapture noundef readonly %src, %struct.bvec_iter* nocapture noundef %src_iter) local_unnamed_addr #0 {
entry:
  %src_bv = alloca %struct.bio_vec, align 8
  %dst_bv = alloca %struct.bio_vec, align 8
  %bi_size1 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %dst_iter, i64 0, i32 1
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %src_iter, i64 0, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %tobool.not174 = icmp eq i32 %0, 0
  br i1 %tobool.not174, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %1 = bitcast %struct.bio_vec* %src_bv to i8*
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %src_bv, i64 0, i32 0
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %src, i64 0, i32 15
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %src_iter, i64 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %src_iter, i64 0, i32 3
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %src_bv, i64 0, i32 1
  %bv_offset33 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %src_bv, i64 0, i32 2
  %2 = bitcast %struct.bio_vec* %dst_bv to i8*
  %bv_page44 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %dst_bv, i64 0, i32 0
  %bi_io_vec45 = getelementptr inbounds %struct.bio, %struct.bio* %dst, i64 0, i32 15
  %bi_idx46 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %dst_iter, i64 0, i32 2
  %bi_bvec_done55 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %dst_iter, i64 0, i32 3
  %bv_len60 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %dst_bv, i64 0, i32 1
  %bv_offset94 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %dst_bv, i64 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %3 = phi i32 [ %0, %land.rhs.lr.ph ], [ %21, %while.body ]
  %4 = load i32, i32* %bi_size1, align 8
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #19
  %5 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %6 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %6 to i64
  %bv_page3 = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom, i32 0
  %7 = load %struct.page*, %struct.page** %bv_page3, align 8
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom, i32 2
  %8 = load i32, i32* %bv_offset, align 4
  %9 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %9, %8
  %10 = lshr i32 %add, 12
  %div = zext i32 %10 to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %7, i64 %div
  store %struct.page* %add.ptr, %struct.page** %bv_page, align 8
  %bv_len13 = getelementptr %struct.bio_vec, %struct.bio_vec* %5, i64 %idxprom, i32 1
  %11 = load i32, i32* %bv_len13, align 8
  %sub = sub i32 %11, %9
  %cmp = icmp ult i32 %3, %sub
  %cond = select i1 %cmp, i32 %3, i32 %sub
  %12 = and i32 %add, 4095
  %narrow = sub nuw nsw i32 4096, %12
  %cmp27 = icmp ult i32 %cond, %narrow
  %cond32 = select i1 %cmp27, i32 %cond, i32 %narrow
  store i32 %cond32, i32* %bv_len, align 8
  store i32 %12, i32* %bv_offset33, align 4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #19
  %13 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec45, align 8
  %14 = load i32, i32* %bi_idx46, align 4
  %idxprom47 = zext i32 %14 to i64
  %bv_page49 = getelementptr %struct.bio_vec, %struct.bio_vec* %13, i64 %idxprom47, i32 0
  %15 = load %struct.page*, %struct.page** %bv_page49, align 8
  %bv_offset54 = getelementptr %struct.bio_vec, %struct.bio_vec* %13, i64 %idxprom47, i32 2
  %16 = load i32, i32* %bv_offset54, align 4
  %17 = load i32, i32* %bi_bvec_done55, align 8
  %add56 = add i32 %17, %16
  %18 = lshr i32 %add56, 12
  %div58 = zext i32 %18 to i64
  %add.ptr59 = getelementptr %struct.page, %struct.page* %15, i64 %div58
  store %struct.page* %add.ptr59, %struct.page** %bv_page44, align 8
  %bv_len66 = getelementptr %struct.bio_vec, %struct.bio_vec* %13, i64 %idxprom47, i32 1
  %19 = load i32, i32* %bv_len66, align 8
  %sub68 = sub i32 %19, %17
  %cmp70 = icmp ult i32 %4, %sub68
  %cond75 = select i1 %cmp70, i32 %4, i32 %sub68
  %20 = and i32 %add56, 4095
  %narrow173 = sub nuw nsw i32 4096, %20
  %cmp88 = icmp ult i32 %cond75, %narrow173
  %cond93 = select i1 %cmp88, i32 %cond75, i32 %narrow173
  store i32 %cond93, i32* %bv_len60, align 8
  store i32 %20, i32* %bv_offset94, align 4
  %cmp108 = icmp ult i32 %cond32, %cond93
  %cond113 = select i1 %cmp108, i32 %cond32, i32 %cond93
  %call = call fastcc i8* @bvec_kmap_local(%struct.bio_vec* noundef nonnull %src_bv) #21
  call fastcc void @memcpy_to_bvec(%struct.bio_vec* noundef nonnull %dst_bv, i8* noundef %call) #21
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef %src, %struct.bvec_iter* noundef %src_iter, i32 noundef %cond113) #21
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef %dst, %struct.bvec_iter* noundef %dst_iter, i32 noundef %cond113) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  %21 = load i32, i32* %bi_size, align 8
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @bvec_kmap_local(%struct.bio_vec* nocapture noundef readonly %bvec) unnamed_addr #5 {
entry:
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %bv_page, align 8
  %call = call fastcc i8* @kmap_local_page(%struct.page* noundef %0) #21
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 2
  %1 = load i32, i32* %bv_offset, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memcpy_to_bvec(%struct.bio_vec* nocapture noundef readonly %bvec, i8* noundef %from) unnamed_addr #0 {
entry:
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %bv_page, align 8
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 2
  %1 = load i32, i32* %bv_offset, align 4
  %conv = zext i32 %1 to i64
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 1
  %2 = load i32, i32* %bv_len, align 8
  %conv1 = zext i32 %2 to i64
  call fastcc void @memcpy_to_page(%struct.page* noundef %0, i64 noundef %conv, i8* noundef %from, i64 noundef %conv1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_copy_data(%struct.bio* nocapture noundef readonly %dst, %struct.bio* nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %src_iter = alloca %struct.bvec_iter, align 8
  %dst_iter = alloca %struct.bvec_iter, align 8
  %0 = bitcast %struct.bvec_iter* %src_iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %src, i64 0, i32 8
  %1 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %1, i64 24, i1 false)
  %2 = bitcast %struct.bvec_iter* %dst_iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #19
  %bi_iter1 = getelementptr inbounds %struct.bio, %struct.bio* %dst, i64 0, i32 8
  %3 = bitcast %struct.bvec_iter* %bi_iter1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @bio_copy_data_iter(%struct.bio* noundef %dst, %struct.bvec_iter* noundef nonnull %dst_iter, %struct.bio* noundef %src, %struct.bvec_iter* noundef nonnull %src_iter) #21
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_free_pages(%struct.bio* nocapture noundef readonly %bio) local_unnamed_addr #0 {
entry:
  %iter_all = alloca %struct.bvec_iter_all, align 8
  %0 = bitcast %struct.bvec_iter_all* %iter_all to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !18
  %call = call fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef nonnull %iter_all) #21
  %call13 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #21
  br i1 %call13, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  call void @__free_pages(%struct.page* noundef %1, i32 noundef 0) #20
  %call1 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #21
  br i1 %call1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_set_pages_dirty(%struct.bio* nocapture noundef readonly %bio) local_unnamed_addr #0 {
entry:
  %iter_all = alloca %struct.bvec_iter_all, align 8
  %0 = bitcast %struct.bvec_iter_all* %iter_all to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !18
  %call = call fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef nonnull %iter_all) #21
  %call18 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #21
  br i1 %call18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 65536
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.end

PageCompound.exit:                                ; preds = %for.body
  %4 = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.2* %4 to i64*
  %5 = load volatile i64, i64* %compound_head.i.i, align 8
  %6 = and i64 %5, 1
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %PageCompound.exit
  %call4 = call i32 @set_page_dirty_lock(%struct.page* noundef %1) #20
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then, %PageCompound.exit
  %call1 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #21
  br i1 %call1, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_check_pages_dirty(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %iter_all = alloca %struct.bvec_iter_all, align 8
  %0 = bitcast %struct.bvec_iter_all* %iter_all to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !18
  %call = call fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef nonnull %iter_all) #21
  %call123 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #21
  br i1 %call123, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %1) #20
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.page*, %struct.page** %bv_page, align 8
  %flags.i21 = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i21, align 8
  %7 = and i64 %6, 65536
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.end

PageCompound.exit:                                ; preds = %land.lhs.true
  %8 = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.2* %8 to i64*
  %9 = load volatile i64, i64* %compound_head.i.i, align 8
  %10 = and i64 %9, 1
  %tobool5.not = icmp eq i64 %10, 0
  br i1 %tobool5.not, label %do.body6, label %if.end

if.end:                                           ; preds = %land.lhs.true, %PageCompound.exit, %for.body
  %call1 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #21
  br i1 %call1, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  call void @bio_release_pages(%struct.bio* noundef %bio, i1 noundef false) #21
  call void @bio_put(%struct.bio* noundef %bio) #21
  br label %cleanup

do.body6:                                         ; preds = %PageCompound.exit
  %call8 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bio_dirty_lock, i64 0, i32 0, i32 0)) #21
  %11 = load i8*, i8** bitcast (%struct.bio** @bio_dirty_list to i8**), align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  store i8* %11, i8** %bi_private, align 8
  store %struct.bio* %bio, %struct.bio** @bio_dirty_list, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call8) #20
  call fastcc void @schedule_work() #21
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %for.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #21
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #21
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work() unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef nonnull @bio_dirty_work) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_endio(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %call46 = call fastcc i1 @bio_remaining_done(%struct.bio* noundef %bio) #21
  br i1 %call46, label %if.end, label %if.end24

if.end:                                           ; preds = %entry, %if.then17
  %bio.addr.047 = phi %struct.bio* [ %call18, %if.then17 ], [ %bio, %entry ]
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.047, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %tobool.not = icmp eq %struct.block_device* %0, null
  br i1 %tobool.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio.addr.047, i32 noundef 10) #21
  br i1 %call4, label %if.end7, label %land.lhs.true10

if.end7:                                          ; preds = %land.lhs.true
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  call fastcc void @rq_qos_done_bio(%struct.request_queue* noundef %2, %struct.bio* noundef %bio.addr.047) #21
  %.pr = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %tobool9.not = icmp eq %struct.block_device* %.pr, null
  br i1 %tobool9.not, label %if.end16, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true, %if.end7
  %call11 = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio.addr.047, i32 noundef 8) #21
  br i1 %call11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true10
  call fastcc void @bio_clear_flag(%struct.bio* noundef %bio.addr.047, i32 noundef 8) #21
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then12, %land.lhs.true10, %if.end7
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.047, i64 0, i32 9
  %3 = load void (%struct.bio*)*, void (%struct.bio*)** %bi_end_io, align 8
  %cmp = icmp eq void (%struct.bio*)* %3, @bio_chain_endio
  br i1 %cmp, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end16
  %call18 = call fastcc %struct.bio* @__bio_chain_endio(%struct.bio* noundef %bio.addr.047) #21
  %call = call fastcc i1 @bio_remaining_done(%struct.bio* noundef %call18) #21
  br i1 %call, label %if.end, label %if.end24

if.end19:                                         ; preds = %if.end16
  %tobool21.not = icmp eq void (%struct.bio*)* %3, null
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void %3(%struct.bio* noundef %bio.addr.047) #20
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %entry, %if.then22, %if.end19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bio_remaining_done(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 5) #21
  br i1 %call, label %do.body, label %return

do.body:                                          ; preds = %entry
  %__bi_remaining = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 7
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %__bi_remaining, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %do.body4, label %do.end8, !prof !8

do.body4:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 1438; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !35
  unreachable

do.end8:                                          ; preds = %do.body
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %__bi_remaining) #20
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then11, label %return

if.then11:                                        ; preds = %do.end8
  call fastcc void @bio_clear_flag(%struct.bio* noundef %bio, i32 noundef 5) #21
  br label %return

return:                                           ; preds = %do.end8, %entry, %if.then11
  %retval.0 = phi i1 [ true, %if.then11 ], [ true, %entry ], [ false, %do.end8 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_done_bio(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_done_bio(%struct.rq_qos* noundef nonnull %0, %struct.bio* noundef %bio) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @__bio_chain_endio(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = bitcast i8** %bi_private to %struct.bio**
  %1 = load %struct.bio*, %struct.bio** %0, align 8
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  %2 = load i8, i8* %bi_status, align 2
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bi_status1 = getelementptr inbounds %struct.bio, %struct.bio* %1, i64 0, i32 6
  %3 = load i8, i8* %bi_status1, align 2
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8 %2, i8* %bi_status1, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @bio_put(%struct.bio* noundef %bio) #21
  ret %struct.bio* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.bio* @bio_split(%struct.bio* nocapture noundef %bio, i32 noundef %sectors, i32 noundef %gfp, %struct.bio_set* noundef %bs) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %sectors, 1
  br i1 %cmp, label %do.body2, label %do.body8, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 1517; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !36
  unreachable

do.body8:                                         ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %0, 9
  %cmp9.not = icmp ugt i32 %shr, %sectors
  br i1 %cmp9.not, label %do.end27, label %do.body19, !prof !13

do.body19:                                        ; preds = %do.body8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 1518; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !37
  unreachable

do.end27:                                         ; preds = %do.body8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %1 = load i32, i32* %bi_opf, align 8
  %and = and i32 %1, 255
  %cmp28 = icmp eq i32 %and, 13
  br i1 %cmp28, label %if.then42, label %if.end53, !prof !8

if.then42:                                        ; preds = %do.end27
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 1521; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !38
  br label %cleanup

if.end53:                                         ; preds = %do.end27
  %call = call %struct.bio* @bio_clone_fast(%struct.bio* noundef %bio, i32 noundef %gfp, %struct.bio_set* noundef %bs) #21
  %tobool54.not = icmp eq %struct.bio* %call, null
  br i1 %tobool54.not, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end53
  %shl = shl i32 %sectors, 9
  %bi_size58 = getelementptr inbounds %struct.bio, %struct.bio* %call, i64 0, i32 8, i32 1
  store i32 %shl, i32* %bi_size58, align 8
  call void @bio_advance(%struct.bio* noundef %bio, i32 noundef %shl) #21
  %call65 = call fastcc i1 @bio_flagged(%struct.bio* noundef %bio, i32 noundef 8) #21
  br i1 %call65, label %if.then66, label %cleanup

if.then66:                                        ; preds = %if.end56
  call fastcc void @bio_set_flag(%struct.bio* noundef nonnull %call, i32 noundef 8) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end56, %if.then66, %if.end53
  %retval.0 = phi %struct.bio* [ null, %if.then42 ], [ null, %if.end53 ], [ %call, %if.then66 ], [ %call, %if.end56 ]
  ret %struct.bio* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bio_trim(%struct.bio* nocapture noundef %bio, i64 noundef %offset, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %0 = or i64 %size, %offset
  %.not = icmp ult i64 %0, 8388608
  br i1 %.not, label %lor.rhs, label %if.then

lor.rhs:                                          ; preds = %entry
  %add = add nuw nsw i64 %size, %offset
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %conv = zext i32 %1 to i64
  %cmp2 = icmp ugt i64 %add, %conv
  br i1 %cmp2, label %if.then, label %if.end20, !prof !8

if.then:                                          ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 1554; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !39
  br label %if.end37

if.end20:                                         ; preds = %lor.rhs
  %shl = shl nuw nsw i64 %size, 9
  %cmp21 = icmp eq i64 %offset, 0
  %cmp26 = icmp eq i64 %shl, %conv
  %or.cond = select i1 %cmp21, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.end37, label %if.end29

if.end29:                                         ; preds = %if.end20
  %offset.tr = trunc i64 %offset to i32
  %conv31 = shl nuw i32 %offset.tr, 9
  call void @bio_advance(%struct.bio* noundef %bio, i32 noundef %conv31) #21
  %conv32 = trunc i64 %shl to i32
  store i32 %conv32, i32* %bi_size, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end20, %if.then, %if.end29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @biovec_init_pool(%struct.mempool_s* noundef %pool, i32 noundef %pool_entries) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 3, i32 2), align 8
  %call = call fastcc i32 @mempool_init_slab_pool(%struct.mempool_s* noundef %pool, i32 noundef %pool_entries, %struct.kmem_cache* noundef %0) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mempool_init_slab_pool(%struct.mempool_s* noundef %pool, i32 noundef %min_nr, %struct.kmem_cache* noundef %kc) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kmem_cache* %kc to i8*
  %call = call i32 @mempool_init(%struct.mempool_s* noundef %pool, i32 noundef %min_nr, i8* (i32, i8*)* noundef nonnull @mempool_alloc_slab, void (i8*, i8*)* noundef nonnull @mempool_free_slab, i8* noundef %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bioset_exit(%struct.bio_set* noundef %bs) local_unnamed_addr #0 {
entry:
  call fastcc void @bio_alloc_cache_destroy(%struct.bio_set* noundef %bs) #21
  %rescue_workqueue = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 9
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %rescue_workqueue, align 8
  %tobool.not = icmp eq %struct.workqueue_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @destroy_workqueue(%struct.workqueue_struct* noundef nonnull %0) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.workqueue_struct* null, %struct.workqueue_struct** %rescue_workqueue, align 8
  %bio_pool = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 3
  call void @mempool_exit(%struct.mempool_s* noundef %bio_pool) #20
  %bvec_pool = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 4
  call void @mempool_exit(%struct.mempool_s* noundef %bvec_pool) #20
  %bio_slab = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 0
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %bio_slab, align 8
  %tobool3.not = icmp eq %struct.kmem_cache* %1, null
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @bio_put_slab(%struct.bio_set* noundef %bs) #21
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  store %struct.kmem_cache* null, %struct.kmem_cache** %bio_slab, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_alloc_cache_destroy(%struct.bio_set* noundef %bs) unnamed_addr #0 {
entry:
  %cache = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 2
  %0 = load %struct.bio_alloc_cache*, %struct.bio_alloc_cache** %cache, align 8
  %tobool.not = icmp eq %struct.bio_alloc_cache* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cpuhp_dead = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 10
  call fastcc void @cpuhp_state_remove_instance_nocalls(%struct.hlist_node* noundef %cpuhp_dead) #21
  %call115 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #24
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp16 = icmp ult i32 %call115, %1
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %call117 = phi i32 [ %call1, %for.body ], [ %call115, %if.end ]
  %2 = load %struct.bio_alloc_cache*, %struct.bio_alloc_cache** %cache, align 8
  %3 = ptrtoint %struct.bio_alloc_cache* %2 to i64
  %idxprom = sext i32 %call117 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to %struct.bio_alloc_cache*
  call fastcc void @bio_alloc_cache_prune(%struct.bio_alloc_cache* noundef %5, i32 noundef -1) #21
  %call1 = call i32 @cpumask_next(i32 noundef %call117, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #24
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %7 = bitcast %struct.bio_alloc_cache** %cache to i8**
  %8 = load i8*, i8** %7, align 8
  call void @free_percpu(i8* noundef %8) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(%struct.workqueue_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(%struct.mempool_s* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_put_slab(%struct.bio_set* nocapture noundef readonly %bs) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @bs_bio_slab_size(%struct.bio_set* noundef %bs) #21
  call void @mutex_lock(%struct.mutex* noundef nonnull @bio_slab_lock) #20
  %conv = zext i32 %call to i64
  %call1 = call i8* @xa_load(%struct.xarray* noundef nonnull @bio_slabs, i64 noundef %conv) #20
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !8

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0)) #20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 138; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !40
  br label %out

if.end26:                                         ; preds = %entry
  %slab = bitcast i8* %call1 to %struct.kmem_cache**
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %slab, align 8
  %bio_slab = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 0
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %bio_slab, align 8
  %cmp.not = icmp eq %struct.kmem_cache* %0, %1
  br i1 %cmp.not, label %if.end42, label %if.then41, !prof !13

if.then41:                                        ; preds = %if.end26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 141; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !41
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end26
  %slab_ref = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %slab_ref to i32*
  %3 = load i32, i32* %2, align 8
  %tobool52.not = icmp eq i32 %3, 0
  br i1 %tobool52.not, label %if.then67, label %if.end68, !prof !8

if.then67:                                        ; preds = %if.end42
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 143; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !42
  %.pre = load i32, i32* %2, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end42
  %4 = phi i32 [ %.pre, %if.then67 ], [ %3, %if.end42 ]
  %dec = add i32 %4, -1
  store i32 %dec, i32* %2, align 8
  %tobool78.not = icmp eq i32 %dec, 0
  br i1 %tobool78.not, label %if.end80, label %out

if.end80:                                         ; preds = %if.end68
  %call82 = call i8* @xa_erase(%struct.xarray* noundef nonnull @bio_slabs, i64 noundef %conv) #20
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** %slab, align 8
  call void @kmem_cache_destroy(%struct.kmem_cache* noundef %5) #20
  call void @kfree(i8* noundef nonnull %call1) #20
  br label %out

out:                                              ; preds = %do.end, %if.end68, %if.end80
  call void @mutex_unlock(%struct.mutex* noundef nonnull @bio_slab_lock) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bioset_init(%struct.bio_set* noundef %bs, i32 noundef %pool_size, i32 noundef %front_pad, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %front_pad1 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 1
  store i32 %front_pad, i32* %front_pad1, align 8
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %0 = shl nuw nsw i32 %and, 6
  %1 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 5
  store i32 %0, i32* %1, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %rescue_list = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 7
  call fastcc void @bio_list_init(%struct.bio_list* noundef %rescue_list) #21
  %.compoundliteral6.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 8, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral6.sroa.0.0..sroa_idx, align 8
  %entry9 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 8, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry9) #21
  %func = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 8, i32 2
  store void (%struct.work_struct*)* @bio_alloc_rescue, void (%struct.work_struct*)** %func, align 8
  %call12 = call fastcc %struct.kmem_cache* @bio_find_or_create_slab(%struct.bio_set* noundef %bs) #21
  %bio_slab = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 0
  store %struct.kmem_cache* %call12, %struct.kmem_cache** %bio_slab, align 8
  %tobool14.not = icmp eq %struct.kmem_cache* %call12, null
  br i1 %tobool14.not, label %return, label %if.end16

if.end16:                                         ; preds = %entry
  %bio_pool = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 3
  %call18 = call fastcc i32 @mempool_init_slab_pool(%struct.mempool_s* noundef %bio_pool, i32 noundef %pool_size, %struct.kmem_cache* noundef nonnull %call12) #21
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %bad

if.end21:                                         ; preds = %if.end16
  br i1 %tobool.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end21
  %bvec_pool = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 4
  %call24 = call i32 @biovec_init_pool(%struct.mempool_s* noundef %bvec_pool, i32 noundef %pool_size) #21
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %bad

if.end27:                                         ; preds = %land.lhs.true, %if.end21
  %and28 = and i32 %flags, 2
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end36, label %if.then30

if.then30:                                        ; preds = %if.end27
  %call31 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 8, i32 noundef 0) #20
  %rescue_workqueue = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 9
  store %struct.workqueue_struct* %call31, %struct.workqueue_struct** %rescue_workqueue, align 8
  %tobool33.not = icmp eq %struct.workqueue_struct* %call31, null
  br i1 %tobool33.not, label %bad, label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end27
  %and37 = and i32 %flags, 4
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %return, label %if.then39

if.then39:                                        ; preds = %if.end36
  %call40 = call i8* @__alloc_percpu(i64 noundef 24, i64 noundef 8) #20
  %cache = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 2
  %2 = bitcast %struct.bio_alloc_cache** %cache to i8**
  store i8* %call40, i8** %2, align 8
  %tobool42.not = icmp eq i8* %call40, null
  br i1 %tobool42.not, label %bad, label %if.end44

if.end44:                                         ; preds = %if.then39
  %cpuhp_dead = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 10
  call fastcc void @cpuhp_state_add_instance_nocalls(%struct.hlist_node* noundef %cpuhp_dead) #21
  br label %return

bad:                                              ; preds = %if.then39, %if.then30, %land.lhs.true, %if.end16
  call void @bioset_exit(%struct.bio_set* noundef %bs) #21
  br label %return

return:                                           ; preds = %if.end36, %if.end44, %entry, %bad
  %retval.0 = phi i32 [ -12, %bad ], [ -12, %entry ], [ 0, %if.end44 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @bio_list_init(%struct.bio_list* nocapture noundef writeonly %bl) unnamed_addr #11 {
entry:
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  store %struct.bio* null, %struct.bio** %tail, align 8
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  store %struct.bio* null, %struct.bio** %head, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bio_alloc_rescue(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr9 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -6
  %0 = bitcast %struct.work_struct* %add.ptr9 to %struct.bio_set*
  %rlock.i = getelementptr inbounds %struct.bio_set, %struct.bio_set* %0, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %rescue_list = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -1, i32 1, i32 1
  %1 = bitcast %struct.list_head** %rescue_list to %struct.bio_list*
  %call11 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef %1) #21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  %tobool.not12 = icmp eq %struct.bio* %call11, null
  br i1 %tobool.not12, label %while.end, label %if.end

if.end:                                           ; preds = %entry, %if.end
  %call13 = phi %struct.bio* [ %call, %if.end ], [ %call11, %entry ]
  %call2 = call i32 @submit_bio_noacct(%struct.bio* noundef nonnull %call13) #20
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #20
  %call = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef %1) #21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #20
  %tobool.not = icmp eq %struct.bio* %call, null
  br i1 %tobool.not, label %while.end, label %if.end

while.end:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kmem_cache* @bio_find_or_create_slab(%struct.bio_set* nocapture noundef readonly %bs) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @bs_bio_slab_size(%struct.bio_set* noundef %bs) #21
  call void @mutex_lock(%struct.mutex* noundef nonnull @bio_slab_lock) #20
  %conv = zext i32 %call to i64
  %call1 = call i8* @xa_load(%struct.xarray* noundef nonnull @bio_slabs, i64 noundef %conv) #20
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call1 to %struct.bio_slab*
  %slab_ref = getelementptr inbounds i8, i8* %call1, i64 8
  %1 = bitcast i8* %slab_ref to i32*
  %2 = load i32, i32* %1, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call fastcc %struct.bio_slab* @create_bio_slab(i32 noundef %call) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bslab.0 = phi %struct.bio_slab* [ %0, %if.then ], [ %call2, %if.else ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @bio_slab_lock) #20
  %tobool3.not = icmp eq %struct.bio_slab* %bslab.0, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %slab = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %bslab.0, i64 0, i32 0
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** %slab, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4
  %retval.0 = phi %struct.kmem_cache* [ %3, %if.then4 ], [ null, %if.end ]
  ret %struct.kmem_cache* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8* noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_state_add_instance_nocalls(%struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_state_add_instance(i32 noundef 23, %struct.hlist_node* noundef %node, i1 noundef false) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bioset_init_from_src(%struct.bio_set* noundef %bs, %struct.bio_set* nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %min_nr = getelementptr inbounds %struct.bio_set, %struct.bio_set* %src, i64 0, i32 4, i32 1
  %0 = load i32, i32* %min_nr, align 4
  %tobool.not = icmp ne i32 %0, 0
  %spec.select = zext i1 %tobool.not to i32
  %rescue_workqueue = getelementptr inbounds %struct.bio_set, %struct.bio_set* %src, i64 0, i32 9
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** %rescue_workqueue, align 8
  %tobool1.not = icmp eq %struct.workqueue_struct* %1, null
  %or3 = or i32 %spec.select, 2
  %flags.1 = select i1 %tobool1.not, i32 %spec.select, i32 %or3
  %min_nr5 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %src, i64 0, i32 3, i32 1
  %2 = load i32, i32* %min_nr5, align 4
  %front_pad = getelementptr inbounds %struct.bio_set, %struct.bio_set* %src, i64 0, i32 1
  %3 = load i32, i32* %front_pad, align 8
  %call = call i32 @bioset_init(%struct.bio_set* noundef %bs, i32 noundef %2, i32 noundef %3, i32 noundef %flags.1) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.bio* @bio_alloc_kiocb(%struct.kiocb* nocapture noundef readonly %kiocb, i16 noundef %nr_vecs, %struct.bio_set* noundef %bs) local_unnamed_addr #0 {
entry:
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 4
  %0 = load i32, i32* %ki_flags, align 8
  %and = and i32 %0, 2097152
  %tobool = icmp eq i32 %and, 0
  %cmp = icmp ugt i16 %nr_vecs, 4
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call = call %struct.bio* @bio_alloc_bioset(i32 noundef 3264, i16 noundef %nr_vecs, %struct.bio_set* noundef %bs) #21
  br label %cleanup

do.body:                                          ; preds = %entry
  %cache2 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 2
  %1 = load %struct.bio_alloc_cache*, %struct.bio_alloc_cache** %cache2, align 8
  %2 = ptrtoint %struct.bio_alloc_cache* %1 to i64
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !43
  %call12 = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call12, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add13 = add i64 %5, %2
  %6 = inttoptr i64 %add13 to %struct.bio_alloc_cache*
  %free_list = getelementptr inbounds %struct.bio_alloc_cache, %struct.bio_alloc_cache* %6, i64 0, i32 0
  %call14 = call fastcc %struct.bio* @bio_list_pop(%struct.bio_list* noundef %free_list) #21
  %tobool15.not = icmp eq %struct.bio* %call14, null
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %do.body
  %nr = getelementptr inbounds %struct.bio_alloc_cache, %struct.bio_alloc_cache* %6, i64 0, i32 1
  %7 = load i32, i32* %nr, align 8
  %dec = add i32 %7, -1
  store i32 %dec, i32* %nr, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !44
  %tobool18.not = icmp eq i16 %nr_vecs, 0
  %arraydecay = getelementptr inbounds %struct.bio, %struct.bio* %call14, i64 0, i32 17, i64 0
  %cond = select i1 %tobool18.not, %struct.bio_vec* null, %struct.bio_vec* %arraydecay
  call void @bio_init(%struct.bio* noundef nonnull %call14, %struct.bio_vec* noundef %cond, i16 noundef %nr_vecs) #21
  %bi_pool = getelementptr inbounds %struct.bio, %struct.bio* %call14, i64 0, i32 16
  store %struct.bio_set* %bs, %struct.bio_set** %bi_pool, align 8
  call fastcc void @bio_set_flag(%struct.bio* noundef nonnull %call14, i32 noundef 13) #21
  br label %cleanup

if.end19:                                         ; preds = %do.body
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !45
  %call20 = call %struct.bio* @bio_alloc_bioset(i32 noundef 3264, i16 noundef %nr_vecs, %struct.bio_set* noundef %bs) #21
  call fastcc void @bio_set_flag(%struct.bio* noundef %call20, i32 noundef 13) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then
  %retval.0 = phi %struct.bio* [ %call, %if.then ], [ %call14, %if.then16 ], [ %call20, %if.end19 ]
  ret %struct.bio* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.bio* @bio_list_pop(%struct.bio_list* nocapture noundef %bl) unnamed_addr #9 {
entry:
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %head, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 0
  %1 = load %struct.bio*, %struct.bio** %bi_next, align 8
  store %struct.bio* %1, %struct.bio** %head, align 8
  %tobool4.not = icmp eq %struct.bio* %1, null
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  store %struct.bio* null, %struct.bio** %tail, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  store %struct.bio* null, %struct.bio** %bi_next, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret %struct.bio* %0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_bio() #12 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %name = getelementptr [4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 %indvars.iv, i32 1
  %0 = load i8*, i8** %name, align 8
  %nr_vecs = getelementptr [4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 %indvars.iv, i32 0
  %1 = load i32, i32* %nr_vecs, align 8
  %mul = shl i32 %1, 4
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef %0, i32 noundef %mul, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #20
  %slab = getelementptr [4 x %struct.biovec_slab], [4 x %struct.biovec_slab]* @bvec_slabs, i64 0, i64 %indvars.iv, i32 2
  store %struct.kmem_cache* %call, %struct.kmem_cache** %slab, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call fastcc void @cpuhp_setup_state_multi() #21
  %call5 = call i32 @bioset_init(%struct.bio_set* noundef nonnull @fs_bio_set, i32 noundef 2, i32 noundef 0, i32 noundef 1) #21
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)) #25
  unreachable

if.end:                                           ; preds = %for.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_list_add(%struct.bio_list* nocapture noundef %bl, %struct.bio* noundef %bio) unnamed_addr #9 {
entry:
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 0
  store %struct.bio* null, %struct.bio** %bi_next, align 8
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  %0 = load %struct.bio*, %struct.bio** %tail, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  %bi_next2 = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 0
  %head.sink = select i1 %tobool.not, %struct.bio** %head, %struct.bio** %bi_next2
  store %struct.bio* %bio, %struct.bio** %head.sink, align 8
  store %struct.bio* %bio, %struct.bio** %tail, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_list_merge(%struct.bio_list* nocapture noundef %bl, %struct.bio_list* nocapture noundef readonly %bl2) unnamed_addr #9 {
entry:
  %head = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl2, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %head, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 1
  %1 = load %struct.bio*, %struct.bio** %tail, align 8
  %tobool1.not = icmp eq %struct.bio* %1, null
  %head6 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl, i64 0, i32 0
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %1, i64 0, i32 0
  %head6.sink = select i1 %tobool1.not, %struct.bio** %head6, %struct.bio** %bi_next
  store %struct.bio* %0, %struct.bio** %head6.sink, align 8
  %tail8 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %bl2, i64 0, i32 1
  %2 = load %struct.bio*, %struct.bio** %tail8, align 8
  store %struct.bio* %2, %struct.bio** %tail, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #20
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #20
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #19, !srcloc !48
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #19, !srcloc !50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memzero_page(%struct.page* noundef %page, i64 noundef %offset, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_local_page(%struct.page* noundef %page) #21
  %add.ptr = getelementptr i8, i8* %call, i64 %offset
  %call1 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %len) #20
  call void @flush_dcache_page(%struct.page* noundef %page) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap_local_page(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_no_advance_iter(%struct.bio* nocapture noundef readonly %bio) unnamed_addr #5 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %trunc = trunc i32 %0 to i8
  %switch.tableidx = add i8 %trunc, -3
  %1 = icmp ult i8 %switch.tableidx, 7
  %2 = and i8 %switch.tableidx, 1
  %switch.idx.cast.not = icmp eq i8 %2, 0
  %3 = select i1 %1, i1 %switch.idx.cast.not, i1 false
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bvec_iter_advance_single(%struct.bio_vec* nocapture noundef readonly %bv, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #9 {
entry:
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %0 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %0, %bytes
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %1 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %1 to i64
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %bv, i64 %idxprom, i32 1
  %2 = load i32, i32* %bv_len, align 8
  %cmp = icmp eq i32 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add i32 %1, 1
  store i32 %inc, i32* %bi_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %done.0 = phi i32 [ 0, %if.then ], [ %add, %entry ]
  store i32 %done.0, i32* %bi_bvec_done, align 8
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %3, %bytes
  store i32 %sub, i32* %bi_size, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start1, i32 noundef %end1) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #21
  %conv = zext i32 %end1 to i64
  %call1 = call fastcc i64 @page_size(%struct.page* noundef %page) #21
  %cmp = icmp ult i64 %call1, %conv
  br i1 %cmp, label %do.body9, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %entry
  %call4 = call fastcc i64 @page_size(%struct.page* noundef %page) #21
  %cmp15 = icmp ugt i32 %end1, %start1
  br i1 %cmp15, label %if.then17, label %do.end33

do.body9:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/highmem.h\22; .popsection; .long 14472b - 14470b; .short 208; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !51
  unreachable

if.then17:                                        ; preds = %lor.rhs
  %idx.ext = zext i32 %start1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub = sub i32 %end1, %start1
  %conv18 = zext i32 %sub to i64
  %call19 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv18) #20
  br label %do.end33

do.end33:                                         ; preds = %lor.rhs, %if.then17
  call fastcc void @__kunmap_atomic() #21
  %call371 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #21
  %cmp382.not = icmp eq i64 %call371, 0
  br i1 %cmp382.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end33, %for.body
  %conv364 = phi i64 [ %conv36, %for.body ], [ 0, %do.end33 ]
  %add.ptr41 = getelementptr %struct.page, %struct.page* %page, i64 %conv364
  call void @flush_dcache_page(%struct.page* noundef %add.ptr41) #20
  %inc = add nuw nsw i64 %conv364, 1
  %conv36 = and i64 %inc, 4294967295
  %call37 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #21
  %cmp38 = icmp ugt i64 %call37, %conv36
  br i1 %cmp38, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !52
  call fastcc void @pagefault_disable() #21
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #14 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #21
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #21
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #14 {
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
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !17
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #14 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.2* %2 to %struct.anon.62*
  %compound_order = getelementptr inbounds %struct.anon.62, %struct.anon.62* %3, i64 0, i32 2
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
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !55
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !17
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #5 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !56
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @queue_segment_boundary(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %seg_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 1
  %0 = load i64, i64* %seg_boundary_mask, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_segment_size(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %max_segment_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 7
  %0 = load i32, i32* %max_segment_size, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @queue_virt_boundary(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %virt_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 2
  %0 = load i64, i64* %virt_boundary_mask, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__bvec_gap_to_prev(%struct.request_queue* nocapture noundef readonly %q, %struct.bio_vec* nocapture noundef readonly %bprv, i32 noundef %offset) unnamed_addr #5 {
entry:
  %conv = zext i32 %offset to i64
  %call = call fastcc i64 @queue_virt_boundary(%struct.request_queue* noundef %q) #21
  %and = and i64 %call, %conv
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bprv, i64 0, i32 2
  %0 = load i32, i32* %bv_offset, align 4
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bprv, i64 0, i32 1
  %1 = load i32, i32* %bv_len, align 8
  %add = add i32 %1, %0
  %conv1 = zext i32 %add to i64
  %and3 = and i64 %call, %conv1
  %tobool4 = icmp ne i64 %and3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool4, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #14 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.2* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bvec_advance(%struct.bio_vec* nocapture noundef readonly %bvec, %struct.bvec_iter_all* nocapture noundef %iter_all) unnamed_addr #9 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iov_iter_type(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %iter_type = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  %0 = load i8, i8* %iter_type, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @iov_iter_truncate(%struct.iov_iter* nocapture noundef %i, i64 noundef %count) unnamed_addr #9 {
entry:
  %count1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count1, align 8
  %cmp = icmp ugt i64 %0, %count
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %count, i64* %count1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__bio_iov_bvec_set(%struct.bio* nocapture noundef %bio, %struct.iov_iter* nocapture noundef readonly %iter) unnamed_addr #0 {
entry:
  %bi_max_vecs = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 13
  %0 = load i16, i16* %bi_max_vecs, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bio.c\22; .popsection; .long 14472b - 14470b; .short 1036; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 5, i32 0
  %1 = load i64, i64* %nr_segs, align 8
  %conv15 = trunc i64 %1 to i16
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  store i16 %conv15, i16* %bi_vcnt, align 8
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 4
  %bvec = bitcast %union.anon.48* %2 to %struct.bio_vec**
  %3 = load %struct.bio_vec*, %struct.bio_vec** %bvec, align 8
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  store %struct.bio_vec* %3, %struct.bio_vec** %bi_io_vec, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 2
  %4 = load i64, i64* %iov_offset, align 8
  %conv16 = trunc i64 %4 to i32
  %bi_bvec_done = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 3
  store i32 %conv16, i32* %bi_bvec_done, align 8
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 3
  %5 = load i64, i64* %count, align 8
  %conv17 = trunc i64 %5 to i32
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  store i32 %conv17, i32* %bi_size, align 8
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 0) #21
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 1) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iov_iter_get_pages(%struct.iov_iter* noundef, %struct.page** noundef, i64 noundef, i32 noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_put_pages(%struct.page** nocapture noundef readonly %pages, i64 noundef %size, i64 noundef %off) unnamed_addr #0 {
entry:
  %and = and i64 %off, 4095
  %add = add i64 %size, 4095
  %sub = add i64 %add, %and
  %cmp6.not = icmp ult i64 %sub, 4096
  br i1 %cmp6.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i64 %sub, 12
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.07 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %i.07
  %0 = load %struct.page*, %struct.page** %arrayidx, align 8
  call fastcc void @put_page(%struct.page* noundef %0) #21
  %inc = add nuw nsw i64 %i.07, 1
  %exitcond.not = icmp eq i64 %inc, %div
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bvec_iter_advance(%struct.bio_vec* nocapture noundef readonly %bv, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #0 {
entry:
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %0 = load i32, i32* %bi_idx, align 4
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %cmp = icmp ult i32 %1, %bytes
  %.b1 = load i1, i1* @bvec_iter_advance.__already_done, align 1
  %lnot3 = xor i1 %.b1, true
  %2 = select i1 %cmp, i1 %lnot3, i1 false
  br i1 %2, label %if.then, label %if.end29, !prof !8

if.then:                                          ; preds = %entry
  store i1 true, i1* @bvec_iter_advance.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/bvec.h\22; .popsection; .long 14472b - 14470b; .short 107; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !58
  br label %if.end29

if.end29:                                         ; preds = %if.then, %entry
  br i1 %cmp, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end29
  store i32 0, i32* %bi_size, align 8
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %3 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %3, %bytes
  store i32 %sub, i32* %bi_size, align 8
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %4 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %4, %bytes
  %tobool43.not2 = icmp eq i32 %add, 0
  br i1 %tobool43.not2, label %while.end, label %land.rhs44

land.rhs44:                                       ; preds = %if.end41, %while.body
  %bytes.addr.04 = phi i32 [ %sub51, %while.body ], [ %add, %if.end41 ]
  %idx.03 = phi i32 [ %inc, %while.body ], [ %0, %if.end41 ]
  %idxprom = zext i32 %idx.03 to i64
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %bv, i64 %idxprom, i32 1
  %5 = load i32, i32* %bv_len, align 8
  %cmp45.not = icmp ult i32 %bytes.addr.04, %5
  br i1 %cmp45.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs44
  %sub51 = sub i32 %bytes.addr.04, %5
  %inc = add i32 %idx.03, 1
  %tobool43.not = icmp eq i32 %sub51, 0
  br i1 %tobool43.not, label %while.end, label %land.rhs44

while.end:                                        ; preds = %land.rhs44, %while.body, %if.end41
  %idx.0.lcssa = phi i32 [ %0, %if.end41 ], [ %inc, %while.body ], [ %idx.03, %land.rhs44 ]
  %bytes.addr.0.lcssa = phi i32 [ 0, %if.end41 ], [ 0, %while.body ], [ %bytes.addr.04, %land.rhs44 ]
  store i32 %idx.0.lcssa, i32* %bi_idx, align 4
  store i32 %bytes.addr.0.lcssa, i32* %bi_bvec_done, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memcpy_to_page(%struct.page* noundef %page, i64 noundef %offset, i8* noundef %from, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_local_page(%struct.page* noundef %page) #21
  %add.ptr = getelementptr i8, i8* %call, i64 %offset
  %call1 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %from, i64 noundef %len) #20
  call void @flush_dcache_page(%struct.page* noundef %page) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

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
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

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
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #19, !srcloc !59
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #19, !srcloc !60
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #21
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #19, !srcloc !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #14 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bio_dirty_lock, i64 0, i32 0, i32 0)) #21
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #21
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !62
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #19, !srcloc !63
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bio_dirty_fn(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  call fastcc void @__raw_spin_lock_irq() #20
  %0 = load %struct.bio*, %struct.bio** @bio_dirty_list, align 8
  store %struct.bio* null, %struct.bio** @bio_dirty_list, align 8
  call fastcc void @__raw_spin_unlock_irq() #20
  %cmp.not5 = icmp eq %struct.bio* %0, null
  br i1 %cmp.not5, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %next.06 = phi %struct.bio* [ %2, %while.body ], [ %0, %entry ]
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %next.06, i64 0, i32 10
  %1 = bitcast i8** %bi_private to %struct.bio**
  %2 = load %struct.bio*, %struct.bio** %1, align 8
  call void @bio_release_pages(%struct.bio* noundef nonnull %next.06, i1 noundef true) #21
  call void @bio_put(%struct.bio* noundef nonnull %next.06) #21
  %cmp.not = icmp eq %struct.bio* %2, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #21
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !64
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bio_dirty_lock, i64 0, i32 0, i32 0)) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bio_dirty_lock, i64 0, i32 0, i32 0)) #21
  call fastcc void @arch_local_irq_enable() #21
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !65
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #19, !srcloc !66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_done_bio(%struct.rq_qos* noundef, %struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(%struct.mempool_s* noundef, i32 noundef, i8* (i32, i8*)* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @mempool_alloc_slab(i32 noundef, i8* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_state_remove_instance_nocalls(%struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_state_remove_instance(i32 noundef 23, %struct.hlist_node* noundef %node, i1 noundef false) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, %struct.hlist_node* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bs_bio_slab_size(%struct.bio_set* nocapture noundef readonly %bs) unnamed_addr #5 {
entry:
  %front_pad = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 1
  %0 = load i32, i32* %front_pad, align 8
  %add = add i32 %0, 96
  %back_pad = getelementptr inbounds %struct.bio_set, %struct.bio_set* %bs, i64 0, i32 5
  %1 = load i32, i32* %back_pad, align 8
  %add2 = add i32 %add, %1
  ret i32 %add2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_load(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_erase(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(%struct.kmem_cache* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_noacct(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio_slab* @create_bio_slab(i32 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #21
  %0 = bitcast i8* %call to %struct.bio_slab*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds i8, i8* %call, i64 16
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %name, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef %size) #20
  %call4 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef %name, i32 noundef %size, i32 noundef 128, i32 noundef 8192, void (i8*)* noundef null) #20
  %slab = bitcast i8* %call to %struct.kmem_cache**
  store %struct.kmem_cache* %call4, %struct.kmem_cache** %slab, align 8
  %tobool6.not = icmp eq %struct.kmem_cache* %call4, null
  br i1 %tobool6.not, label %fail_alloc_slab, label %if.end8

if.end8:                                          ; preds = %if.end
  %slab_ref = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %slab_ref to i32*
  store i32 1, i32* %1, align 8
  %slab_size = getelementptr inbounds i8, i8* %call, i64 12
  %2 = bitcast i8* %slab_size to i32*
  store i32 %size, i32* %2, align 4
  %conv = zext i32 %size to i64
  %call9 = call i8* @xa_store(%struct.xarray* noundef nonnull @bio_slabs, i64 noundef %conv, i8* noundef nonnull %call, i32 noundef 3264) #20
  %call10 = call fastcc i32 @xa_err(i8* noundef %call9) #21
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end8
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** %slab, align 8
  call void @kmem_cache_destroy(%struct.kmem_cache* noundef %3) #20
  br label %fail_alloc_slab

fail_alloc_slab:                                  ; preds = %if.end, %if.end13
  call void @kfree(i8* noundef nonnull %call) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry, %fail_alloc_slab
  %retval.0 = phi %struct.bio_slab* [ null, %fail_alloc_slab ], [ null, %entry ], [ %0, %if.end8 ]
  ret %struct.bio_slab* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #20
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @xa_err(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @xa_is_err(i8* noundef %entry1) #21
  %0 = ptrtoint i8* %entry1 to i64
  %1 = lshr i64 %0, 2
  %conv = trunc i64 %1 to i32
  %retval.0 = select i1 %call, i32 %conv, i32 0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_store(%struct.xarray* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_err(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @xa_is_internal(i8* noundef %entry1) #21
  %cmp = icmp uge i8* %entry1, inttoptr (i64 -16378 to i8*)
  %spec.select = and i1 %cmp, %call
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_internal(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, %struct.hlist_node* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_setup_state_multi() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef null, i32 (i32)* noundef bitcast (i32 (i32, %struct.hlist_node*)* @bio_cpu_dead to i32 (i32)*), i1 noundef true) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @bio_cpu_dead(i32 noundef %cpu, %struct.hlist_node* noundef readonly %node) #0 {
entry:
  %tobool.not = icmp eq %struct.hlist_node* %node, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %node, i64 -15, i32 1
  %0 = bitcast %struct.hlist_node*** %add.ptr to %struct.bio_set*
  %cond = select i1 %tobool.not, %struct.bio_set* null, %struct.bio_set* %0
  %cache = getelementptr inbounds %struct.bio_set, %struct.bio_set* %cond, i64 0, i32 2
  %1 = load %struct.bio_alloc_cache*, %struct.bio_alloc_cache** %cache, align 8
  %tobool2.not = icmp eq %struct.bio_alloc_cache* %1, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint %struct.bio_alloc_cache* %1 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.bio_alloc_cache*
  call fastcc void @bio_alloc_cache_prune(%struct.bio_alloc_cache* noundef %4, i32 noundef -1) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #18

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree nounwind readonly }
attributes #16 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #17 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #18 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nobuiltin nounwind "no-builtins" }
attributes #21 = { nobuiltin "no-builtins" }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind readonly }
attributes #24 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #25 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155429845}
!10 = !{i64 2155421301}
!11 = !{i64 2155431856}
!12 = !{i32 524288, i32 0}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2155433748}
!15 = !{i64 2154807782}
!16 = !{i64 2155439214}
!17 = !{i64 1397511}
!18 = !{!"auto-init"}
!19 = !{i64 2155437481}
!20 = !{i64 2155502610}
!21 = !{i64 2155505947}
!22 = !{i64 2155506452}
!23 = !{i64 2149157082, i64 2149157129, i64 2149157135, i64 2149157172, i64 2149157190, i64 2149158117, i64 2149158165, i64 2149158213, i64 2149158276, i64 2149158325, i64 2149157268, i64 2149157293, i64 2149157319, i64 2149157325, i64 2149157362, i64 2149157368, i64 2149157418, i64 2149157464, i64 2149157497}
!24 = !{i64 2155507885}
!25 = !{i64 2155523601}
!26 = !{i64 2155525433}
!27 = !{i64 2155527079}
!28 = !{i64 2155528846}
!29 = !{i64 2155530611}
!30 = !{i64 2155532253}
!31 = !{i64 2155541192}
!32 = !{i8 0, i8 2}
!33 = !{i64 2155539541}
!34 = !{i64 2149568936}
!35 = !{i64 2155607943}
!36 = !{i64 2155613411}
!37 = !{i64 2155614886}
!38 = !{i64 2155616638}
!39 = !{i64 2155618530}
!40 = !{i64 2155425284}
!41 = !{i64 2155426951}
!42 = !{i64 2155428519}
!43 = !{i64 2155623853}
!44 = !{i64 2155624348}
!45 = !{i64 2155624425}
!46 = !{i64 2147994291, i64 2147994807, i64 2147994837, i64 2147994864, i64 2147994898, i64 2147994928}
!47 = !{i64 2149583937}
!48 = !{i64 2148094214, i64 2148094247, i64 2148094300, i64 2148094359, i64 2148094393, i64 2148094448, i64 2148094477, i64 2148094497}
!49 = !{i64 2149591218}
!50 = !{i64 2149383448}
!51 = !{i64 2154368000}
!52 = !{i64 2154358943}
!53 = !{i64 2154361201}
!54 = !{i64 2152153711}
!55 = !{i64 2152153918}
!56 = !{i64 2148004864, i64 2148005512, i64 2148005542, i64 2148005574, i64 2148005608, i64 2148005644, i64 2148005669}
!57 = !{i64 2155534323}
!58 = !{i64 2154386475}
!59 = !{i64 2149134763, i64 2149134810, i64 2149134816, i64 2149134853, i64 2149134871, i64 2149136182, i64 2149136230, i64 2149136278, i64 2149136341, i64 2149136390, i64 2149134949, i64 2149134974, i64 2149135000, i64 2149135006, i64 2149135848, i64 2149135888, i64 2149135906, i64 2149135938, i64 2149135966, i64 2149136020, i64 2149136040, i64 2149136137, i64 2149135029, i64 2149135043, i64 2149135049, i64 2149135099, i64 2149135145, i64 2149135178}
!60 = !{i64 2149136942, i64 2149136989, i64 2149136995, i64 2149137032, i64 2149137050, i64 2149137993, i64 2149138041, i64 2149138089, i64 2149138152, i64 2149138201, i64 2149137128, i64 2149137153, i64 2149137179, i64 2149137185, i64 2149137222, i64 2149137228, i64 2149137278, i64 2149137324, i64 2149137357}
!61 = !{i64 2149129060, i64 2149129107, i64 2149129113, i64 2149129150, i64 2149129168, i64 2149130509, i64 2149130557, i64 2149130605, i64 2149130668, i64 2149130717, i64 2149129246, i64 2149129271, i64 2149129297, i64 2149129303, i64 2149130175, i64 2149130215, i64 2149130233, i64 2149130265, i64 2149130293, i64 2149130347, i64 2149130367, i64 2149130464, i64 2149129326, i64 2149129340, i64 2149129346, i64 2149129396, i64 2149129442, i64 2149129475}
!62 = !{i64 2149594779}
!63 = !{i64 2149140776, i64 2149140823, i64 2149140829, i64 2149140866, i64 2149140884, i64 2149142195, i64 2149142243, i64 2149142291, i64 2149142354, i64 2149142403, i64 2149140962, i64 2149140987, i64 2149141013, i64 2149141019, i64 2149141861, i64 2149141901, i64 2149141919, i64 2149141951, i64 2149141979, i64 2149142033, i64 2149142053, i64 2149142150, i64 2149141042, i64 2149141056, i64 2149141062, i64 2149141112, i64 2149141158, i64 2149141191}
!64 = !{i64 2149573229}
!65 = !{i64 2149598082}
!66 = !{i64 2149119604, i64 2149119651, i64 2149119657, i64 2149119694, i64 2149119712, i64 2149121052, i64 2149121100, i64 2149121148, i64 2149121211, i64 2149121260, i64 2149119790, i64 2149119815, i64 2149119841, i64 2149119847, i64 2149120718, i64 2149120758, i64 2149120776, i64 2149120808, i64 2149120836, i64 2149120890, i64 2149120910, i64 2149121007, i64 2149119870, i64 2149119884, i64 2149119890, i64 2149119940, i64 2149119986, i64 2149120019}
