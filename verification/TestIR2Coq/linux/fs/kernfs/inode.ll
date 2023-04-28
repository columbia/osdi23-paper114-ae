; ModuleID = 'fs/kernfs/inode.c'
source_filename = "fs/kernfs/inode.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7, [48 x i8] }
%struct.anon.7 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.8, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.76, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.59 }
%union.anon.59 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.13, %union.anon.58, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.58 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.60, %union.anon.61 }
%union.anon.60 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.61 = type { i64 }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.38, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.63, %union.anon.64, %union.anon.65, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.68, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.63 = type { %struct.hlist_node }
%union.anon.64 = type { %struct.rb_node }
%union.anon.65 = type { %struct.anon.67 }
%struct.anon.67 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.68 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.74 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.72, %struct.qspinlock }
%union.anon.72 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.74 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.11 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.11 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.70 = type { %struct.callback_head }
%union.anon.71 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.76 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.10, i64, i32 }
%union.anon.10 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.12, i32 }
%union.anon.12 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
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
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }

@kernfs_rwsem = external dso_local global %struct.rw_semaphore, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@kernfs_trusted_xattr_handler = internal constant %struct.xattr_handler { i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i1 (%struct.dentry*)* null, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @kernfs_vfs_xattr_get, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @kernfs_vfs_xattr_set }, align 8
@kernfs_security_xattr_handler = internal constant %struct.xattr_handler { i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 0, i1 (%struct.dentry*)* null, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @kernfs_vfs_xattr_get, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @kernfs_vfs_xattr_set }, align 8
@kernfs_user_xattr_handler = internal constant %struct.xattr_handler { i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 0, i1 (%struct.dentry*)* null, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @kernfs_vfs_xattr_get, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @kernfs_vfs_user_xattr_set }, align 8
@kernfs_xattr_handlers = dso_local local_unnamed_addr global [4 x %struct.xattr_handler*] [%struct.xattr_handler* @kernfs_trusted_xattr_handler, %struct.xattr_handler* @kernfs_security_xattr_handler, %struct.xattr_handler* @kernfs_user_xattr_handler, %struct.xattr_handler* null], align 8
@__kernfs_iattrs.iattr_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @__kernfs_iattrs.iattr_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @__kernfs_iattrs.iattr_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@kernfs_iattrs_cache = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@ram_aops = external dso_local constant %struct.address_space_operations, align 8
@kernfs_iops = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @kernfs_iop_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @kernfs_iop_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @kernfs_iop_getattr, i64 (%struct.dentry*, i8*, i64)* @kernfs_iop_listxattr, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@kernfs_dir_iops = external dso_local constant %struct.inode_operations, align 64
@kernfs_dir_fops = external dso_local constant %struct.file_operations, align 8
@kernfs_file_fops = external dso_local constant %struct.file_operations, align 8
@kernfs_symlink_iops = external dso_local constant %struct.inode_operations, align 64
@.str = private unnamed_addr constant [9 x i8] c"trusted.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"user.\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kernfs_setattr(%struct.kernfs_node* nocapture noundef %kn, %struct.iattr* nocapture noundef readonly %iattr) local_unnamed_addr #0 {
entry:
  %ia_valid1 = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 0
  %0 = load i32, i32* %ia_valid1, align 8
  %call = call fastcc %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node* noundef %kn) #7
  %tobool.not = icmp eq %struct.kernfs_iattrs* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %0, 2
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 2, i32 0
  %2 = getelementptr %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call, i64 0, i32 0, i32 0
  %3 = load i32, i32* %1, align 8
  store i32 %3, i32* %2, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %and6 = and i32 %0, 4
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  %4 = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 3, i32 0
  %5 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call, i64 0, i32 1, i32 0
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  %and11 = and i32 %0, 16
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  %ia_atime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call, i64 0, i32 2
  %ia_atime14 = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 5
  %7 = bitcast %struct.timespec64* %ia_atime to i8*
  %8 = bitcast %struct.timespec64* %ia_atime14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %7, i8* noundef align 8 dereferenceable(16) %8, i64 16, i1 false)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %and16 = and i32 %0, 32
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call, i64 0, i32 3
  %ia_mtime19 = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 6
  %9 = bitcast %struct.timespec64* %ia_mtime to i8*
  %10 = bitcast %struct.timespec64* %ia_mtime19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %9, i8* noundef align 8 dereferenceable(16) %10, i64 16, i1 false)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %and21 = and i32 %0, 64
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call, i64 0, i32 4
  %ia_ctime24 = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 7
  %11 = bitcast %struct.timespec64* %ia_ctime to i8*
  %12 = bitcast %struct.timespec64* %ia_ctime24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %11, i8* noundef align 8 dereferenceable(16) %12, i64 16, i1 false)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %and26 = and i32 %0, 1
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %cleanup, label %if.then28

