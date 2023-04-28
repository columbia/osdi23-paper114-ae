; ModuleID = 'fs/inode.c'
source_filename = "fs/inode.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.page = type { i64, %union.anon, %union.anon.75, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.80, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.52, %struct.list_head, %struct.list_head, %union.anon.53 }
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
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.posix_acl_entry = type { i16, i16, %union.anon.76 }
%union.anon.76 = type { %struct.kuid_t }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.54 }
%union.anon.54 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.24, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.45, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.45 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.46, %union.anon.47, %union.anon.48, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.51, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.46 = type { %struct.hlist_node }
%union.anon.47 = type { %struct.rb_node }
%union.anon.48 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.51 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.25, %union.anon.26, i32 }
%union.anon.25 = type { %struct.list_head }
%union.anon.26 = type { %struct.hlist_node }
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
%union.anon.24 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.78 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.80 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { {}*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.75 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.55, %union.anon.56 }
%union.anon.55 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.56 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.inodes_stat_t = type { i64, i64, [5 x i64] }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.vm_event_state = type { [53 x i64] }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { i8*, i32, i64 }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }

@empty_aops = dso_local constant { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* } zeroinitializer, align 8
@inodes_stat = dso_local local_unnamed_addr global %struct.inodes_stat_t zeroinitializer, align 8
@inode_init_always.empty_iops = internal constant %struct.inode_operations zeroinitializer, align 64
@inode_init_always.no_open_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @no_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@inode_init_always.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&inode->i_rwsem\00", align 1
@inode_init_always.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"&mapping->invalidate_lock\00", align 1
@nr_inodes = internal global i64 0, section ".data..percpu", align 8
@inode_cachep = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@inode_hashtable = internal unnamed_addr global %struct.hlist_head* null, section ".data..read_mostly", align 8
@inode_hash_lock = internal global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@last_ino = internal global i32 0, section ".data..percpu", align 4
@get_next_ino.shared_last_ino = internal global %struct.atomic_t zeroinitializer, align 4
@iunique.iunique_lock = internal global %struct.spinlock zeroinitializer, align 4
@iunique.counter = internal unnamed_addr global i32 0, align 4
@__setup_str_set_ihash_entries = internal constant [15 x i8] c"ihash_entries=\00", section ".init.rodata", align 1
@__setup_set_ihash_entries = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__setup_str_set_ihash_entries, i32 0, i32 0), i32 (i8*)* @set_ihash_entries, i32 0 }, section ".init.setup", align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"Inode-cache\00", align 1
@ihash_entries = internal unnamed_addr global i64 0, section ".init.data", align 8
@i_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@i_hash_mask = internal global i32 0, section ".data..read_mostly", align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"inode_cache\00", align 1
@def_chr_fops = external dso_local constant %struct.file_operations, align 8
@def_blk_fops = external dso_local constant %struct.file_operations, align 8
@pipefifo_fops = external dso_local constant %struct.file_operations, align 8
@.str.7 = private unnamed_addr constant [58 x i8] c"\017init_special_inode: bogus i_mode (%o) for inode %s:%lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"invalid file time granularity: %u\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"current_time() called with uninitialized super_block in the inode\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@nr_unused = internal global i64 0, section ".data..percpu", align 8
@__address_space_init_once.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"&mapping->i_mmap_rwsem\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_set_ihash_entries to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i64 @get_nr_dirty_inodes() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @get_nr_inodes() #17
  %call1 = call fastcc i64 @get_nr_inodes_unused() #17
  %sub = sub i64 %call, %call1
  %cmp = icmp sgt i64 %sub, 0
  %cond = select i1 %cmp, i64 %sub, i64 0
  ret i64 %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @get_nr_inodes() unnamed_addr #0 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call12 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp13 = icmp ult i32 %call12, %0
  br i1 %cmp13, label %do.body, label %for.end.thread

do.body:                                          ; preds = %entry, %do.body
  %call15 = phi i32 [ %call, %do.body ], [ %call12, %entry ]
  %sum.014 = phi i64 [ %add2, %do.body ], [ 0, %entry ]
  %idxprom = sext i32 %call15 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (i64* @nr_inodes to i64)
  %2 = inttoptr i64 %add to i64*
  %3 = load i64, i64* %2, align 8
  %add2 = add i64 %3, %sum.014
  %call = call i32 @cpumask_next(i32 noundef %call15, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body
  %4 = icmp sgt i64 %add2, 0
  %spec.select = select i1 %4, i64 %add2, i64 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %entry
  %5 = phi i64 [ 0, %entry ], [ %spec.select, %for.end ]
  ret i64 %5
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @get_nr_inodes_unused() unnamed_addr #0 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call12 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp13 = icmp ult i32 %call12, %0
  br i1 %cmp13, label %do.body, label %for.end.thread

do.body:                                          ; preds = %entry, %do.body
  %call15 = phi i32 [ %call, %do.body ], [ %call12, %entry ]
  %sum.014 = phi i64 [ %add2, %do.body ], [ 0, %entry ]
  %idxprom = sext i32 %call15 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (i64* @nr_unused to i64)
  %2 = inttoptr i64 %add to i64*
  %3 = load i64, i64* %2, align 8
  %add2 = add i64 %3, %sum.014
  %call = call i32 @cpumask_next(i32 noundef %call15, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body
  %4 = icmp sgt i64 %add2, 0
  %spec.select = select i1 %4, i64 %add2, i64 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %entry
  %5 = phi i64 [ 0, %entry ], [ %spec.select, %for.end ]
  ret i64 %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_nr_inodes(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @get_nr_inodes() #17
  store i64 %call, i64* getelementptr inbounds (%struct.inodes_stat_t, %struct.inodes_stat_t* @inodes_stat, i64 0, i32 0), align 8
  %call1 = call fastcc i64 @get_nr_inodes_unused() #17
  store i64 %call1, i64* getelementptr inbounds (%struct.inodes_stat_t, %struct.inodes_stat_t* @inodes_stat, i64 0, i32 1), align 8
  %call2 = call i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #19
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @inode_init_always(%struct.super_block* noundef %sb, %struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %i_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  store %struct.super_block* %sb, %struct.super_block** %i_sb, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 2
  %0 = load i8, i8* %s_blocksize_bits, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 17
  store i8 %0, i8* %i_blkbits, align 2
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  store i32 0, i32* %i_flags, align 4
  %counter.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 31, i32 0
  store volatile i64 0, i64* %counter.i, align 8
  %counter.i97 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 32, i32 0
  store volatile i32 1, i32* %counter.i97, align 4
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  store %struct.inode_operations* @inode_init_always.empty_iops, %struct.inode_operations** %i_op, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  store %struct.file_operations* @inode_init_always.no_open_fops, %struct.file_operations** %i_fop, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 8
  store i64 0, i64* %i_ino, align 8
  %__i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  store i32 1, i32* %__i_nlink, align 8
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 1
  store i16 0, i16* %i_opflags, align 2
  %s_xattr = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 17
  %1 = load %struct.xattr_handler**, %struct.xattr_handler*** %s_xattr, align 32
  %tobool.not = icmp eq %struct.xattr_handler** %1, null
  %spec.store.select = select i1 %tobool.not, i16 0, i16 8
  store i16 %spec.store.select, i16* %i_opflags, align 2
  call fastcc void @i_uid_write(%struct.inode* noundef %inode) #17
  call fastcc void @i_gid_write(%struct.inode* noundef %inode) #17
  %counter.i98 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 34, i32 0
  store volatile i32 0, i32* %counter.i98, align 4
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 0, i64* %i_size, align 8
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 18
  store i8 0, i8* %i_write_hint, align 1
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  store i64 0, i64* %i_blocks, align 8
  %i_bytes = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 16
  store i16 0, i16* %i_bytes, align 4
  %i_generation = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 41
  store i32 0, i32* %i_generation, align 8
  %2 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40
  %i_link = bitcast %union.anon.80* %2 to i8**
  store i8* null, i8** %i_link, align 8
  %i_dir_seq = bitcast %union.anon.80* %2 to i32*
  store i32 0, i32* %i_dir_seq, align 8
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  store i32 0, i32* %i_rdev, align 4
  %dirtied_when = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 22
  store i64 0, i64* %dirtied_when, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 5
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @__init_rwsem(%struct.rw_semaphore* noundef %i_rwsem, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @inode_init_always.__key) #19
  %counter.i99 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 33, i32 0
  store volatile i32 0, i32* %counter.i99, align 4
  %a_ops = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 9
  store %struct.address_space_operations* bitcast ({ i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }* @empty_aops to %struct.address_space_operations*), %struct.address_space_operations** %a_ops, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %i_data, i64 0, i32 0
  store %struct.inode* %inode, %struct.inode** %host, align 8
  %flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 10
  store i64 0, i64* %flags, align 8
  %3 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %3, i64 0, i32 1
  %4 = load i32, i32* %fs_flags, align 8
  %and = lshr i32 %4, 7
  %5 = and i32 %and, 64
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %flags, align 8
  %wb_err = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 11
  store i32 0, i32* %wb_err, align 8
  %counter.i100 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 4, i32 0
  store volatile i32 0, i32* %counter.i100, align 4
  call fastcc void @mapping_set_gfp_mask(%struct.address_space* noundef %i_data, i32 noundef 17829066) #17
  %private_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 14
  store i8* null, i8** %private_data, align 8
  %writeback_index = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 8
  store i64 0, i64* %writeback_index, align 8
  %invalidate_lock = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 2
  call void @__init_rwsem(%struct.rw_semaphore* noundef %invalidate_lock, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @inode_init_always.__key.1) #19
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  store i8* null, i8** %i_private, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  store %struct.address_space* %i_data, %struct.address_space** %i_mapping, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %first = bitcast %union.anon.78* %7 to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  store %struct.file_lock_context* null, %struct.file_lock_context** %i_flctx, align 8
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !8
  %call39 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call39, ptrtoint (i64* @nr_inodes to i64)
  %8 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %8, i64 noundef 1) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @no_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readnone %file) #4 {
entry:
  ret i32 -6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_uid_write(%struct.inode* nocapture noundef writeonly %inode) unnamed_addr #5 {
entry:
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  store i32 0, i32* %tmp.sroa.0.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_gid_write(%struct.inode* nocapture noundef writeonly %inode) unnamed_addr #5 {
entry:
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  store i32 0, i32* %tmp.sroa.0.0..sroa_idx, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(%struct.rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @mapping_set_gfp_mask(%struct.address_space* nocapture noundef writeonly %m, i32 noundef %mask) unnamed_addr #5 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %m, i64 0, i32 3
  store i32 %mask, i32* %gfp_mask, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #20, !srcloc !10
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #0 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !11
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_inode_nonrcu(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @inode_cachep, align 8
  %1 = bitcast %struct.inode* %inode to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__destroy_inode(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %call = call i32 @inode_has_buffers(%struct.inode* noundef %inode) #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !12

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 260; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !13
  unreachable

do.end6:                                          ; preds = %entry
  call void @locks_free_lock_context(%struct.inode* noundef %inode) #19
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  %0 = load i32, i32* %i_nlink, align 8
  %tobool7.not = icmp eq i32 %0, 0
  br i1 %tobool7.not, label %if.then8, label %do.body36

if.then8:                                         ; preds = %do.end6
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 40, i32 0
  %2 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then23, label %if.end24, !prof !14

if.then23:                                        ; preds = %if.then8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 266; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !15
  %.pre = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then8
  %3 = phi %struct.super_block* [ %.pre, %if.then23 ], [ %1, %if.then8 ]
  %s_remove_count33 = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 40
  call fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %s_remove_count33) #19
  br label %do.body36

do.body36:                                        ; preds = %if.end24, %do.end6
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  %call43 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call43, ptrtoint (i64* @nr_inodes to i64)
  %4 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %4, i64 noundef -1) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_has_buffers(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_free_lock_context(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drop_nlink(%struct.inode* nocapture noundef %inode) local_unnamed_addr #2 {
entry:
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  %0 = load i32, i32* %i_nlink, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 308; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !18
  %.pre = load i32, i32* %i_nlink, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %dec = add i32 %1, -1
  store i32 %dec, i32* %i_nlink, align 8
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_remove_count = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 40
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %s_remove_count) #19
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clear_nlink(%struct.inode* nocapture noundef %inode) local_unnamed_addr #2 {
entry:
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  %0 = load i32, i32* %i_nlink, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i_nlink, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_remove_count = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 40
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %s_remove_count) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_nlink(%struct.inode* nocapture noundef %inode, i32 noundef %nlink) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq i32 %nlink, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @clear_nlink(%struct.inode* noundef %inode) #17
  br label %if.end2

if.else:                                          ; preds = %entry
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  %0 = load i32, i32* %i_nlink, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.else
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_remove_count = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 40
  call fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %s_remove_count) #19
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.else
  store i32 %nlink, i32* %i_nlink, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inc_nlink(%struct.inode* nocapture noundef %inode) local_unnamed_addr #2 {
entry:
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  %0 = load i32, i32* %i_nlink, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end25, !prof !14

if.then:                                          ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %1 = load i64, i64* %i_state, align 8
  %and = and i64 %1, 1024
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.then17, label %if.end, !prof !14

if.then17:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 365; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_remove_count = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 40
  call fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %s_remove_count) #19
  %.pre = load i32, i32* %i_nlink, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end, %entry
  %3 = phi i32 [ %.pre, %if.end ], [ %0, %entry ]
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i_nlink, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @address_space_init_once(%struct.address_space* noundef %mapping) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.address_space* %mapping to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 192) #19
  call fastcc void @__address_space_init_once(%struct.address_space* noundef %mapping) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__address_space_init_once(%struct.address_space* noundef %mapping) unnamed_addr #2 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  call fastcc void @xa_init_flags(%struct.xarray* noundef %i_pages) #17
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @__init_rwsem(%struct.rw_semaphore* noundef %i_mmap_rwsem, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @__address_space_init_once.__key) #19
  %private_list = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 13
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %private_list) #17
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %.compoundliteral4.sroa.0.0..sroa_idx = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 5, i32 0, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral4.sroa.0.0..sroa_idx, align 8
  %.compoundliteral4.sroa.2.0..sroa_idx5 = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 5, i32 1
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral4.sroa.2.0..sroa_idx5, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_init_once(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.inode* %inode to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 568) #19
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %i_hash) #17
  %i_devices = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 39
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %i_devices) #17
  %i_io_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 25
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %i_io_list) #17
  %i_wb_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 28
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %i_wb_list) #17
  %i_lru = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 26
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %i_lru) #17
  %i_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38
  call fastcc void @__address_space_init_once(%struct.address_space* noundef %i_data) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__iget(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %i_count = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 32
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_count) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ihold(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %i_count = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 32
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef 1, %struct.atomic_t* noundef %i_count) #19
  %cmp = icmp slt i32 %call.i.i.i, 2
  br i1 %cmp, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 427; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_add_lru(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, 2231
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %counter.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 32, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 10
  %3 = load i64, i64* %s_flags, align 16
  %and3 = and i64 %3, 1073741824
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  call fastcc void @inode_lru_list_add(%struct.inode* noundef %inode) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lru_list_add(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_inode_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 48
  %i_lru = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 26
  %call = call i1 @list_lru_add(%struct.list_lru* noundef %s_inode_lru, %struct.list_head* noundef %i_lru) #19
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !21
  %call6 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call6, ptrtoint (i64* @nr_unused to i64)
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1, i64 noundef 1) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !22
  br label %if.end

if.else:                                          ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %2 = load i64, i64* %i_state, align 8
  %or = or i64 %2, 256
  store i64 %or, i64* %i_state, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_sb_list_add(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_sb_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 27
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_inodes = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 55
  call fastcc void @list_add(%struct.list_head* noundef %i_sb_list, %struct.list_head* noundef %s_inodes) #17
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %rlock.i7 = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i7) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__insert_inode_hash(%struct.inode* noundef %inode, i64 noundef %hashval) local_unnamed_addr #2 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %1, i64 noundef %hashval) #17
  %add.ptr = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %i_hash, %struct.hlist_head* noundef %add.ptr) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hash(%struct.super_block* noundef %sb, i64 noundef %hashval) unnamed_addr #8 {
