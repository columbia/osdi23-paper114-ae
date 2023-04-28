; ModuleID = 'fs/libfs.c'
source_filename = "fs/libfs.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.0, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.81, %struct.list_head, %struct.list_head, %union.anon.82 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.78, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, {}*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.83, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.60 }
%union.anon.60 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.14, %union.anon.59, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.59 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.62 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.28, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.27, [0 x i64] }
%struct.anon.27 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.55, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.31 }
%union.anon.31 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.39, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.65, %union.anon.66, %union.anon.67, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.70, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.65 = type { %struct.hlist_node }
%union.anon.66 = type { %struct.rb_node }
%union.anon.67 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.70 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.40, %union.anon.41, i32 }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
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
%union.anon.39 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.anon.28 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.29, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.30, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.29 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.30 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.76 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.74, %struct.qspinlock }
%union.anon.74 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.76 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.9 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.9 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.72 = type { %struct.callback_head }
%union.anon.73 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.78 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.79 }
%union.anon.79 = type { i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.8, i64, i32 }
%union.anon.8 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.fid = type { %union.anon.11 }
%union.anon.11 = type { %struct.anon.13 }
%struct.anon.13 = type { i32, i16, i16, i32, i32, i32 }
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
%union.anon.81 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.anon.7 = type { i32, i32 }
%struct.pseudo_fs_context = type { %struct.super_operations*, %struct.xattr_handler**, %struct.dentry_operations*, i64 }
%struct.tree_descr = type { i8*, %struct.file_operations*, i32 }
%struct.simple_transaction_argresp = type { i64, [0 x i8] }
%struct.simple_attr = type { i32 (i8*, i64*)*, i32 (i8*, i64)*, [24 x i8], [24 x i8], i8*, i8*, %struct.mutex }
%struct.anon.80 = type { %struct.spinlock, i32 }
%struct.anon.23 = type { i64, i8, i8, %struct.atomic_t, i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 8
@simple_dentry_operations = dso_local constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* @always_delete_dentry, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* null, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@simple_dir_operations = dso_local constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @dcache_dir_lseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @dcache_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @dcache_dir_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @dcache_dir_close, i32 (%struct.file*, i64, i64, i32)* @noop_fsync, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@simple_dir_inode_operations = dso_local constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @simple_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* null, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@ram_aops = dso_local local_unnamed_addr constant %struct.address_space_operations { i32 (%struct.page*, %struct.writeback_control*)* null, i32 (%struct.file*, %struct.page*)* @simple_readpage, i32 (%struct.address_space*, %struct.writeback_control*)* null, i32 (%struct.page*)* @__set_page_dirty_no_writeback, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* null, void (%struct.readahead_control*)* null, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)* @simple_write_begin, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)* @simple_write_end, i64 (%struct.address_space*, i64)* null, void (%struct.page*, i32, i32)* null, i32 (%struct.page*, i32)* null, void (%struct.page*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* null, i1 (%struct.page*, i32)* null, void (%struct.page*)* null, i32 (%struct.page*)* null, i32 (%struct.page*, i64, i64)* null, void (%struct.page*, i8*, i8*)* null, i32 (%struct.address_space*, %struct.page*)* null, i32 (%struct.swap_info_struct*, %struct.file*, i64*)* null, void (%struct.file*)* null }, align 8
@simple_super_operations = internal constant %struct.super_operations { %struct.inode* (%struct.super_block*)* null, void (%struct.inode*)* null, void (%struct.inode*)* null, void (%struct.inode*, i32)* null, i32 (%struct.inode*, %struct.writeback_control*)* null, i32 (%struct.inode*)* null, void (%struct.inode*)* null, void (%struct.super_block*)* null, i32 (%struct.super_block*, i32)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.dentry*, %struct.kstatfs*)* @simple_statfs, i32 (%struct.super_block*, i32*, i8*)* null, void (%struct.super_block*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null }, align 8
@.str = private unnamed_addr constant [53 x i8] c"\014%s: %s passed in a files arraywith an index of 1!\0A\00", align 1
@__func__.simple_fill_super = private unnamed_addr constant [18 x i8] c"simple_fill_super\00", align 1
@pin_fs_lock = internal global %struct.spinlock zeroinitializer, align 4
@simple_transaction_get.simple_transaction_lock = internal global %struct.spinlock zeroinitializer, align 4
@simple_attr_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&attr->mutex\00", align 1
@alloc_anon_inode.anon_aops = internal constant %struct.address_space_operations { i32 (%struct.page*, %struct.writeback_control*)* null, i32 (%struct.file*, %struct.page*)* null, i32 (%struct.address_space*, %struct.writeback_control*)* null, i32 (%struct.page*)* @__set_page_dirty_no_writeback, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* null, void (%struct.readahead_control*)* null, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)* null, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)* null, i64 (%struct.address_space*, i64)* null, void (%struct.page*, i32, i32)* null, i32 (%struct.page*, i32)* null, void (%struct.page*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* null, i1 (%struct.page*, i32)* null, void (%struct.page*)* null, i32 (%struct.page*)* null, i32 (%struct.page*, i64, i64)* null, void (%struct.page*, i8*, i8*)* null, i32 (%struct.address_space*, %struct.page*)* null, i32 (%struct.swap_info_struct*, %struct.file*, i64*)* null, void (%struct.file*)* null }, align 8
@simple_symlink_inode_operations = dso_local local_unnamed_addr constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @simple_get_link, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* null, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@empty_dir_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @empty_dir_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @empty_dir_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* @noop_fsync, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@pseudo_fs_context_ops = internal constant { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* } { void (%struct.fs_context*)* @pseudo_fs_free, i32 (%struct.fs_context*, %struct.fs_context*)* null, i32 (%struct.fs_context*, %struct.fs_parameter*)* null, i32 (%struct.fs_context*, i8*)* null, i32 (%struct.fs_context*)* @pseudo_fs_get_tree, i32 (%struct.fs_context*)* null }, align 8
@empty_dir_inode_operations = internal constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @empty_dir_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @generic_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @empty_dir_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @empty_dir_getattr, i64 (%struct.dentry*, i8*, i64)* @empty_dir_listxattr, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_getattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) local_unnamed_addr #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #12
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #13
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 7
  %2 = load i64, i64* %nrpages, align 8
  %shl = shl i64 %2, 3
  %blocks = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 16
  store i64 %shl, i64* %blocks, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.kstat* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @simple_statfs(%struct.dentry* nocapture noundef readonly %dentry, %struct.kstatfs* nocapture noundef writeonly %buf) #4 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 12
  %1 = load i64, i64* %s_magic, align 32
  %f_type = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %buf, i64 0, i32 0
  store i64 %1, i64* %f_type, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %buf, i64 0, i32 1
  store i64 4096, i64* %f_bsize, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %buf, i64 0, i32 8
  store i64 255, i64* %f_namelen, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @always_delete_dentry(%struct.dentry* nocapture readnone %dentry) #5 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @simple_lookup(%struct.inode* nocapture readnone %dir, %struct.dentry* noundef %dentry, i32 %flags) #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %1 = bitcast %union.anon.6* %0 to %struct.anon.7*
  %len = getelementptr inbounds %struct.anon.7, %struct.anon.7* %1, i64 0, i32 1
  %2 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %2, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -36) #12
  %3 = bitcast i8* %call to %struct.dentry*
  br label %return

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %4 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_d_op = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 37
  %5 = load %struct.dentry_operations*, %struct.dentry_operations** %s_d_op, align 8
  %tobool.not = icmp eq %struct.dentry_operations* %5, null
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef nonnull @simple_dentry_operations) #13
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  call void @d_add(%struct.dentry* noundef %dentry, %struct.inode* noundef null) #13
  br label %return

