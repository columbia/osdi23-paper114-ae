; ModuleID = 'block/blk-sysfs.c'
source_filename = "block/blk-sysfs.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { {}*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.73, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34, [48 x i8] }
%struct.anon.34 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %struct.ctl_table*, i32, i32, i32 }
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
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.58 }
%union.anon.58 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.60 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.38, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.page = type { i64, %union.anon.2, %union.anon.68, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.68 = type { %struct.atomic_t }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.76, %union.anon.77, %union.anon.78, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.81, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.75, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.75 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.74, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.74 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.38 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.64 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.62, %struct.qspinlock }
%union.anon.62 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.64 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.37 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.69 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.ida = type { %struct.xarray }
%struct.queue_sysfs_entry = type { %struct.attribute, i64 (%struct.request_queue*, i8*)*, i64 (%struct.request_queue*, i8*, i64)* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }

@queue_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @queue_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @queue_attr_store }, align 8
@blk_queue_ktype = dso_local local_unnamed_addr global { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* } { void (%struct.kobject*)* @blk_release_queue, %struct.sysfs_ops* @queue_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@queue_attr_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @queue_attr_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([42 x %struct.attribute*], [42 x %struct.attribute*]* @queue_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@blk_queue_ida = external dso_local global %struct.ida, align 8
@blk_requestq_cachep = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@queue_attrs = internal global [42 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_requests_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_ra_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_hw_sectors_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_sectors_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_segments_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_discard_segments_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_integrity_segments_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_segment_size_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @elv_iosched_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_hw_sector_size_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_logical_block_size_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_physical_block_size_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_chunk_sectors_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_io_min_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_io_opt_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_discard_granularity_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_discard_max_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_discard_max_hw_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_discard_zeroes_data_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_write_same_max_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_write_zeroes_max_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_zone_append_max_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_zone_write_granularity_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_nonrot_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_zoned_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_nr_zones_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_open_zones_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_active_zones_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_nomerges_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_rq_affinity_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_iostats_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_stable_writes_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_random_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_poll_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_wc_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_fua_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_dax_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_wb_lat_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_poll_delay_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_io_timeout_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_virt_boundary_mask_entry, i32 0, i32 0), %struct.attribute* null], align 8
@queue_io_timeout_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_io_timeout_show, i64 (%struct.request_queue*, i8*, i64)* @queue_io_timeout_store }, align 8
@queue_max_open_zones_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_max_open_zones_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_max_active_zones_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_max_active_zones_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"io_timeout\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"max_open_zones\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"max_active_zones\00", align 1
@queue_requests_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_requests_show, i64 (%struct.request_queue*, i8*, i64)* @queue_requests_store }, align 8
@queue_ra_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_ra_show, i64 (%struct.request_queue*, i8*, i64)* @queue_ra_store }, align 8
@queue_max_hw_sectors_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_max_hw_sectors_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_max_sectors_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_max_sectors_show, i64 (%struct.request_queue*, i8*, i64)* @queue_max_sectors_store }, align 8
@queue_max_segments_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_max_segments_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_max_discard_segments_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_max_discard_segments_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_max_integrity_segments_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_max_integrity_segments_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_max_segment_size_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_max_segment_size_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@elv_iosched_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @elv_iosched_show, i64 (%struct.request_queue*, i8*, i64)* @elv_iosched_store }, align 8
@queue_hw_sector_size_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_logical_block_size_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_logical_block_size_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_logical_block_size_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_physical_block_size_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_physical_block_size_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_chunk_sectors_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_chunk_sectors_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_io_min_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_io_min_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_io_opt_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_io_opt_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_discard_granularity_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_discard_granularity_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_discard_max_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_discard_max_show, i64 (%struct.request_queue*, i8*, i64)* @queue_discard_max_store }, align 8
@queue_discard_max_hw_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_discard_max_hw_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_discard_zeroes_data_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_discard_zeroes_data_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_write_same_max_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_write_same_max_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_write_zeroes_max_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_write_zeroes_max_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_zone_append_max_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_zone_append_max_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_zone_write_granularity_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_zone_write_granularity_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_nonrot_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_nonrot_show, i64 (%struct.request_queue*, i8*, i64)* @queue_nonrot_store }, align 8
@queue_zoned_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_zoned_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_nr_zones_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_nr_zones_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_nomerges_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_nomerges_show, i64 (%struct.request_queue*, i8*, i64)* @queue_nomerges_store }, align 8
@queue_rq_affinity_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_rq_affinity_show, i64 (%struct.request_queue*, i8*, i64)* @queue_rq_affinity_store }, align 8
@queue_iostats_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_iostats_show, i64 (%struct.request_queue*, i8*, i64)* @queue_iostats_store }, align 8
@queue_stable_writes_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_stable_writes_show, i64 (%struct.request_queue*, i8*, i64)* @queue_stable_writes_store }, align 8
@queue_random_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_random_show, i64 (%struct.request_queue*, i8*, i64)* @queue_random_store }, align 8
@queue_poll_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_poll_show, i64 (%struct.request_queue*, i8*, i64)* @queue_poll_store }, align 8
@queue_wc_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_wc_show, i64 (%struct.request_queue*, i8*, i64)* @queue_wc_store }, align 8
@queue_fua_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_fua_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_dax_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_dax_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@queue_wb_lat_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_wb_lat_show, i64 (%struct.request_queue*, i8*, i64)* @queue_wb_lat_store }, align 8
@queue_poll_delay_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i16 420 }, i64 (%struct.request_queue*, i8*)* @queue_poll_delay_show, i64 (%struct.request_queue*, i8*, i64)* @queue_poll_delay_store }, align 8
@queue_virt_boundary_mask_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i16 292 }, i64 (%struct.request_queue*, i8*)* @queue_virt_boundary_mask_show, i64 (%struct.request_queue*, i8*, i64)* null }, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"nr_requests\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"read_ahead_kb\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"max_hw_sectors_kb\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"max_sectors_kb\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"max_segments\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"max_discard_segments\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"max_integrity_segments\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"max_segment_size\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"scheduler\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"hw_sector_size\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"logical_block_size\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"physical_block_size\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"chunk_sectors\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"minimum_io_size\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"optimal_io_size\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"discard_granularity\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"discard_max_bytes\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"discard_max_hw_bytes\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"discard_zeroes_data\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"write_same_max_bytes\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"write_zeroes_max_bytes\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"zone_append_max_bytes\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"zone_write_granularity\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"rotational\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"zoned\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"nr_zones\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"nomerges\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"rq_affinity\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"iostats\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"stable_writes\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"add_random\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"io_poll\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"write_cache\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"write back\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"write through\0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"write back\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"write through\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"fua\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"dax\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"wbt_lat_usec\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"io_poll_delay\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"virt_boundary_mask\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_release_queue(%struct.kobject* noundef %kobj) #0 {
entry:
  %add.ptr51 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -2
  %0 = bitcast %struct.kobject* %add.ptr51 to %struct.request_queue*
  %queue_flags = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 3
  %1 = bitcast %struct.kset** %queue_flags to i64*
  %2 = load volatile i64, i64* %1, align 8
  %3 = and i64 %2, 2097152
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %poll_cb = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 1, i32 3
  %4 = bitcast %struct.kset** %poll_cb to %struct.blk_stat_callback**
  %5 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %4, align 8
  call void @blk_stat_remove_callback(%struct.request_queue* noundef %0, %struct.blk_stat_callback* noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %poll_cb7 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 1, i32 3
  %6 = bitcast %struct.kset** %poll_cb7 to %struct.blk_stat_callback**
  %7 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %6, align 8
  call void @blk_stat_free_callback(%struct.blk_stat_callback* noundef %7) #8
  %stats = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -2, i32 3
  %8 = bitcast %struct.kset** %stats to %struct.blk_queue_stats**
  %9 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %8, align 8
  call void @blk_free_queue_stats(%struct.blk_queue_stats* noundef %9) #8
  %call8 = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %0) #9
  br i1 %call8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %requeue_work = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 17, i32 5
  %10 = bitcast %struct.kernfs_node** %requeue_work to %struct.delayed_work*
  %call10 = call i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef %10) #8
  %nr_hw_queues = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 1, i32 1
  %11 = bitcast %struct.list_head** %nr_hw_queues to i32*
  %12 = load i32, i32* %11, align 8
  %cmp52.not = icmp eq i32 %12, 0
  br i1 %cmp52.not, label %if.end14, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then9
  %queue_hw_ctx = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 1
  %13 = bitcast %struct.list_head* %queue_hw_ctx to %struct.blk_mq_hw_ctx***
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %14 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %13, align 8
  %idxprom = sext i32 %i.053 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %14, i64 %idxprom
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %run_work = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %15, i64 0, i32 1
  %call13 = call i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef %run_work) #8
  %inc = add nuw i32 %i.053, 1
  %16 = load i32, i32* %11, align 8
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body, label %if.end14