if.then28:                                        ; preds = %if.end25
  %ia_mode = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 1
  %13 = load i16, i16* %ia_mode, align 4
  %mode = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 11
  store i16 %13, i16* %mode, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then28, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %if.then28 ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node* nocapture noundef %kn) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kernfs_iattrs* @__kernfs_iattrs(%struct.kernfs_node* noundef %kn, i32 noundef 1) #7
  ret %struct.kernfs_iattrs* %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_setattr(%struct.kernfs_node* nocapture noundef %kn, %struct.iattr* nocapture noundef readonly %iattr) local_unnamed_addr #0 {
entry:
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #8
  %call = call i32 @__kernfs_setattr(%struct.kernfs_node* noundef %kn, %struct.iattr* noundef %iattr) #7
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_iop_setattr(%struct.user_namespace* nocapture readnone %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %iattr) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #7
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %tobool.not = icmp eq %struct.kernfs_node* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #8
  %call1 = call i32 @setattr_prepare(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %iattr) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @__kernfs_setattr(%struct.kernfs_node* noundef nonnull %1, %struct.iattr* noundef %iattr) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %out

if.end8:                                          ; preds = %if.end4
  call void @setattr_copy(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.iattr* noundef %iattr) #8
  br label %out

out:                                              ; preds = %if.end4, %if.end, %if.end8
  %error.0 = phi i32 [ %call1, %if.end ], [ %call5, %if.end4 ], [ 0, %if.end8 ]
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.iattr* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @kernfs_iop_listxattr(%struct.dentry* nocapture noundef readonly %dentry, i8* noundef %buf, i64 noundef %size) #0 {
entry:
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %dentry) #7
  %call1 = call fastcc %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node* noundef %call) #7
  %tobool.not = icmp eq %struct.kernfs_iattrs* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #7
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call1, i64 0, i32 5
  %call3 = call i64 @simple_xattr_list(%struct.inode* noundef %call2, %struct.simple_xattrs* noundef %xattrs, i8* noundef %buf, i64 noundef %size) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call3, %if.end ], [ -12, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @d_really_is_negative(%struct.dentry* noundef %dentry) #7
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #7
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.kernfs_node* [ %1, %if.end ], [ null, %entry ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_xattr_list(%struct.inode* noundef, %struct.simple_xattrs* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_iop_getattr(%struct.user_namespace* nocapture readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 %request_mask, i32 %query_flags) #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #7
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 42
  %1 = bitcast i8** %i_private to %struct.kernfs_node**
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %1, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #8
  call fastcc void @kernfs_refresh_inode(%struct.kernfs_node* noundef %2, %struct.inode* noundef %call) #7
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #8
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_refresh_inode(%struct.kernfs_node* nocapture noundef readonly %kn, %struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %iattr = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 12
  %0 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %mode = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 11
  %1 = load i16, i16* %mode, align 2
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  store i16 %1, i16* %i_mode, align 8
  %tobool.not = icmp eq %struct.kernfs_iattrs* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @set_inode_attr(%struct.inode* noundef %inode, %struct.kernfs_iattrs* noundef nonnull %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %kn) #7
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %subdirs = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7, i32 0, i32 0
  %2 = load i64, i64* %subdirs, align 8
  %3 = trunc i64 %2 to i32
  %conv = add i32 %3, 2
  call void @set_nlink(%struct.inode* noundef %inode, i32 noundef %conv) #8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.kstat* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @kernfs_get_inode(%struct.super_block* noundef %sb, %struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @kernfs_ino(%struct.kernfs_node* noundef %kn) #7
  %call1 = call %struct.inode* @iget_locked(%struct.super_block* noundef %sb, i64 noundef %call) #8
  %tobool.not = icmp eq %struct.inode* %call1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, 8
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @kernfs_init_inode(%struct.kernfs_node* noundef %kn, %struct.inode* noundef nonnull %call1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret %struct.inode* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @iget_locked(%struct.super_block* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @kernfs_ino(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #4 {
entry:
  %id = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 9
  %0 = load i64, i64* %id, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_init_inode(%struct.kernfs_node* noundef %kn, %struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @kernfs_get(%struct.kernfs_node* noundef %kn) #8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  store %struct.kernfs_node* %kn, %struct.kernfs_node** %0, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 9
  store %struct.address_space_operations* @ram_aops, %struct.address_space_operations** %a_ops, align 8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  store %struct.inode_operations* @kernfs_iops, %struct.inode_operations** %i_op, align 8
  %i_generation = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 41
  store i32 1, i32* %i_generation, align 8
  %mode = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 11
  %2 = load i16, i16* %mode, align 2
  call fastcc void @set_default_inode_attr(%struct.inode* noundef %inode, i16 noundef %2) #7
  call fastcc void @kernfs_refresh_inode(%struct.kernfs_node* noundef %kn, %struct.inode* noundef %inode) #7
  %call1 = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %kn) #7
  switch i32 %call1, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store %struct.inode_operations* @kernfs_dir_iops, %struct.inode_operations** %i_op, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  store %struct.file_operations* @kernfs_dir_fops, %struct.file_operations** %i_fop, align 8
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %3 = load i16, i16* %flags, align 8
  %4 = and i16 %3, 4096
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @make_empty_dir_inode(%struct.inode* noundef %inode) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7, i32 0, i32 2
  %5 = bitcast %struct.kernfs_root** %size to i64*
  %6 = load i64, i64* %5, align 8
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 %6, i64* %i_size, align 8
  %i_fop5 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  store %struct.file_operations* @kernfs_file_fops, %struct.file_operations** %i_fop5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store %struct.inode_operations* @kernfs_symlink_iops, %struct.inode_operations** %i_op, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/inode.c\22; .popsection; .long 14472b - 14470b; .short 225; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !7
  unreachable

sw.epilog:                                        ; preds = %sw.bb, %if.then, %sw.bb6, %sw.bb4
  call void @unlock_new_inode(%struct.inode* noundef %inode) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_evict_inode(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %i_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38
  call void @truncate_inode_pages_final(%struct.address_space* noundef %i_data) #8
  call void @clear_inode(%struct.inode* noundef %inode) #8
  call void @kernfs_put(%struct.kernfs_node* noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(%struct.address_space* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(%struct.kernfs_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_iop_permission(%struct.user_namespace* nocapture readnone %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #0 {
entry:
  %and = and i32 %mask, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #8
  call fastcc void @kernfs_refresh_inode(%struct.kernfs_node* noundef %1, %struct.inode* noundef %inode) #7
  %call = call i32 @generic_permission(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %inode, i32 noundef %mask) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #8
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -10, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_xattr_get(%struct.kernfs_node* nocapture noundef %kn, i8* noundef %name, i8* noundef %value, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kernfs_iattrs* @kernfs_iattrs_noalloc(%struct.kernfs_node* noundef %kn) #7
  %tobool.not = icmp eq %struct.kernfs_iattrs* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call, i64 0, i32 5
  %call1 = call i32 @simple_xattr_get(%struct.simple_xattrs* noundef %xattrs, i8* noundef %name, i8* noundef %value, i64 noundef %size) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_iattrs* @kernfs_iattrs_noalloc(%struct.kernfs_node* nocapture noundef %kn) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kernfs_iattrs* @__kernfs_iattrs(%struct.kernfs_node* noundef %kn, i32 noundef 0) #7
  ret %struct.kernfs_iattrs* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_get(%struct.simple_xattrs* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_xattr_set(%struct.kernfs_node* nocapture noundef %kn, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node* noundef %kn) #7
  %tobool.not = icmp eq %struct.kernfs_iattrs* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call, i64 0, i32 5
  %call1 = call i32 @simple_xattr_set(%struct.simple_xattrs* noundef %xattrs, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags, i64* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_set(%struct.simple_xattrs* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_iattrs* @__kernfs_iattrs(%struct.kernfs_node* nocapture noundef %kn, i32 noundef %alloc) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @__kernfs_iattrs.iattr_mutex) #8
  %iattr = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 12
  %0 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %tobool = icmp eq %struct.kernfs_iattrs* %0, null
  %tobool1 = icmp ne i32 %alloc, 0
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %out_unlock

if.end:                                           ; preds = %entry
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @kernfs_iattrs_cache, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %1) #7
  %2 = bitcast %struct.kernfs_iattrs** %iattr to i8**
  store i8* %call, i8** %2, align 8
  %tobool4.not = icmp eq i8* %call, null
  %3 = bitcast i8* %call to %struct.kernfs_iattrs*
  br i1 %tobool4.not, label %out_unlock, label %if.end6

if.end6:                                          ; preds = %if.end
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call to i32*
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral9.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 4
  %4 = bitcast i8* %.compoundliteral9.sroa.0.0..sroa_idx to i32*
  store i32 0, i32* %4, align 4
  %ia_atime = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %ia_atime to %struct.timespec64*
  call void @ktime_get_real_ts64(%struct.timespec64* noundef %5) #8
  %6 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %6, i64 0, i32 3
  %ia_atime14 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %6, i64 0, i32 2
  %7 = bitcast %struct.timespec64* %ia_mtime to i8*
  %8 = bitcast %struct.timespec64* %ia_atime14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %7, i8* noundef align 8 dereferenceable(16) %8, i64 16, i1 false)
  %9 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %9, i64 0, i32 4
  %ia_atime17 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %9, i64 0, i32 2
  %10 = bitcast %struct.timespec64* %ia_ctime to i8*
  %11 = bitcast %struct.timespec64* %ia_atime17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %10, i8* noundef align 8 dereferenceable(16) %11, i64 16, i1 false)
  %12 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %12, i64 0, i32 5
  call fastcc void @simple_xattrs_init(%struct.simple_xattrs* noundef %xattrs) #7
  %13 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %counter.i = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %13, i64 0, i32 6, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %14 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %counter.i36 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %14, i64 0, i32 7, i32 0
  store volatile i32 0, i32* %counter.i36, align 4
  %.pre = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %entry, %if.end6
  %15 = phi %struct.kernfs_iattrs* [ %3, %if.end ], [ %0, %entry ], [ %.pre, %if.end6 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @__kernfs_iattrs.iattr_mutex) #8
  ret %struct.kernfs_iattrs* %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #0 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #8
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(%struct.timespec64* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @simple_xattrs_init(%struct.simple_xattrs* noundef %xattrs) unnamed_addr #5 {
entry:
  %head = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %head) #7
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_really_is_negative(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %cmp = icmp eq %struct.inode* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #9, !srcloc !10
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_inode_attr(%struct.inode* nocapture noundef writeonly %inode, %struct.kernfs_iattrs* nocapture noundef readonly %attrs) unnamed_addr #6 {
entry:
  %0 = getelementptr %struct.kernfs_iattrs, %struct.kernfs_iattrs* %attrs, i64 0, i32 0, i32 0
  %1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %2 = load i32, i32* %0, align 8
  store i32 %2, i32* %1, align 4
  %3 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %attrs, i64 0, i32 1, i32 0
  %4 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 8
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 12
  %ia_atime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %attrs, i64 0, i32 2
  %6 = bitcast %struct.timespec64* %i_atime to i8*
  %7 = bitcast %struct.timespec64* %ia_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %6, i8* noundef align 8 dereferenceable(16) %7, i64 16, i1 false)
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %attrs, i64 0, i32 3
  %8 = bitcast %struct.timespec64* %i_mtime to i8*
  %9 = bitcast %struct.timespec64* %ia_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %attrs, i64 0, i32 4
  %10 = bitcast %struct.timespec64* %i_ctime to i8*
  %11 = bitcast %struct.timespec64* %ia_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %10, i8* noundef align 8 dereferenceable(16) %11, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kernfs_type(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 15
  %and = zext i16 %1 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #7
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #9, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(%struct.kernfs_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_default_inode_attr(%struct.inode* noundef %inode, i16 noundef %mode) unnamed_addr #0 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  store i16 %mode, i16* %i_mode, align 8
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 12
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14
  %call = call [2 x i64] @current_time(%struct.inode* noundef %inode) #8
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14, i32 0
  store i64 %call.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx2 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14, i32 1
  store i64 %call.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx2, align 8
  %0 = bitcast %struct.timespec64* %i_mtime to i8*
  %1 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %2 = bitcast %struct.timespec64* %i_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_vfs_xattr_get(%struct.xattr_handler* noundef %handler, %struct.dentry* nocapture noundef readnone %unused, %struct.inode* nocapture noundef readonly %inode, i8* noundef %suffix, i8* noundef %value, i64 noundef %size) #0 {
entry:
  %call = call i8* @xattr_full_name(%struct.xattr_handler* noundef %handler, i8* noundef %suffix) #8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %call1 = call i32 @kernfs_xattr_get(%struct.kernfs_node* noundef %1, i8* noundef %call, i8* noundef %value, i64 noundef %size) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_vfs_xattr_set(%struct.xattr_handler* noundef %handler, %struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.dentry* nocapture noundef readnone %unused, %struct.inode* nocapture noundef readonly %inode, i8* noundef %suffix, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #0 {
entry:
  %call = call i8* @xattr_full_name(%struct.xattr_handler* noundef %handler, i8* noundef %suffix) #8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %call1 = call i32 @kernfs_xattr_set(%struct.kernfs_node* noundef %1, i8* noundef %call, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xattr_full_name(%struct.xattr_handler* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_vfs_user_xattr_set(%struct.xattr_handler* noundef %handler, %struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.dentry* nocapture noundef readnone %unused, %struct.inode* nocapture noundef readonly %inode, i8* noundef %suffix, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #0 {
entry:
  %call = call i8* @xattr_full_name(%struct.xattr_handler* noundef %handler, i8* noundef %suffix) #8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %call1 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %1) #7
  %flags2 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call1, i64 0, i32 1
  %2 = load i32, i32* %flags2, align 8
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node* noundef %1) #7
  %tobool4.not = icmp eq %struct.kernfs_iattrs* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq i8* %value, null
  %xattrs10 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %call3, i64 0, i32 5
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = call fastcc i32 @kernfs_vfs_user_xattr_add(%struct.kernfs_node* noundef %1, i8* noundef %call, %struct.simple_xattrs* noundef %xattrs10, i8* noundef nonnull %value, i64 noundef %size, i32 noundef %flags) #7
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %call11 = call fastcc i32 @kernfs_vfs_user_xattr_rm(%struct.kernfs_node* noundef %1, i8* noundef %call, %struct.simple_xattrs* noundef %xattrs10, i64 noundef %size, i32 noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.else, %if.then8
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ %call11, %if.else ], [ -95, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #4 {
entry:
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool.not = icmp eq %struct.kernfs_node* %0, null
  %spec.select = select i1 %tobool.not, %struct.kernfs_node* %kn, %struct.kernfs_node* %0
  %root = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %spec.select, i64 0, i32 7, i32 0, i32 2
  %1 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  ret %struct.kernfs_root* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_vfs_user_xattr_add(%struct.kernfs_node* nocapture noundef readonly %kn, i8* noundef %full_name, %struct.simple_xattrs* noundef %xattrs, i8* noundef %value, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %removed_size = alloca i64, align 8
  %iattr = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 12
  %0 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %user_xattr_size = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %0, i64 0, i32 7
  %nr_user_xattrs = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %0, i64 0, i32 6
  %1 = bitcast i64* %removed_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 0, i64* %removed_size, align 8, !annotation !13
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef 1, %struct.atomic_t* noundef %nr_user_xattrs) #8
  %cmp = icmp sgt i32 %call.i.i.i, 128
  br i1 %cmp, label %dec_count_out, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i64 %size to i32
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef %conv, %struct.atomic_t* noundef %user_xattr_size) #8
  %cmp3 = icmp sgt i32 %call.i.i, 131072
  br i1 %cmp3, label %dec_size_out, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @simple_xattr_set(%struct.simple_xattrs* noundef %xattrs, i8* noundef %full_name, i8* noundef %value, i64 noundef %size, i32 noundef %flags, i64* noundef nonnull %removed_size) #8
  %tobool = icmp eq i32 %call7, 0
  %2 = load i64, i64* %removed_size, align 8
  %cmp8 = icmp sgt i64 %2, -1
  %or.cond = select i1 %tobool, i1 %cmp8, i1 false
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %or.cond, %tobool.not
  br i1 %brmerge, label %if.end6.dec_size_out_crit_edge, label %cleanup

if.end6.dec_size_out_crit_edge:                   ; preds = %if.end6
  %.mux29 = select i1 %or.cond, i32 0, i32 %call7
  %.mux = select i1 %or.cond, i64 %2, i64 %size
  %.pre = trunc i64 %.mux to i32
  br label %dec_size_out

dec_size_out:                                     ; preds = %if.end6.dec_size_out_crit_edge, %if.end
  %conv15.pre-phi = phi i32 [ %.pre, %if.end6.dec_size_out_crit_edge ], [ %conv, %if.end ]
  %ret.0 = phi i32 [ %.mux29, %if.end6.dec_size_out_crit_edge ], [ -28, %if.end ]
  call fastcc void @__ll_sc_atomic_sub(i32 noundef %conv15.pre-phi, %struct.atomic_t* noundef %user_xattr_size) #8
  br label %dec_count_out

dec_count_out:                                    ; preds = %entry, %dec_size_out
  %ret.1 = phi i32 [ %ret.0, %dec_size_out ], [ -28, %entry ]
  call fastcc void @__ll_sc_atomic_sub(i32 noundef 1, %struct.atomic_t* noundef %nr_user_xattrs) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %dec_count_out
  %retval.0 = phi i32 [ %ret.1, %dec_count_out ], [ 0, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_vfs_user_xattr_rm(%struct.kernfs_node* nocapture noundef readonly %kn, i8* noundef %full_name, %struct.simple_xattrs* noundef %xattrs, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %removed_size = alloca i64, align 8
  %iattr = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 12
  %0 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %1 = bitcast i64* %removed_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 0, i64* %removed_size, align 8, !annotation !13
  %call = call i32 @simple_xattr_set(%struct.simple_xattrs* noundef %xattrs, i8* noundef %full_name, i8* noundef null, i64 noundef %size, i32 noundef %flags, i64* noundef nonnull %removed_size) #8
  %2 = load i64, i64* %removed_size, align 8
  %cmp = icmp sgt i64 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %nr_user_xattrs = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %0, i64 0, i32 6
  %user_xattr_size = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %0, i64 0, i32 7
  %conv = trunc i64 %2 to i32
  call fastcc void @__ll_sc_atomic_sub(i32 noundef %conv, %struct.atomic_t* noundef %user_xattr_size) #8
  call fastcc void @__ll_sc_atomic_sub(i32 noundef 1, %struct.atomic_t* noundef %nr_user_xattrs) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #9, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #9, !srcloc !15
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2155044482}
!8 = !{i64 2149578581}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148088858, i64 2148088891, i64 2148088944, i64 2148089003, i64 2148089037, i64 2148089092, i64 2148089121, i64 2148089141}
!11 = !{i64 2149585862}
!12 = !{i64 2149378092}
!13 = !{!"auto-init"}
!14 = !{i64 2147989787, i64 2147990435, i64 2147990465, i64 2147990497, i64 2147990531, i64 2147990567, i64 2147990592}
!15 = !{i64 2147998656, i64 2147999172, i64 2147999202, i64 2147999229, i64 2147999263, i64 2147999293}