return:                                           ; preds = %if.end2, %if.then
  %retval.0 = phi %struct.dentry* [ %3, %if.then ], [ null, %if.end2 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(%struct.dentry* noundef, %struct.dentry_operations* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(%struct.dentry* noundef, %struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dcache_dir_open(%struct.inode* nocapture readnone %inode, %struct.file* nocapture noundef %file) #0 {
entry:
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call %struct.dentry* @d_alloc_cursor(%struct.dentry* noundef %0) #13
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.dentry**
  store %struct.dentry* %call, %struct.dentry** %1, align 8
  %tobool.not = icmp eq %struct.dentry* %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc_cursor(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dcache_dir_close(%struct.inode* nocapture readnone %inode, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.dentry**
  %1 = load %struct.dentry*, %struct.dentry** %0, align 8
  call void @dput(%struct.dentry* noundef %1) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @dcache_dir_lseek(%struct.file* nocapture noundef %file, i64 noundef %offset, i32 noundef %whence) #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  switch i32 %whence, label %cleanup [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %1 = load i64, i64* %f_pos, align 8
  %add = add i64 %1, %offset
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb
  %offset.addr.0 = phi i64 [ %offset, %entry ], [ %add, %sw.bb ]
  %cmp = icmp sgt i64 %offset.addr.0, -1
  br i1 %cmp, label %sw.epilog, label %cleanup

sw.epilog:                                        ; preds = %sw.bb2
  %f_pos3 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %2 = load i64, i64* %f_pos3, align 8
  %cmp4.not = icmp eq i64 %offset.addr.0, %2
  br i1 %cmp4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %sw.epilog
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %3 = bitcast i8** %private_data to %struct.dentry**
  %4 = load %struct.dentry*, %struct.dentry** %3, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %5 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock_shared(%struct.inode* noundef %5) #12
  %cmp6 = icmp ugt i64 %offset.addr.0, 2
  br i1 %cmp6, label %if.end8, label %if.end8.thread

if.end8.thread:                                   ; preds = %if.then5
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 7, i32 0
  %rlock.i42 = bitcast %union.anon.79* %6 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i42) #13
  br label %if.else

if.end8:                                          ; preds = %if.then5
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 14
  %sub = add nsw i64 %offset.addr.0, -2
  %call = call fastcc %struct.dentry* @scan_positives(%struct.dentry* noundef %4, %struct.list_head* noundef %d_subdirs, i64 noundef %sub, %struct.dentry* noundef null) #12
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.79* %7 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end8
  %d_child = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 13
  %d_child10 = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 13
  call fastcc void @list_move(%struct.list_head* noundef %d_child, %struct.list_head* noundef %d_child10) #12
  br label %if.end12

if.else:                                          ; preds = %if.end8.thread, %if.end8
  %rlock.i47 = phi %struct.raw_spinlock* [ %rlock.i42, %if.end8.thread ], [ %rlock.i, %if.end8 ]
  %d_child11 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 13
  call fastcc void @list_del_init(%struct.list_head* noundef %d_child11) #12
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %rlock.i46 = phi %struct.raw_spinlock* [ %rlock.i47, %if.else ], [ %rlock.i, %if.then9 ]
  %to.044 = phi %struct.dentry* [ null, %if.else ], [ %call, %if.then9 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i46) #13
  call void @dput(%struct.dentry* noundef %to.044) #13
  store i64 %offset.addr.0, i64* %f_pos3, align 8
  %8 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock_shared(%struct.inode* noundef %8) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end12, %entry, %sw.bb2
  %retval.0 = phi i64 [ -22, %sw.bb2 ], [ -22, %entry ], [ %offset.addr.0, %if.end12 ], [ %offset.addr.0, %sw.epilog ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock_shared(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_read(%struct.rw_semaphore* noundef %i_rwsem) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @scan_positives(%struct.dentry* noundef %cursor, %struct.list_head* nocapture noundef readonly %p, i64 noundef %count, %struct.dentry* noundef %last) unnamed_addr #0 {
entry:
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %cursor, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.79* %1 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 14
  %next67 = getelementptr inbounds %struct.list_head, %struct.list_head* %p, i64 0, i32 0
  %2 = load %struct.list_head*, %struct.list_head** %next67, align 8
  %cmp.not68 = icmp eq %struct.list_head* %2, %d_subdirs
  br i1 %cmp.not68, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %d_child = getelementptr inbounds %struct.dentry, %struct.dentry* %cursor, i64 0, i32 13
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %3 = phi %struct.list_head* [ %2, %while.body.lr.ph ], [ %9, %cleanup ]
  %count.addr.069 = phi i64 [ %count, %while.body.lr.ph ], [ %count.addr.2, %cleanup ]
  %add.ptr55 = getelementptr %struct.list_head, %struct.list_head* %3, i64 -9
  %4 = bitcast %struct.list_head* %add.ptr55 to %struct.dentry*
  %d_flags = bitcast %struct.list_head* %add.ptr55 to i32*
  %5 = load i32, i32* %d_flags, align 8
  %and = and i32 %5, 536870912
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %while.body
  %call = call fastcc i32 @simple_positive(%struct.dentry* noundef %4) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %dec = add i64 %count.addr.069, -1
  %tobool2.not = icmp eq i64 %dec, 0
  br i1 %tobool2.not, label %do.body4, label %if.end22

do.body4:                                         ; preds = %land.lhs.true
  %d_lockref5 = getelementptr %struct.list_head, %struct.list_head* %3, i64 -4, i32 1
  %rlock.i56 = bitcast %struct.list_head** %d_lockref5 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i56) #12
  %call10 = call fastcc i32 @simple_positive(%struct.dentry* noundef %4) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14.thread, label %if.end14

if.end14.thread:                                  ; preds = %do.body4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i56) #13
  br label %if.end22

if.end14:                                         ; preds = %do.body4
  %call13 = call fastcc %struct.dentry* @dget_dlock(%struct.dentry* noundef %4) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i56) #13
  %tobool17.not = icmp eq %struct.list_head* %add.ptr55, null
  br i1 %tobool17.not, label %if.end22, label %while.end.loopexit.split.loop.exit, !prof !7

if.end22:                                         ; preds = %if.end14.thread, %if.end14, %land.lhs.true, %if.end
  %count.addr.1 = phi i64 [ %dec, %land.lhs.true ], [ %count.addr.069, %if.end ], [ 1, %if.end14 ], [ 1, %if.end14.thread ]
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %8 = getelementptr %struct.task_struct, %struct.task_struct* %7, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %8) #13
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end22
  call fastcc void @list_move(%struct.list_head* noundef %d_child, %struct.list_head* noundef %3) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  call fastcc void @_cond_resched() #12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then24, %while.body
  %count.addr.2 = phi i64 [ %count.addr.069, %while.body ], [ %count.addr.1, %if.then24 ], [ %count.addr.1, %if.end22 ]
  %p.addr.2 = phi %struct.list_head* [ %3, %while.body ], [ %d_child, %if.then24 ], [ %3, %if.end22 ]
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %p.addr.2, i64 0, i32 0
  %9 = load %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %9, %d_subdirs
  br i1 %cmp.not, label %while.end, label %while.body

while.end.loopexit.split.loop.exit:               ; preds = %if.end14
  %10 = bitcast %struct.list_head* %add.ptr55 to %struct.dentry*
  br label %while.end

while.end:                                        ; preds = %cleanup, %while.end.loopexit.split.loop.exit, %entry
  %found.4 = phi %struct.dentry* [ null, %entry ], [ %10, %while.end.loopexit.split.loop.exit ], [ null, %cleanup ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  call void @dput(%struct.dentry* noundef %last) #13
  ret %struct.dentry* %found.4
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #12
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock_shared(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_read(%struct.rw_semaphore* noundef %i_rwsem) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dcache_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.dentry**
  %2 = load %struct.dentry*, %struct.dentry** %1, align 8
  %call = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #12
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 14
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %3 = load i64, i64* %pos, align 8
  %cmp = icmp eq i64 %3, 2
  br i1 %cmp, label %if.end8, label %if.else

if.else:                                          ; preds = %if.end
  %d_child = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 13
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef %d_child) #12
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.else, %if.end
  %p.0 = phi %struct.list_head* [ %d_subdirs, %if.end ], [ %d_child, %if.else ]
  %call964 = call fastcc %struct.dentry* @scan_positives(%struct.dentry* noundef %2, %struct.list_head* noundef %p.0, i64 noundef 1, %struct.dentry* noundef null) #12
  %cmp10.not65 = icmp eq %struct.dentry* %call964, null
  br i1 %cmp10.not65, label %if.else24, label %while.body

while.body:                                       ; preds = %if.end8, %if.end17
  %call966 = phi %struct.dentry* [ %call9, %if.end17 ], [ %call964, %if.end8 ]
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %call966, i64 0, i32 4, i32 1
  %4 = load i8*, i8** %name, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %call966, i64 0, i32 4, i32 0
  %6 = bitcast %union.anon.6* %5 to %struct.anon.7*
  %len = getelementptr inbounds %struct.anon.7, %struct.anon.7* %6, i64 0, i32 1
  %7 = load i32, i32* %len, align 4
  %call12 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef nonnull %call966) #12
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call12, i64 0, i32 8
  %8 = load i64, i64* %i_ino, align 8
  %call14 = call fastcc i8 @dt_type(%struct.inode* noundef %call12) #12
  %conv = zext i8 %call14 to i32
  %call15 = call fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %4, i32 noundef %7, i64 noundef %8, i32 noundef %conv) #12
  br i1 %call15, label %if.end17, label %if.then21

if.end17:                                         ; preds = %while.body
  %9 = load i64, i64* %pos, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %pos, align 8
  %d_child19 = getelementptr inbounds %struct.dentry, %struct.dentry* %call966, i64 0, i32 13
  %call9 = call fastcc %struct.dentry* @scan_positives(%struct.dentry* noundef %2, %struct.list_head* noundef %d_child19, i64 noundef 1, %struct.dentry* noundef nonnull %call966) #12
  %cmp10.not = icmp eq %struct.dentry* %call9, null
  br i1 %cmp10.not, label %if.else24, label %while.body

if.then21:                                        ; preds = %while.body
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.79* %10 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %d_child22 = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 13
  %d_child23 = getelementptr inbounds %struct.dentry, %struct.dentry* %call966, i64 0, i32 13
  call fastcc void @list_move_tail(%struct.list_head* noundef %d_child22, %struct.list_head* noundef %d_child23) #12
  br label %if.end26

if.else24:                                        ; preds = %if.end17, %if.end8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 7, i32 0
  %rlock.i59 = bitcast %union.anon.79* %11 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i59) #13
  %d_child25 = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 13
  call fastcc void @list_del_init(%struct.list_head* noundef %d_child25) #12
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then21
  %call963 = phi %struct.dentry* [ null, %if.else24 ], [ %call966, %if.then21 ]
  %rlock.i60 = phi %struct.raw_spinlock* [ %rlock.i59, %if.else24 ], [ %rlock.i, %if.then21 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i60) #13
  call void @dput(%struct.dentry* noundef %call963) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.end26
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dots(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  switch i64 %0, label %return [
    i64 0, label %if.then
    i64 1, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @dir_emit_dot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #12
  br i1 %call, label %if.end3.thread, label %return

if.end3.thread:                                   ; preds = %if.then
  store i64 1, i64* %pos, align 8
  br label %if.then6

if.then6:                                         ; preds = %entry, %if.end3.thread
  %call7 = call fastcc i1 @dir_emit_dotdot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #12
  br i1 %call7, label %if.end9, label %return

if.end9:                                          ; preds = %if.then6
  store i64 2, i64* %pos, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9, %if.then6, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then6 ], [ true, %if.end9 ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %type) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %1, i64 noundef %ino, i32 noundef %type) #13
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @dt_type(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = lshr i16 %0, 12
  %conv1 = trunc i16 %1 to i8
  ret i8 %conv1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #12
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @generic_read_dir(%struct.file* nocapture readnone %filp, i8* nocapture readnone %buf, i64 %siz, i64* nocapture readnone %ppos) #5 {
entry:
  ret i64 -21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @noop_fsync(%struct.file* nocapture readnone %file, i64 %start, i64 %end, i32 %datasync) #5 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @simple_recursive_removal(%struct.dentry* noundef %dentry, void (%struct.dentry*)* noundef readonly %callback) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %dentry) #12
  %tobool12.not = icmp eq void (%struct.dentry*)* %callback, null
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %this.0 = phi %struct.dentry* [ %dentry, %entry ], [ %call3, %cleanup ]
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %this.0, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %0) #12
  %call1 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %this.0) #12
  br i1 %call1, label %if.then, label %while.cond2.preheader