if.end14:                                         ; preds = %for.body, %if.then9, %if.end
  call fastcc void @blk_exit_queue(%struct.request_queue* noundef %0) #9
  %call15 = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %0) #9
  br i1 %call15, label %if.then16, label %do.end20

if.then16:                                        ; preds = %if.end14
  call void @blk_mq_release(%struct.request_queue* noundef %0) #8
  br label %do.end20

do.end20:                                         ; preds = %if.end14, %if.then16
  %debugfs_mutex = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 16, i32 5
  %17 = bitcast %struct.kernfs_node** %debugfs_mutex to %struct.mutex*
  call void @mutex_lock(%struct.mutex* noundef %17) #8
  call void @mutex_unlock(%struct.mutex* noundef %17) #8
  %bio_split = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 22
  %18 = bitcast %struct.kobject* %bio_split to %struct.bio_set*
  call void @bioset_exit(%struct.bio_set* noundef %18) #8
  %id = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 13
  %19 = load i32, i32* %id, align 4
  call void @ida_free(%struct.ida* noundef nonnull @blk_queue_ida, i32 noundef %19) #8
  %callback_head = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 20, i32 3
  %20 = bitcast %struct.kset** %callback_head to %struct.callback_head*
  call void @call_rcu(%struct.callback_head* noundef %20, void (%struct.callback_head*)* noundef nonnull @blk_free_queue_rcu) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_register_queue(%struct.gendisk* nocapture noundef readonly %disk) local_unnamed_addr #0 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_device = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 9
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 40
  call void @mutex_lock(%struct.mutex* noundef %sysfs_dir_lock) #8
  %kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 16
  %kobj1 = getelementptr inbounds %struct.device, %struct.device* %bd_device, i64 0, i32 0
  %call2 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj1) #8
  %call3 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %kobj, %struct.kobject* noundef %call2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %unlock, label %if.end5

if.end5:                                          ; preds = %entry
  %call7 = call i32 @sysfs_create_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull @queue_attr_group) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @kobject_del(%struct.kobject* noundef %kobj) #8
  call void @kobject_put(%struct.kobject* noundef %kobj1) #8
  br label %unlock