entry:
  %0 = ptrtoint %struct.super_block* %sb to i64
  %mul = mul i64 %0, %hashval
  %add = add i64 %hashval, 7046029254386353131
  %div = lshr i64 %add, 6
  %xor = xor i64 %div, %mul
  %xor1 = xor i64 %xor, 7046029254386353131
  %1 = load i32, i32* @i_hash_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %xor1, %sh_prom
  %xor2 = xor i64 %shr, %xor
  %2 = load i32, i32* @i_hash_mask, align 4
  %conv = zext i32 %2 to i64
  %and = and i64 %xor2, %conv
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #2 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  %1 = ptrtoint %struct.hlist_node* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first1, i64 %1) #20, !srcloc !23
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end41, label %do.body34

do.body34:                                        ; preds = %entry
  %pprev36 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev36, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.body34, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__remove_inode_hash(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  call fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %i_hash) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %n) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #17
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clear_inode(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %nrpages = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 7
  %0 = load i64, i64* %nrpages, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %do.end7, label %do.body4, !prof !12

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 535; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !24
  unreachable

do.end7:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %private_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38, i32 13
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %private_list) #17
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %do.body24, label %do.body30, !prof !14

do.body24:                                        ; preds = %do.end7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 545; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !25
  unreachable

do.body30:                                        ; preds = %do.end7
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %1 = load i64, i64* %i_state, align 8
  %and = and i64 %1, 32
  %tobool31.not = icmp eq i64 %and, 0
  br i1 %tobool31.not, label %do.body42, label %do.body48, !prof !14

do.body42:                                        ; preds = %do.body30
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 546; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !26
  unreachable

do.body48:                                        ; preds = %do.body30
  %and50 = and i64 %1, 64
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %do.body66, label %do.body60, !prof !12

do.body60:                                        ; preds = %do.body48
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 547; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !27
  unreachable

do.body66:                                        ; preds = %do.body48
  %i_wb_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 28
  %call67 = call fastcc i32 @list_empty(%struct.list_head* noundef %i_wb_list) #17
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body79, label %do.end84, !prof !14

do.body79:                                        ; preds = %do.body66
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 548; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !28
  unreachable

do.end84:                                         ; preds = %do.body66
  store i64 96, i64* %i_state, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @evict_inodes(%struct.super_block* noundef %sb) local_unnamed_addr #2 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #20
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %s_inodes = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 55
  %1 = bitcast %struct.list_head* %s_inodes to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp.not6271 = icmp eq %struct.list_head* %s_inodes, %3
  br i1 %cmp.not6271, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body.backedge
  %.pn.in.in63 = phi i8* [ %.pn.in.in63.be, %for.body.backedge ], [ %2, %entry ]
  %inode.064.in = getelementptr i8, i8* %.pn.in.in63, i64 -240
  %inode.064 = bitcast i8* %inode.064.in to %struct.inode*
  %.pn65.in = bitcast i8* %.pn.in.in63 to i8**
  %.pn65 = load i8*, i8** %.pn65.in, align 8
  %i_count = getelementptr i8, i8* %.pn.in.in63, i64 64
  %counter.i = bitcast i8* %i_count to i32*
  %4 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %i_lock = getelementptr i8, i8* %.pn.in.in63, i64 -128
  %rlock.i53 = bitcast i8* %i_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i53) #19
  %i_state = getelementptr i8, i8* %.pn.in.in63, i64 -112
  %5 = bitcast i8* %i_state to i64*
  %6 = load i64, i64* %5, align 8
  %and = and i64 %6, 56
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i53) #19
  br label %for.inc

if.end15:                                         ; preds = %if.end
  %or = or i64 %6, 32
  store i64 %or, i64* %5, align 8
  call fastcc void @inode_lru_list_del(%struct.inode* noundef %inode.064) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i53) #19
  %i_lru = getelementptr i8, i8* %.pn.in.in63, i64 -16
  %7 = bitcast i8* %i_lru to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %7, %struct.list_head* noundef nonnull %dispose) #17
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %10 = getelementptr %struct.task_struct, %struct.task_struct* %9, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %10) #19
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %for.inc, label %if.then19

if.then19:                                        ; preds = %if.end15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @_cond_resched() #17
  call fastcc void @dispose_list(%struct.list_head* noundef nonnull %dispose) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %11 = load i8*, i8** %1, align 8
  %12 = bitcast i8* %11 to %struct.list_head*
  %cmp.not62 = icmp eq %struct.list_head* %s_inodes, %12
  br i1 %cmp.not62, label %for.end, label %for.body.backedge

for.inc:                                          ; preds = %if.end15, %for.body, %if.then13
  %13 = bitcast i8* %.pn65 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %s_inodes, %13
  br i1 %cmp.not, label %for.end, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %if.then19
  %.pn.in.in63.be = phi i8* [ %.pn65, %for.inc ], [ %11, %if.then19 ]
  br label %for.body

for.end:                                          ; preds = %if.then19, %for.inc, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @dispose_list(%struct.list_head* noundef nonnull %dispose) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lru_list_del(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_inode_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 48
  %i_lru = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 26
  %call = call i1 @list_lru_del(%struct.list_lru* noundef %s_inode_lru, %struct.list_head* noundef %i_lru) #19
  br i1 %call, label %do.body1, label %if.end

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !30
  %call6 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call6, ptrtoint (i64* @nr_unused to i64)
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1, i64 noundef -1) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #2 {
entry:
  %call = call i32 @__cond_resched() #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dispose_list(%struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %call7 = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #17
  %tobool.not8 = icmp eq i32 %call7, 0
  br i1 %tobool.not8, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.list_head* %head to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -224
  %2 = bitcast i8* %add.ptr to %struct.inode*
  %3 = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %3) #17
  call fastcc void @evict(%struct.inode* noundef %2) #17
  call fastcc void @_cond_resched() #17
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @invalidate_inodes(%struct.super_block* noundef %sb, i1 noundef %kill_dirty) local_unnamed_addr #2 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #20
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %s_inodes = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 55
  %1 = bitcast %struct.list_head* %s_inodes to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp.not7789 = icmp eq %struct.list_head* %s_inodes, %3
  br i1 %cmp.not7789, label %for.end, label %for.body.outer

for.body.outer:                                   ; preds = %entry, %for.inc
  %busy.179.ph = phi i32 [ %busy.2, %for.inc ], [ 0, %entry ]
  %.pn.in.in78.ph = phi i8* [ %.pn81, %for.inc ], [ %2, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.body.outer, %if.then27
  %.pn.in.in78 = phi i8* [ %11, %if.then27 ], [ %.pn.in.in78.ph, %for.body.outer ]
  %inode.080.in = getelementptr i8, i8* %.pn.in.in78, i64 -240
  %inode.080 = bitcast i8* %inode.080.in to %struct.inode*
  %.pn81.in = bitcast i8* %.pn.in.in78 to i8**
  %.pn81 = load i8*, i8** %.pn81.in, align 8
  %i_lock = getelementptr i8, i8* %.pn.in.in78, i64 -128
  %rlock.i65 = bitcast i8* %i_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i65) #19
  %i_state = getelementptr i8, i8* %.pn.in.in78, i64 -112
  %4 = bitcast i8* %i_state to i64*
  %5 = load i64, i64* %4, align 8
  %and = and i64 %5, 56
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %for.inc.sink.split

if.end:                                           ; preds = %for.body
  %and14 = and i64 %5, 2055
  %tobool15.not = icmp eq i64 %and14, 0
  %brmerge = or i1 %tobool15.not, %kill_dirty
  br i1 %brmerge, label %if.end19, label %for.inc.sink.split

if.end19:                                         ; preds = %if.end
  %i_count = getelementptr i8, i8* %.pn.in.in78, i64 64
  %counter.i = bitcast i8* %i_count to i32*
  %6 = load volatile i32, i32* %counter.i, align 4
  %tobool20.not = icmp eq i32 %6, 0
  br i1 %tobool20.not, label %if.end23, label %for.inc.sink.split

if.end23:                                         ; preds = %if.end19
  %or = or i64 %5, 32
  store i64 %or, i64* %4, align 8
  call fastcc void @inode_lru_list_del(%struct.inode* noundef %inode.080) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i65) #19
  %i_lru = getelementptr i8, i8* %.pn.in.in78, i64 -16
  %7 = bitcast i8* %i_lru to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %7, %struct.list_head* noundef nonnull %dispose) #17
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %10 = getelementptr %struct.task_struct, %struct.task_struct* %9, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %10) #19
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %for.inc, label %if.then27

if.then27:                                        ; preds = %if.end23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @_cond_resched() #17
  call fastcc void @dispose_list(%struct.list_head* noundef nonnull %dispose) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %11 = load i8*, i8** %1, align 8
  %12 = bitcast i8* %11 to %struct.list_head*
  %cmp.not77 = icmp eq %struct.list_head* %s_inodes, %12
  br i1 %cmp.not77, label %for.end, label %for.body

for.inc.sink.split:                               ; preds = %if.end19, %if.end, %for.body
  %busy.2.ph = phi i32 [ %busy.179.ph, %for.body ], [ 1, %if.end ], [ 1, %if.end19 ]
  %rlock.i65.le = bitcast i8* %i_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i65.le) #19
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %for.inc.sink.split
  %busy.2 = phi i32 [ %busy.2.ph, %for.inc.sink.split ], [ %busy.179.ph, %if.end23 ]
  %13 = bitcast i8* %.pn81 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %s_inodes, %13
  br i1 %cmp.not, label %for.end, label %for.body.outer

for.end:                                          ; preds = %if.then27, %for.inc, %entry
  %busy.1.lcssa = phi i32 [ 0, %entry ], [ %busy.179.ph, %if.then27 ], [ %busy.2, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @dispose_list(%struct.list_head* noundef nonnull %dispose) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #20
  ret i32 %busy.1.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @prune_icache_sb(%struct.super_block* noundef %sb, %struct.shrink_control* noundef %sc) local_unnamed_addr #2 {
entry:
  %freeable = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %freeable to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #20
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %freeable, i64 0, i32 0
  store %struct.list_head* %freeable, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %freeable, i64 0, i32 1
  store %struct.list_head* %freeable, %struct.list_head** %prev, align 8
  %s_inode_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 48
  %call = call fastcc i64 @list_lru_shrink_walk(%struct.list_lru* noundef %s_inode_lru, %struct.shrink_control* noundef %sc, i8* noundef nonnull %0) #17
  call fastcc void @dispose_list(%struct.list_head* noundef nonnull %freeable) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #20
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @list_lru_shrink_walk(%struct.list_lru* noundef %lru, %struct.shrink_control* noundef %sc, i8* noundef %cb_arg) unnamed_addr #2 {
entry:
  %nid = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 1
  %0 = load i32, i32* %nid, align 4
  %memcg = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 4
  %1 = load %struct.mem_cgroup*, %struct.mem_cgroup** %memcg, align 8
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 2
  %call = call i64 @list_lru_walk_one(%struct.list_lru* noundef %lru, i32 noundef %0, %struct.mem_cgroup* noundef %1, i32 (%struct.list_head*, %struct.list_lru_one*, %struct.spinlock*, i8*)* noundef nonnull @inode_lru_isolate, i8* noundef %cb_arg, i64* noundef %nr_to_scan) #19
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @inode_lru_isolate(%struct.list_head* noundef %item, %struct.list_lru_one* noundef %lru, %struct.spinlock* noundef %lru_lock, i8* noundef %arg) #2 {
entry:
  %0 = bitcast i8* %arg to %struct.list_head*
  %add.ptr126 = getelementptr %struct.list_head, %struct.list_head* %item, i64 -14
  %1 = bitcast %struct.list_head* %add.ptr126 to %struct.inode*
  %i_lock = getelementptr %struct.list_head, %struct.list_head* %item, i64 -7
  %rlock.i = bitcast %struct.list_head* %i_lock to %struct.raw_spinlock*
  %call.i = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i) #19
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_count = getelementptr %struct.list_head, %struct.list_head* %item, i64 5
  %counter.i = bitcast %struct.list_head* %i_count to i32*
  %2 = load volatile i32, i32* %counter.i, align 4
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %i_state = getelementptr %struct.list_head, %struct.list_head* %item, i64 -6
  %3 = bitcast %struct.list_head* %i_state to i64*
  %4 = load i64, i64* %3, align 8
  %and = and i64 %4, -257
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.end19, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  call void @list_lru_isolate(%struct.list_lru_one* noundef %lru, %struct.list_head* noundef %item) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  %call16 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call16, ptrtoint (i64* @nr_unused to i64)
  %5 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %5, i64 noundef -1) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %and21 = and i64 %4, 256
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end19
  store i64 0, i64* %3, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %call28 = call i32 @inode_has_buffers(%struct.inode* noundef %1) #19
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %if.then32

lor.lhs.false30:                                  ; preds = %if.end27
  %i_data = getelementptr %struct.list_head, %struct.list_head* %item, i64 7
  %6 = bitcast %struct.list_head* %i_data to %struct.address_space*
  %call31 = call fastcc i1 @mapping_empty(%struct.address_space* noundef %6) #17
  br i1 %call31, label %if.end51, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false30, %if.end27
  call void @__iget(%struct.inode* noundef %1) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %rlock.i130 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %lru_lock, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i130) #19
  %call34 = call i32 @remove_inode_buffers(%struct.inode* noundef %1) #19
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end50, label %if.then36

if.then36:                                        ; preds = %if.then32
  %i_data37 = getelementptr %struct.list_head, %struct.list_head* %item, i64 7
  %7 = bitcast %struct.list_head* %i_data37 to %struct.address_space*
  %call38 = call i64 @invalidate_mapping_pages(%struct.address_space* noundef %7, i64 noundef 0, i64 noundef -1) #19
  %call39 = call fastcc i32 @current_is_kswapd() #17
  %tobool40.not = icmp eq i32 %call39, 0
  %. = select i1 %tobool40.not, i32 36, i32 38
  call fastcc void @__count_vm_events(i32 noundef %., i64 noundef %call38) #17
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %reclaim_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 110
  %10 = load %struct.reclaim_state*, %struct.reclaim_state** %reclaim_state, align 64
  %tobool44.not = icmp eq %struct.reclaim_state* %10, null
  br i1 %tobool44.not, label %if.end50, label %if.then45