if.then:                                          ; preds = %while.cond
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 4
  %1 = load i32, i32* %i_flags, align 4
  %or = or i32 %1, 16
  store i32 %or, i32* %i_flags, align 4
  br label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %if.then, %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.preheader, %if.end15
  %inode.0 = phi %struct.inode* [ %3, %if.end15 ], [ %0, %while.cond2.preheader ]
  %victim.0 = phi %struct.dentry* [ %this.1, %if.end15 ], [ null, %while.cond2.preheader ]
  %this.1 = phi %struct.dentry* [ %2, %if.end15 ], [ %this.0, %while.cond2.preheader ]
  %call3 = call fastcc %struct.dentry* @find_next_child(%struct.dentry* noundef %this.1, %struct.dentry* noundef %victim.0) #12
  %cmp = icmp eq %struct.dentry* %call3, null
  br i1 %cmp, label %while.body4, label %cleanup

while.body4:                                      ; preds = %while.cond2
  %call5 = call [2 x i64] @current_time(%struct.inode* noundef %inode.0) #13
  %call5.fca.0.extract = extractvalue [2 x i64] %call5, 0
  %call5.fca.1.extract = extractvalue [2 x i64] %call5, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode.0, i64 0, i32 14, i32 0
  store i64 %call5.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx32 = getelementptr inbounds %struct.inode, %struct.inode* %inode.0, i64 0, i32 14, i32 1
  store i64 %call5.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx32, align 8
  call void @clear_nlink(%struct.inode* noundef %inode.0) #13
  call fastcc void @inode_unlock(%struct.inode* noundef %inode.0) #12
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %this.1, i64 0, i32 3
  %2 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode6 = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode6, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %3) #12
  %call7 = call fastcc i32 @simple_positive(%struct.dentry* noundef %this.1) #12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %while.body4
  call void @d_invalidate(%struct.dentry* noundef %this.1) #13
  %call9 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %this.1) #12
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  call fastcc void @fsnotify_rmdir(%struct.inode* noundef %3, %struct.dentry* noundef %this.1) #12
  br label %if.end11

if.else:                                          ; preds = %if.then8
  call fastcc void @fsnotify_unlink(%struct.inode* noundef %3, %struct.dentry* noundef %this.1) #12
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void %callback(%struct.dentry* noundef %this.1) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  call void @dput(%struct.dentry* noundef %this.1) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %while.body4
  %cmp16 = icmp eq %struct.dentry* %this.1, %dentry
  br i1 %cmp16, label %if.then17, label %while.cond2

if.then17:                                        ; preds = %if.end15
  %i_ctime18 = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 14
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 13
  %call20 = call [2 x i64] @current_time(%struct.inode* noundef %3) #13
  %call20.fca.0.extract = extractvalue [2 x i64] %call20, 0
  %call20.fca.1.extract = extractvalue [2 x i64] %call20, 1
  %tmp19.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 13, i32 0
  store i64 %call20.fca.0.extract, i64* %tmp19.sroa.0.0..sroa_idx, align 8
  %tmp19.sroa.4.0..sroa_idx29 = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 13, i32 1
  store i64 %call20.fca.1.extract, i64* %tmp19.sroa.4.0..sroa_idx29, align 8
  %4 = bitcast %struct.timespec64* %i_ctime18 to i8*
  %5 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %5, i64 16, i1 false)
  %call21 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %dentry) #12
  br i1 %call21, label %if.then22, label %cleanup27

if.then22:                                        ; preds = %if.then17
  call void @drop_nlink(%struct.inode* noundef %3) #13
  br label %cleanup27

cleanup:                                          ; preds = %while.cond2
  call fastcc void @inode_unlock(%struct.inode* noundef %inode.0) #12
  br label %while.cond

cleanup27:                                        ; preds = %if.then17, %if.then22
  call fastcc void @inode_unlock(%struct.inode* noundef %3) #12
  call void @dput(%struct.dentry* noundef %dentry) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dget(%struct.dentry* noundef returned %dentry) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_dir(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %dentry) #12
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i1 @d_is_autodir(%struct.dentry* noundef %dentry) #12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @find_next_child(%struct.dentry* noundef %parent, %struct.dentry* noundef %prev) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dentry* %prev, null
  %d_child = getelementptr inbounds %struct.dentry, %struct.dentry* %prev, i64 0, i32 13
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 14
  %cond = select i1 %tobool.not, %struct.list_head* %d_subdirs, %struct.list_head* %d_child
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.79* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %next47 = getelementptr inbounds %struct.list_head, %struct.list_head* %cond, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next47, align 8
  %cmp.not48 = icmp eq %struct.list_head* %1, %d_subdirs
  br i1 %cmp.not48, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %2 = phi %struct.list_head* [ %4, %cleanup ], [ %1, %entry ]
  %add.ptr40 = getelementptr %struct.list_head, %struct.list_head* %2, i64 -9
  %3 = bitcast %struct.list_head* %add.ptr40 to %struct.dentry*
  %call = call fastcc i32 @simple_positive(%struct.dentry* noundef %3) #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup, label %do.body3

do.body3:                                         ; preds = %while.body
  %d_lockref4 = getelementptr %struct.list_head, %struct.list_head* %2, i64 -4, i32 1
  %rlock.i41 = bitcast %struct.list_head** %d_lockref4 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i41) #12
  %call9 = call fastcc i32 @simple_positive(%struct.dentry* noundef %3) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %do.body3
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i41) #13
  br label %cleanup

if.end:                                           ; preds = %do.body3
  %call12 = call fastcc %struct.dentry* @dget_dlock(%struct.dentry* noundef %3) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i41) #13
  %tobool15.not = icmp eq %struct.list_head* %add.ptr40, null
  br i1 %tobool15.not, label %cleanup, label %while.end.loopexit.split.loop.exit, !prof !7

cleanup:                                          ; preds = %if.end.thread, %while.body, %if.end
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i64 0, i32 0
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %4, %d_subdirs
  br i1 %cmp.not, label %while.end, label %while.body

while.end.loopexit.split.loop.exit:               ; preds = %if.end
  %5 = bitcast %struct.list_head* %add.ptr40 to %struct.dentry*
  br label %while.end