if.end15:                                         ; preds = %if.end5
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 34
  call void @mutex_lock(%struct.mutex* noundef %debugfs_mutex) #8
  %debugfs_dir = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 50
  store %struct.dentry* inttoptr (i64 -19 to %struct.dentry*), %struct.dentry** %debugfs_dir, align 8
  call void @mutex_unlock(%struct.mutex* noundef %debugfs_mutex) #8
  %call20 = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %1) #9
  br i1 %call20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end15
  %call22 = call i32 @__blk_mq_register_dev(%struct.device* noundef %bd_device, %struct.request_queue* noundef %1) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end15
  %sysfs_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 39
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 1
  %2 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool24.not = icmp eq %struct.elevator_queue* %2, null
  br i1 %tobool24.not, label %if.end37, label %if.then25

if.then25:                                        ; preds = %if.end23
  %call26 = call i32 @elv_register_queue(%struct.request_queue* noundef %1, i1 noundef false) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end37, label %if.then28

if.then28:                                        ; preds = %if.then25
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #8
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_dir_lock) #8
  call void @kobject_del(%struct.kobject* noundef %kobj) #8
  call void @kobject_put(%struct.kobject* noundef %kobj1) #8
  br label %cleanup

if.end37:                                         ; preds = %if.then25, %if.end23
  call void @blk_queue_flag_set(i32 noundef 22, %struct.request_queue* noundef %1) #8
  %call39 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 0) #8
  %3 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool41.not = icmp eq %struct.elevator_queue* %3, null
  br i1 %tobool41.not, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end37
  %kobj44 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %3, i64 0, i32 2
  %call45 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj44, i32 noundef 0) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end37
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #8
  br label %unlock

unlock:                                           ; preds = %entry, %if.end46, %do.end12
  %ret.0 = phi i32 [ %call3, %entry ], [ %call7, %do.end12 ], [ 0, %if.end46 ]
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_dir_lock) #8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 11
  %4 = load volatile i64, i64* %queue_flags, align 8
  %5 = and i64 %4, 16384
  %tobool50.not = icmp eq i64 %5, 0
  br i1 %tobool50.not, label %if.then51, label %cleanup

