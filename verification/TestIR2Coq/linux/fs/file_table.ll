; ModuleID = 'fs/file_table.c'
source_filename = "fs/file_table.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.files_stat_struct = type { i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.75, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [48 x i8] }
%struct.anon.6 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.7, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, {}*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.57 }
%union.anon.57 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.10, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.56 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.58, %union.anon.59 }
%union.anon.58 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.59 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.24, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.23, [0 x i64] }
%struct.anon.23 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.52, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.27 }
%union.anon.27 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.36, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.62, %union.anon.63, %union.anon.64, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.67, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.62 = type { %struct.hlist_node }
%union.anon.63 = type { %struct.rb_node }
%union.anon.64 = type { %struct.anon.66 }
%struct.anon.66 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.67 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.37, %union.anon.38, i32 }
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
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
%union.anon.36 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.51, i32, [12 x i8] }
%union.anon.51 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.53, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.53 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.73 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.71, %struct.qspinlock }
%union.anon.71 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.73 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.75 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { i64 }
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
%union.anon.78 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.79 = type { %struct.hlist_node }
%struct.llist_head = type { %struct.llist_node* }
%struct.anon.4 = type { i32, i32 }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }

@files_stat = dso_local local_unnamed_addr global %struct.files_stat_struct { i64 0, i64 0, i64 8192 }, align 8
@alloc_empty_file.old_max = internal unnamed_addr global i64 0, align 8
@nr_files = internal global %struct.percpu_counter zeroinitializer, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [35 x i8] c"\016VFS: file-max limit %lu reached\0A\00", align 1
@alloc_file_pseudo.anon_ops = internal constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* null, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* @simple_dname, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@delayed_fput_list = internal global %struct.llist_head zeroinitializer, align 8
@delayed_fput_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @delayed_fput_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @delayed_fput_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @delayed_fput }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152 }, %struct.workqueue_struct* null, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"filp\00", align 1
@filp_cachep = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@files_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@__alloc_file.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&f->f_pos_lock\00", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@vm_zone_stat = external dso_local global [10 x %struct.atomic64_t], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @get_max_files() local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.files_stat_struct, %struct.files_stat_struct* @files_stat, i64 0, i32 2), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_nr_files(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @get_nr_files() #11
  store i64 %call, i64* getelementptr inbounds (%struct.files_stat_struct, %struct.files_stat_struct* @files_stat, i64 0, i32 0), align 8
  %call1 = call i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_nr_files() unnamed_addr #2 {
entry:
  %call = call fastcc i64 @percpu_counter_read_positive() #11
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @alloc_empty_file(i32 noundef %flags, %struct.cred* noundef %cred) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @get_nr_files() #11
  %0 = load i64, i64* getelementptr inbounds (%struct.files_stat_struct, %struct.files_stat_struct* @files_stat, i64 0, i32 2), align 8
  %cmp.not = icmp ult i64 %call, %0
  br i1 %cmp.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i1 @capable(i32 noundef 21) #12
  br i1 %call1, label %if.end5, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call fastcc i64 @percpu_counter_sum_positive() #11
  %1 = load i64, i64* getelementptr inbounds (%struct.files_stat_struct, %struct.files_stat_struct* @files_stat, i64 0, i32 2), align 8
  %cmp3.not = icmp ult i64 %call2, %1
  br i1 %cmp3.not, label %if.end5, label %over

if.end5:                                          ; preds = %if.then, %land.lhs.true, %entry
  %call6 = call fastcc %struct.file* @__alloc_file(i32 noundef %flags, %struct.cred* noundef %cred) #11
  %2 = bitcast %struct.file* %call6 to i8*
  %call7 = call fastcc i1 @IS_ERR(i8* noundef %2) #11
  br i1 %call7, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end5
  call fastcc void @percpu_counter_inc() #11
  br label %cleanup

over:                                             ; preds = %if.then
  %call10 = call fastcc i64 @get_nr_files() #11
  %3 = load i64, i64* @alloc_empty_file.old_max, align 8
  %cmp11 = icmp sgt i64 %call10, %3
  br i1 %cmp11, label %do.end, label %if.end16