while.end:                                        ; preds = %cleanup, %while.end.loopexit.split.loop.exit, %entry
  %child.4 = phi %struct.dentry* [ null, %entry ], [ %5, %while.end.loopexit.split.loop.exit ], [ null, %cleanup ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  call void @dput(%struct.dentry* noundef %prev) #13
  ret %struct.dentry* %child.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @simple_positive(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @d_really_is_positive(%struct.dentry* noundef %dentry) #12
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #12
  %tobool.not = icmp eq i32 %call1, 0
  %phi.cast = zext i1 %tobool.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fsnotify_rmdir(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #12
  br i1 %call, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/fsnotify.h\22; .popsection; .long 14472b - 14470b; .short 246; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @fsnotify_dirent(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fsnotify_unlink(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #12
  br i1 %call, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/fsnotify.h\22; .popsection; .long 14472b - 14470b; .short 223; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @fsnotify_dirent(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* nocapture noundef %fc, i64 noundef %magic) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 32) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %magic3 = getelementptr inbounds i8, i8* %call, i64 24
  %0 = bitcast i8* %magic3 to i64*
  store i64 %magic, i64* %0, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  store i8* %call, i8** %fs_private, align 8
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  store %struct.fs_context_operations* bitcast ({ void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* }* @pseudo_fs_context_ops to %struct.fs_context_operations*), %struct.fs_context_operations** %ops, align 8
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  %1 = load i32, i32* %sb_flags, align 8
  %or = or i32 %1, -2147483648
  store i32 %or, i32* %sb_flags, align 8
  %global = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 17
  %2 = bitcast i24* %global to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.set = or i32 %bf.load, 131072
  store i32 %bf.set, i32* %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast i8* %call to %struct.pseudo_fs_context*
  ret %struct.pseudo_fs_context* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #13
  ret i8* %call10.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @simple_open(%struct.inode* nocapture noundef readonly %inode, %struct.file* nocapture noundef writeonly %file) local_unnamed_addr #4 {
entry:
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = load i8*, i8** %i_private, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  store i8* %0, i8** %private_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_link(%struct.dentry* nocapture noundef readonly %old_dentry, %struct.inode* nocapture noundef %dir, %struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %old_dentry) #12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %i_ctime1 = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 14
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 13
  %call2 = call [2 x i64] @current_time(%struct.inode* noundef %call) #13
  %call2.fca.0.extract = extractvalue [2 x i64] %call2, 0
  %call2.fca.1.extract = extractvalue [2 x i64] %call2, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 13, i32 0
  store i64 %call2.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx5 = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 13, i32 1
  store i64 %call2.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx5, align 8
  %0 = bitcast %struct.timespec64* %i_ctime1 to i8*
  %1 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %2 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @inc_nlink(%struct.inode* noundef %call) #13
  call void @ihold(%struct.inode* noundef %call) #13
  %call3 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %dentry) #12
  call void @d_instantiate(%struct.dentry* noundef %dentry, %struct.inode* noundef %call) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(%struct.dentry* noundef, %struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_empty(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.79* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 14
  %1 = bitcast %struct.list_head* %d_subdirs to i8**
  %.pn38 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn38 to %struct.list_head*
  %cmp.not39 = icmp eq %struct.list_head* %d_subdirs, %2
  br i1 %cmp.not39, label %out, label %do.body2

do.body2:                                         ; preds = %entry, %if.end
  %.pn40 = phi i8* [ %.pn, %if.end ], [ %.pn38, %entry ]
  %child.0.in = getelementptr i8, i8* %.pn40, i64 -144
  %child.0 = bitcast i8* %child.0.in to %struct.dentry*
  %d_lockref3 = getelementptr i8, i8* %.pn40, i64 -56
  %rlock.i34 = bitcast i8* %d_lockref3 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i34) #12
  %call7 = call fastcc i32 @simple_positive(%struct.dentry* noundef %child.0) #12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body2
  %rlock.i34.le = bitcast i8* %d_lockref3 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i34.le) #13
  br label %out

if.end:                                           ; preds = %do.body2
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i34) #13
  %3 = bitcast i8* %.pn40 to i8**
  %.pn = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %d_subdirs, %4
  br i1 %cmp.not, label %out, label %do.body2

out:                                              ; preds = %if.end, %entry, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 1, %entry ], [ 1, %if.end ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_unlink(%struct.inode* nocapture noundef %dir, %struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %i_ctime1 = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 14
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 13
  %call2 = call [2 x i64] @current_time(%struct.inode* noundef %call) #13
  %call2.fca.0.extract = extractvalue [2 x i64] %call2, 0
  %call2.fca.1.extract = extractvalue [2 x i64] %call2, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 13, i32 0
  store i64 %call2.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx4 = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 13, i32 1
  store i64 %call2.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx4, align 8
  %0 = bitcast %struct.timespec64* %i_ctime1 to i8*
  %1 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %2 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @drop_nlink(%struct.inode* noundef %call) #13
  call void @dput(%struct.dentry* noundef %dentry) #13
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_rmdir(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %call = call i32 @simple_empty(%struct.dentry* noundef %dentry) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #12
  call void @drop_nlink(%struct.inode* noundef %call1) #13
  %call2 = call i32 @simple_unlink(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #12
  call void @drop_nlink(%struct.inode* noundef %dir) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -39, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_rename(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.inode* noundef %old_dir, %struct.dentry* nocapture noundef readonly %old_dentry, %struct.inode* noundef %new_dir, %struct.dentry* noundef %new_dentry, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %old_dentry) #12
  %call1 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %old_dentry) #12
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @simple_empty(%struct.dentry* noundef %new_dentry) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i1 @d_really_is_positive(%struct.dentry* noundef %new_dentry) #12
  br i1 %call6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @simple_unlink(%struct.inode* noundef %new_dir, %struct.dentry* noundef %new_dentry) #12
  br i1 %call1, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.then7
  %call11 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %new_dentry) #12
  call void @drop_nlink(%struct.inode* noundef %call11) #13
  call void @drop_nlink(%struct.inode* noundef %old_dir) #13
  br label %if.end16

if.else:                                          ; preds = %if.end5
  br i1 %call1, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.else
  call void @drop_nlink(%struct.inode* noundef %old_dir) #13
  call void @inc_nlink(%struct.inode* noundef %new_dir) #13
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14, %if.then7, %if.then10
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %old_dir, i64 0, i32 14
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %old_dir, i64 0, i32 13
  %i_ctime17 = getelementptr inbounds %struct.inode, %struct.inode* %new_dir, i64 0, i32 14
  %i_mtime18 = getelementptr inbounds %struct.inode, %struct.inode* %new_dir, i64 0, i32 13
  %i_ctime19 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call20 = call [2 x i64] @current_time(%struct.inode* noundef %old_dir) #13
  %call20.fca.0.extract = extractvalue [2 x i64] %call20, 0
  %call20.fca.1.extract = extractvalue [2 x i64] %call20, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call20.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx23 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call20.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx23, align 8
  %0 = bitcast %struct.timespec64* %i_mtime18 to i8*
  %1 = bitcast %struct.timespec64* %i_ctime19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %2 = bitcast %struct.timespec64* %i_ctime17 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %3 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %3, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  %4 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end16
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry ], [ -39, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_really_is_positive(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %cmp = icmp ne %struct.inode* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_setattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %iattr) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #12
  %call1 = call i32 @setattr_prepare(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %iattr) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 0
  %0 = load i32, i32* %ia_valid, align 8
  %and = and i32 %0, 8
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %ia_size = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 4
  %1 = load i64, i64* %ia_size, align 8
  call void @truncate_setsize(%struct.inode* noundef %call, i64 noundef %1) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @setattr_copy(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %call, %struct.iattr* noundef %iattr) #13
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(%struct.inode* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.iattr* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 7) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_write_begin(%struct.file* nocapture readnone %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** nocapture noundef writeonly %pagep, i8** nocapture readnone %fsdata) #0 {
entry:
  %shr = ashr i64 %pos, 12
  %call = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* noundef %mapping, i64 noundef %shr, i32 noundef %flags) #13
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store %struct.page* %call, %struct.page** %pagep, align 8
  %call1 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call) #12
  %tobool2 = icmp eq i32 %call1, 0
  %cmp = icmp ne i32 %len, 4096
  %or.cond = and i1 %cmp, %tobool2
  br i1 %or.cond, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %0 = trunc i64 %pos to i32
  %conv5 = and i32 %0, 4095
  %add = add i32 %conv5, %len
  call fastcc void @zero_user_segments(%struct.page* noundef nonnull %call, i32 noundef 0, i32 noundef %conv5, i32 noundef %add, i32 noundef 4096) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #15, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start1, i32 noundef %end1, i32 noundef %start2, i32 noundef %end2) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #12
  %conv = zext i32 %end1 to i64
  %call1 = call fastcc i64 @page_size(%struct.page* noundef %page) #12
  %cmp = icmp ult i64 %call1, %conv
  br i1 %cmp, label %do.body9, label %lor.rhs, !prof !7

lor.rhs:                                          ; preds = %entry
  %conv3 = zext i32 %end2 to i64
  %call4 = call fastcc i64 @page_size(%struct.page* noundef %page) #12
  %cmp5 = icmp ult i64 %call4, %conv3
  br i1 %cmp5, label %do.body9, label %do.end14, !prof !7

do.body9:                                         ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/highmem.h\22; .popsection; .long 14472b - 14470b; .short 208; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !13
  unreachable

do.end14:                                         ; preds = %lor.rhs
  %cmp15 = icmp ugt i32 %end1, %start1
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %do.end14
  %idx.ext = zext i32 %start1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub = sub i32 %end1, %start1
  %conv18 = zext i32 %sub to i64
  %call19 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv18) #13
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.end14
  %cmp21 = icmp ugt i32 %end2, %start2
  br i1 %cmp21, label %if.then23, label %do.end33

if.then23:                                        ; preds = %if.end20
  %idx.ext24 = zext i32 %start2 to i64
  %add.ptr25 = getelementptr i8, i8* %call, i64 %idx.ext24
  %sub26 = sub i32 %end2, %start2
  %conv27 = zext i32 %sub26 to i64
  %call28 = call i8* @memset(i8* noundef %add.ptr25, i32 noundef 0, i64 noundef %conv27) #13
  br label %do.end33

do.end33:                                         ; preds = %if.then23, %if.end20
  call fastcc void @__kunmap_atomic() #12
  %call3760 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #12
  %cmp3861.not = icmp eq i64 %call3760, 0
  br i1 %cmp3861.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end33, %for.body
  %conv3663 = phi i64 [ %conv36, %for.body ], [ 0, %do.end33 ]
  %add.ptr41 = getelementptr %struct.page, %struct.page* %page, i64 %conv3663
  call void @flush_dcache_page(%struct.page* noundef %add.ptr41) #13
  %inc = add nuw nsw i64 %conv3663, 1
  %conv36 = and i64 %inc, 4294967295
  %call37 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #12
  %cmp38 = icmp ugt i64 %call37, %conv36
  br i1 %cmp38, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @simple_readpage(%struct.file* nocapture noundef readnone %file, %struct.page* noundef %page) #0 {