if.then51:                                        ; preds = %unlock
  call void @blk_queue_flag_set(i32 noundef 14, %struct.request_queue* noundef %1) #8
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 2
  call void @percpu_ref_switch_to_percpu(%struct.percpu_ref* noundef %q_usage_counter) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then51, %if.then28
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ %ret.0, %if.then51 ], [ %ret.0, %unlock ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @queue_is_mq(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %tobool = icmp ne %struct.blk_mq_ops* %0, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_mq_register_dev(%struct.device* noundef, %struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_register_queue(%struct.request_queue* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_switch_to_percpu(%struct.percpu_ref* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_unregister_queue(%struct.gendisk* nocapture noundef readonly %disk) local_unnamed_addr #0 {
entry:
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %tobool.not = icmp eq %struct.request_queue* %0, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-sysfs.c\22; .popsection; .long 14472b - 14470b; .short 944; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  br label %cleanup

if.end18:                                         ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 11
  %1 = load volatile i64, i64* %queue_flags, align 8
  %2 = and i64 %1, 4194304
  %tobool19.not = icmp eq i64 %2, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end18
  %sysfs_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 39
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #8
  call void @blk_queue_flag_clear(i32 noundef 22, %struct.request_queue* noundef nonnull %0) #8
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #8
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 40
  call void @mutex_lock(%struct.mutex* noundef %sysfs_dir_lock) #8
  %call23 = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef nonnull %0) #9
  br i1 %call23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %3 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_device = getelementptr inbounds %struct.block_device, %struct.block_device* %3, i64 0, i32 9
  call void @blk_mq_unregister_dev(%struct.device* noundef %bd_device, %struct.request_queue* noundef nonnull %0) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 16
  %call26 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 1) #8
  call void @kobject_del(%struct.kobject* noundef %kobj) #8
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %4 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool29.not = icmp eq %struct.elevator_queue* %4, null
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end25
  call void @elv_unregister_queue(%struct.request_queue* noundef nonnull %0) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #8
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_dir_lock) #8
  %part034 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %5 = load %struct.block_device*, %struct.block_device** %part034, align 8
  %kobj36 = getelementptr inbounds %struct.block_device, %struct.block_device* %5, i64 0, i32 9, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj36) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end18, %if.end31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unregister_dev(%struct.device* noundef, %struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_unregister_queue(%struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_remove_callback(%struct.request_queue* noundef, %struct.blk_stat_callback* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_free_callback(%struct.blk_stat_callback* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_queue_stats(%struct.blk_queue_stats* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_exit_queue(%struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ioc_clear_queue(%struct.request_queue* noundef %q) #8
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  call void @__elevator_exit(%struct.request_queue* noundef %q, %struct.elevator_queue* noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_release(%struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(%struct.bio_set* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_free_queue_rcu(%struct.callback_head* noundef %callback_head) #0 {
entry:
  %add.ptr3 = getelementptr %struct.callback_head, %struct.callback_head* %callback_head, i64 -90
  %add.ptr = bitcast %struct.callback_head* %add.ptr3 to i8*
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @blk_requestq_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioc_clear_queue(%struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__elevator_exit(%struct.request_queue* noundef, %struct.elevator_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_attr_show(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %page) #0 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.request_queue*, i8*)**
  %1 = load i64 (%struct.request_queue*, i8*)*, i64 (%struct.request_queue*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.request_queue*, i8*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr720 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -2
  %2 = bitcast %struct.kobject* %add.ptr720 to %struct.request_queue*
  %sysfs_lock = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 19, i32 1
  %3 = bitcast %struct.list_head* %sysfs_lock to %struct.mutex*
  call void @mutex_lock(%struct.mutex* noundef %3) #8
  %4 = load i64 (%struct.request_queue*, i8*)*, i64 (%struct.request_queue*, i8*)** %0, align 8
  %call = call i64 %4(%struct.request_queue* noundef %2, i8* noundef %page) #8
  call void @mutex_unlock(%struct.mutex* noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_attr_store(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %page, i64 noundef %length) #0 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.request_queue*, i8*, i64)**
  %1 = load i64 (%struct.request_queue*, i8*, i64)*, i64 (%struct.request_queue*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.request_queue*, i8*, i64)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr720 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -2
  %2 = bitcast %struct.kobject* %add.ptr720 to %struct.request_queue*
  %sysfs_lock = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 19, i32 1
  %3 = bitcast %struct.list_head* %sysfs_lock to %struct.mutex*
  call void @mutex_lock(%struct.mutex* noundef %3) #8
  %4 = load i64 (%struct.request_queue*, i8*, i64)*, i64 (%struct.request_queue*, i8*, i64)** %0, align 8
  %call = call i64 %4(%struct.request_queue* noundef %2, i8* noundef %page, i64 noundef %length) #8
  call void @mutex_unlock(%struct.mutex* noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i16 @queue_attr_visible(%struct.kobject* nocapture noundef readonly %kobj, %struct.attribute* noundef readonly %attr, i32 noundef %n) #3 {
entry:
  %cmp = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_io_timeout_entry, i64 0, i32 0)
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %mq_ops = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -2, i32 5
  %0 = bitcast %struct.kernfs_node** %mq_ops to %struct.blk_mq_ops**
  %1 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %0, align 8
  %tobool.not = icmp eq %struct.blk_mq_ops* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %timeout = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %1, i64 0, i32 6
  %2 = load i32 (%struct.request*, i1)*, i32 (%struct.request*, i1)** %timeout, align 8
  %tobool2.not = icmp eq i32 (%struct.request*, i1)* %2, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %cmp3 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_open_zones_entry, i64 0, i32 0)
  %cmp5 = icmp eq %struct.attribute* %attr, getelementptr inbounds (%struct.queue_sysfs_entry, %struct.queue_sysfs_entry* @queue_max_active_zones_entry, i64 0, i32 0)
  %or.cond = or i1 %cmp3, %cmp5
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 0, i32 1
  %3 = load i16, i16* %mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %lor.lhs.false, %if.end8
  %retval.0 = phi i16 [ %3, %if.end8 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_io_timeout_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %rq_timeout = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 21
  %0 = load i32, i32* %rq_timeout, align 8
  %conv = zext i32 %0 to i64
  %call = call i32 @jiffies_to_msecs(i64 noundef %conv) #8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call) #8
  %conv2 = sext i32 %call1 to i64
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_io_timeout_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %val, align 4, !annotation !9
  %call = call fastcc i32 @kstrtou32(i8* noundef %page, i32* noundef nonnull %val) #9
  %tobool = icmp ne i32 %call, 0
  %1 = load i32, i32* %val, align 4
  %cmp = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.else.i

if.else.i:                                        ; preds = %entry
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %1) #8
  %conv = trunc i64 %call2.i to i32
  call void @blk_queue_rq_timeout(%struct.request_queue* noundef %q, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else.i
  %retval.0 = phi i64 [ %count, %if.else.i ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtou32(i8* noundef %s, i32* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtouint(i8* noundef %s, i32 noundef 10, i32* noundef %res) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(%struct.request_queue* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_open_zones_show(%struct.request_queue* nocapture noundef readnone %q, i8* noundef %page) #0 {
entry:
  %call1 = call fastcc i64 @queue_var_show(i64 noundef 0, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @queue_var_show(i64 noundef %var, i8* noundef %page) unnamed_addr #0 {
entry:
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 noundef %var) #8
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_active_zones_show(%struct.request_queue* nocapture noundef readnone %q, i8* noundef %page) #0 {
entry:
  %call1 = call fastcc i64 @queue_var_show(i64 noundef 0, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_requests_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %nr_requests = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 18
  %0 = load i64, i64* %nr_requests, align 8
  %call = call fastcc i64 @queue_var_show(i64 noundef %0, i8* noundef %page) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_requests_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %nr = alloca i64, align 8
  %0 = bitcast i64* %nr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %nr, align 8, !annotation !9
  %call = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %q) #9
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @queue_var_store(i64* noundef nonnull %nr, i8* noundef %page, i64 noundef %count) #9
  %1 = and i64 %call1, 2147483648
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %sext24 = shl i64 %call1, 32
  %conv4 = ashr exact i64 %sext24, 32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = load i64, i64* %nr, align 8
  %3 = icmp ugt i64 %2, 4
  %spec.store.select = select i1 %3, i64 %2, i64 4
  %conv10 = trunc i64 %spec.store.select to i32
  %call11 = call i32 @blk_mq_update_nr_requests(%struct.request_queue* noundef %q, i32 noundef %conv10) #8
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end5
  %conv13 = sext i32 %call11 to i64
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %sext = shl i64 %call1, 32
  %conv15 = ashr exact i64 %sext, 32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14, %if.then12, %if.then3
  %retval.0 = phi i64 [ %conv4, %if.then3 ], [ %conv13, %if.then12 ], [ %conv15, %if.end14 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @queue_var_store(i64* nocapture noundef writeonly %var, i8* noundef %page, i64 noundef %count) unnamed_addr #0 {
entry:
  %v = alloca i64, align 8
  %0 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %v, align 8, !annotation !9
  %call = call fastcc i32 @kstrtoul(i8* noundef %page, i64* noundef nonnull %v) #9
  %tobool = icmp ne i32 %call, 0
  %1 = load i64, i64* %v, align 8
  %cmp = icmp ugt i64 %1, 4294967295
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i64 %1, i64* %var, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %count, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_update_nr_requests(%struct.request_queue* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s, i64* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 10, i64* noundef %res) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_ra_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %disk = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 15
  %0 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 15
  %1 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %1, i64 0, i32 3
  %2 = load i64, i64* %ra_pages, align 8
  %shl = shl i64 %2, 2
  %call = call fastcc i64 @queue_var_show(i64 noundef %shl, i8* noundef %page) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_ra_store(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %ra_kb = alloca i64, align 8
  %0 = bitcast i64* %ra_kb to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %ra_kb, align 8, !annotation !9
  %disk = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 15
  %1 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %ra_kb, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %2 = load i64, i64* %ra_kb, align 8
  %shr = lshr i64 %2, 2
  %3 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %3, i64 0, i32 15
  %4 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %4, i64 0, i32 3
  store i64 %shr, i64* %ra_pages, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i64 [ %call, %if.end2 ], [ -22, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_hw_sectors_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i32 @queue_max_hw_sectors(%struct.request_queue* noundef %q) #9
  %shr = lshr i32 %call, 1
  %0 = zext i32 %shr to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %0, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_hw_sectors(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %max_hw_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 3
  %0 = load i32, i32* %max_hw_sectors, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_sectors_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i32 @queue_max_sectors(%struct.request_queue* noundef %q) #9
  %shr = lshr i32 %call, 1
  %0 = zext i32 %shr to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %0, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_sectors_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %max_sectors_kb = alloca i64, align 8
  %0 = bitcast i64* %max_sectors_kb to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %max_sectors_kb, align 8, !annotation !9
  %call = call fastcc i32 @queue_max_hw_sectors(%struct.request_queue* noundef %q) #9
  %shr = lshr i32 %call, 1
  %conv = zext i32 %shr to i64
  %call1 = call fastcc i64 @queue_var_store(i64* noundef nonnull %max_sectors_kb, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %max_dev_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 4
  %1 = load i32, i32* %max_dev_sectors, align 4
  %2 = lshr i32 %1, 1
  %shr4 = zext i32 %2 to i64
  %cmp5 = icmp ult i32 %call, 2
  br i1 %cmp5, label %cond.end18, label %cond.false

cond.false:                                       ; preds = %if.end
  %cmp7 = icmp ult i32 %1, 2
  br i1 %cmp7, label %cond.end18, label %cond.false10

cond.false10:                                     ; preds = %cond.false
  %cmp12 = icmp ult i64 %conv, %shr4
  %cond = select i1 %cmp12, i64 %conv, i64 %shr4
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %if.end, %cond.false10
  %cond19 = phi i64 [ %cond, %cond.false10 ], [ %shr4, %if.end ], [ %conv, %cond.false ]
  %3 = load i64, i64* %max_sectors_kb, align 8
  %cmp20 = icmp ugt i64 %3, %cond19
  %cmp22 = icmp ult i64 %3, 4
  %or.cond = or i1 %cmp20, %cmp22
  br i1 %or.cond, label %cleanup, label %if.end25

if.end25:                                         ; preds = %cond.end18
  %rlock.i = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 14, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %.tr = trunc i64 %3 to i32
  %conv26 = shl i32 %.tr, 1
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  store i32 %conv26, i32* %max_sectors, align 4
  %disk = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 15
  %4 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %4, null
  br i1 %tobool.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end25
  %shr29 = lshr i64 %3, 2
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i64 0, i32 15
  %5 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %io_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %5, i64 0, i32 4
  store i64 %shr29, i64* %io_pages, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end18, %entry, %if.end31
  %retval.0 = phi i64 [ %call1, %if.end31 ], [ %call1, %entry ], [ -22, %cond.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_sectors(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %0 = load i32, i32* %max_sectors, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !7

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_enable() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #10, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_segments_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i16 @queue_max_segments(%struct.request_queue* noundef %q) #9
  %conv = zext i16 %call to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @queue_max_segments(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %max_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 21
  %0 = load i16, i16* %max_segments, align 8
  ret i16 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_discard_segments_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i16 @queue_max_discard_segments(%struct.request_queue* noundef %q) #9
  %conv = zext i16 %call to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @queue_max_discard_segments(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %max_discard_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 23
  %0 = load i16, i16* %max_discard_segments, align 4
  ret i16 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_integrity_segments_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %max_integrity_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 22
  %0 = load i16, i16* %max_integrity_segments, align 2
  %conv = zext i16 %0 to i64
  %call = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_max_segment_size_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i32 @queue_max_segment_size(%struct.request_queue* noundef %q) #9
  %conv = zext i32 %call to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_segment_size(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %max_segment_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 7
  %0 = load i32, i32* %max_segment_size, align 8
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @elv_iosched_show(%struct.request_queue* noundef, i8* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @elv_iosched_store(%struct.request_queue* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_logical_block_size_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %q) #9
  %conv = zext i32 %call to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call1
}

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
define internal i64 @queue_physical_block_size_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i32 @queue_physical_block_size(%struct.request_queue* noundef %q) #9
  %conv = zext i32 %call to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_physical_block_size(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %physical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 8
  %0 = load i32, i32* %physical_block_size, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_chunk_sectors_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %chunk_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 5
  %0 = load i32, i32* %chunk_sectors, align 8
  %conv = zext i32 %0 to i64
  %call = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_io_min_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i32 @queue_io_min(%struct.request_queue* noundef %q) #9
  %conv = zext i32 %call to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_io_min(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %io_min = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 11
  %0 = load i32, i32* %io_min, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_io_opt_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i32 @queue_io_opt(%struct.request_queue* noundef %q) #9
  %conv = zext i32 %call to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_io_opt(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %io_opt = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 12
  %0 = load i32, i32* %io_opt, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_discard_granularity_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %discard_granularity = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 18
  %0 = load i32, i32* %discard_granularity, align 4
  %conv = zext i32 %0 to i64
  %call = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_discard_max_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %max_discard_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 13
  %0 = load i32, i32* %max_discard_sectors, align 8
  %conv = zext i32 %0 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 noundef %shl) #8
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_discard_max_store(%struct.request_queue* nocapture noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %max_discard = alloca i64, align 8
  %0 = bitcast i64* %max_discard to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %max_discard, align 8, !annotation !9
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %max_discard, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %max_discard, align 8
  %discard_granularity = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 18
  %2 = load i32, i32* %discard_granularity, align 4
  %sub = add i32 %2, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %1, %conv
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %shr = lshr i64 %1, 9
  %cmp3 = icmp ugt i64 %1, 2199023255551
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  %max_hw_discard_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 14
  %3 = load i32, i32* %max_hw_discard_sectors, align 4
  %conv8 = zext i32 %3 to i64
  %cmp9 = icmp ugt i64 %shr, %conv8
  %spec.select = select i1 %cmp9, i64 %conv8, i64 %shr
  %conv16 = trunc i64 %spec.select to i32
  %max_discard_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 13
  store i32 %conv16, i32* %max_discard_sectors, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.end6
  %retval.0 = phi i64 [ %call, %if.end6 ], [ %call, %entry ], [ -22, %if.end ], [ -22, %if.end2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_discard_max_hw_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %max_hw_discard_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 14
  %0 = load i32, i32* %max_hw_discard_sectors, align 4
  %conv = zext i32 %0 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 noundef %shl) #8
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_discard_zeroes_data_show(%struct.request_queue* nocapture noundef readnone %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i64 @queue_var_show(i64 noundef 0, i8* noundef %page) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_write_same_max_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 15
  %0 = load i32, i32* %max_write_same_sectors, align 8
  %conv = zext i32 %0 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 noundef %shl) #8
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_write_zeroes_max_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 16
  %0 = load i32, i32* %max_write_zeroes_sectors, align 4
  %conv = zext i32 %0 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 noundef %shl) #8
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_zone_append_max_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %max_zone_append_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 17
  %0 = load i32, i32* %max_zone_append_sectors, align 8
  %conv = zext i32 %0 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 noundef %shl) #8
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_zone_write_granularity_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc i32 @queue_zone_write_granularity(%struct.request_queue* noundef %q) #9
  %conv = zext i32 %call to i64
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_zone_write_granularity(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %zone_write_granularity = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 20
  %0 = load i32, i32* %zone_write_granularity, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_nonrot_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = lshr i64 %0, 6
  %.lobit = and i64 %1, 1
  %2 = xor i64 %.lobit, 1
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %2, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_nonrot_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %val, align 8, !annotation !9
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %val, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %val, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @blk_queue_flag_set(i32 noundef 6, %struct.request_queue* noundef %q) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @blk_queue_flag_clear(i32 noundef 6, %struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.else, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_zoned_show(%struct.request_queue* nocapture noundef readnone %q, i8* noundef %page) #0 {
entry:
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #8
  %conv6 = sext i32 %call5 to i64
  ret i64 %conv6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_nr_zones_show(%struct.request_queue* nocapture noundef readnone %q, i8* noundef %page) #0 {
entry:
  %call1 = call fastcc i64 @queue_var_show(i64 noundef 0, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_nomerges_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = lshr i64 %0, 2
  %shl = and i64 %1, 2
  %2 = load volatile i64, i64* %queue_flags, align 8
  %3 = lshr i64 %2, 9
  %conv.i6 = and i64 %3, 1
  %or = or i64 %conv.i6, %shl
  %call3 = call fastcc i64 @queue_var_show(i64 noundef %or, i8* noundef %page) #9
  ret i64 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_nomerges_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %nm = alloca i64, align 8
  %0 = bitcast i64* %nm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %nm, align 8, !annotation !9
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %nm, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @blk_queue_flag_clear(i32 noundef 3, %struct.request_queue* noundef %q) #8
  call void @blk_queue_flag_clear(i32 noundef 9, %struct.request_queue* noundef %q) #8
  %1 = load i64, i64* %nm, align 8
  switch i64 %1, label %if.then3 [
    i64 2, label %cleanup.sink.split
    i64 0, label %cleanup
  ]

if.then3:                                         ; preds = %if.end
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then3
  %.sink = phi i32 [ 9, %if.then3 ], [ 3, %if.end ]
  call void @blk_queue_flag_set(i32 noundef %.sink, %struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_rq_affinity_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = load volatile i64, i64* %queue_flags, align 8
  %2 = trunc i64 %0 to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  %5 = trunc i64 %1 to i32
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  %shl = shl nuw nsw i32 %4, %7
  %8 = zext i32 %shl to i64
  %call9 = call fastcc i64 @queue_var_show(i64 noundef %8, i8* noundef %page) #9
  ret i64 %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_rq_affinity_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %val, align 8, !annotation !9
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %val, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %val, align 8
  switch i64 %1, label %cleanup [
    i64 2, label %if.then2
    i64 1, label %if.then4
    i64 0, label %if.then7
  ]

if.then2:                                         ; preds = %if.end
  call void @blk_queue_flag_set(i32 noundef 4, %struct.request_queue* noundef %q) #8
  call void @blk_queue_flag_set(i32 noundef 12, %struct.request_queue* noundef %q) #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @blk_queue_flag_set(i32 noundef 4, %struct.request_queue* noundef %q) #8
  call void @blk_queue_flag_clear(i32 noundef 12, %struct.request_queue* noundef %q) #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @blk_queue_flag_clear(i32 noundef 4, %struct.request_queue* noundef %q) #8
  call void @blk_queue_flag_clear(i32 noundef 12, %struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then7, %if.then4, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_iostats_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = lshr i64 %0, 7
  %conv.i = and i64 %1, 1
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv.i, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_iostats_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %val, align 8, !annotation !9
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %val, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %val, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @blk_queue_flag_set(i32 noundef 7, %struct.request_queue* noundef %q) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @blk_queue_flag_clear(i32 noundef 7, %struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.else, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_stable_writes_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = lshr i64 %0, 15
  %conv.i = and i64 %1, 1
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv.i, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_stable_writes_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %val, align 8, !annotation !9
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %val, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %val, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @blk_queue_flag_set(i32 noundef 15, %struct.request_queue* noundef %q) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @blk_queue_flag_clear(i32 noundef 15, %struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.else, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_random_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = lshr i64 %0, 10
  %conv.i = and i64 %1, 1
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv.i, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_random_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %val, align 8, !annotation !9
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %val, i8* noundef %page, i64 noundef %count) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %val, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @blk_queue_flag_set(i32 noundef 10, %struct.request_queue* noundef %q) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @blk_queue_flag_clear(i32 noundef 10, %struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.else, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_poll_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = lshr i64 %0, 16
  %conv.i = and i64 %1, 1
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv.i, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_poll_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %poll_on = alloca i64, align 8
  %0 = bitcast i64* %poll_on to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %poll_on, align 8, !annotation !9
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %1 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %tobool.not = icmp eq %struct.blk_mq_tag_set* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %1, i64 0, i32 1
  %2 = load i32, i32* %nr_maps, align 8
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nr_queues = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %1, i64 0, i32 0, i64 2, i32 1
  %3 = load i32, i32* %nr_queues, align 8
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call = call fastcc i64 @queue_var_store(i64* noundef nonnull %poll_on, i8* noundef %page, i64 noundef %count) #9
  %cmp5 = icmp slt i64 %call, 0
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %4 = load i64, i64* %poll_on, align 8
  %tobool8.not = icmp eq i64 %4, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @blk_queue_flag_set(i32 noundef 16, %struct.request_queue* noundef %q) #8
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @blk_mq_freeze_queue(%struct.request_queue* noundef %q) #8
  call void @blk_queue_flag_clear(i32 noundef 16, %struct.request_queue* noundef %q) #8
  call void @blk_mq_unfreeze_queue(%struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else, %if.end, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i64 [ -22, %lor.lhs.false2 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call, %if.end ], [ %call, %if.else ], [ %call, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(%struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(%struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_wc_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 131072
  %tobool.not = icmp eq i64 %1, 0
  %. = select i1 %tobool.not, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef %.) #8
  %retval.0 = sext i32 %call2 to i64
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_wc_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %call = call i32 @strncmp(i8* noundef %page, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i64 noundef 10) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then10, label %if.else

if.else:                                          ; preds = %entry
  %call1 = call i32 @strncmp(i8* noundef %page, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i64 noundef 13) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call3 = call i32 @strncmp(i8* noundef %page, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i64 noundef 4) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else11, label %cleanup

if.then10:                                        ; preds = %entry
  call void @blk_queue_flag_set(i32 noundef 17, %struct.request_queue* noundef %q) #8
  br label %cleanup

if.else11:                                        ; preds = %if.else, %lor.lhs.false
  call void @blk_queue_flag_clear(i32 noundef 17, %struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then10, %if.else11
  %retval.0 = phi i64 [ %count, %if.else11 ], [ %count, %if.then10 ], [ -22, %lor.lhs.false ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_fua_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 18
  %conv.i = and i32 %2, 1
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv.i) #8
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_dax_show(%struct.request_queue* noundef %q, i8* noundef %page) #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = lshr i64 %0, 19
  %conv.i = and i64 %1, 1
  %call1 = call fastcc i64 @queue_var_show(i64 noundef %conv.i, i8* noundef %page) #9
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_wb_lat_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %call = call fastcc %struct.rq_qos* @wbt_rq_qos(%struct.request_queue* noundef %q) #9
  %tobool.not = icmp eq %struct.rq_qos* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @div_u64() #9
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 noundef 0) #8
  %conv = sext i32 %call3 to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_wb_lat_store(%struct.request_queue* noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %val, align 8, !annotation !9
  %call = call fastcc i64 @queue_var_store64(i64* noundef nonnull %val, i8* noundef %page) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %val, align 8
  %cmp1 = icmp slt i64 %1, -1
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc %struct.rq_qos* @wbt_rq_qos(%struct.request_queue* noundef %q) #9
  %tobool.not = icmp eq %struct.rq_qos* %call4, null
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end3
  %cmp11 = icmp eq i64 %1, -1
  %mul = mul i64 %1, 1000
  %cmp21 = icmp eq i64 %mul, 0
  %or.cond = or i1 %cmp11, %cmp21
  br i1 %or.cond, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end10
  call void @blk_mq_freeze_queue(%struct.request_queue* noundef %q) #8
  call void @blk_mq_quiesce_queue(%struct.request_queue* noundef %q) #8
  call void @blk_mq_unquiesce_queue(%struct.request_queue* noundef %q) #8
  call void @blk_mq_unfreeze_queue(%struct.request_queue* noundef %q) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end3, %if.end, %entry, %if.end24
  %retval.0 = phi i64 [ %count, %if.end24 ], [ %call, %entry ], [ -22, %if.end ], [ -22, %if.end3 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.rq_qos* @wbt_rq_qos(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.rq_qos* @rq_qos_id(%struct.request_queue* noundef %q) #9
  ret %struct.rq_qos* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @div_u64() unnamed_addr #6 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  call fastcc void @div_u64_rem(i32* noundef nonnull %remainder) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.rq_qos* @rq_qos_id(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %rqos.01 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not2 = icmp eq %struct.rq_qos* %rqos.01, null
  br i1 %tobool.not2, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %rqos.03 = phi %struct.rq_qos* [ %rqos.0, %for.inc ], [ %rqos.01, %entry ]
  %id1 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.03, i64 0, i32 2
  %0 = load i32, i32* %id1, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.03, i64 0, i32 3
  %rqos.0 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool.not = icmp eq %struct.rq_qos* %rqos.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %rqos.0.lcssa = phi %struct.rq_qos* [ null, %entry ], [ %rqos.03, %for.body ], [ null, %for.inc ]
  ret %struct.rq_qos* %rqos.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @div_u64_rem(i32* nocapture noundef writeonly %remainder) unnamed_addr #7 {
entry:
  store i32 0, i32* %remainder, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @queue_var_store64(i64* nocapture noundef writeonly %var, i8* noundef %page) unnamed_addr #0 {
entry:
  %v = alloca i64, align 8
  %0 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %v, align 8, !annotation !9
  %call = call fastcc i32 @kstrtos64(i8* noundef %page, i64* noundef nonnull %v) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %v, align 8
  store i64 %1, i64* %var, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(%struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(%struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtos64(i8* noundef %s, i64* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef 10, i64* noundef %res) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_poll_delay_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %poll_nsec = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 22
  %0 = load i32, i32* %poll_nsec, align 4
  %cmp = icmp eq i32 %0, -1
  %div = sdiv i32 %0, 1000
  %val.0 = select i1 %cmp, i32 -1, i32 %div
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %page, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i32 noundef %val.0) #8
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_poll_delay_store(%struct.request_queue* nocapture noundef %q, i8* noundef %page, i64 noundef %count) #0 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %val, align 4, !annotation !9
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %1 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %tobool.not = icmp eq %struct.blk_mq_ops* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %poll = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %1, i64 0, i32 7
  %2 = load i32 (%struct.blk_mq_hw_ctx*)*, i32 (%struct.blk_mq_hw_ctx*)** %poll, align 8
  %tobool2.not = icmp eq i32 (%struct.blk_mq_hw_ctx*)* %2, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @kstrtoint(i8* noundef %page, i32 noundef 10, i32* noundef nonnull %val) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %conv = sext i32 %call to i64
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load i32, i32* %val, align 4
  %cmp5 = icmp eq i32 %3, -1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %poll_nsec = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 22
  store i32 -1, i32* %poll_nsec, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %cmp8 = icmp sgt i32 %3, -1
  br i1 %cmp8, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.else
  %mul = mul i32 %3, 1000
  %poll_nsec11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 22
  store i32 %mul, i32* %poll_nsec11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then10, %if.else, %entry, %lor.lhs.false, %if.then3
  %retval.0 = phi i64 [ %conv, %if.then3 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -22, %if.else ], [ %count, %if.then10 ], [ %count, %if.then7 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @queue_virt_boundary_mask_show(%struct.request_queue* nocapture noundef readonly %q, i8* noundef %page) #0 {
entry:
  %virt_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 2
  %0 = load i64, i64* %virt_boundary_mask, align 8
  %call = call fastcc i64 @queue_var_show(i64 noundef %0, i8* noundef %page) #9
  ret i64 %call
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

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
!8 = !{i64 2155105071}
!9 = !{!"auto-init"}
!10 = !{i64 2149467062}
!11 = !{i64 2149022893, i64 2149022940, i64 2149022946, i64 2149022983, i64 2149023001, i64 2149024342, i64 2149024390, i64 2149024438, i64 2149024501, i64 2149024550, i64 2149023079, i64 2149023104, i64 2149023130, i64 2149023136, i64 2149024008, i64 2149024048, i64 2149024066, i64 2149024098, i64 2149024126, i64 2149024180, i64 2149024200, i64 2149024297, i64 2149023159, i64 2149023173, i64 2149023179, i64 2149023229, i64 2149023275, i64 2149023308}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147840385, i64 2147840418, i64 2147840471, i64 2147840530, i64 2147840564, i64 2147840619, i64 2147840648, i64 2147840668}
!14 = !{i64 2149491915}
!15 = !{i64 2149277281}
!16 = !{i64 2149013437, i64 2149013484, i64 2149013490, i64 2149013527, i64 2149013545, i64 2149014885, i64 2149014933, i64 2149014981, i64 2149015044, i64 2149015093, i64 2149013623, i64 2149013648, i64 2149013674, i64 2149013680, i64 2149014551, i64 2149014591, i64 2149014609, i64 2149014641, i64 2149014669, i64 2149014723, i64 2149014743, i64 2149014840, i64 2149013703, i64 2149013717, i64 2149013723, i64 2149013773, i64 2149013819, i64 2149013852}