if.then45:                                        ; preds = %if.then36
  %reclaimed_slab = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %10, i64 0, i32 0
  %11 = load i64, i64* %reclaimed_slab, align 8
  %add48 = add i64 %11, %call38
  store i64 %add48, i64* %reclaimed_slab, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then36, %if.then45, %if.then32
  call void @iput(%struct.inode* noundef %1) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i130) #19
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false30
  %12 = load i64, i64* %3, align 8
  %and53 = and i64 %12, 8
  %tobool54.not = icmp eq i64 %and53, 0
  br i1 %tobool54.not, label %if.end63, label %if.then62, !prof !12

if.then62:                                        ; preds = %if.end51
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 794; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !34
  %.pre = load i64, i64* %3, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end51
  %13 = phi i64 [ %.pre, %if.then62 ], [ %12, %if.end51 ]
  %or = or i64 %13, 32
  store i64 %or, i64* %3, align 8
  call void @list_lru_isolate_move(%struct.list_lru_one* noundef %lru, %struct.list_head* noundef %item, %struct.list_head* noundef %0) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  %call87 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add88 = add i64 %call87, ptrtoint (i64* @nr_unused to i64)
  %14 = inttoptr i64 %add88 to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %14, i64 noundef -1) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end63, %if.end50, %if.then23, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 2, %if.then23 ], [ 4, %if.end50 ], [ 0, %if.end63 ], [ 3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_next_ino() local_unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, ptrtoint (i32* @last_ino to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 1023
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef 1024, %struct.atomic_t* noundef nonnull @get_next_ino.shared_last_ino) #19
  %sub = add i32 %call.i.i, -1024
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i32 [ %sub, %if.then ], [ %1, %entry ]
  %inc = add i32 %res.0, 1
  %tobool5.not = icmp eq i32 %inc, 0
  br i1 %tobool5.not, label %if.then15, label %if.end17, !prof !14

if.then15:                                        ; preds = %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  %res.1 = phi i32 [ 1, %if.then15 ], [ %inc, %if.end ]
  store i32 %res.1, i32* %0, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !38
  ret i32 %res.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @new_inode_pseudo(%struct.super_block* noundef %sb) local_unnamed_addr #2 {
entry:
  %call = call fastcc %struct.inode* @alloc_inode(%struct.super_block* noundef %sb) #17
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 20
  store i64 0, i64* %i_state, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_sb_list = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 27
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %i_sb_list) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.inode* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.inode* @alloc_inode(%struct.super_block* noundef %sb) unnamed_addr #2 {
entry:
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  %0 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %alloc_inode = getelementptr inbounds %struct.super_operations, %struct.super_operations* %0, i64 0, i32 0
  %1 = load %struct.inode* (%struct.super_block*)*, %struct.inode* (%struct.super_block*)** %alloc_inode, align 8
  %tobool.not = icmp eq %struct.inode* (%struct.super_block*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.inode* %1(%struct.super_block* noundef %sb) #19
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @inode_cachep, align 8
  %call2 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #19
  %3 = bitcast i8* %call2 to %struct.inode*
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inode.0 = phi %struct.inode* [ %call, %if.then ], [ %3, %if.else ]
  %tobool3.not = icmp eq %struct.inode* %inode.0, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @inode_init_always(%struct.super_block* noundef %sb, %struct.inode* noundef nonnull %inode.0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5
  ret %struct.inode* %inode.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @new_inode(%struct.super_block* noundef %sb) local_unnamed_addr #2 {
entry:
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 54
  %0 = bitcast %struct.spinlock* %s_inode_list_lock to i8*
  call fastcc void @spin_lock_prefetch(i8* noundef %0) #17
  %call = call %struct.inode* @new_inode_pseudo(%struct.super_block* noundef %sb) #17
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @inode_sb_list_add(%struct.inode* noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.inode* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @spin_lock_prefetch(i8* noundef %ptr) unnamed_addr #2 {
entry:
  call void asm sideeffect "prfm pstl1strm, ${0:a}", "r"(i8* %ptr) #20, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unlock_new_inode(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 1006; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !40
  %.pre = load i64, i64* %i_state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64 [ %.pre, %if.then ], [ %0, %entry ]
  %and17 = and i64 %1, -32777
  store i64 %and17, i64* %i_state, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !41
  %2 = bitcast i64* %i_state to i8*
  call void @wake_up_bit(i8* noundef %2, i32 noundef 3) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @discard_new_inode(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 1018; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !42
  %.pre = load i64, i64* %i_state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64 [ %.pre, %if.then ], [ %0, %entry ]
  %and17 = and i64 %1, -9
  store i64 %and17, i64* %i_state, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !43
  %2 = bitcast i64* %i_state to i8*
  call void @wake_up_bit(i8* noundef %2, i32 noundef 3) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @iput(%struct.inode* noundef %inode) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iput(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %if.end20, label %do.body

do.body:                                          ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, 64
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %retry.preheader, label %do.body5, !prof !12

retry.preheader:                                  ; preds = %do.body
  %i_count = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 32
  %i_lock = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15
  %call31 = call i32 @_atomic_dec_and_lock(%struct.atomic_t* noundef %i_count, %struct.spinlock* noundef %i_lock) #19
  %tobool10.not32 = icmp eq i32 %call31, 0
  br i1 %tobool10.not32, label %if.end20, label %if.then11.lr.ph

if.then11.lr.ph:                                  ; preds = %retry.preheader
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %i_lock, i64 0, i32 0, i32 0
  br label %if.then11

do.body5:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 1680; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !44
  unreachable

if.then11:                                        ; preds = %if.then11.lr.ph, %if.then16
  %1 = load i32, i32* %i_nlink, align 8
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then11
  %2 = load i64, i64* %i_state, align 8
  %and14 = and i64 %2, 2048
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_count) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @mark_inode_dirty_sync(%struct.inode* noundef nonnull %inode) #17
  %call = call i32 @_atomic_dec_and_lock(%struct.atomic_t* noundef %i_count, %struct.spinlock* noundef %i_lock) #19
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end20, label %if.then11

if.end19:                                         ; preds = %land.lhs.true, %if.then11
  call fastcc void @iput_final(%struct.inode* noundef nonnull %inode) #17
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %retry.preheader, %entry, %if.end19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lock_two_nondirectories(%struct.inode* noundef %inode1, %struct.inode* noundef %inode2) local_unnamed_addr #2 {
entry:
  %cmp = icmp ugt %struct.inode* %inode1, %inode2
  %spec.select = select i1 %cmp, %struct.inode* %inode1, %struct.inode* %inode2
  %spec.select28 = select i1 %cmp, %struct.inode* %inode2, %struct.inode* %inode1
  %tobool.not = icmp eq %struct.inode* %spec.select28, null
  br i1 %tobool.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %spec.select28, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp1 = icmp eq i16 %1, 16384
  br i1 %cmp1, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  call fastcc void @inode_lock(%struct.inode* noundef nonnull %spec.select28) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %entry
  %tobool5.not = icmp eq %struct.inode* %spec.select, null
  br i1 %tobool5.not, label %if.end16, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end4
  %i_mode7 = getelementptr inbounds %struct.inode, %struct.inode* %spec.select, i64 0, i32 0
  %2 = load i16, i16* %i_mode7, align 8
  %3 = and i16 %2, -4096
  %cmp10 = icmp eq i16 %3, 16384
  %cmp13.not = icmp eq %struct.inode* %spec.select, %spec.select28
  %or.cond = or i1 %cmp13.not, %cmp10
  br i1 %or.cond, label %if.end16, label %if.then15

if.then15:                                        ; preds = %land.lhs.true6
  call fastcc void @inode_lock_nested(%struct.inode* noundef nonnull %spec.select) #17
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true6, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock_nested(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unlock_two_nondirectories(%struct.inode* noundef %inode1, %struct.inode* noundef %inode2) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode1, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, 16384
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @inode_unlock(%struct.inode* noundef nonnull %inode1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %tobool2.not = icmp eq %struct.inode* %inode2, null
  br i1 %tobool2.not, label %if.end13, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %i_mode4 = getelementptr inbounds %struct.inode, %struct.inode* %inode2, i64 0, i32 0
  %2 = load i16, i16* %i_mode4, align 8
  %3 = and i16 %2, -4096
  %cmp7 = icmp eq i16 %3, 16384
  %cmp10.not = icmp eq %struct.inode* %inode2, %inode1
  %or.cond = or i1 %cmp10.not, %cmp7
  br i1 %or.cond, label %if.end13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true3
  call fastcc void @inode_unlock(%struct.inode* noundef nonnull %inode2) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true3, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @inode_insert5(%struct.inode* noundef %inode, i64 noundef %hashval, i32 (%struct.inode*, i8*)* nocapture noundef readonly %test, i32 (%struct.inode*, i8*)* noundef readonly %set, i8* noundef %data) local_unnamed_addr #2 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %1, i64 noundef %hashval) #17
  %add.ptr = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %2 = load i64, i64* %i_state, align 8
  %and = and i64 %2, 32768
  %tobool.not = icmp eq i64 %and, 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call259 = call fastcc %struct.inode* @find_inode(%struct.super_block* noundef %3, %struct.hlist_head* noundef %add.ptr, i32 (%struct.inode*, i8*)* noundef %test, i8* noundef %data) #17
  %tobool3.not60 = icmp eq %struct.inode* %call259, null
  br i1 %tobool3.not60, label %if.end19, label %if.then, !prof !12

if.then:                                          ; preds = %entry, %if.then17
  %call261 = phi %struct.inode* [ %call2, %if.then17 ], [ %call259, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %4 = bitcast %struct.inode* %call261 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef nonnull %4) #17
  br i1 %call6, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  call fastcc void @wait_on_inode(%struct.inode* noundef nonnull %call261) #17
  %call8 = call fastcc i32 @inode_unhashed(%struct.inode* noundef nonnull %call261) #17
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.then17, !prof !12

if.then17:                                        ; preds = %if.end
  call void @iput(%struct.inode* noundef nonnull %call261) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %5 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call2 = call fastcc %struct.inode* @find_inode(%struct.super_block* noundef %5, %struct.hlist_head* noundef %add.ptr, i32 (%struct.inode*, i8*)* noundef %test, i8* noundef %data) #17
  %tobool3.not = icmp eq %struct.inode* %call2, null
  br i1 %tobool3.not, label %if.end19, label %if.then, !prof !12

if.end19:                                         ; preds = %if.then17, %entry
  %tobool20.not = icmp eq i32 (%struct.inode*, i8*)* %set, null
  br i1 %tobool20.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end19
  %call21 = call i32 %set(%struct.inode* noundef %inode, i8* noundef %data) #19
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end31, label %unlock, !prof !12

if.end31:                                         ; preds = %land.lhs.true, %if.end19
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %6 = load i64, i64* %i_state, align 8
  %or = or i64 %6, 8
  store i64 %or, i64* %i_state, align 8
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %i_hash, %struct.hlist_head* noundef %add.ptr) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br i1 %tobool.not, label %if.then35, label %unlock

if.then35:                                        ; preds = %if.end31
  call void @inode_sb_list_add(%struct.inode* noundef %inode) #17
  br label %unlock

unlock:                                           ; preds = %land.lhs.true, %if.end31, %if.then35
  %inode.addr.0 = phi %struct.inode* [ %inode, %if.end31 ], [ %inode, %if.then35 ], [ null, %land.lhs.true ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %unlock
  %retval.0 = phi %struct.inode* [ %inode.addr.0, %unlock ], [ %call261, %if.end ], [ null, %if.then ]
  ret %struct.inode* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.inode* @find_inode(%struct.super_block* noundef readnone %sb, %struct.hlist_head* nocapture noundef readonly %head, i32 (%struct.inode*, i8*)* nocapture noundef readonly %test, i8* noundef %data) unnamed_addr #2 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %head, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not61 = icmp eq %struct.hlist_node* %0, null
  %add.ptr5262 = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12
  %tobool2.not586471 = icmp eq %struct.hlist_node* %add.ptr5262, null
  %tobool2.not5864 = or i1 %tobool.not61, %tobool2.not586471
  br i1 %tobool2.not5864, label %cleanup, label %for.body.lr.ph.preheader

for.body.lr.ph.preheader:                         ; preds = %entry
  %1 = bitcast %struct.hlist_node* %add.ptr5262 to %struct.inode*
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.preheader
  %inode.059 = phi %struct.inode* [ %1, %for.body.lr.ph.preheader ], [ %inode.059.be, %for.body.backedge ]
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode.059, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %cmp.not = icmp eq %struct.super_block* %2, %sb
  br i1 %cmp.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call = call i32 %test(%struct.inode* noundef nonnull %inode.059, i8* noundef %data) #19
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %for.inc, label %if.end5

if.end5:                                          ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode.059, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode.059, i64 0, i32 20
  %3 = load i64, i64* %i_state, align 8
  %and = and i64 %3, 48
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call fastcc void @__wait_on_freeing_inode(%struct.inode* noundef nonnull %inode.059) #17
  %4 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr52 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12
  %5 = bitcast %struct.hlist_node* %add.ptr52 to %struct.inode*
  %spec.select = select i1 %tobool.not, %struct.inode* null, %struct.inode* %5
  %tobool2.not58 = icmp eq %struct.inode* %spec.select, null
  br i1 %tobool2.not58, label %cleanup, label %for.body.backedge

if.end8:                                          ; preds = %if.end5
  %and10 = and i64 %3, 32768
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end17, label %cleanup.sink.split, !prof !12

if.end17:                                         ; preds = %if.end8
  call void @__iget(%struct.inode* noundef nonnull %inode.059) #17
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.end, %for.body
  %next = getelementptr inbounds %struct.inode, %struct.inode* %inode.059, i64 0, i32 24, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool21.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr2851 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12
  %7 = bitcast %struct.hlist_node* %add.ptr2851 to %struct.inode*
  %spec.select56 = select i1 %tobool21.not, %struct.inode* null, %struct.inode* %7
  %tobool2.not = icmp eq %struct.inode* %spec.select56, null
  br i1 %tobool2.not, label %cleanup, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %if.then7
  %inode.059.be = phi %struct.inode* [ %spec.select56, %for.inc ], [ %spec.select, %if.then7 ]
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end8, %if.end17
  %retval.0.ph = phi %struct.inode* [ %inode.059, %if.end17 ], [ inttoptr (i64 -116 to %struct.inode*), %if.end8 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %for.inc, %cleanup.sink.split, %entry
  %retval.0 = phi %struct.inode* [ null, %entry ], [ %retval.0.ph, %cleanup.sink.split ], [ null, %for.inc ], [ null, %if.then7 ]
  ret %struct.inode* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_on_inode(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  call fastcc void @wait_on_bit(i64* noundef %i_state) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @inode_unhashed(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #8 {
entry:
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %i_hash) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @iget5_locked(%struct.super_block* noundef %sb, i64 noundef %hashval, i32 (%struct.inode*, i8*)* nocapture noundef readonly %test, i32 (%struct.inode*, i8*)* noundef %set, i8* noundef %data) local_unnamed_addr #2 {
entry:
  %call = call %struct.inode* @ilookup5(%struct.super_block* noundef %sb, i64 noundef %hashval, i32 (%struct.inode*, i8*)* noundef %test, i8* noundef %data) #17
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.inode* @alloc_inode(%struct.super_block* noundef %sb) #17
  %tobool2.not = icmp eq %struct.inode* %call1, null
  br i1 %tobool2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.then
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 20
  store i64 0, i64* %i_state, align 8
  %call4 = call %struct.inode* @inode_insert5(%struct.inode* noundef nonnull %call1, i64 noundef %hashval, i32 (%struct.inode*, i8*)* noundef %test, i32 (%struct.inode*, i8*)* noundef %set, i8* noundef %data) #17
  %cmp.not = icmp eq %struct.inode* %call4, %call1
  br i1 %cmp.not, label %if.end9, label %if.then7, !prof !12

if.then7:                                         ; preds = %if.then3
  call fastcc void @destroy_inode(%struct.inode* noundef nonnull %call1) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then7, %if.then3, %entry
  %inode.1 = phi %struct.inode* [ %call, %entry ], [ %call4, %if.then7 ], [ %call1, %if.then3 ], [ null, %if.then ]
  ret %struct.inode* %inode.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @ilookup5(%struct.super_block* noundef %sb, i64 noundef %hashval, i32 (%struct.inode*, i8*)* nocapture noundef readonly %test, i8* noundef %data) local_unnamed_addr #2 {
entry:
  %call12 = call %struct.inode* @ilookup5_nowait(%struct.super_block* noundef %sb, i64 noundef %hashval, i32 (%struct.inode*, i8*)* noundef %test, i8* noundef %data) #17
  %tobool.not13 = icmp eq %struct.inode* %call12, null
  br i1 %tobool.not13, label %if.end6, label %if.then

if.then:                                          ; preds = %entry, %if.then5
  %call14 = phi %struct.inode* [ %call, %if.then5 ], [ %call12, %entry ]
  call fastcc void @wait_on_inode(%struct.inode* noundef nonnull %call14) #17
  %call1 = call fastcc i32 @inode_unhashed(%struct.inode* noundef nonnull %call14) #17
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end6, label %if.then5, !prof !12

if.then5:                                         ; preds = %if.then
  call void @iput(%struct.inode* noundef nonnull %call14) #17
  %call = call %struct.inode* @ilookup5_nowait(%struct.super_block* noundef %sb, i64 noundef %hashval, i32 (%struct.inode*, i8*)* noundef %test, i8* noundef %data) #17
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.end6:                                          ; preds = %if.then5, %if.then, %entry
  %call.lcssa = phi %struct.inode* [ null, %entry ], [ %call14, %if.then ], [ null, %if.then5 ]
  ret %struct.inode* %call.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @destroy_inode(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %i_lru = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 26
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %i_lru) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !14

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 284; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !45
  unreachable

do.end9:                                          ; preds = %entry
  call void @__destroy_inode(%struct.inode* noundef %inode) #17
  %destroy_inode = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 1
  %2 = load void (%struct.inode*)*, void (%struct.inode*)** %destroy_inode, align 8
  %tobool10.not = icmp eq void (%struct.inode*)* %2, null
  br i1 %tobool10.not, label %do.end9.if.end16_crit_edge, label %if.then11

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  %free_inode17.phi.trans.insert = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 2
  %.pre = load void (%struct.inode*)*, void (%struct.inode*)** %free_inode17.phi.trans.insert, align 8
  br label %if.end16

if.then11:                                        ; preds = %do.end9
  call void %2(%struct.inode* noundef %inode) #19
  %free_inode = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 2
  %3 = load void (%struct.inode*)*, void (%struct.inode*)** %free_inode, align 8
  %tobool13.not = icmp eq void (%struct.inode*)* %3, null
  br i1 %tobool13.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %do.end9.if.end16_crit_edge, %if.then11
  %4 = phi void (%struct.inode*)* [ %.pre, %do.end9.if.end16_crit_edge ], [ %3, %if.then11 ]
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36
  %free_inode18 = bitcast %union.anon.79* %5 to void (%struct.inode*)**
  store void (%struct.inode*)* %4, void (%struct.inode*)** %free_inode18, align 8
  %i_rcu = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29, i32 0
  call void @call_rcu(%struct.callback_head* noundef %i_rcu, void (%struct.callback_head*)* noundef nonnull @i_callback) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @iget_locked(%struct.super_block* noundef %sb, i64 noundef %ino) local_unnamed_addr #2 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %sb, i64 noundef %ino) #17
  %add.ptr = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call
  br label %again

again:                                            ; preds = %again.backedge, %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %call1 = call fastcc %struct.inode* @find_inode_fast(%struct.super_block* noundef %sb, %struct.hlist_head* noundef %add.ptr, i64 noundef %ino) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %tobool.not = icmp eq %struct.inode* %call1, null
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %again
  %1 = bitcast %struct.inode* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef nonnull %1) #17
  br i1 %call2, label %cleanup34, label %if.end

if.end:                                           ; preds = %if.then
  call fastcc void @wait_on_inode(%struct.inode* noundef nonnull %call1) #17
  %call4 = call fastcc i32 @inode_unhashed(%struct.inode* noundef nonnull %call1) #17
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup34, label %again.backedge, !prof !12

again.backedge:                                   ; preds = %if.end, %if.end21
  %call1.sink = phi %struct.inode* [ %call14, %if.end21 ], [ %call1, %if.end ]
  call void @iput(%struct.inode* noundef nonnull %call1.sink) #17
  br label %again

if.end10:                                         ; preds = %again
  %call11 = call fastcc %struct.inode* @alloc_inode(%struct.super_block* noundef %sb) #17
  %tobool12.not = icmp eq %struct.inode* %call11, null
  br i1 %tobool12.not, label %cleanup34, label %if.then13

if.then13:                                        ; preds = %if.end10
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %call14 = call fastcc %struct.inode* @find_inode_fast(%struct.super_block* noundef %sb, %struct.hlist_head* noundef %add.ptr, i64 noundef %ino) #17
  %tobool15.not = icmp eq %struct.inode* %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call11, i64 0, i32 8
  store i64 %ino, i64* %i_ino, align 8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %call11, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %call11, i64 0, i32 20
  store i64 8, i64* %i_state, align 8
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %call11, i64 0, i32 24
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %i_hash, %struct.hlist_head* noundef %add.ptr) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @inode_sb_list_add(%struct.inode* noundef nonnull %call11) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  br label %cleanup34

if.end18:                                         ; preds = %if.then13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  call fastcc void @destroy_inode(%struct.inode* noundef nonnull %call11) #17
  %2 = bitcast %struct.inode* %call14 to i8*
  %call19 = call fastcc i1 @IS_ERR(i8* noundef nonnull %2) #17
  br i1 %call19, label %cleanup34, label %if.end21

if.end21:                                         ; preds = %if.end18
  call fastcc void @wait_on_inode(%struct.inode* noundef nonnull %call14) #17
  %call22 = call fastcc i32 @inode_unhashed(%struct.inode* noundef nonnull %call14) #17
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup34, label %again.backedge, !prof !12

cleanup34:                                        ; preds = %if.end18, %if.end21, %if.end10, %if.end, %if.then, %if.then16
  %retval.2 = phi %struct.inode* [ %call11, %if.then16 ], [ null, %if.end18 ], [ %call14, %if.end21 ], [ null, %if.end10 ], [ %call1, %if.end ], [ null, %if.then ]
  ret %struct.inode* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.inode* @find_inode_fast(%struct.super_block* noundef readnone %sb, %struct.hlist_head* nocapture noundef readonly %head, i64 noundef %ino) unnamed_addr #2 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %head, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not60 = icmp eq %struct.hlist_node* %0, null
  %add.ptr5161 = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -12
  %tobool2.not576370 = icmp eq %struct.hlist_node* %add.ptr5161, null
  %tobool2.not5763 = or i1 %tobool.not60, %tobool2.not576370
  br i1 %tobool2.not5763, label %cleanup, label %for.body.lr.ph.preheader

for.body.lr.ph.preheader:                         ; preds = %entry
  %1 = bitcast %struct.hlist_node* %add.ptr5161 to %struct.inode*
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.preheader
  %inode.058 = phi %struct.inode* [ %1, %for.body.lr.ph.preheader ], [ %inode.058.be, %for.body.backedge ]
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode.058, i64 0, i32 8
  %2 = load i64, i64* %i_ino, align 8
  %cmp.not = icmp eq i64 %2, %ino
  br i1 %cmp.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode.058, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %cmp3.not = icmp eq %struct.super_block* %3, %sb
  br i1 %cmp3.not, label %if.end5, label %for.inc

if.end5:                                          ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode.058, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode.058, i64 0, i32 20
  %4 = load i64, i64* %i_state, align 8
  %and = and i64 %4, 48
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call fastcc void @__wait_on_freeing_inode(%struct.inode* noundef nonnull %inode.058) #17
  %5 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %5, null
  %add.ptr51 = getelementptr %struct.hlist_node, %struct.hlist_node* %5, i64 -12
  %6 = bitcast %struct.hlist_node* %add.ptr51 to %struct.inode*
  %spec.select = select i1 %tobool.not, %struct.inode* null, %struct.inode* %6
  %tobool2.not57 = icmp eq %struct.inode* %spec.select, null
  br i1 %tobool2.not57, label %cleanup, label %for.body.backedge

if.end8:                                          ; preds = %if.end5
  %and10 = and i64 %4, 32768
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end16, label %cleanup.sink.split, !prof !12

if.end16:                                         ; preds = %if.end8
  call void @__iget(%struct.inode* noundef nonnull %inode.058) #17
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.end, %for.body
  %next = getelementptr inbounds %struct.inode, %struct.inode* %inode.058, i64 0, i32 24, i32 0
  %7 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool20.not = icmp eq %struct.hlist_node* %7, null
  %add.ptr2750 = getelementptr %struct.hlist_node, %struct.hlist_node* %7, i64 -12
  %8 = bitcast %struct.hlist_node* %add.ptr2750 to %struct.inode*
  %spec.select55 = select i1 %tobool20.not, %struct.inode* null, %struct.inode* %8
  %tobool2.not = icmp eq %struct.inode* %spec.select55, null
  br i1 %tobool2.not, label %cleanup, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %if.then7
  %inode.058.be = phi %struct.inode* [ %spec.select55, %for.inc ], [ %spec.select, %if.then7 ]
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end8, %if.end16
  %retval.0.ph = phi %struct.inode* [ %inode.058, %if.end16 ], [ inttoptr (i64 -116 to %struct.inode*), %if.end8 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %for.inc, %cleanup.sink.split, %entry
  %retval.0 = phi %struct.inode* [ null, %entry ], [ %retval.0.ph, %cleanup.sink.split ], [ null, %for.inc ], [ null, %if.then7 ]
  ret %struct.inode* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @iunique(%struct.super_block* noundef %sb, i64 noundef %max_reserved) local_unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_lock() #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @iunique.iunique_lock, i64 0, i32 0, i32 0)) #19
  %0 = trunc i64 %max_reserved to i32
  %conv2 = add i32 %0, 1
  %.pre = zext i32 %conv2 to i64
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %1 = load i32, i32* @iunique.counter, align 4
  %conv = zext i32 %1 to i64
  %cmp.not = icmp ugt i64 %conv, %max_reserved
  %spec.select = select i1 %cmp.not, i64 %conv, i64 %.pre
  %spec.select7 = select i1 %cmp.not, i32 %1, i32 %conv2
  %inc = add i32 %spec.select7, 1
  store i32 %inc, i32* @iunique.counter, align 4
  %call = call fastcc i32 @test_inode_iunique(%struct.super_block* noundef %sb, i64 noundef %spec.select) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @iunique.iunique_lock, i64 0, i32 0, i32 0)) #19
  call fastcc void @rcu_read_unlock() #17
  ret i64 %spec.select
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i32 @test_inode_iunique(%struct.super_block* noundef %sb, i64 noundef %ino) unnamed_addr #7 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %sb, i64 noundef %ino) #17
  %first = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call, i32 0
  %1 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr747 = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -12
  %tobool8.not5053 = icmp eq %struct.hlist_node* %add.ptr747, null
  %tobool8.not50 = or i1 %tobool.not, %tobool8.not5053
  br i1 %tobool8.not50, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %2 = bitcast %struct.hlist_node* %add.ptr747 to %struct.inode*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %inode.051 = phi %struct.inode* [ %spec.select49, %for.inc ], [ %2, %for.body.preheader ]
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode.051, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  %cmp = icmp eq i64 %3, %ino
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode.051, i64 0, i32 6
  %4 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %cmp9 = icmp eq %struct.super_block* %4, %sb
  br i1 %cmp9, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.inode, %struct.inode* %inode.051, i64 0, i32 24, i32 0
  %5 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool18.not = icmp eq %struct.hlist_node* %5, null
  %add.ptr2546 = getelementptr %struct.hlist_node, %struct.hlist_node* %5, i64 -12
  %6 = bitcast %struct.hlist_node* %add.ptr2546 to %struct.inode*
  %spec.select49 = select i1 %tobool18.not, %struct.inode* null, %struct.inode* %6
  %tobool8.not = icmp eq %struct.inode* %spec.select49, null
  br i1 %tobool8.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.inc ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @igrab(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, 48
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__iget(%struct.inode* noundef %inode) #17
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %inode.addr.0 = phi %struct.inode* [ %inode, %if.then ], [ null, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret %struct.inode* %inode.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @ilookup5_nowait(%struct.super_block* noundef %sb, i64 noundef %hashval, i32 (%struct.inode*, i8*)* nocapture noundef readonly %test, i8* noundef %data) local_unnamed_addr #2 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %sb, i64 noundef %hashval) #17
  %add.ptr = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %call1 = call fastcc %struct.inode* @find_inode(%struct.super_block* noundef %sb, %struct.hlist_head* noundef %add.ptr, i32 (%struct.inode*, i8*)* noundef %test, i8* noundef %data) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %1 = bitcast %struct.inode* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  %cond = select i1 %call2, %struct.inode* null, %struct.inode* %call1
  ret %struct.inode* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @ilookup(%struct.super_block* noundef %sb, i64 noundef %ino) local_unnamed_addr #2 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %sb, i64 noundef %ino) #17
  %add.ptr = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %call121 = call fastcc %struct.inode* @find_inode_fast(%struct.super_block* noundef %sb, %struct.hlist_head* noundef %add.ptr, i64 noundef %ino) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %tobool.not22 = icmp eq %struct.inode* %call121, null
  br i1 %tobool.not22, label %cleanup, label %if.then

if.then:                                          ; preds = %entry, %if.then8
  %call123 = phi %struct.inode* [ %call1, %if.then8 ], [ %call121, %entry ]
  %1 = bitcast %struct.inode* %call123 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef nonnull %1) #17
  br i1 %call2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  call fastcc void @wait_on_inode(%struct.inode* noundef nonnull %call123) #17
  %call4 = call fastcc i32 @inode_unhashed(%struct.inode* noundef nonnull %call123) #17
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.then8, !prof !12

if.then8:                                         ; preds = %if.end
  call void @iput(%struct.inode* noundef nonnull %call123) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %call1 = call fastcc %struct.inode* @find_inode_fast(%struct.super_block* noundef %sb, %struct.hlist_head* noundef %add.ptr, i64 noundef %ino) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %tobool.not = icmp eq %struct.inode* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.then

cleanup:                                          ; preds = %if.then, %if.end, %if.then8, %entry
  %retval.0 = phi %struct.inode* [ null, %entry ], [ null, %if.then8 ], [ %call123, %if.end ], [ null, %if.then ]
  ret %struct.inode* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @find_inode_nowait(%struct.super_block* noundef readonly %sb, i64 noundef %hashval, i32 (%struct.inode*, i64, i8*)* nocapture noundef readonly %match, i8* noundef %data) local_unnamed_addr #2 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %sb, i64 noundef %hashval) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %first = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call, i32 0
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr243 = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -12
  %tobool3.not4752 = icmp eq %struct.hlist_node* %add.ptr243, null
  %tobool3.not47 = or i1 %tobool.not, %tobool3.not4752
  br i1 %tobool3.not47, label %out, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %2 = bitcast %struct.hlist_node* %add.ptr243 to %struct.inode*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %inode.048 = phi %struct.inode* [ %spec.select45, %for.inc ], [ %2, %for.body.preheader ]
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode.048, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %cmp.not = icmp eq %struct.super_block* %3, %sb
  br i1 %cmp.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call4 = call i32 %match(%struct.inode* noundef nonnull %inode.048, i64 noundef %hashval, i8* noundef %data) #19
  switch i32 %call4, label %out.loopexit [
    i32 0, label %for.inc
    i32 1, label %out
  ]

for.inc:                                          ; preds = %if.end, %for.body
  %next = getelementptr inbounds %struct.inode, %struct.inode* %inode.048, i64 0, i32 24, i32 0
  %4 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool13.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr2042 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -12
  %5 = bitcast %struct.hlist_node* %add.ptr2042 to %struct.inode*
  %spec.select45 = select i1 %tobool13.not, %struct.inode* null, %struct.inode* %5
  %tobool3.not = icmp eq %struct.inode* %spec.select45, null
  br i1 %tobool3.not, label %out.loopexit, label %for.body

out.loopexit:                                     ; preds = %if.end, %for.inc
  br label %out

out:                                              ; preds = %if.end, %out.loopexit, %entry
  %ret_inode.0 = phi %struct.inode* [ null, %entry ], [ null, %out.loopexit ], [ %inode.048, %if.end ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  ret %struct.inode* %ret_inode.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @find_inode_rcu(%struct.super_block* noundef %sb, i64 noundef %hashval, i32 (%struct.inode*, i8*)* nocapture noundef readonly %test, i8* noundef %data) local_unnamed_addr #2 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %sb, i64 noundef %hashval) #17
  %first = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call, i32 0
  %1 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr1058 = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -12
  %tobool11.not6165 = icmp eq %struct.hlist_node* %add.ptr1058, null
  %tobool11.not61 = or i1 %tobool.not, %tobool11.not6165
  br i1 %tobool11.not61, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %2 = bitcast %struct.hlist_node* %add.ptr1058 to %struct.inode*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %inode.062 = phi %struct.inode* [ %spec.select60, %for.inc ], [ %2, %for.body.preheader ]
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode.062, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %cmp = icmp eq %struct.super_block* %3, %sb
  br i1 %cmp, label %do.end14, label %for.inc

do.end14:                                         ; preds = %for.body
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode.062, i64 0, i32 20
  %4 = load volatile i64, i64* %i_state, align 8
  %and = and i64 %4, 48
  %tobool16.not = icmp eq i64 %and, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %for.inc

land.lhs.true17:                                  ; preds = %do.end14
  %call18 = call i32 %test(%struct.inode* noundef nonnull %inode.062, i8* noundef %data) #19
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body, %do.end14, %land.lhs.true17
  %next = getelementptr inbounds %struct.inode, %struct.inode* %inode.062, i64 0, i32 24, i32 0
  %5 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool28.not = icmp eq %struct.hlist_node* %5, null
  %add.ptr3557 = getelementptr %struct.hlist_node, %struct.hlist_node* %5, i64 -12
  %6 = bitcast %struct.hlist_node* %add.ptr3557 to %struct.inode*
  %spec.select60 = select i1 %tobool28.not, %struct.inode* null, %struct.inode* %6
  %tobool11.not = icmp eq %struct.inode* %spec.select60, null
  br i1 %tobool11.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true17, %for.inc, %entry
  %inode.0.lcssa = phi %struct.inode* [ null, %entry ], [ null, %for.inc ], [ %inode.062, %land.lhs.true17 ]
  ret %struct.inode* %inode.0.lcssa
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local %struct.inode* @find_inode_by_ino_rcu(%struct.super_block* noundef %sb, i64 noundef %ino) local_unnamed_addr #7 {
entry:
  %0 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %sb, i64 noundef %ino) #17
  %first = getelementptr %struct.hlist_head, %struct.hlist_head* %0, i64 %call, i32 0
  %1 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr1058 = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -12
  %tobool11.not6165 = icmp eq %struct.hlist_node* %add.ptr1058, null
  %tobool11.not61 = or i1 %tobool.not, %tobool11.not6165
  br i1 %tobool11.not61, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %2 = bitcast %struct.hlist_node* %add.ptr1058 to %struct.inode*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %inode.062 = phi %struct.inode* [ %spec.select60, %for.inc ], [ %2, %for.body.preheader ]
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode.062, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  %cmp = icmp eq i64 %3, %ino
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode.062, i64 0, i32 6
  %4 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %cmp12 = icmp eq %struct.super_block* %4, %sb
  br i1 %cmp12, label %do.end16, label %for.inc

do.end16:                                         ; preds = %land.lhs.true
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode.062, i64 0, i32 20
  %5 = load volatile i64, i64* %i_state, align 8
  %and = and i64 %5, 48
  %tobool18.not = icmp eq i64 %and, 0
  br i1 %tobool18.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %do.end16
  %next = getelementptr inbounds %struct.inode, %struct.inode* %inode.062, i64 0, i32 24, i32 0
  %6 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool27.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr3457 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -12
  %7 = bitcast %struct.hlist_node* %add.ptr3457 to %struct.inode*
  %spec.select60 = select i1 %tobool27.not, %struct.inode* null, %struct.inode* %7
  %tobool11.not = icmp eq %struct.inode* %spec.select60, null
  br i1 %tobool11.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %do.end16, %for.inc, %entry
  %inode.0.lcssa = phi %struct.inode* [ null, %entry ], [ null, %for.inc ], [ %inode.062, %do.end16 ]
  ret %struct.inode* %inode.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @insert_inode_locked(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 8
  %1 = load i64, i64* %i_ino, align 8
  %2 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %call = call fastcc i64 @hash(%struct.super_block* noundef %0, i64 noundef %1) #17
  %add.ptr = getelementptr %struct.hlist_head, %struct.hlist_head* %2, i64 %call
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %add.ptr, i64 0, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not119 = icmp eq %struct.hlist_node* %3, null
  %add.ptr2102120 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -12
  %tobool3.not116122130 = icmp eq %struct.hlist_node* %add.ptr2102120, null
  %tobool3.not116122 = or i1 %tobool.not119, %tobool3.not116122130
  br i1 %tobool3.not116122, label %if.then30, label %for.body.lr.ph.preheader

for.body.lr.ph.preheader:                         ; preds = %entry
  %4 = bitcast %struct.hlist_node* %add.ptr2102120 to %struct.inode*
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.preheader
  %old.0117 = phi %struct.inode* [ %4, %for.body.lr.ph.preheader ], [ %old.0117.be, %for.body.backedge ]
  %i_ino4 = getelementptr inbounds %struct.inode, %struct.inode* %old.0117, i64 0, i32 8
  %5 = load i64, i64* %i_ino4, align 8
  %cmp.not = icmp eq i64 %5, %1
  br i1 %cmp.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %i_sb5 = getelementptr inbounds %struct.inode, %struct.inode* %old.0117, i64 0, i32 6
  %6 = load %struct.super_block*, %struct.super_block** %i_sb5, align 8
  %cmp6.not = icmp eq %struct.super_block* %6, %0
  br i1 %cmp6.not, label %if.end8, label %for.inc

if.end8:                                          ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %old.0117, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %old.0117, i64 0, i32 20
  %7 = load i64, i64* %i_state, align 8
  %and = and i64 %7, 48
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.end35, label %if.then10

if.then10:                                        ; preds = %if.end8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body, %if.then10
  %next = getelementptr inbounds %struct.inode, %struct.inode* %old.0117, i64 0, i32 24, i32 0
  %8 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool15.not = icmp eq %struct.hlist_node* %8, null
  %add.ptr22101 = getelementptr %struct.hlist_node, %struct.hlist_node* %8, i64 -12
  %9 = bitcast %struct.hlist_node* %add.ptr22101 to %struct.inode*
  %spec.select112 = select i1 %tobool15.not, %struct.inode* null, %struct.inode* %9
  %tobool3.not = icmp eq %struct.inode* %spec.select112, null
  br i1 %tobool3.not, label %if.then30, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %cleanup
  %old.0117.be = phi %struct.inode* [ %spec.select112, %for.inc ], [ %spec.select, %cleanup ]
  br label %for.body

if.then30:                                        ; preds = %cleanup, %for.inc, %entry
  %rlock.i104 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i104) #19
  %i_state32 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %10 = load i64, i64* %i_state32, align 8
  %or = or i64 %10, 32776
  store i64 %or, i64* %i_state32, align 8
  %i_hash33 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %i_hash33, %struct.hlist_head* noundef %add.ptr) #17
  br label %cleanup63.sink.split

if.end35:                                         ; preds = %if.end8
  %and37 = and i64 %7, 32768
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.end48, label %cleanup63.sink.split, !prof !12

if.end48:                                         ; preds = %if.end35
  call void @__iget(%struct.inode* noundef nonnull %old.0117) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  call fastcc void @wait_on_inode(%struct.inode* noundef nonnull %old.0117) #17
  %call50 = call fastcc i32 @inode_unhashed(%struct.inode* noundef nonnull %old.0117) #17
  %tobool51.not = icmp eq i32 %call50, 0
  call void @iput(%struct.inode* noundef nonnull %old.0117) #17
  br i1 %tobool51.not, label %cleanup63, label %cleanup, !prof !14

cleanup:                                          ; preds = %if.end48
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  %11 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %11, null
  %add.ptr2102 = getelementptr %struct.hlist_node, %struct.hlist_node* %11, i64 -12
  %12 = bitcast %struct.hlist_node* %add.ptr2102 to %struct.inode*
  %spec.select = select i1 %tobool.not, %struct.inode* null, %struct.inode* %12
  %tobool3.not116 = icmp eq %struct.inode* %spec.select, null
  br i1 %tobool3.not116, label %if.then30, label %for.body.backedge

cleanup63.sink.split:                             ; preds = %if.end35, %if.then30
  %rlock.i104.sink = phi %struct.raw_spinlock* [ %rlock.i104, %if.then30 ], [ %rlock.i, %if.end35 ]
  %retval.1.ph.ph = phi i32 [ 0, %if.then30 ], [ -16, %if.end35 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i104.sink) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  br label %cleanup63

cleanup63:                                        ; preds = %if.end48, %cleanup63.sink.split
  %retval.1.ph = phi i32 [ %retval.1.ph.ph, %cleanup63.sink.split ], [ -16, %if.end48 ]
  ret i32 %retval.1.ph
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @insert_inode_locked4(%struct.inode* noundef %inode, i64 noundef %hashval, i32 (%struct.inode*, i8*)* nocapture noundef readonly %test, i8* noundef %data) local_unnamed_addr #2 {
entry:
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %or = or i64 %0, 32768
  store i64 %or, i64* %i_state, align 8
  %call = call %struct.inode* @inode_insert5(%struct.inode* noundef %inode, i64 noundef %hashval, i32 (%struct.inode*, i8*)* noundef %test, i32 (%struct.inode*, i8*)* noundef null, i8* noundef %data) #17
  %cmp.not = icmp eq %struct.inode* %call, %inode
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  call void @iput(%struct.inode* noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @generic_delete_inode(%struct.inode* nocapture noundef readnone %inode) local_unnamed_addr #4 {
entry:
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(%struct.atomic_t* noundef, %struct.spinlock* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty_sync(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 1) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @iput_final(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %2 = load i64, i64* %i_state, align 8
  %and = and i64 %2, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 1631; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !46
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %drop_inode = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 5
  %3 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %drop_inode, align 8
  %tobool16.not = icmp eq i32 (%struct.inode*)* %3, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  %call = call i32 %3(%struct.inode* noundef %inode) #19
  br label %if.end20

if.else:                                          ; preds = %if.end
  %call19 = call fastcc i32 @generic_drop_inode(%struct.inode* noundef %inode) #17
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %drop.0 = phi i32 [ %call, %if.then17 ], [ %call19, %if.else ]
  %tobool21.not = icmp eq i32 %drop.0, 0
  %4 = load i64, i64* %i_state, align 8
  br i1 %tobool21.not, label %land.lhs.true, label %do.body75

land.lhs.true:                                    ; preds = %if.end20
  %and23 = and i64 %4, 65536
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %do.body34

land.lhs.true25:                                  ; preds = %land.lhs.true
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 10
  %5 = load i64, i64* %s_flags, align 16
  %and26 = and i64 %5, 1073741824
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %do.body34, label %if.then28

if.then28:                                        ; preds = %land.lhs.true25
  call void @inode_add_lru(%struct.inode* noundef %inode) #17
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

do.body34:                                        ; preds = %land.lhs.true25, %land.lhs.true
  %or = or i64 %4, 16
  store volatile i64 %or, i64* %i_state, align 8
  %rlock.i121 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i121) #19
  %call41 = call i32 @write_inode_now(%struct.inode* noundef %inode, i32 noundef 1) #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i121) #19
  %6 = load i64, i64* %i_state, align 8
  %and45 = and i64 %6, 8
  %tobool46.not = icmp eq i64 %and45, 0
  br i1 %tobool46.not, label %if.end60, label %if.then59, !prof !12

if.then59:                                        ; preds = %do.body34
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 1655; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !47
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %do.body34
  %and69 = and i64 %6, -17
  br label %do.body75

do.body75:                                        ; preds = %if.end20, %if.end60
  %state.0 = phi i64 [ %and69, %if.end60 ], [ %4, %if.end20 ]
  %or76 = or i64 %state.0, 32
  store volatile i64 %or76, i64* %i_state, align 8
  %i_lru = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 26
  %call82 = call fastcc i32 @list_empty(%struct.list_head* noundef %i_lru) #17
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %if.end85

if.then84:                                        ; preds = %do.body75
  call fastcc void @inode_lru_list_del(%struct.inode* noundef %inode) #17
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %do.body75
  %rlock.i123 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i123) #19
  call fastcc void @evict(%struct.inode* noundef %inode) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bmap(%struct.inode* nocapture noundef readonly %inode, i64* nocapture noundef %block) local_unnamed_addr #2 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %bmap = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 8
  %2 = load i64 (%struct.address_space*, i64)*, i64 (%struct.address_space*, i64)** %bmap, align 8
  %tobool.not = icmp eq i64 (%struct.address_space*, i64)* %2, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %block, align 8
  %call = call i64 %2(%struct.address_space* noundef %0, i64 noundef %3) #19
  store i64 %call, i64* %block, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_update_time(%struct.inode* noundef %inode, %struct.timespec64* nocapture noundef readonly %time, i32 noundef %flags) local_unnamed_addr #2 {
entry:
  %and = and i32 %flags, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i32 %flags, 1
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 12
  %0 = bitcast %struct.timespec64* %i_atime to i8*
  %1 = bitcast %struct.timespec64* %time to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %and4 = and i32 %flags, 4
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14
  %2 = bitcast %struct.timespec64* %i_ctime to i8*
  %3 = bitcast %struct.timespec64* %time to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %and8 = and i32 %flags, 2
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13
  %4 = bitcast %struct.timespec64* %i_mtime to i8*
  %5 = bitcast %struct.timespec64* %time to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %5, i64 16, i1 false)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %6 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 10
  %7 = load i64, i64* %s_flags, align 16
  %and12 = and i64 %7, 33554432
  %tobool13.not = icmp eq i64 %and12, 0
  %. = select i1 %tobool13.not, i32 1, i32 2048
  br label %if.end17

if.end17:                                         ; preds = %if.end11, %entry
  %dirty_flags.0 = phi i32 [ 0, %entry ], [ %., %if.end11 ]
  %and18 = and i32 %flags, 8
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %call = call fastcc i1 @inode_maybe_inc_iversion(%struct.inode* noundef %inode) #17
  %or21 = zext i1 %call to i32
  %spec.select = or i32 %dirty_flags.0, %or21
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.end17
  %dirty_flags.1 = phi i32 [ %dirty_flags.0, %if.end17 ], [ %spec.select, %land.lhs.true ]
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef %dirty_flags.1) #19
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @inode_maybe_inc_iversion(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !48
  %call = call fastcc i64 @inode_peek_iversion_raw(%struct.inode* noundef %inode) #17
  %i_version = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 30
  %0 = bitcast %struct.atomic64_t* %i_version to i8*
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %cur.0 = phi i64 [ %call, %entry ], [ %call14.i.i, %if.end ]
  %and = and i64 %cur.0, 1
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.cond
  %1 = add i64 %cur.0, 2
  %add = and i64 %1, -2
  %call14.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %cur.0, i64 noundef %add) #19
  %cmp = icmp eq i64 %call14.i.i, %cur.0
  br i1 %cmp, label %cleanup, label %for.cond, !prof !12

cleanup:                                          ; preds = %if.end, %for.cond
  %2 = xor i1 %tobool1.not, true
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @atime_needs_update(%struct.path* nocapture noundef readonly %path, %struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #2 {
entry:
  %now = alloca %struct.timespec64, align 8
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %1 = bitcast %struct.timespec64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #20
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %2 = load i32, i32* %i_flags, align 4
  %and = and i32 %2, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #17
  %call2 = call fastcc i1 @HAS_UNMAPPED_ID(%struct.inode* noundef %inode) #17
  br i1 %call2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 10
  %4 = load i64, i64* %s_flags, align 16
  %and5 = and i64 %4, 1025
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %and11 = and i64 %4, 2048
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %5 = load i16, i16* %i_mode, align 8
  %6 = and i16 %5, -4096
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %cleanup, label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %if.end8
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 2
  %7 = load i32, i32* %mnt_flags, align 8
  %and17 = and i32 %7, 8
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end16
  %and22 = and i32 %7, 16
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end31, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end20
  %i_mode25 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %8 = load i16, i16* %i_mode25, align 8
  %9 = and i16 %8, -4096
  %cmp28 = icmp eq i16 %9, 16384
  br i1 %cmp28, label %cleanup, label %if.end31

if.end31:                                         ; preds = %land.lhs.true24, %if.end20
  %call32 = call [2 x i64] @current_time(%struct.inode* noundef %inode) #17
  %call32.fca.0.extract = extractvalue [2 x i64] %call32, 0
  %call32.fca.1.extract = extractvalue [2 x i64] %call32, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 0
  store i64 %call32.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx43 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 1
  store i64 %call32.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx43, align 8
  %call33 = call fastcc i32 @relatime_need_update(%struct.vfsmount* noundef %0, %struct.inode* noundef %inode, [2 x i64] %call32) #17
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end31
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 12
  %call37 = call fastcc i32 @timespec64_equal(%struct.timespec64* noundef %i_atime, %struct.timespec64* noundef nonnull %now) #17
  %tobool38.not = icmp eq i32 %call37, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end31, %land.lhs.true24, %if.end16, %land.lhs.true, %if.end4, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ false, %if.end4 ], [ false, %land.lhs.true ], [ false, %if.end16 ], [ false, %land.lhs.true24 ], [ false, %if.end31 ], [ %tobool38.not, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #20
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @HAS_UNMAPPED_ID(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #17
  %coerce.val.ii = zext i32 %call to i64
  %call2 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #17
  br i1 %call2, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call4 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %inode) #17
  %coerce.val.ii7 = zext i32 %call4 to i64
  %call8 = call fastcc i1 @gid_valid(i64 %coerce.val.ii7) #17
  %lnot = xor i1 %call8, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #2 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #20, !srcloc !49
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local [2 x i64] @current_time(%struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #2 {
entry:
  %now = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !50
  call void @ktime_get_coarse_real_ts64(%struct.timespec64* noundef nonnull %now) #19
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %tobool.not = icmp eq %struct.super_block* %1, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !14

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0)) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 2320; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !51
  %retval.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 0
  %retval.sroa.0.0.copyload = load i64, i64* %retval.sroa.0.0..sroa_idx, align 8
  %retval.sroa.3.0..sroa_idx36 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 1
  %retval.sroa.3.0.copyload = load i64, i64* %retval.sroa.3.0..sroa_idx36, align 8
  br label %cleanup

if.end26:                                         ; preds = %entry
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 1
  %.fca.1.load = load i64, i64* %2, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  %call = call [2 x i64] @timestamp_truncate([2 x i64] %.fca.1.insert, %struct.inode* noundef %inode) #17
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %retval.sroa.0.0 = phi i64 [ %retval.sroa.0.0.copyload, %do.end ], [ %call.fca.0.extract, %if.end26 ]
  %retval.sroa.3.0 = phi i64 [ %retval.sroa.3.0.copyload, %do.end ], [ %call.fca.1.extract, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #20
  %.fca.0.insert32 = insertvalue [2 x i64] poison, i64 %retval.sroa.0.0, 0
  %.fca.1.insert35 = insertvalue [2 x i64] %.fca.0.insert32, i64 %retval.sroa.3.0, 1
  ret [2 x i64] %.fca.1.insert35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @relatime_need_update(%struct.vfsmount* nocapture noundef readonly %mnt, %struct.inode* nocapture noundef readonly %inode, [2 x i64] %now.coerce) unnamed_addr #8 {
entry:
  %now.coerce.fca.0.extract = extractvalue [2 x i64] %now.coerce, 0
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 12
  %call = call fastcc i32 @timespec64_compare(%struct.timespec64* noundef %i_mtime, %struct.timespec64* noundef %i_atime) #17
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14
  %call4 = call fastcc i32 @timespec64_compare(%struct.timespec64* noundef %i_ctime, %struct.timespec64* noundef %i_atime) #17
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end2
  %tv_sec9 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %i_atime, i64 0, i32 0
  %1 = load i64, i64* %tv_sec9, align 8
  %sub = sub i64 %now.coerce.fca.0.extract, %1
  %cmp10 = icmp sgt i64 %sub, 86399
  %. = zext i1 %cmp10 to i32
  br label %return

return:                                           ; preds = %if.end7, %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end2 ], [ %., %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @timespec64_equal(%struct.timespec64* nocapture noundef readonly %a, %struct.timespec64* nocapture noundef readonly %b) unnamed_addr #8 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %a, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %b, i64 0, i32 0
  %1 = load i64, i64* %tv_sec1, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %a, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %b, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec2, align 8
  %cmp3 = icmp eq i64 %2, %3
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @touch_atime(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #2 {
entry:
  %now = alloca %struct.timespec64, align 8
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %1) #17
  %2 = bitcast %struct.timespec64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !50
  %call2 = call i1 @atime_needs_update(%struct.path* noundef %path, %struct.inode* noundef %call) #17
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call3 = call fastcc i1 @sb_start_write_trylock(%struct.super_block* noundef %3) #17
  br i1 %call3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @__mnt_want_write(%struct.vfsmount* noundef %0) #19
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end8, label %skip_update

if.end8:                                          ; preds = %if.end5
  %call9 = call [2 x i64] @current_time(%struct.inode* noundef %call) #17
  %call9.fca.0.extract = extractvalue [2 x i64] %call9, 0
  %call9.fca.1.extract = extractvalue [2 x i64] %call9, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 0
  store i64 %call9.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx15 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 1
  store i64 %call9.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx15, align 8
  %call10 = call fastcc i32 @update_time(%struct.inode* noundef %call, %struct.timespec64* noundef nonnull %now, i32 noundef 1) #17
  call void @__mnt_drop_write(%struct.vfsmount* noundef %0) #19
  br label %skip_update

skip_update:                                      ; preds = %if.end5, %if.end8
  %4 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_end_write(%struct.super_block* noundef %4) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %skip_update
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #8 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @sb_start_write_trylock(%struct.super_block* noundef %sb) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @__sb_start_write_trylock(%struct.super_block* noundef %sb) #17
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @update_time(%struct.inode* noundef %inode, %struct.timespec64* noundef %time, i32 noundef %flags) unnamed_addr #2 {
entry:
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  %0 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %update_time = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %0, i64 0, i32 17
  %1 = load i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.timespec64*, i32)** %update_time, align 8
  %tobool.not = icmp eq i32 (%struct.inode*, %struct.timespec64*, i32)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.inode* noundef %inode, %struct.timespec64* noundef %time, i32 noundef %flags) #19
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i32 @generic_update_time(%struct.inode* noundef %inode, %struct.timespec64* noundef %time, i32 noundef %flags) #17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #2 {
entry:
  call fastcc void @__sb_end_write(%struct.super_block* noundef %sb) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @should_remove_suid(%struct.dentry* nocapture noundef readonly %dentry) local_unnamed_addr #2 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #17
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 2048
  %tobool.not = icmp eq i32 %and, 0
  %1 = and i32 %conv, 1032
  %2 = icmp eq i32 %1, 1032
  br i1 %tobool.not, label %if.end, label %if.end.thread, !prof !12

if.end:                                           ; preds = %entry
  br i1 %2, label %if.end18.thread, label %land.end25.thread, !prof !14

if.end.thread:                                    ; preds = %entry
  br i1 %2, label %if.end18.thread, label %land.lhs.true, !prof !14

if.end18.thread:                                  ; preds = %if.end.thread, %if.end
  %kill.049 = phi i32 [ 6144, %if.end.thread ], [ 4096, %if.end ]
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.thread, %if.end18.thread
  %kill.145 = phi i32 [ %kill.049, %if.end18.thread ], [ 2048, %if.end.thread ]
  %call20 = call i1 @capable(i32 noundef 4) #19
  %call20.not = xor i1 %call20, true
  %and23 = and i32 %conv, 61440
  %cmp = icmp eq i32 %and23, 32768
  %or.cond = select i1 %call20.not, i1 %cmp, i1 false
  %spec.select = select i1 %or.cond, i32 %kill.145, i32 0
  br label %land.end25.thread

land.end25.thread:                                ; preds = %if.end, %land.lhs.true
  %3 = phi i32 [ %spec.select, %land.lhs.true ], [ 0, %if.end ]
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dentry_needs_remove_privs(%struct.dentry* noundef %dentry) local_unnamed_addr #2 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #17
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %0 = load i32, i32* %i_flags, align 4
  %and = and i32 %0, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @should_remove_suid(%struct.dentry* noundef %dentry) #17
  %call2 = call fastcc i32 @security_inode_need_killpriv(%struct.dentry* noundef %dentry) #17
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq i32 %call2, 0
  %or = or i32 %call1, 16384
  %spec.select = select i1 %tobool5.not, i32 %call1, i32 %or
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %spec.select, %if.end4 ], [ 0, %entry ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_inode_need_killpriv(%struct.dentry* noundef %dentry) unnamed_addr #2 {
entry:
  %call = call i32 @cap_inode_need_killpriv(%struct.dentry* noundef %dentry) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @file_remove_privs(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #2 {
entry:
  %call = call fastcc %struct.dentry* @file_dentry(%struct.file* noundef %file) #17
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #17
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 4
  %0 = load i32, i32* %i_flags, align 4
  %and = and i32 %0, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 0
  %1 = load i16, i16* %i_mode, align 8
  %2 = and i16 %1, -4096
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call i32 @dentry_needs_remove_privs(%struct.dentry* noundef %call) #17
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %tobool9.not = icmp eq i32 %call4, 0
  br i1 %tobool9.not, label %if.then15, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call11 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #17
  %call12 = call fastcc i32 @__remove_privs(%struct.user_namespace* noundef %call11, %struct.dentry* noundef %call, i32 noundef %call4) #17
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end8, %if.end13
  call fastcc void @inode_has_no_xattr(%struct.inode* noundef %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then15, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %call4, %if.end ], [ 0, %if.then15 ], [ %call12, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @file_dentry(%struct.file* nocapture noundef readonly %file) unnamed_addr #2 {
entry:
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #17
  %call1 = call fastcc %struct.dentry* @d_real(%struct.dentry* noundef %0, %struct.inode* noundef %call) #17
  ret %struct.dentry* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #8 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__remove_privs(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i32 noundef %kill) unnamed_addr #2 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  %0 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !50
  %or = or i32 %kill, 512
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 0
  store i32 %or, i32* %ia_valid, align 8
  %call = call i32 @notify_change(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef nonnull %newattrs, %struct.inode** noundef null) #19
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #2 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #17
  ret %struct.user_namespace* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @inode_has_no_xattr(%struct.inode* nocapture noundef %inode) unnamed_addr #11 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %call = call fastcc i1 @is_sxid(i16 noundef %0) #17
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 10
  %2 = load i64, i64* %s_flags, align 16
  %and = and i64 %2, 268435456
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %3 = load i32, i32* %i_flags, align 4
  %or = or i32 %3, 4096
  store i32 %or, i32* %i_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @file_update_time(%struct.file* noundef %file) local_unnamed_addr #2 {
entry:
  %now = alloca %struct.timespec64, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #17
  %0 = bitcast %struct.timespec64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #20
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %1 = load i32, i32* %i_flags, align 4
  %and = and i32 %1, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call [2 x i64] @current_time(%struct.inode* noundef %call) #17
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx28 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx28, align 8
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %call2 = call fastcc i32 @timespec64_equal(%struct.timespec64* noundef %i_mtime, %struct.timespec64* noundef nonnull %now) #17
  %tobool3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool3.not, i32 2, i32 0
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call6 = call fastcc i32 @timespec64_equal(%struct.timespec64* noundef %i_ctime, %struct.timespec64* noundef nonnull %now) #17
  %tobool7.not = icmp eq i32 %call6, 0
  %or = or i32 %spec.select, 4
  %sync_it.1 = select i1 %tobool7.not, i32 %or, i32 %spec.select
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 10
  %3 = load i64, i64* %s_flags, align 16
  %and10 = and i64 %3, 8388608
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call12 = call fastcc i1 @inode_iversion_need_inc(%struct.inode* noundef %call) #17
  %or14 = or i32 %sync_it.1, 8
  br i1 %call12, label %if.end18, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.end
  %tobool16.not = icmp eq i32 %sync_it.1, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end15
  %sync_it.247 = phi i32 [ %sync_it.1, %if.end15 ], [ %or14, %land.lhs.true ]
  %call19 = call i32 @__mnt_want_write_file(%struct.file* noundef %file) #19
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i32 @update_time(%struct.inode* noundef %call, %struct.timespec64* noundef nonnull %now, i32 noundef %sync_it.247) #17
  call void @__mnt_drop_write_file(%struct.file* noundef %file) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end15, %entry, %if.end22
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ 0, %entry ], [ 0, %if.end15 ], [ 0, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @inode_iversion_need_inc(%struct.inode* noundef %inode) unnamed_addr #9 {
entry:
  %call = call fastcc i64 @inode_peek_iversion_raw(%struct.inode* noundef %inode) #17
  %and = and i64 %call, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @file_modified(%struct.file* noundef %file) local_unnamed_addr #2 {
entry:
  %call = call i32 @file_remove_privs(%struct.file* noundef %file) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 2048
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end5, label %cleanup, !prof !12

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @file_update_time(%struct.file* noundef %file) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @inode_needs_sync(%struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #8 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 10
  %1 = load i64, i64* %s_flags, align 16
  %and = and i64 %1, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %2 = load i32, i32* %i_flags, align 4
  %and1 = and i32 %2, 1
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %3 = load i16, i16* %i_mode, align 8
  %4 = and i16 %3, -4096
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %and7 = and i64 %1, 144
  %tobool8.not = icmp eq i64 %and7, 0
  %and11 = and i32 %2, 65
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool12.not, i1 false
  br i1 %or.cond, label %if.end14, label %return

if.end14:                                         ; preds = %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @set_ihash_entries(i8* noundef %str) #12 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @simple_strtoul(i8* noundef nonnull %str, i8** noundef nonnull %str.addr, i32 noundef 0) #19
  store i64 %call, i64* @ihash_entries, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @inode_init_early() local_unnamed_addr #12 section ".init.text" {
entry:
  %0 = load i64, i64* @ihash_entries, align 8
  %call = call i8* @alloc_large_system_hash(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 noundef 8, i64 noundef %0, i32 noundef 14, i32 noundef 5, i32* noundef nonnull @i_hash_shift, i32* noundef nonnull @i_hash_mask, i64 noundef 0, i64 noundef 0) #19
  store i8* %call, i8** bitcast (%struct.hlist_head** @inode_hashtable to i8**), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @alloc_large_system_hash(i8* noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @inode_init() local_unnamed_addr #12 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef 568, i32 noundef 0, i32 noundef 1441792, void (i8*)* noundef nonnull @init_once) #19
  store %struct.kmem_cache* %call, %struct.kmem_cache** @inode_cachep, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @init_once(i8* noundef %foo) #2 {
entry:
  %0 = bitcast i8* %foo to %struct.inode*
  call void @inode_init_once(%struct.inode* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_special_inode(%struct.inode* nocapture noundef %inode, i16 noundef %mode, i32 noundef %rdev) local_unnamed_addr #2 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  store i16 %mode, i16* %i_mode, align 8
  %and = and i16 %mode, -4096
  switch i16 %and, label %do.end [
    i16 8192, label %if.then
    i16 24576, label %if.then6
    i16 4096, label %if.then14
    i16 -16384, label %if.end26
  ]

if.then:                                          ; preds = %entry
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  store %struct.file_operations* @def_chr_fops, %struct.file_operations** %i_fop, align 8
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  store i32 %rdev, i32* %i_rdev, align 4
  br label %if.end26

if.then6:                                         ; preds = %entry
  %i_fop7 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  store %struct.file_operations* @def_blk_fops, %struct.file_operations** %i_fop7, align 8
  %i_rdev8 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  store i32 %rdev, i32* %i_rdev8, align 4
  br label %if.end26

if.then14:                                        ; preds = %entry
  %i_fop15 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 36, i32 0
  store %struct.file_operations* @pipefifo_fops, %struct.file_operations** %i_fop15, align 8
  br label %if.end26

do.end:                                           ; preds = %entry
  %conv = zext i16 %mode to i32
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 31, i64 0
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 8
  %1 = load i64, i64* %i_ino, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv, i8* noundef %arraydecay, i64 noundef %1) #23
  br label %if.end26

if.end26:                                         ; preds = %entry, %if.then6, %do.end, %if.then14, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_init_owner(%struct.user_namespace* noundef %mnt_userns, %struct.inode* nocapture noundef writeonly %inode, %struct.inode* noundef %dir, i16 noundef %mode) local_unnamed_addr #2 {
entry:
  call fastcc void @inode_fsuid_set(%struct.inode* noundef %inode) #17
  %tobool.not = icmp eq %struct.inode* %dir, null
  br i1 %tobool.not, label %if.else24, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, 1024
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.else24, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 3, i32 0
  %3 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %4 = load i32, i32* %2, align 8
  store i32 %4, i32* %3, align 8
  %conv3 = zext i16 %mode to i32
  %and4 = and i32 %conv3, 61440
  %cmp = icmp eq i32 %and4, 16384
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %or = or i16 %mode, 1024
  br label %if.end25

if.else:                                          ; preds = %if.then
  %and10 = and i32 %conv3, 1032
  %cmp11 = icmp eq i32 %and10, 1032
  br i1 %cmp11, label %land.lhs.true13, label %if.end25

land.lhs.true13:                                  ; preds = %if.else
  %call = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef nonnull %dir) #17
  %coerce.val.ii = zext i32 %call to i64
  %call15 = call i32 @in_group_p(i64 %coerce.val.ii) #19
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end25

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef nonnull %dir, i32 noundef 4) #19
  %and21 = and i16 %mode, -1025
  %spec.select = select i1 %call18, i16 %mode, i16 %and21
  br label %if.end25

if.else24:                                        ; preds = %land.lhs.true, %entry
  call fastcc void @inode_fsgid_set(%struct.inode* noundef %inode) #17
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true17, %if.then6, %land.lhs.true13, %if.else, %if.else24
  %mode.addr.0 = phi i16 [ %or, %if.then6 ], [ %mode, %land.lhs.true13 ], [ %mode, %if.else ], [ %mode, %if.else24 ], [ %spec.select, %land.lhs.true17 ]
  %i_mode26 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  store i16 %mode.addr.0, i16* %i_mode26, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_fsuid_set(%struct.inode* nocapture noundef writeonly %inode) unnamed_addr #14 {
entry:
  %call = call fastcc i32 @mapped_fsuid() #17
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  store i32 %call, i32* %tmp.sroa.0.0..sroa_idx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p(i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_gid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #8 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %0 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kgid_into_mnt(i64 %coerce.val.ii) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_fsgid_set(%struct.inode* nocapture noundef writeonly %inode) unnamed_addr #14 {
entry:
  %call = call fastcc i32 @mapped_fsgid() #17
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  store i32 %call, i32* %tmp.sroa.0.0..sroa_idx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @inode_owner_or_capable(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #2 {
entry:
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #17
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %coerce.val.ii5 = zext i32 %call to i64
  %call6 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii5) #17
  br i1 %call6, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call10 = call fastcc i1 @kuid_has_mapping(i64 %coerce.val.ii5) #17
  br i1 %call10, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %call11 = call i1 @ns_capable(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 3) #19
  br i1 %call11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end13
  %retval.0 = phi i1 [ false, %if.end13 ], [ true, %entry ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #8 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #17
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #17
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kuid_has_mapping(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i1 @uid_valid(i64 %coerce.val.ii2) #17
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_dio_wait(%struct.inode* noundef %inode) local_unnamed_addr #2 {
entry:
  %counter.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 33, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__inode_dio_wait(%struct.inode* noundef %inode) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__inode_dio_wait(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %q = alloca %struct.wait_bit_queue_entry, align 8
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = bitcast i64* %i_state to i8*
  %call = call %struct.wait_queue_head* @bit_waitqueue(i8* noundef %0, i32 noundef 9) #19
  %1 = bitcast %struct.wait_bit_queue_entry* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #20
  %2 = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %q, i64 0, i32 0, i32 1
  %3 = bitcast i32* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 24, i1 false), !annotation !50
  %4 = bitcast %struct.wait_bit_queue_entry* %q to i64**
  store i64* %i_state, i64** %4, align 8
  %bit_nr = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %q, i64 0, i32 0, i32 1
  store i32 9, i32* %bit_nr, align 8
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %q, i64 0, i32 1
  %flags2 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 0
  store i32 0, i32* %flags2, align 8
  %private = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %q, i64 0, i32 1, i32 1
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = bitcast i8** %private to %struct.task_struct**
  store %struct.task_struct* %6, %struct.task_struct** %7, align 8
  %func = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %q, i64 0, i32 1, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @wake_bit_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry4 = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %q, i64 0, i32 1, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry4, i64 0, i32 0
  store %struct.list_head* %entry4, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %q, i64 0, i32 1, i32 3, i32 1
  store %struct.list_head* %entry4, %struct.list_head** %prev, align 8
  %counter.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 33, i32 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %call, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #19
  %8 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.cond, label %if.then

if.then:                                          ; preds = %do.body
  call void @schedule() #19
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then
  %9 = load volatile i32, i32* %counter.i, align 4
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  call void @finish_wait(%struct.wait_queue_head* noundef %call, %struct.wait_queue_entry* noundef %wq_entry) #19
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_set_flags(%struct.inode* noundef %inode, i32 noundef %flags, i32 noundef %mask) local_unnamed_addr #2 {
entry:
  %neg = xor i32 %mask, -1
  %and = and i32 %neg, %flags
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 2261; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %0 = bitcast i32* %i_flags to i8*
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end
  %1 = load volatile i32, i32* %i_flags, align 4
  %and18 = and i32 %1, %neg
  %or = or i32 %and18, %flags
  %call11.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %0, i32 noundef %1, i32 noundef %or) #19
  %cmp.not = icmp eq i32 %1, %call11.i
  br i1 %cmp.not, label %do.end27, label %do.body

do.end27:                                         ; preds = %do.body
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @inode_nohighmem(%struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #11 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  call fastcc void @mapping_set_gfp_mask(%struct.address_space* noundef %0, i32 noundef 1051840) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local [2 x i64] @timestamp_truncate([2 x i64] %t.coerce, %struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #2 {
entry:
  %t.coerce.fca.0.extract = extractvalue [2 x i64] %t.coerce, 0
  %t.coerce.fca.1.extract = extractvalue [2 x i64] %t.coerce, 1
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 28
  %1 = load i32, i32* %s_time_gran, align 16
  %s_time_min = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 29
  %2 = load i64, i64* %s_time_min, align 8
  %cmp = icmp sgt i64 %t.coerce.fca.0.extract, %2
  %cond = select i1 %cmp, i64 %t.coerce.fca.0.extract, i64 %2
  %s_time_max = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 30
  %3 = load i64, i64* %s_time_max, align 64
  %cmp2 = icmp slt i64 %cond, %3
  %cond6 = select i1 %cmp2, i64 %cond, i64 %3
  %cmp13 = icmp eq i64 %cond6, %2
  %not.cmp2 = xor i1 %cmp2, true
  %spec.select = select i1 %not.cmp2, i1 true, i1 %cmp13
  br i1 %spec.select, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %t.sroa.6.0 = phi i64 [ 0, %if.then ], [ %t.coerce.fca.1.extract, %entry ]
  %cmp15 = icmp eq i32 %1, 1
  br i1 %cmp15, label %if.end60, label %if.else

if.else:                                          ; preds = %if.end
  %conv18 = zext i32 %1 to i64
  %cmp19 = icmp eq i32 %1, 1000000000
  br i1 %cmp19, label %if.end60, label %if.else23

if.else23:                                        ; preds = %if.else
  %4 = add i32 %1, -2
  %5 = icmp ult i32 %4, 999999998
  br i1 %5, label %if.then29, label %do.end

if.then29:                                        ; preds = %if.else23
  %rem = srem i64 %t.sroa.6.0, %conv18
  %sub = sub i64 %t.sroa.6.0, %rem
  br label %if.end60

do.end:                                           ; preds = %if.else23
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 noundef %1) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 2298; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !53
  br label %if.end60

if.end60:                                         ; preds = %if.else, %do.end, %if.then29, %if.end
  %t.sroa.6.1 = phi i64 [ %t.sroa.6.0, %if.end ], [ %sub, %if.then29 ], [ %t.sroa.6.0, %do.end ], [ 0, %if.else ]
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %cond6, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %t.sroa.6.1, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(%struct.timespec64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Jr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #20, !srcloc !54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #20, !srcloc !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init_flags(%struct.xarray* nocapture noundef writeonly %xa) unnamed_addr #5 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  store i32 33, i32* %xa_flags, align 4
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  store i8* null, i8** %xa_head, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !56
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #20, !srcloc !57
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @list_lru_add(%struct.list_lru* noundef, %struct.list_head* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !58
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #20, !srcloc !59
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
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
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !60
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #20, !srcloc !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #8 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #7 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @arch_local_irq_disable() #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !62
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #2 {
entry:
  %call39 = call fastcc i32 @static_key_count() #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !14

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #20, !srcloc !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #9 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_enable() #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #2 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #20, !srcloc !65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @list_lru_del(%struct.list_lru* noundef, %struct.list_head* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #9 {
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
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @evict(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %2 = load i64, i64* %i_state, align 8
  %and = and i64 %2, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !14

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 571; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !66
  unreachable

do.body10:                                        ; preds = %entry
  %i_lru = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 26
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %i_lru) #17
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %do.body22, label %do.end30, !prof !14

do.body22:                                        ; preds = %do.body10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 572; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !67
  unreachable

do.end30:                                         ; preds = %do.body10
  %i_io_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 25
  %call31 = call fastcc i32 @list_empty(%struct.list_head* noundef %i_io_list) #17
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.end30
  call void @inode_io_list_del(%struct.inode* noundef %inode) #19
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %do.end30
  call fastcc void @inode_sb_list_del(%struct.inode* noundef %inode) #17
  call void @inode_wait_for_writeback(%struct.inode* noundef %inode) #19
  %evict_inode = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 6
  %3 = load void (%struct.inode*)*, void (%struct.inode*)** %evict_inode, align 8
  %tobool35.not = icmp eq void (%struct.inode*)* %3, null
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void %3(%struct.inode* noundef %inode) #19
  br label %if.end38

if.else:                                          ; preds = %if.end34
  %i_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38
  call void @truncate_inode_pages_final(%struct.address_space* noundef %i_data) #19
  call void @clear_inode(%struct.inode* noundef %inode) #17
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %4 = load i16, i16* %i_mode, align 8
  %5 = and i16 %4, -4096
  %cmp = icmp eq i16 %5, 8192
  br i1 %cmp, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.end38
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40
  %i_cdev = bitcast %union.anon.80* %6 to %struct.cdev**
  %7 = load %struct.cdev*, %struct.cdev** %i_cdev, align 8
  %tobool42.not = icmp eq %struct.cdev* %7, null
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  call void @cd_forget(%struct.inode* noundef %inode) #19
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true, %if.end38
  call fastcc void @remove_inode_hash(%struct.inode* noundef %inode) #17
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %8 = bitcast i64* %i_state to i8*
  call void @wake_up_bit(i8* noundef %8, i32 noundef 3) #19
  %9 = load i64, i64* %i_state, align 8
  %cmp48.not = icmp eq i64 %9, 96
  br i1 %cmp48.not, label %do.end66, label %do.body58, !prof !12

do.body58:                                        ; preds = %if.end44
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/inode.c\22; .popsection; .long 14472b - 14470b; .short 600; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !68
  unreachable

do.end66:                                         ; preds = %if.end44
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @destroy_inode(%struct.inode* noundef %inode) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_io_list_del(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_sb_list_del(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %i_sb_list = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 27
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %i_sb_list) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @list_del_init(%struct.list_head* noundef %i_sb_list) #17
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %rlock.i7 = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i7) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_wait_for_writeback(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(%struct.address_space* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cd_forget(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_inode_hash(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @inode_unhashed(%struct.inode* noundef %inode) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  %call1 = call fastcc i1 @hlist_fake(%struct.hlist_node* noundef %i_hash) #17
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__remove_inode_hash(%struct.inode* noundef %inode) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @hlist_fake(%struct.hlist_node* noundef readonly %h) unnamed_addr #8 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  %cmp = icmp eq %struct.hlist_node** %0, %next
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @list_lru_walk_one(%struct.list_lru* noundef, i32 noundef, %struct.mem_cgroup* noundef, i32 (%struct.list_head*, %struct.list_lru_one*, %struct.spinlock*, i8*)* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(%struct.list_lru_one* noundef, %struct.list_head* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mapping_empty(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #8 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %call = call fastcc i1 @xa_empty(%struct.xarray* noundef %i_pages) #17
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_inode_buffers(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @invalidate_mapping_pages(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @current_is_kswapd() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 131072
  ret i32 %and
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__count_vm_events(i32 noundef %item, i64 noundef %delta) unnamed_addr #14 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  %add7 = add i64 %2, %delta
  store i64 %add7, i64* %1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate_move(%struct.list_lru_one* noundef, %struct.list_head* noundef, %struct.list_head* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !69
  %call = call fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !70
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %counter.i.i = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !12

if.end.i:                                         ; preds = %entry
  %1 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_empty(%struct.xarray* nocapture noundef readonly %xa) unnamed_addr #8 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  %0 = load i8*, i8** %xa_head, align 8
  %cmp = icmp eq i8* %0, null
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @i_callback(%struct.callback_head* noundef %head) #2 {
entry:
  %add.ptr7 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -17
  %0 = bitcast %struct.callback_head* %add.ptr7 to %struct.inode*
  %1 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 3
  %free_inode = bitcast %struct.callback_head* %1 to void (%struct.inode*)**
  %2 = load void (%struct.inode*)*, void (%struct.inode*)** %free_inode, align 8
  %tobool.not = icmp eq void (%struct.inode*)* %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void %2(%struct.inode* noundef %0) #19
  br label %if.end

if.else:                                          ; preds = %entry
  call void @free_inode_nonrcu(%struct.inode* noundef %0) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__wait_on_freeing_inode(%struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %wait = alloca %struct.wait_bit_queue_entry, align 8
  %0 = bitcast %struct.wait_bit_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wait, i64 0, i32 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 24, i1 false), !annotation !50
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %3 = bitcast i64* %i_state to i8*
  %4 = bitcast %struct.wait_bit_queue_entry* %wait to i64**
  store i64* %i_state, i64** %4, align 8
  %bit_nr = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wait, i64 0, i32 0, i32 1
  store i32 3, i32* %bit_nr, align 8
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wait, i64 0, i32 1
  %flags1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 0
  store i32 0, i32* %flags1, align 8
  %private = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wait, i64 0, i32 1, i32 1
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = bitcast i8** %private to %struct.task_struct**
  store %struct.task_struct* %6, %struct.task_struct** %7, align 8
  %func = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wait, i64 0, i32 1, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @wake_bit_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry2 = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wait, i64 0, i32 1, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry2, i64 0, i32 0
  store %struct.list_head* %entry2, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %wait, i64 0, i32 1, i32 3, i32 1
  store %struct.list_head* %entry2, %struct.list_head** %prev, align 8
  %call8 = call %struct.wait_queue_head* @bit_waitqueue(i8* noundef %3, i32 noundef 3) #19
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %call8, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #19
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  call void @schedule() #19
  call void @finish_wait(%struct.wait_queue_head* noundef %call8, %struct.wait_queue_entry* noundef %wq_entry) #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @inode_hash_lock, i64 0, i32 0, i32 0)) #19
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_bit_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.wait_queue_head* @bit_waitqueue(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_on_bit(i64* noundef %word) unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* %word, align 8
  %1 = and i64 %0, 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %word to i8*
  %call3 = call i32 @out_of_line_wait_on_bit(i8* noundef %2, i32 noundef 3, i32 (%struct.wait_bit_key*, i32)* noundef nonnull @bit_wait, i32 noundef 2) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(i8* noundef, i32 noundef, i32 (%struct.wait_bit_key*, i32)* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(%struct.wait_bit_key* noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !72
  call void @rcu_read_unlock_strict() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @generic_drop_inode(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #8 {
entry:
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  %0 = load i32, i32* %i_nlink, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call = call fastcc i32 @inode_unhashed(%struct.inode* noundef %inode) #17
  %tobool1 = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @inode_peek_iversion_raw(%struct.inode* noundef %inode) unnamed_addr #9 {
entry:
  %counter.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 30, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #17
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #17
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @timespec64_compare(%struct.timespec64* nocapture noundef readonly %lhs, %struct.timespec64* nocapture noundef readonly %rhs) unnamed_addr #8 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %lhs, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rhs, i64 0, i32 0
  %1 = load i64, i64* %tv_sec1, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i64 %0, %1
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %lhs, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %tv_nsec7 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rhs, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec7, align 8
  %sub = sub i64 %2, %3
  %conv = trunc i64 %sub to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %conv, %if.end6 ], [ -1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__sb_start_write_trylock(%struct.super_block* noundef %sb) unnamed_addr #2 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  %call = call fastcc i1 @percpu_down_read_trylock(%struct.percpu_rw_semaphore* noundef %add.ptr1) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @percpu_down_read_trylock(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !73
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #17
  br i1 %call, label %do.body2, label %if.else, !prof !12

do.body2:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !74
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call8, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !75
  br label %if.end

if.else:                                          ; preds = %entry
  %call11 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef true) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body2
  %ret.0.off0 = phi i1 [ true, %do.body2 ], [ %call11, %if.else ]
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !76
  ret i1 %ret.0.off0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #9 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #20, !srcloc !77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #2 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !78
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #17
  br i1 %call, label %do.body3, label %if.else, !prof !12

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !79
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !80
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !81
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !82
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #17
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !83
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_need_killpriv(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @d_real(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode) unnamed_addr #2 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 8
  %1 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_real = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %1, i64 0, i32 12
  %2 = load %struct.dentry* (%struct.dentry*, %struct.inode*)*, %struct.dentry* (%struct.dentry*, %struct.inode*)** %d_real, align 32
  %call = call %struct.dentry* %2(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode) #19
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.dentry* [ %call, %if.then ], [ %dentry, %entry ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef, %struct.inode** noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_sxid(i16 noundef %mode) unnamed_addr #4 {
entry:
  %conv = zext i16 %mode to i32
  %and = and i32 %conv, 2048
  %tobool.not = icmp ne i32 %and, 0
  %0 = and i32 %conv, 1032
  %1 = icmp eq i32 %0, 1032
  %2 = or i1 %tobool.not, %1
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @mapped_fsuid() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call1 = call fastcc i32 @kuid_from_mnt(i64 %coerce.val.ii) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_from_mnt(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_into_mnt(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @mapped_fsgid() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !29
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 8, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 8
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call1 = call fastcc i32 @kgid_from_mnt(i64 %coerce.val.ii) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_from_mnt(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #20, !srcloc !85
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #20, !srcloc !86
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

attributes #0 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #14 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind }
attributes #21 = { nounwind readonly }
attributes #22 = { nounwind readnone }
attributes #23 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2155633292}
!9 = !{i64 2155634064}
!10 = !{i64 2149194529, i64 2149194570, i64 2149194626, i64 2149194678}
!11 = !{i64 2149168583, i64 2149168630, i64 2149168636, i64 2149168673, i64 2149168691, i64 2149169618, i64 2149169666, i64 2149169714, i64 2149169777, i64 2149169826, i64 2149168769, i64 2149168794, i64 2149168820, i64 2149168826, i64 2149168863, i64 2149168869, i64 2149168919, i64 2149168965, i64 2149168998}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155637518}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2155639120}
!16 = !{i64 2155643980}
!17 = !{i64 2155644752}
!18 = !{i64 2155647460}
!19 = !{i64 2155649320}
!20 = !{i64 2155651974}
!21 = !{i64 2155656504}
!22 = !{i64 2155657276}
!23 = !{i64 2149923687}
!24 = !{i64 2155664463}
!25 = !{i64 2155665894}
!26 = !{i64 2155671318}
!27 = !{i64 2155672673}
!28 = !{i64 2155674029}
!29 = !{i64 1406703}
!30 = !{i64 2155662033}
!31 = !{i64 2155662805}
!32 = !{i64 2155703618}
!33 = !{i64 2155704390}
!34 = !{i64 2155705731}
!35 = !{i64 2155710600}
!36 = !{i64 2155711372}
!37 = !{i64 2155721626}
!38 = !{i64 2155722571}
!39 = !{i64 2149527537}
!40 = !{i64 2155724034}
!41 = !{i64 2155724396}
!42 = !{i64 2155725809}
!43 = !{i64 2155726161}
!44 = !{i64 2155814807}
!45 = !{i64 2155645890}
!46 = !{i64 2155807992}
!47 = !{i64 2155811519}
!48 = !{i64 2155423524}
!49 = !{i64 2151758081}
!50 = !{!"auto-init"}
!51 = !{i64 2155841813}
!52 = !{i64 2155822880}
!53 = !{i64 2155839735}
!54 = !{i64 2148046780, i64 2148047294, i64 2148047324, i64 2148047350, i64 2148047382, i64 2148047411}
!55 = !{i64 2148033047, i64 2148033561, i64 2148033591, i64 2148033617, i64 2148033649, i64 2148033678}
!56 = !{i64 2147992361, i64 2147992877, i64 2147992907, i64 2147992934, i64 2147992968, i64 2147992998}
!57 = !{i64 2147993213, i64 2147993861, i64 2147993891, i64 2147993923, i64 2147993957, i64 2147993993, i64 2147994018}
!58 = !{i64 2149595438}
!59 = !{i64 2148088223, i64 2148088256, i64 2148088309, i64 2148088368, i64 2148088402, i64 2148088457, i64 2148088486, i64 2148088506}
!60 = !{i64 2149602719}
!61 = !{i64 2149394949}
!62 = !{i64 2149584730}
!63 = !{i64 2149140561, i64 2149140608, i64 2149140614, i64 2149140651, i64 2149140669, i64 2149142010, i64 2149142058, i64 2149142106, i64 2149142169, i64 2149142218, i64 2149140747, i64 2149140772, i64 2149140798, i64 2149140804, i64 2149141676, i64 2149141716, i64 2149141734, i64 2149141766, i64 2149141794, i64 2149141848, i64 2149141868, i64 2149141965, i64 2149140827, i64 2149140841, i64 2149140847, i64 2149140897, i64 2149140943, i64 2149140976}
!64 = !{i64 2149609583}
!65 = !{i64 2149131105, i64 2149131152, i64 2149131158, i64 2149131195, i64 2149131213, i64 2149132553, i64 2149132601, i64 2149132649, i64 2149132712, i64 2149132761, i64 2149131291, i64 2149131316, i64 2149131342, i64 2149131348, i64 2149132219, i64 2149132259, i64 2149132277, i64 2149132309, i64 2149132337, i64 2149132391, i64 2149132411, i64 2149132508, i64 2149131371, i64 2149131385, i64 2149131391, i64 2149131441, i64 2149131487, i64 2149131520}
!66 = !{i64 2155675491}
!67 = !{i64 2155676839}
!68 = !{i64 2155678296}
!69 = !{i64 2149575896}
!70 = !{i64 2149579953}
!71 = !{i64 2149829136}
!72 = !{i64 2149829353}
!73 = !{i64 2151697957}
!74 = !{i64 2151701380}
!75 = !{i64 2151702222}
!76 = !{i64 2151703408}
!77 = !{i64 2149193473, i64 2149193515, i64 2149193574, i64 2149193627}
!78 = !{i64 2151710649}
!79 = !{i64 2151714510}
!80 = !{i64 2151715352}
!81 = !{i64 2151716606}
!82 = !{i64 2151724490}
!83 = !{i64 2151725332}
!84 = !{i64 2151726584}
!85 = !{i64 2148105431, i64 2148105464, i64 2148105516, i64 2148105575, i64 2148105609, i64 2148105665, i64 2148105694, i64 2148105721}
!86 = !{i64 2148107081, i64 2148107114, i64 2148107165, i64 2148107221, i64 2148107254, i64 2148107309, i64 2148107338, i64 2148107365}