entry:
  call fastcc void @clear_highpage(%struct.page* noundef %page) #12
  call void @flush_dcache_page(%struct.page* noundef %page) #13
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags.i) #13
  call void @unlock_page(%struct.page* noundef %page) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(%struct.page* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @simple_write_end(%struct.file* nocapture noundef readnone %file, %struct.address_space* nocapture noundef readnone %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef returned %copied, %struct.page* noundef %page, i8* nocapture noundef readnone %fsdata) #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %conv = zext i32 %copied to i64
  %add = add i64 %conv, %pos
  %call = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %cmp = icmp ugt i32 %len, %copied
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %2 = trunc i64 %pos to i32
  %conv4 = and i32 %2, 4095
  %add5 = add i32 %conv4, %copied
  %sub = sub i32 %len, %copied
  call fastcc void @zero_user(%struct.page* noundef %page, i32 noundef %add5, i32 noundef %sub) #12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags.i) #13
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 11
  %3 = load i64, i64* %i_size, align 8
  %cmp7 = icmp sgt i64 %add, %3
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call fastcc void @i_size_write(%struct.inode* noundef %1, i64 noundef %add) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %call11 = call i32 @set_page_dirty(%struct.page* noundef %page) #13
  call void @unlock_page(%struct.page* noundef %page) #13
  call fastcc void @put_page(%struct.page* noundef %page) #12
  ret i32 %copied
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_fill_super(%struct.super_block* noundef %s, i64 noundef %magic, %struct.tree_descr* nocapture noundef readonly %files) local_unnamed_addr #0 {
entry:
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 3
  store i64 4096, i64* %s_blocksize, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 2
  store i8 12, i8* %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 12
  store i64 %magic, i64* %s_magic, align 32
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 6
  store %struct.super_operations* @simple_super_operations, %struct.super_operations** %s_op, align 16
  %s_time_gran = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 28
  store i32 1, i32* %s_time_gran, align 16
  %call = call %struct.inode* @new_inode(%struct.super_block* noundef %s) #13
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  store i64 1, i64* %i_ino, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 16877, i16* %i_mode, align 8
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call1 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call) #13
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx48 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx48, align 8
  %0 = bitcast %struct.timespec64* %i_mtime to i8*
  %1 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %2 = bitcast %struct.timespec64* %i_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @simple_dir_inode_operations to %struct.inode_operations*), %struct.inode_operations** %i_op, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* @simple_dir_operations, %struct.file_operations** %i_fop, align 8
  call void @set_nlink(%struct.inode* noundef nonnull %call, i32 noundef 2) #13
  %call2 = call %struct.dentry* @d_make_root(%struct.inode* noundef nonnull %call) #13
  %tobool3.not = icmp eq %struct.dentry* %call2, null
  br i1 %tobool3.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %files.addr.0 = phi %struct.tree_descr* [ %incdec.ptr, %for.inc ], [ %files, %for.cond.preheader ]
  %name = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %files.addr.0, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool6.not = icmp eq i8* %3, null
  br i1 %tobool6.not, label %for.inc, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %4 = load i8, i8* %3, align 1
  %tobool8.not = icmp eq i8 %4, 0
  br i1 %tobool8.not, label %for.end, label %if.end12

if.end12:                                         ; preds = %lor.rhs
  %cmp = icmp eq i32 %i.0, 1
  br i1 %cmp, label %do.end, label %if.end21, !prof !7

do.end:                                           ; preds = %if.end12
  %5 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %name19 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %5, i64 0, i32 0
  %6 = load i8*, i8** %name19, align 8
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.simple_fill_super, i64 0, i64 0), i8* noundef %6) #16
  %.pre = load i8*, i8** %name, align 8
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end12
  %7 = phi i8* [ %.pre, %do.end ], [ %3, %if.end12 ]
  %call23 = call %struct.dentry* @d_alloc_name(%struct.dentry* noundef nonnull %call2, i8* noundef %7) #13
  %tobool24.not = icmp eq %struct.dentry* %call23, null
  br i1 %tobool24.not, label %out, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = call %struct.inode* @new_inode(%struct.super_block* noundef %s) #13
  %tobool28.not = icmp eq %struct.inode* %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @dput(%struct.dentry* noundef nonnull %call23) #13
  br label %out

if.end30:                                         ; preds = %if.end26
  %mode = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %files.addr.0, i64 0, i32 2
  %8 = load i32, i32* %mode, align 8
  %9 = trunc i32 %8 to i16
  %conv31 = or i16 %9, -32768
  %i_mode32 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 0
  store i16 %conv31, i16* %i_mode32, align 8
  %i_atime33 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 12
  %i_mtime34 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 13
  %i_ctime35 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 14
  %call37 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call27) #13
  %call37.fca.0.extract = extractvalue [2 x i64] %call37, 0
  %call37.fca.1.extract = extractvalue [2 x i64] %call37, 1
  %tmp36.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 14, i32 0
  store i64 %call37.fca.0.extract, i64* %tmp36.sroa.0.0..sroa_idx, align 8
  %tmp36.sroa.4.0..sroa_idx45 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 14, i32 1
  store i64 %call37.fca.1.extract, i64* %tmp36.sroa.4.0..sroa_idx45, align 8
  %10 = bitcast %struct.timespec64* %i_mtime34 to i8*
  %11 = bitcast %struct.timespec64* %i_ctime35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %10, i8* noundef align 8 dereferenceable(16) %11, i64 16, i1 false)
  %12 = bitcast %struct.timespec64* %i_atime33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %12, i8* noundef align 8 dereferenceable(16) %11, i64 16, i1 false)
  %ops = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %files.addr.0, i64 0, i32 1
  %13 = load %struct.file_operations*, %struct.file_operations** %ops, align 8
  %i_fop38 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 36, i32 0
  store %struct.file_operations* %13, %struct.file_operations** %i_fop38, align 8
  %conv39 = sext i32 %i.0 to i64
  %i_ino40 = getelementptr inbounds %struct.inode, %struct.inode* %call27, i64 0, i32 8
  store i64 %conv39, i64* %i_ino40, align 8
  call void @d_add(%struct.dentry* noundef nonnull %call23, %struct.inode* noundef nonnull %call27) #13
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end30
  %inc = add i32 %i.0, 1
  %incdec.ptr = getelementptr %struct.tree_descr, %struct.tree_descr* %files.addr.0, i64 1
  br label %for.cond

for.end:                                          ; preds = %lor.rhs
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 13
  store %struct.dentry* %call2, %struct.dentry** %s_root, align 8
  br label %cleanup