do.end:                                           ; preds = %over
  %call13 = call i64 @get_max_files() #11
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 noundef %call13) #13
  %call15 = call fastcc i64 @get_nr_files() #11
  store i64 %call15, i64* @alloc_empty_file.old_max, align 8
  br label %if.end16

if.end16:                                         ; preds = %do.end, %over
  %call17 = call fastcc i8* @ERR_PTR(i64 noundef -23) #11
  %4 = bitcast i8* %call17 to %struct.file*
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then8, %if.end16
  %retval.0 = phi %struct.file* [ %4, %if.end16 ], [ %call6, %if.then8 ], [ %call6, %if.end5 ]
  ret %struct.file* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @percpu_counter_sum_positive() unnamed_addr #1 {
entry:
  %call = call i64 @__percpu_counter_sum(%struct.percpu_counter* noundef nonnull @nr_files) #12
  %0 = icmp sgt i64 %call, 0
  %cond = select i1 %0, i64 %call, i64 0
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @__alloc_file(i32 noundef %flags, %struct.cred* noundef %cred) unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @filp_cachep, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #11
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -12) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call fastcc %struct.cred* @get_cred(%struct.cred* noundef %cred) #11
  %f_cred = getelementptr inbounds i8, i8* %call, i64 144
  %1 = bitcast i8* %f_cred to %struct.cred**
  store %struct.cred* %call5, %struct.cred** %1, align 8
  %f_count = getelementptr inbounds i8, i8* %call, i64 56
  %counter.i.i = bitcast i8* %f_count to i64*
  store volatile i64 1, i64* %counter.i.i, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 112
  %2 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i32*
  store i32 0, i32* %2, align 8
  %.compoundliteral.sroa.2.0..sroa_idx34 = getelementptr inbounds i8, i8* %call, i64 116
  %3 = bitcast i8* %.compoundliteral.sroa.2.0..sroa_idx34 to i32*
  store i32 0, i32* %3, align 4
  %f_lock = getelementptr inbounds i8, i8* %call, i64 48
  %4 = bitcast i8* %f_lock to i32*
  store i32 0, i32* %4, align 8
  %f_pos_lock = getelementptr inbounds i8, i8* %call, i64 72
  %5 = bitcast i8* %f_pos_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @__alloc_file.__key) #12
  %f_flags = getelementptr inbounds i8, i8* %call, i64 64
  %6 = bitcast i8* %f_flags to i32*
  store i32 %flags, i32* %6, align 8
  %add = add i32 %flags, 1
  %and = and i32 %add, 3
  %and32 = and i32 %flags, 67108864
  %or = or i32 %and, %and32
  %f_mode = getelementptr inbounds i8, i8* %call, i64 68
  %7 = bitcast i8* %f_mode to i32*
  store i32 %or, i32* %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i8* [ %call4, %if.then ], [ %call, %if.end ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.file*
  ret %struct.file* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_inc() unnamed_addr #1 {
entry:
  call fastcc void @percpu_counter_add(i64 noundef 1) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @alloc_empty_file_noaccount(i32 noundef %flags, %struct.cred* noundef %cred) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.file* @__alloc_file(i32 noundef %flags, %struct.cred* noundef %cred) #11
  %0 = bitcast %struct.file* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %or = or i32 %1, 536870912
  store i32 %or, i32* %f_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @alloc_file_pseudo(%struct.inode* noundef %inode, %struct.vfsmount* noundef %mnt, i8* noundef %name, i32 noundef %flags, %struct.file_operations* noundef %fops) local_unnamed_addr #1 {
entry:
  %this = alloca %struct.qstr, align 8
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.qstr* %this to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %1 = bitcast %struct.qstr* %this to %struct.anon.4*
  %len = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1, i64 0, i32 1
  %2 = getelementptr inbounds %struct.qstr, %struct.qstr* %this, i64 0, i32 0, i32 0
  store i64 0, i64* %2, align 8
  %call = call i64 @strlen(i8* noundef %name) #12
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %name1 = getelementptr inbounds %struct.qstr, %struct.qstr* %this, i64 0, i32 1
  store i8* %name, i8** %name1, align 8
  %3 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #14
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %4 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call2 = call %struct.dentry* @d_alloc_pseudo(%struct.super_block* noundef %4, %struct.qstr* noundef nonnull %this) #12
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  store %struct.dentry* %call2, %struct.dentry** %dentry, align 8
  %tobool.not = icmp eq %struct.dentry* %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -12) #11
  %5 = bitcast i8* %call4 to %struct.file*
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_d_op = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 37
  %7 = load %struct.dentry_operations*, %struct.dentry_operations** %s_d_op, align 8
  %tobool6.not = icmp eq %struct.dentry_operations* %7, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @d_set_d_op(%struct.dentry* noundef nonnull %call2, %struct.dentry_operations* noundef nonnull @alloc_file_pseudo.anon_ops) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %call10 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %mnt) #12
  %mnt11 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  store %struct.vfsmount* %call10, %struct.vfsmount** %mnt11, align 8
  call void @d_instantiate(%struct.dentry* noundef nonnull %call2, %struct.inode* noundef %inode) #12
  %call13 = call fastcc %struct.file* @alloc_file(%struct.path* noundef nonnull %path, i32 noundef %flags, %struct.file_operations* noundef %fops) #11
  %8 = bitcast %struct.file* %call13 to i8*
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %8) #11
  br i1 %call14, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end9
  call void @ihold(%struct.inode* noundef %inode) #12
  call void @path_put(%struct.path* noundef nonnull %path) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then15, %if.then
  %retval.0 = phi %struct.file* [ %5, %if.then ], [ %call13, %if.then15 ], [ %call13, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret %struct.file* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @simple_dname(%struct.dentry* noundef, i8* noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc_pseudo(%struct.super_block* noundef, %struct.qstr* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(%struct.dentry* noundef, %struct.dentry_operations* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @mntget(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(%struct.dentry* noundef, %struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @alloc_file(%struct.path* nocapture noundef readonly %path, i32 noundef %flags, %struct.file_operations* noundef %fop) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %call1 = call %struct.file* @alloc_empty_file(i32 noundef %flags, %struct.cred* noundef %2) #11
  %3 = bitcast %struct.file* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %3) #11
  br i1 %call2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 1
  %4 = bitcast %struct.path* %f_path to i8*
  %5 = bitcast %struct.path* %path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %5, i64 16, i1 false)
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 5
  %7 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 2
  store %struct.inode* %7, %struct.inode** %f_inode, align 8
  %8 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode4 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i64 0, i32 5
  %9 = load %struct.inode*, %struct.inode** %d_inode4, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %9, i64 0, i32 7
  %10 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 17
  store %struct.address_space* %10, %struct.address_space** %f_mapping, align 8
  %call6 = call fastcc i32 @filemap_sample_wb_err(%struct.address_space* noundef %10) #11
  %f_wb_err = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 18
  store i32 %call6, i32* %f_wb_err, align 8
  %call7 = call fastcc i32 @file_sample_sb_err(%struct.file* noundef %call1) #11
  %f_sb_err = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 19
  store i32 %call7, i32* %f_sb_err, align 4
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 8
  %11 = load i32, i32* %f_mode, align 4
  %and = and i32 %11, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %read = getelementptr inbounds %struct.file_operations, %struct.file_operations* %fop, i64 0, i32 2
  %12 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %read, align 8
  %tobool8.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %12, null
  br i1 %tobool8.not, label %lor.rhs, label %if.then12

lor.rhs:                                          ; preds = %land.lhs.true
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %fop, i64 0, i32 4
  %13 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %tobool9.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %13, null
  br i1 %tobool9.not, label %if.end14, label %if.then12, !prof !7

if.then12:                                        ; preds = %land.lhs.true, %lor.rhs
  %or = or i32 %11, 131072
  store i32 %or, i32* %f_mode, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.rhs, %if.end
  %14 = phi i32 [ %or, %if.then12 ], [ %11, %lor.rhs ], [ %11, %if.end ]
  %and16 = and i32 %14, 2
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end33, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end14
  %write = getelementptr inbounds %struct.file_operations, %struct.file_operations* %fop, i64 0, i32 3
  %15 = load i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)** %write, align 8
  %tobool19.not = icmp eq i64 (%struct.file*, i8*, i64, i64*)* %15, null
  br i1 %tobool19.not, label %lor.rhs20, label %if.then30

lor.rhs20:                                        ; preds = %land.lhs.true18
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %fop, i64 0, i32 5
  %16 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %tobool21.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %16, null
  br i1 %tobool21.not, label %if.end33, label %if.then30, !prof !7

if.then30:                                        ; preds = %land.lhs.true18, %lor.rhs20
  %or32 = or i32 %14, 262144
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %lor.rhs20, %if.end14
  %17 = phi i32 [ %or32, %if.then30 ], [ %14, %lor.rhs20 ], [ %14, %if.end14 ]
  %or35 = or i32 %17, 524288
  store i32 %or35, i32* %f_mode, align 4
  %f_op = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 3
  store %struct.file_operations* %fop, %struct.file_operations** %f_op, align 8
  %and37 = and i32 %17, 3
  %cmp = icmp eq i32 %and37, 1
  br i1 %cmp, label %if.then39, label %cleanup

if.then39:                                        ; preds = %if.end33
  %18 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode41 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i64 0, i32 5
  %19 = load %struct.inode*, %struct.inode** %d_inode41, align 8
  call fastcc void @i_readcount_inc(%struct.inode* noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then39, %entry
  ret %struct.file* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @alloc_file_clone(%struct.file* nocapture noundef readonly %base, i32 noundef %flags, %struct.file_operations* noundef %fops) local_unnamed_addr #1 {
entry:
  %f_path = getelementptr inbounds %struct.file, %struct.file* %base, i64 0, i32 1
  %call = call fastcc %struct.file* @alloc_file(%struct.path* noundef %f_path, i32 noundef %flags, %struct.file_operations* noundef %fops) #11
  %0 = bitcast %struct.file* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %f_path2 = getelementptr inbounds %struct.file, %struct.file* %call, i64 0, i32 1
  call void @path_get(%struct.path* noundef %f_path2) #12
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %base, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %f_mapping3 = getelementptr inbounds %struct.file, %struct.file* %call, i64 0, i32 17
  store %struct.address_space* %1, %struct.address_space** %f_mapping3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.file* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @flush_delayed_fput() local_unnamed_addr #1 {
entry:
  call void @delayed_fput(%struct.work_struct* noundef null) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @delayed_fput(%struct.work_struct* nocapture noundef readnone %unused) #1 {
entry:
  %call = call fastcc %struct.llist_node* @llist_del_all() #11
  %cmp.not14 = icmp eq %struct.llist_node* %call, null
  br i1 %cmp.not14, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %0 = bitcast %struct.llist_node* %call to %struct.file*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %f.015 = phi %struct.file* [ %2, %land.rhs ], [ %0, %land.rhs.preheader ]
  %1 = bitcast %struct.file* %f.015 to %struct.file**
  %2 = load %struct.file*, %struct.file** %1, align 8
  call fastcc void @__fput(%struct.file* noundef nonnull %f.015) #11
  %cmp.not = icmp eq %struct.file* %2, null
  br i1 %cmp.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fput_many(%struct.file* noundef %file, i32 noundef %refs) local_unnamed_addr #1 {
entry:
  %conv = zext i32 %refs to i64
  %f_count = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 6
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(i64 noundef %conv, %struct.atomic64_t* noundef %f_count) #12
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc i32 @preempt_count() #11
  %2 = and i32 %call2, 15728640
  %call4 = call fastcc i32 @preempt_count() #11
  %3 = and i32 %call4, 983040
  %or37 = or i32 %3, %2
  %call7 = call fastcc i32 @preempt_count() #11
  %4 = and i32 %call7, 65280
  %or1039 = or i32 %or37, %4
  %tobool.not = icmp eq i32 %or1039, 0
  br i1 %tobool.not, label %land.rhs, label %if.end23, !prof !9

land.rhs:                                         ; preds = %if.then
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %5 = load i32, i32* %flags, align 4
  %and11 = and i32 %5, 2097152
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then17, label %if.end23, !prof !9

if.then17:                                        ; preds = %land.rhs
  %fu_rcuhead = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 0, i32 0
  call fastcc void @init_task_work(%struct.callback_head* noundef %fu_rcuhead) #11
  %call20 = call i32 @task_work_add(%struct.task_struct* noundef %1, %struct.callback_head* noundef %fu_rcuhead, i32 noundef 1) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end29, label %if.end23

if.end23:                                         ; preds = %if.then, %if.then17, %land.rhs
  %fu_llist = bitcast %struct.file* %file to %struct.llist_node*
  %call25 = call fastcc i1 @llist_add(%struct.llist_node* noundef %fu_llist) #11
  br i1 %call25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end23
  call fastcc void @schedule_delayed_work() #11
  br label %if.end29

if.end29:                                         ; preds = %if.then17, %if.then26, %if.end23, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.27* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_task_work(%struct.callback_head* nocapture noundef writeonly %twork) unnamed_addr #7 {
entry:
  %func1 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %twork, i64 0, i32 1
  store void (%struct.callback_head*)* @____fput, void (%struct.callback_head*)** %func1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @____fput(%struct.callback_head* noundef %work) #1 {
entry:
  %0 = bitcast %struct.callback_head* %work to %struct.file*
  call fastcc void @__fput(%struct.file* noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(%struct.task_struct* noundef, %struct.callback_head* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @llist_add(%struct.llist_node* noundef %new) unnamed_addr #1 {
entry:
  %call = call i1 @llist_add_batch(%struct.llist_node* noundef %new, %struct.llist_node* noundef %new, %struct.llist_head* noundef nonnull @delayed_fput_list) #12
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work() unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fput(%struct.file* noundef %file) local_unnamed_addr #1 {
entry:
  call void @fput_many(%struct.file* noundef %file, i32 noundef 1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__fput_sync(%struct.file* noundef %file) local_unnamed_addr #1 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 6
  %call.i.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(i64 noundef 1, %struct.atomic64_t* noundef %f_count) #12
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6, label %do.end11, !prof !7

do.body6:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/file_table.c\22; .popsection; .long 14472b - 14470b; .short 372; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  unreachable

do.end11:                                         ; preds = %if.then
  call fastcc void @__fput(%struct.file* noundef %file) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__fput(%struct.file* noundef %file) unnamed_addr #1 {
entry:
  %dentry1 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %mnt3 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt3, align 8
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 2
  %2 = load %struct.inode*, %struct.inode** %f_inode, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %3 = load i32, i32* %f_mode, align 4
  %and = and i32 %3, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %out, label %do.end10, !prof !7

do.end10:                                         ; preds = %entry
  call fastcc void @fsnotify_close(%struct.file* noundef %file) #11
  call fastcc void @eventpoll_release(%struct.file* noundef %file) #11
  call void @locks_remove_file(%struct.file* noundef %file) #12
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %4 = load i32, i32* %f_flags, align 8
  %and11 = and i32 %4, 8192
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end26, label %if.then20, !prof !9

if.then20:                                        ; preds = %do.end10
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %5 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %fasync = getelementptr inbounds %struct.file_operations, %struct.file_operations* %5, i64 0, i32 18
  %6 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %fasync, align 8
  %tobool21.not = icmp eq i32 (i32, %struct.file*, i32)* %6, null
  br i1 %tobool21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.then20
  %call = call i32 %6(i32 noundef -1, %struct.file* noundef %file, i32 noundef 0) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.then22, %do.end10
  %f_op27 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %7 = load %struct.file_operations*, %struct.file_operations** %f_op27, align 8
  %release = getelementptr inbounds %struct.file_operations, %struct.file_operations* %7, i64 0, i32 16
  %8 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %release, align 8
  %tobool28.not = icmp eq i32 (%struct.inode*, %struct.file*)* %8, null
  br i1 %tobool28.not, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.end26
  %call32 = call i32 %8(%struct.inode* noundef %2, %struct.file* noundef %file) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 0
  %9 = load i16, i16* %i_mode, align 8
  %10 = and i16 %9, -4096
  %cmp = icmp eq i16 %10, 8192
  br i1 %cmp, label %land.lhs.true, label %do.end60

land.lhs.true:                                    ; preds = %if.end33
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 40
  %i_cdev = bitcast %union.anon.75* %11 to %struct.cdev**
  %12 = load %struct.cdev*, %struct.cdev** %i_cdev, align 8
  %cmp37.not = icmp ne %struct.cdev* %12, null
  %and39 = and i32 %3, 16384
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond = select i1 %cmp37.not, i1 %tobool40.not, i1 false
  br i1 %or.cond, label %if.then50, label %do.end60, !prof !11

if.then50:                                        ; preds = %land.lhs.true
  call void @cdev_put(%struct.cdev* noundef nonnull %12) #12
  br label %do.end60

do.end60:                                         ; preds = %if.then50, %land.lhs.true, %if.end33
  %pid = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 11, i32 1
  %13 = load %struct.pid*, %struct.pid** %pid, align 8
  call void @put_pid(%struct.pid* noundef %13) #12
  %and61 = and i32 %3, 3
  %cmp62 = icmp eq i32 %and61, 1
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %do.end60
  call fastcc void @i_readcount_dec(%struct.inode* noundef %2) #11
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %do.end60
  %and66 = and i32 %3, 65536
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end65
  call fastcc void @put_write_access(%struct.inode* noundef %2) #11
  call void @__mnt_drop_write(%struct.vfsmount* noundef %1) #12
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65
  call void @dput(%struct.dentry* noundef %0) #12
  %and70 = and i32 %3, 268435456
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end80, label %if.then79, !prof !9

if.then79:                                        ; preds = %if.end69
  call void @dissolve_on_fput(%struct.vfsmount* noundef %1) #12
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end69
  call void @mntput(%struct.vfsmount* noundef %1) #12
  br label %out

out:                                              ; preds = %entry, %if.end80
  call fastcc void @file_free(%struct.file* noundef %file) #11
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @files_init() local_unnamed_addr #8 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 224, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #12
  store %struct.kmem_cache* %call, %struct.kmem_cache** @filp_cachep, align 8
  %call1 = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef nonnull @nr_files, i64 noundef 0, i32 noundef 3264, %struct.lock_class_key* noundef nonnull @files_init.__key) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(%struct.percpu_counter* noundef, i64 noundef, i32 noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree noinline norecurse nounwind null_pointer_is_valid optsize willreturn
define dso_local void @files_maxfiles_init() local_unnamed_addr #9 section ".init.text" {
entry:
  %call = call fastcc i64 @totalram_pages() #11
  %call1 = call fastcc i64 @global_zone_page_state() #11
  %sub = sub i64 %call, %call1
  %mul = mul i64 %sub, 3
  %div = lshr i64 %mul, 1
  %sub2 = add i64 %call, -1
  %cmp = icmp ult i64 %div, %sub2
  %cond = select i1 %cmp, i64 %div, i64 %sub2
  %sub3 = sub i64 %call, %cond
  %mul4 = shl i64 %sub3, 2
  %div5 = udiv i64 %mul4, 10
  %cmp7 = icmp ugt i64 %div5, 8192
  %cond11 = select i1 %cmp7, i64 %div5, i64 8192
  store i64 %cond11, i64* getelementptr inbounds (%struct.files_stat_struct, %struct.files_stat_struct* @files_stat, i64 0, i32 2), align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_zone_page_state() unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 0, i32 0), align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @percpu_counter_read_positive() unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.percpu_counter, %struct.percpu_counter* @nr_files, i64 0, i32 1), align 8
  %1 = icmp sgt i64 %0, 0
  %. = select i1 %1, i64 %0, i64 0
  ret i64 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(%struct.percpu_counter* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #1 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #12
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @get_cred(%struct.cred* noundef %cred) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.cred* %cred, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 19
  %non_rcu = bitcast %union.anon.35* %0 to i32*
  store i32 0, i32* %non_rcu, align 8
  %call = call fastcc %struct.cred* @get_new_cred(%struct.cred* noundef nonnull %cred) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.cred* %cred
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @file_free_rcu(%struct.callback_head* noundef %head) #1 {
entry:
  %0 = bitcast %struct.callback_head* %head to i8*
  %f_cred = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 9
  %1 = bitcast %struct.callback_head* %f_cred to %struct.cred**
  %2 = load %struct.cred*, %struct.cred** %1, align 8
  call fastcc void @put_cred(%struct.cred* noundef %2) #11
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @filp_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef %0) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @get_new_cred(%struct.cred* noundef returned %cred) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %usage) #12
  ret %struct.cred* %cred
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #12
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(%struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !13
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_add(i64 noundef %amount) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef nonnull @nr_files, i64 noundef %amount, i32 noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_sample_wb_err(%struct.address_space* noundef %mapping) unnamed_addr #1 {
entry:
  %wb_err = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 11
  %call = call i32 @errseq_sample(i32* noundef %wb_err) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @file_sample_sb_err(%struct.file* nocapture noundef readonly %file) unnamed_addr #1 {
entry:
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 43
  %call = call i32 @errseq_sample(i32* noundef %s_wb_err) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_readcount_inc(%struct.inode* noundef %inode) unnamed_addr #1 {
entry:
  %i_readcount = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 35
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_readcount) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.llist_node* @llist_del_all() unnamed_addr #1 {
entry:
  %call11.i = call fastcc i64 @__xchg_case_mb_64() #12
  %0 = inttoptr i64 %call11.i to %struct.llist_node*
  ret %struct.llist_node* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64() unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) bitcast (%struct.llist_head* @delayed_fput_list to i64*), i64 0, i64* elementtype(i64) bitcast (%struct.llist_head* @delayed_fput_list to i64*)) #14, !srcloc !14
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !15
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @llist_add_batch(%struct.llist_node* noundef, %struct.llist_node* noundef, %struct.llist_head* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #1 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef nonnull @delayed_fput_work, i64 noundef 1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_close(%struct.file* nocapture noundef readonly %file) unnamed_addr #2 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 16, i32 8
  call fastcc void @fsnotify_file(%struct.file* noundef %file, i32 noundef %cond) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @eventpoll_release(%struct.file* noundef %file) unnamed_addr #1 {
entry:
  %f_ep = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 16
  %0 = load %struct.hlist_head*, %struct.hlist_head** %f_ep, align 8
  %tobool.not = icmp eq %struct.hlist_head* %0, null
  br i1 %tobool.not, label %return, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  call void @eventpoll_release_file(%struct.file* noundef %file) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_remove_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_put(%struct.cdev* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_readcount_dec(%struct.inode* noundef %inode) unnamed_addr #1 {
entry:
  %i_readcount = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 35
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %i_readcount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !7

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/fs.h\22; .popsection; .long 14472b - 14470b; .short 3072; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  unreachable

do.end7:                                          ; preds = %entry
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %i_readcount) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_write_access(%struct.inode* noundef %inode) unnamed_addr #1 {
entry:
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 34
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %i_writecount) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dissolve_on_fput(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_free(%struct.file* noundef %f) unnamed_addr #1 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 536870912
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @percpu_counter_dec() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fu_rcuhead = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 0, i32 0
  call void @call_rcu(%struct.callback_head* noundef %fu_rcuhead, void (%struct.callback_head*)* noundef nonnull @file_free_rcu) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_file(%struct.file* nocapture noundef readonly %file, i32 noundef %mask) unnamed_addr #2 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call fastcc void @fsnotify_parent(%struct.dentry* noundef %1, i32 noundef %mask) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_parent(%struct.dentry* noundef readonly %dentry, i32 noundef %mask) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #11
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventpoll_release_file(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_dec() unnamed_addr #1 {
entry:
  call fastcc void @percpu_counter_add(i64 noundef -1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold mustprogress nofree noinline norecurse nounwind null_pointer_is_valid optsize willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }

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
!8 = !{i64 1290414}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155364092}
!11 = !{!"branch_weights", i32 1, i32 4001}
!12 = !{i64 2147913829, i64 2147914345, i64 2147914375, i64 2147914402, i64 2147914436, i64 2147914466}
!13 = !{i64 2147924402, i64 2147925050, i64 2147925080, i64 2147925112, i64 2147925146, i64 2147925182, i64 2147925207}
!14 = !{i64 2148048707, i64 2148048739, i64 2148048783, i64 2148048830, i64 2148048856}
!15 = !{i64 2147969096, i64 2147969744, i64 2147969774, i64 2147969805, i64 2147969837, i64 2147969872, i64 2147969897}
!16 = !{i64 2151913291}
!17 = !{i64 2147923550, i64 2147924066, i64 2147924096, i64 2147924123, i64 2147924157, i64 2147924187}