out:                                              ; preds = %if.end21, %if.then29
  call void @d_genocide(%struct.dentry* noundef nonnull %call2) #13
  call void @shrink_dcache_parent(%struct.dentry* noundef nonnull %call2) #13
  call void @dput(%struct.dentry* noundef nonnull %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %out, %for.end
  %retval.0 = phi i32 [ -12, %out ], [ 0, %for.end ], [ -12, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_make_root(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_genocide(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_pin_fs(%struct.file_system_type* noundef %type, %struct.vfsmount** nocapture noundef %mount, i32* nocapture noundef %count) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pin_fs_lock, i64 0, i32 0, i32 0)) #13
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mount, align 8
  %tobool.not = icmp eq %struct.vfsmount* %0, null
  br i1 %tobool.not, label %if.then, label %if.end11, !prof !7

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pin_fs_lock, i64 0, i32 0, i32 0)) #13
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %type, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* noundef %type, i32 noundef 4194304, i8* noundef %1, i8* noundef null) #13
  %2 = bitcast %struct.vfsmount* %call to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %2) #12
  br i1 %call4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %call6 = call fastcc i64 @PTR_ERR(i8* noundef %2) #12
  %conv7 = trunc i64 %call6 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pin_fs_lock, i64 0, i32 0, i32 0)) #13
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mount, align 8
  %tobool8.not = icmp eq %struct.vfsmount* %3, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  store %struct.vfsmount* %call, %struct.vfsmount** %mount, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then9, %entry
  %4 = phi %struct.vfsmount* [ %3, %if.end ], [ %call, %if.then9 ], [ %0, %entry ]
  %mnt.0 = phi %struct.vfsmount* [ %call, %if.end ], [ %call, %if.then9 ], [ null, %entry ]
  %call12 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %4) #13
  %5 = load i32, i32* %count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %count, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pin_fs_lock, i64 0, i32 0, i32 0)) #13
  call void @mntput(%struct.vfsmount* noundef %mnt.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then5
  %retval.0 = phi i32 [ %conv7, %if.then5 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

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
declare dso_local %struct.vfsmount* @mntget(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @simple_release_fs(%struct.vfsmount** nocapture noundef %mount, i32* nocapture noundef %count) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pin_fs_lock, i64 0, i32 0, i32 0)) #13
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mount, align 8
  %1 = load i32, i32* %count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %count, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.vfsmount* null, %struct.vfsmount** %mount, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pin_fs_lock, i64 0, i32 0, i32 0)) #13
  call void @mntput(%struct.vfsmount* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_read_from_buffer(i8* noundef %to, i64 noundef %count, i64* nocapture noundef %ppos, i8* noundef %from, i64 noundef %available) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %ppos, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i64 %0, %available
  %tobool = icmp ne i64 %count, 0
  %or.cond = and i1 %tobool, %cmp1
  br i1 %or.cond, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = sub i64 %available, %0
  %cmp4 = icmp ult i64 %sub, %count
  %spec.select = select i1 %cmp4, i64 %sub, i64 %count
  %cmp11.i.i = icmp ugt i64 %spec.select, 2147483647
  br i1 %cmp11.i.i, label %copy_to_user.exit.thread, label %copy_to_user.exit, !prof !7

copy_to_user.exit.thread:                         ; preds = %if.end3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end3
  %add.ptr = getelementptr i8, i8* %from, i64 %0
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %add.ptr, i64 noundef %spec.select) #13
  %cmp8 = icmp eq i64 %spec.select, %call2.i
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %copy_to_user.exit
  %sub11 = sub i64 %spec.select, %call2.i
  %add = add i64 %sub11, %0
  store i64 %add, i64* %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit.thread, %copy_to_user.exit, %if.end, %entry, %if.end10
  %retval.0 = phi i64 [ %sub11, %if.end10 ], [ -22, %entry ], [ 0, %if.end ], [ -14, %copy_to_user.exit ], [ -14, %copy_to_user.exit.thread ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_write_to_buffer(i8* noundef %to, i64 noundef %available, i64* nocapture noundef %ppos, i8* noundef %from, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %ppos, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i64 %0, %available
  %tobool = icmp ne i64 %count, 0
  %or.cond = and i1 %tobool, %cmp1
  br i1 %or.cond, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = sub i64 %available, %0
  %cmp4 = icmp ult i64 %sub, %count
  %spec.select = select i1 %cmp4, i64 %sub, i64 %count
  %cmp11.i.i = icmp ugt i64 %spec.select, 2147483647
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !7

copy_from_user.exit.thread:                       ; preds = %if.end3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !15
  br label %cleanup

copy_from_user.exit:                              ; preds = %if.end3
  %add.ptr = getelementptr i8, i8* %to, i64 %0
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %add.ptr, i8* noundef %from, i64 noundef %spec.select) #13
  %cmp8 = icmp eq i64 %spec.select, %call2.i
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %copy_from_user.exit
  %sub11 = sub i64 %spec.select, %call2.i
  %add = add i64 %sub11, %0
  store i64 %add, i64* %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %copy_from_user.exit.thread, %copy_from_user.exit, %if.end, %entry, %if.end10
  %retval.0 = phi i64 [ %sub11, %if.end10 ], [ -22, %entry ], [ 0, %if.end ], [ -14, %copy_from_user.exit ], [ -14, %copy_from_user.exit.thread ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @memory_read_from_buffer(i8* noundef %to, i64 noundef %count, i64* nocapture noundef %ppos, i8* noundef %from, i64 noundef %available) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %ppos, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp ult i64 %0, %available
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = sub i64 %available, %0
  %cmp4 = icmp ult i64 %sub, %count
  %spec.select = select i1 %cmp4, i64 %sub, i64 %count
  %add.ptr = getelementptr i8, i8* %from, i64 %0
  %call = call i8* @memcpy(i8* noundef %to, i8* noundef %add.ptr, i64 noundef %spec.select) #13
  %add = add i64 %spec.select, %0
  store i64 %add, i64* %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i64 [ %spec.select, %if.end3 ], [ -22, %entry ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @simple_transaction_set(%struct.file* nocapture noundef readonly %file, i64 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %n, 4088
  br i1 %cmp, label %do.body2, label %do.end7, !prof !7

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/libfs.c\22; .popsection; .long 14472b - 14470b; .short 828; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !16
  unreachable

do.end7:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.simple_transaction_argresp**
  %1 = load %struct.simple_transaction_argresp*, %struct.simple_transaction_argresp** %0, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %size = getelementptr inbounds %struct.simple_transaction_argresp, %struct.simple_transaction_argresp* %1, i64 0, i32 0
  store i64 %n, i64* %size, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @simple_transaction_get(%struct.file* nocapture noundef %file, i8* noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %size, 4087
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i64 @get_zeroed_page(i32 noundef 3264) #13
  %0 = inttoptr i64 %call1 to %struct.simple_transaction_argresp*
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @simple_transaction_get.simple_transaction_lock, i64 0, i32 0, i32 0)) #13
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = load i8*, i8** %private_data, align 8
  %tobool5.not = icmp eq i8* %1, null
  br i1 %tobool5.not, label %copy_from_user.exit, label %if.then6

if.then6:                                         ; preds = %if.end4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @simple_transaction_get.simple_transaction_lock, i64 0, i32 0, i32 0)) #13
  call void @free_pages(i64 noundef %call1, i32 noundef 0) #13
  br label %cleanup.sink.split

copy_from_user.exit:                              ; preds = %if.end4
  %2 = inttoptr i64 %call1 to i8*
  store i8* %2, i8** %private_data, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @simple_transaction_get.simple_transaction_lock, i64 0, i32 0, i32 0)) #13
  %arraydecay = getelementptr inbounds %struct.simple_transaction_argresp, %struct.simple_transaction_argresp* %0, i64 0, i32 1, i64 0
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %arraydecay, i8* noundef %buf, i64 noundef %size) #13
  %tobool11.not = icmp eq i64 %call2.i, 0
  br i1 %tobool11.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %copy_from_user.exit, %if.end, %entry, %if.then6
  %.sink = phi i64 [ -16, %if.then6 ], [ -27, %entry ], [ -12, %if.end ], [ -14, %copy_from_user.exit ]
  %call13 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %copy_from_user.exit
  %retval.0 = phi i8* [ %arraydecay, %copy_from_user.exit ], [ %call13, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_zeroed_page(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_transaction_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %size, i64* nocapture noundef %pos) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.simple_transaction_argresp**
  %1 = load %struct.simple_transaction_argresp*, %struct.simple_transaction_argresp** %0, align 8
  %tobool.not = icmp eq %struct.simple_transaction_argresp* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.simple_transaction_argresp, %struct.simple_transaction_argresp* %1, i64 0, i32 1, i64 0
  %size1 = getelementptr inbounds %struct.simple_transaction_argresp, %struct.simple_transaction_argresp* %1, i64 0, i32 0
  %2 = load i64, i64* %size1, align 8
  %call = call i64 @simple_read_from_buffer(i8* noundef %buf, i64 noundef %size, i64* noundef %pos, i8* noundef %arraydecay, i64 noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_transaction_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = load i8*, i8** %private_data, align 8
  %1 = ptrtoint i8* %0 to i64
  call void @free_pages(i64 noundef %1, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_attr_open(%struct.inode* noundef %inode, %struct.file* noundef %file, i32 (i8*, i64*)* noundef %get, i32 (i8*, i64)* noundef %set, i8* noundef %fmt) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 112) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %get1 = bitcast i8* %call to i32 (i8*, i64*)**
  store i32 (i8*, i64*)* %get, i32 (i8*, i64*)** %get1, align 8
  %set2 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %set2 to i32 (i8*, i64)**
  store i32 (i8*, i64)* %set, i32 (i8*, i64)** %0, align 8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %1 = load i8*, i8** %i_private, align 8
  %data = getelementptr inbounds i8, i8* %call, i64 64
  %2 = bitcast i8* %data to i8**
  store i8* %1, i8** %2, align 8
  %fmt3 = getelementptr inbounds i8, i8* %call, i64 72
  %3 = bitcast i8* %fmt3 to i8**
  store i8* %fmt, i8** %3, align 8
  %mutex = getelementptr inbounds i8, i8* %call, i64 80
  %4 = bitcast i8* %mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @simple_attr_open.__key) #13
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  store i8* %call, i8** %private_data, align 8
  %call4 = call i32 @nonseekable_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_attr_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = load i8*, i8** %private_data, align 8
  call void @kfree(i8* noundef %0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_attr_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %len, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %val = alloca i64, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.simple_attr**
  %1 = load %struct.simple_attr*, %struct.simple_attr** %0, align 8
  %get = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %1, i64 0, i32 0
  %2 = load i32 (i8*, i64*)*, i32 (i8*, i64*)** %get, align 8
  %tobool.not = icmp eq i32 (i8*, i64*)* %2, null
  br i1 %tobool.not, label %cleanup25, label %if.end

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %1, i64 0, i32 6
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %mutex) #13
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %conv = sext i32 %call to i64
  br label %cleanup25

if.end3:                                          ; preds = %if.end
  %3 = load i64, i64* %ppos, align 8
  %tobool4.not = icmp eq i64 %3, 0
  br i1 %tobool4.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %arrayidx = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %1, i64 0, i32 2, i64 0
  %4 = load i8, i8* %arrayidx, align 8
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %call9 = call i64 @strlen(i8* noundef %arrayidx) #13
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true, %if.end3
  %5 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15
  store i64 0, i64* %val, align 8, !annotation !18
  %6 = load i32 (i8*, i64*)*, i32 (i8*, i64*)** %get, align 8
  %data = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %1, i64 0, i32 4
  %7 = load i8*, i8** %data, align 8
  %call11 = call i32 %6(i8* noundef %7, i64* noundef nonnull %val) #13
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else
  %arraydecay17 = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %1, i64 0, i32 2, i64 0
  %fmt = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %1, i64 0, i32 5
  %8 = load i8*, i8** %fmt, align 8
  %9 = load i64, i64* %val, align 8
  %call18 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %arraydecay17, i64 noundef 24, i8* noundef %8, i64 noundef %9) #13
  %conv19 = sext i32 %call18 to i64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15
  br label %if.end20

cleanup:                                          ; preds = %if.else
  %conv12 = sext i32 %call11 to i64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15
  br label %out

if.end20:                                         ; preds = %cleanup.thread, %if.then7
  %size.1 = phi i64 [ %call9, %if.then7 ], [ %conv19, %cleanup.thread ]
  %arraydecay22 = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %1, i64 0, i32 2, i64 0
  %call23 = call i64 @simple_read_from_buffer(i8* noundef %buf, i64 noundef %len, i64* noundef %ppos, i8* noundef %arraydecay22, i64 noundef %size.1) #12
  br label %out

out:                                              ; preds = %cleanup, %if.end20
  %ret.0 = phi i64 [ %call23, %if.end20 ], [ %conv12, %cleanup ]
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #13
  br label %cleanup25

cleanup25:                                        ; preds = %entry, %out, %if.then2
  %retval.0 = phi i64 [ %conv, %if.then2 ], [ %ret.0, %out ], [ -13, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_attr_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %len, i64* nocapture noundef readnone %ppos) local_unnamed_addr #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 0, i64* %val, align 8, !annotation !18
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.simple_attr**
  %2 = load %struct.simple_attr*, %struct.simple_attr** %1, align 8
  %set = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %2, i64 0, i32 1
  %3 = load i32 (i8*, i64)*, i32 (i8*, i64)** %set, align 8
  %tobool.not = icmp eq i32 (i8*, i64)* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %2, i64 0, i32 6
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %mutex) #13
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %conv = sext i32 %call to i64
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = icmp ult i64 %len, 23
  %cond = select i1 %4, i64 %len, i64 23
  %arraydecay = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %2, i64 0, i32 3, i64 0
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %arraydecay, i8* noundef %buf, i64 noundef %cond) #13
  %tobool6.not = icmp eq i64 %call2.i, 0
  br i1 %tobool6.not, label %if.end8, label %out

if.end8:                                          ; preds = %if.end3
  %arrayidx = getelementptr %struct.simple_attr, %struct.simple_attr* %2, i64 0, i32 3, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  %call12 = call i32 @kstrtoull(i8* noundef %arraydecay, i32 noundef 0, i64* noundef nonnull %val) #13
  %conv13 = sext i32 %call12 to i64
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end16, label %out

if.end16:                                         ; preds = %if.end8
  %5 = load i32 (i8*, i64)*, i32 (i8*, i64)** %set, align 8
  %data = getelementptr inbounds %struct.simple_attr, %struct.simple_attr* %2, i64 0, i32 4
  %6 = load i8*, i8** %data, align 8
  %7 = load i64, i64* %val, align 8
  %call18 = call i32 %5(i8* noundef %6, i64 noundef %7) #13
  %conv19 = sext i32 %call18 to i64
  %cmp20 = icmp eq i32 %call18, 0
  %spec.select = select i1 %cmp20, i64 %len, i64 %conv19
  br label %out

out:                                              ; preds = %if.end16, %if.end8, %if.end3
  %ret.0 = phi i64 [ -14, %if.end3 ], [ %conv13, %if.end8 ], [ %spec.select, %if.end16 ]
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %out, %if.then2
  %retval.0 = phi i64 [ %conv, %if.then2 ], [ %ret.0, %out ], [ -13, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @generic_fh_to_dentry(%struct.super_block* noundef %sb, %struct.fid* nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type, %struct.inode* (%struct.super_block*, i64, i32)* nocapture noundef readonly %get_inode) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %fh_len, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fh_type.off = add i32 %fh_type, -1
  %switch = icmp ult i32 %fh_type.off, 2
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %ino = getelementptr %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 0
  %0 = load i32, i32* %ino, align 4
  %conv = zext i32 %0 to i64
  %gen = getelementptr inbounds %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast i16* %gen to i32*
  %2 = load i32, i32* %1, align 4
  %call = call %struct.inode* %get_inode(%struct.super_block* noundef %sb, i64 noundef %conv, i32 noundef %2) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %inode.0 = phi %struct.inode* [ null, %if.end ], [ %call, %sw.bb ]
  %call2 = call %struct.dentry* @d_obtain_alias(%struct.inode* noundef %inode.0) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi %struct.dentry* [ %call2, %sw.epilog ], [ null, %entry ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @generic_fh_to_parent(%struct.super_block* noundef %sb, %struct.fid* nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type, %struct.inode* (%struct.super_block*, i64, i32)* nocapture noundef readonly %get_inode) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %fh_len, 3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cond5 = icmp eq i32 %fh_type, 2
  br i1 %cond5, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %0 = getelementptr inbounds %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 3
  %1 = load i32, i32* %0, align 4
  %conv = zext i32 %1 to i64
  %cmp1 = icmp ugt i32 %fh_len, 3
  br i1 %cmp1, label %cond.true, label %cond.end

cond.true:                                        ; preds = %sw.bb
  %2 = getelementptr inbounds %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 4
  %3 = load i32, i32* %2, align 4
  br label %cond.end

cond.end:                                         ; preds = %sw.bb, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %sw.bb ]
  %call = call %struct.inode* %get_inode(%struct.super_block* noundef %sb, i64 noundef %conv, i32 noundef %cond) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %cond.end
  %inode.0 = phi %struct.inode* [ %call, %cond.end ], [ null, %if.end ]
  %call4 = call %struct.dentry* @d_obtain_alias(%struct.inode* noundef %inode.0) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi %struct.dentry* [ %call4, %sw.epilog ], [ null, %entry ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__generic_file_fsync(%struct.file* noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) local_unnamed_addr #0 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call i32 @file_write_and_wait_range(%struct.file* noundef %file, i64 noundef %start, i64 noundef %end) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @inode_lock(%struct.inode* noundef %1) #12
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 7
  %2 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call1 = call i32 @sync_mapping_buffers(%struct.address_space* noundef %2) #13
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 20
  %3 = load i64, i64* %i_state, align 8
  %and = and i64 %3, 2055
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %out, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp ne i32 %datasync, 0
  %and7 = and i64 %3, 2
  %tobool8.not = icmp eq i64 %and7, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %out, label %if.end10

if.end10:                                         ; preds = %if.end4
  %call11 = call i32 @sync_inode_metadata(%struct.inode* noundef %1, i32 noundef 1) #13
  %cmp = icmp eq i32 %call1, 0
  %spec.select = select i1 %cmp, i32 %call11, i32 %call1
  br label %out

out:                                              ; preds = %if.end10, %if.end4, %if.end
  %ret.0 = phi i32 [ %call1, %if.end ], [ %call1, %if.end4 ], [ %spec.select, %if.end10 ]
  call fastcc void @inode_unlock(%struct.inode* noundef %1) #12
  %call14 = call i32 @file_check_and_advance_wb_err(%struct.file* noundef %file) #13
  %cmp15 = icmp eq i32 %ret.0, 0
  %spec.select35 = select i1 %cmp15, i32 %call14, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %spec.select35, %out ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(%struct.file* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(%struct.address_space* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_check_and_advance_wb_err(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_file_fsync(%struct.file* noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) local_unnamed_addr #0 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call i32 @__generic_file_fsync(%struct.file* noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 20
  %3 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %call1 = call i32 @blkdev_issue_flush(%struct.block_device* noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(%struct.block_device* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @generic_check_addressable(i32 noundef %blocksize_bits, i64 noundef %num_blocks) local_unnamed_addr #5 {
entry:
  %sub = add i64 %num_blocks, -1
  %cmp = icmp eq i64 %num_blocks, 0
  br i1 %cmp, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %0 = add i32 %blocksize_bits, -13
  %1 = icmp ult i32 %0, -4
  br i1 %1, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %sub9 = add nsw i32 %blocksize_bits, -9
  %sh_prom10 = zext i32 %sub9 to i64
  %shr11 = lshr i64 -1, %sh_prom10
  %cmp12 = icmp ugt i64 %sub, %shr11
  %. = select i1 %cmp12, i32 -27, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -22, %if.end ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @noop_invalidatepage(%struct.page* nocapture noundef %page, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #5 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @noop_direct_IO(%struct.kiocb* nocapture noundef readnone %iocb, %struct.iov_iter* nocapture noundef readnone %iter) local_unnamed_addr #5 {
entry:
  ret i64 -22
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kfree_link(i8* noundef %p) local_unnamed_addr #0 {
entry:
  call void @kfree(i8* noundef %p) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @alloc_anon_inode(%struct.super_block* noundef %s) local_unnamed_addr #0 {
entry:
  %call = call %struct.inode* @new_inode_pseudo(%struct.super_block* noundef %s) #13
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #12
  %0 = bitcast i8* %call1 to %struct.inode*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @get_next_ino() #13
  %conv = zext i32 %call2 to i64
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  store i64 %conv, i64* %i_ino, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 9
  store %struct.address_space_operations* @alloc_anon_inode.anon_aops, %struct.address_space_operations** %a_ops, align 8
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 20
  store i64 7, i64* %i_state, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 384, i16* %i_mode, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 80
  %4 = load %struct.cred*, %struct.cred** %cred, align 8
  %5 = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 7, i32 0
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2, i32 0
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.cred*, %struct.cred** %cred, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i64 0, i32 8, i32 0
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3, i32 0
  %11 = load i32, i32* %9, align 8
  store i32 %11, i32* %10, align 8
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %12 = load i32, i32* %i_flags, align 4
  %or = or i32 %12, 512
  store i32 %or, i32* %i_flags, align 4
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call11 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call) #13
  %call11.fca.0.extract = extractvalue [2 x i64] %call11, 0
  %call11.fca.1.extract = extractvalue [2 x i64] %call11, 1
  %tmp10.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call11.fca.0.extract, i64* %tmp10.sroa.0.0..sroa_idx, align 8
  %tmp10.sroa.4.0..sroa_idx13 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call11.fca.1.extract, i64* %tmp10.sroa.4.0..sroa_idx13, align 8
  %13 = bitcast %struct.timespec64* %i_mtime to i8*
  %14 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %13, i8* noundef align 8 dereferenceable(16) %14, i64 16, i1 false)
  %15 = bitcast %struct.timespec64* %i_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %15, i8* noundef align 8 dereferenceable(16) %14, i64 16, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.inode* [ %call, %if.end ], [ %0, %if.then ]
  ret %struct.inode* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode_pseudo(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @simple_nosetlease(%struct.file* nocapture noundef readnone %filp, i64 noundef %arg, %struct.file_lock** nocapture noundef readnone %flp, i8** nocapture noundef readnone %priv) local_unnamed_addr #5 {
entry:
  ret i32 -22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @simple_get_link(%struct.dentry* nocapture readnone %dentry, %struct.inode* nocapture noundef readonly %inode, %struct.delayed_call* nocapture readnone %done) #2 {
entry:
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40
  %i_link = bitcast %union.anon.78* %0 to i8**
  %1 = load i8*, i8** %i_link, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @make_empty_dir_inode(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  call void @set_nlink(%struct.inode* noundef %inode, i32 noundef 2) #13
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  store i16 16749, i16* %i_mode, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %.compoundliteral1.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  store i32 0, i32* %.compoundliteral1.sroa.0.0..sroa_idx, align 8
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  store i32 0, i32* %i_rdev, align 4
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 0, i64* %i_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 17
  store i8 12, i8* %i_blkbits, align 2
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  store i64 0, i64* %i_blocks, align 8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  store %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @empty_dir_inode_operations to %struct.inode_operations*), %struct.inode_operations** %i_op, align 8
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 1
  %0 = load i16, i16* %i_opflags, align 2
  %1 = and i16 %0, -9
  store i16 %1, i16* %i_opflags, align 2
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  store %struct.file_operations* @empty_dir_operations, %struct.file_operations** %i_fop, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @is_empty_dir_inode(%struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #2 {
entry:
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  %0 = load %struct.file_operations*, %struct.file_operations** %i_fop, align 8
  %cmp = icmp eq %struct.file_operations* %0, @empty_dir_operations
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  %1 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %cmp1 = icmp eq %struct.inode_operations* %1, bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @empty_dir_inode_operations to %struct.inode_operations*)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @generic_set_encrypted_ci_d_ops(%struct.dentry* nocapture noundef %dentry) local_unnamed_addr #5 {
entry:
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.dentry* @dget_dlock(%struct.dentry* noundef returned %dentry) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %1 = bitcast %union.anon.79* %0 to %struct.anon.80*
  %count = getelementptr inbounds %struct.anon.80, %struct.anon.80* %1, i64 0, i32 1
  %2 = load i32, i32* %count, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #15, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 8
  %4 = load i64, i64* %i_ino, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1, i64 noundef %1, i64 noundef %4, i32 noundef 4) #13
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dotdot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc i64 @parent_ino(%struct.dentry* noundef %2) #12
  %call1 = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 noundef 2, i64 noundef %1, i64 noundef %call, i32 noundef 4) #13
  %cmp = icmp eq i32 %call1, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @parent_ino(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.79* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  ret i64 %3
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(%struct.lockref* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_can_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #12
  %cmp = icmp eq i32 %call, 2097152
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_autodir(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #12
  %cmp = icmp eq i32 %call, 3145728
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__d_entry_type(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 7340032
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_unhashed(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_hash = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 2
  %call = call fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* noundef %d_hash) #12
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* nocapture noundef readonly %h) unnamed_addr #2 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_bl_node**, %struct.hlist_bl_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node** %0, null
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_negative(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @d_is_miss(%struct.dentry* noundef %dentry) #12
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_dirent(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #12
  call fastcc void @fsnotify_name(%struct.inode* noundef %dir, %struct.inode* noundef %call) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_miss(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #12
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_name(%struct.inode* nocapture noundef readonly %dir, %struct.inode* nocapture noundef readnone %child) unnamed_addr #7 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pseudo_fs_free(%struct.fs_context* nocapture noundef readonly %fc) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = load i8*, i8** %fs_private, align 8
  call void @kfree(i8* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pseudo_fs_get_tree(%struct.fs_context* noundef %fc) #0 {
entry:
  %call = call i32 @get_tree_nodev(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* noundef nonnull @pseudo_fs_fill_super) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(%struct.fs_context* noundef, i32 (%struct.super_block*, %struct.fs_context*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pseudo_fs_fill_super(%struct.super_block* noundef %s, %struct.fs_context* nocapture noundef readonly %fc) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.pseudo_fs_context**
  %1 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %0, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 4
  store i64 9223372036854775807, i64* %s_maxbytes, align 32
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 3
  store i64 4096, i64* %s_blocksize, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 2
  store i8 12, i8* %s_blocksize_bits, align 4
  %magic = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %1, i64 0, i32 3
  %2 = load i64, i64* %magic, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 12
  store i64 %2, i64* %s_magic, align 32
  %ops = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %1, i64 0, i32 0
  %3 = load %struct.super_operations*, %struct.super_operations** %ops, align 8
  %tobool.not = icmp eq %struct.super_operations* %3, null
  %.simple_super_operations = select i1 %tobool.not, %struct.super_operations* @simple_super_operations, %struct.super_operations* %3
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 6
  store %struct.super_operations* %.simple_super_operations, %struct.super_operations** %s_op, align 16
  %xattr = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %1, i64 0, i32 1
  %4 = load %struct.xattr_handler**, %struct.xattr_handler*** %xattr, align 8
  %s_xattr = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 17
  store %struct.xattr_handler** %4, %struct.xattr_handler*** %s_xattr, align 32
  %s_time_gran = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 28
  store i32 1, i32* %s_time_gran, align 16
  %call = call %struct.inode* @new_inode(%struct.super_block* noundef %s) #13
  %tobool1.not = icmp eq %struct.inode* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  store i64 1, i64* %i_ino, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 16768, i16* %i_mode, align 8
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call2 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call) #13
  %call2.fca.0.extract = extractvalue [2 x i64] %call2, 0
  %call2.fca.1.extract = extractvalue [2 x i64] %call2, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call2.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx10 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call2.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx10, align 8
  %5 = bitcast %struct.timespec64* %i_mtime to i8*
  %6 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %5, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  %7 = bitcast %struct.timespec64* %i_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %7, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  %call3 = call %struct.dentry* @d_make_root(%struct.inode* noundef nonnull %call) #13
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 13
  store %struct.dentry* %call3, %struct.dentry** %s_root, align 8
  %tobool5.not = icmp eq %struct.dentry* %call3, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %dops = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %1, i64 0, i32 2
  %8 = load %struct.dentry_operations*, %struct.dentry_operations** %dops, align 8
  %s_d_op = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 37
  store %struct.dentry_operations* %8, %struct.dentry_operations** %s_d_op, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !21

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #15, !srcloc !22
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.14* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !21

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
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  call fastcc void @pagefault_disable() #12
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #12
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #12
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #7 {
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
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.14* %2 to %struct.anon.23*
  %compound_order = getelementptr inbounds %struct.anon.23, %struct.anon.23* %3, i64 0, i32 2
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
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_highpage(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #12
  call void @clear_page(i8* noundef %call) #13
  call fastcc void @__kunmap_atomic() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_page(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #15, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user(%struct.page* noundef %page, i32 noundef %start, i32 noundef %size) unnamed_addr #0 {
entry:
  %add = add i32 %size, %start
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start, i32 noundef %add, i32 noundef 0, i32 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_size_write(%struct.inode* nocapture noundef writeonly %inode, i64 noundef %i_size) unnamed_addr #10 {
entry:
  %i_size1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 %i_size, i64* %i_size1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #13
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !28
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #12
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #13
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #15, !srcloc !29
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #15, !srcloc !30
  call void asm sideeffect "hint #20", "~{memory}"() #15, !srcloc !31
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #12
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !21

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal %struct.dentry* @empty_dir_lookup(%struct.inode* nocapture noundef readnone %dir, %struct.dentry* nocapture noundef readnone %dentry, i32 noundef %flags) #5 {
entry:
  %call = call fastcc i8* @ERR_PTR(i64 noundef -2) #12
  %0 = bitcast i8* %call to %struct.dentry*
  ret %struct.dentry* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @empty_dir_setattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.dentry* nocapture noundef readnone %dentry, %struct.iattr* nocapture noundef readnone %attr) #5 {
entry:
  ret i32 -1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @empty_dir_getattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #12
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @empty_dir_listxattr(%struct.dentry* nocapture noundef readnone %dentry, i8* nocapture noundef readnone %list, i64 noundef %size) #5 {
entry:
  ret i64 -95
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @empty_dir_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) #0 {
entry:
  %call = call i64 @generic_file_llseek_size(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef 2, i64 noundef 2) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @empty_dir_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %call = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(%struct.file* noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #11

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 251068}
!9 = !{i64 2155258271}
!10 = !{i64 2155256188}
!11 = !{i64 2149775478}
!12 = !{i64 2150887152}
!13 = !{i64 2153771198}
!14 = !{i64 2150887981}
!15 = !{i64 2149117740}
!16 = !{i64 2155340690}
!17 = !{i64 2155341039}
!18 = !{!"auto-init"}
!19 = !{i64 2149782759}
!20 = !{i64 2149729607}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2148055181, i64 2148055214, i64 2148055267, i64 2148055326, i64 2148055360, i64 2148055415, i64 2148055444, i64 2148055464}
!23 = !{i64 2153762141}
!24 = !{i64 2153764399}
!25 = !{i64 2151731615}
!26 = !{i64 2151731822}
!27 = !{i64 2148028399, i64 2148028910, i64 2148028940, i64 2148028966, i64 2148028998, i64 2148029027}
!28 = !{i64 2147969892, i64 2147970540, i64 2147970570, i64 2147970602, i64 2147970636, i64 2147970672, i64 2147970697}
!29 = !{i64 4172997, i64 4173080, i64 4173304, i64 4173524, i64 4173547}
!30 = !{i64 4177699, i64 4177723}
!31 = !{i64 2151726422}
