; ModuleID = 'mm/debug.c'
source_filename = "mm/debug.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.trace_print_flags = type { i64, i8* }
%struct.page = type { i64, %union.anon, %union.anon.69, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
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
%struct.reclaim_state = type opaque
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
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
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
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.69 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.63 = type { i64, i8, i8, %struct.atomic_t, i32 }

@.str = private unnamed_addr constant [11 x i8] c"compaction\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"memory_failure\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"memory_hotplug\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"syscall_or_cpuset\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mempolicy_mbind\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"numa_misplaced\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"contig_range\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"longterm_pin\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"demotion\00", align 1
@migrate_reason_names = dso_local local_unnamed_addr global [9 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)], align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"waiters\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"referenced\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"uptodate\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"lru\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"workingset\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"owner_priv_1\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"arch_1\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"private_2\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"mappedtodisk\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"reclaim\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"swapbacked\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"unevictable\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"mlocked\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"arch_2\00", align 1
@pageflag_names = dso_local local_unnamed_addr constant [24 x %struct.trace_print_flags] [%struct.trace_print_flags { i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }, %struct.trace_print_flags { i64 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.trace_print_flags { i64 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0) }, %struct.trace_print_flags { i64 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0) }, %struct.trace_print_flags { i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0) }, %struct.trace_print_flags { i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0) }, %struct.trace_print_flags { i64 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0) }, %struct.trace_print_flags { i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0) }, %struct.trace_print_flags { i64 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0) }, %struct.trace_print_flags { i64 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0) }, %struct.trace_print_flags { i64 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0) }, %struct.trace_print_flags { i64 2048, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0) }, %struct.trace_print_flags { i64 4096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0) }, %struct.trace_print_flags { i64 8192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0) }, %struct.trace_print_flags { i64 16384, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0) }, %struct.trace_print_flags { i64 32768, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0) }, %struct.trace_print_flags { i64 65536, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0) }, %struct.trace_print_flags { i64 131072, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0) }, %struct.trace_print_flags { i64 262144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0) }, %struct.trace_print_flags { i64 524288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0) }, %struct.trace_print_flags { i64 1048576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0) }, %struct.trace_print_flags { i64 2097152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0) }, %struct.trace_print_flags { i64 4194304, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0) }, %struct.trace_print_flags zeroinitializer], align 8
@.str.32 = private unnamed_addr constant [14 x i8] c"GFP_TRANSHUGE\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"GFP_TRANSHUGE_LIGHT\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"GFP_HIGHUSER_MOVABLE\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"GFP_HIGHUSER\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"GFP_USER\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"GFP_KERNEL_ACCOUNT\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"GFP_KERNEL\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"GFP_NOFS\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"GFP_ATOMIC\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"GFP_NOIO\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"GFP_NOWAIT\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"GFP_DMA\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"__GFP_HIGHMEM\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"GFP_DMA32\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"__GFP_HIGH\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"__GFP_ATOMIC\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"__GFP_IO\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"__GFP_FS\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"__GFP_NOWARN\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"__GFP_RETRY_MAYFAIL\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"__GFP_NOFAIL\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"__GFP_NORETRY\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"__GFP_COMP\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"__GFP_ZERO\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"__GFP_NOMEMALLOC\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"__GFP_MEMALLOC\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"__GFP_HARDWALL\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"__GFP_THISNODE\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"__GFP_RECLAIMABLE\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"__GFP_MOVABLE\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"__GFP_ACCOUNT\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"__GFP_WRITE\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"__GFP_RECLAIM\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"__GFP_DIRECT_RECLAIM\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"__GFP_KSWAPD_RECLAIM\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"__GFP_ZEROTAGS\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"__GFP_SKIP_KASAN_POISON\00", align 1
@gfpflag_names = dso_local local_unnamed_addr constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i64 18621642, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0) }, %struct.trace_print_flags { i64 18620618, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0) }, %struct.trace_print_flags { i64 17829066, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0) }, %struct.trace_print_flags { i64 1051842, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0) }, %struct.trace_print_flags { i64 1051840, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0) }, %struct.trace_print_flags { i64 4197568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0) }, %struct.trace_print_flags { i64 3264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0) }, %struct.trace_print_flags { i64 3136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0) }, %struct.trace_print_flags { i64 2592, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0) }, %struct.trace_print_flags { i64 3072, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0) }, %struct.trace_print_flags { i64 2048, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0) }, %struct.trace_print_flags { i64 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0) }, %struct.trace_print_flags { i64 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0) }, %struct.trace_print_flags { i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0) }, %struct.trace_print_flags { i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0) }, %struct.trace_print_flags { i64 512, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0) }, %struct.trace_print_flags { i64 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0) }, %struct.trace_print_flags { i64 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0) }, %struct.trace_print_flags { i64 8192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0) }, %struct.trace_print_flags { i64 16384, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0) }, %struct.trace_print_flags { i64 32768, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0) }, %struct.trace_print_flags { i64 65536, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0) }, %struct.trace_print_flags { i64 262144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0) }, %struct.trace_print_flags { i64 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0) }, %struct.trace_print_flags { i64 524288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0) }, %struct.trace_print_flags { i64 131072, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.trace_print_flags { i64 1048576, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0) }, %struct.trace_print_flags { i64 2097152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0) }, %struct.trace_print_flags { i64 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0) }, %struct.trace_print_flags { i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0) }, %struct.trace_print_flags { i64 4194304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0) }, %struct.trace_print_flags { i64 4096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0) }, %struct.trace_print_flags { i64 3072, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0) }, %struct.trace_print_flags { i64 1024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0) }, %struct.trace_print_flags { i64 2048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0) }, %struct.trace_print_flags { i64 8388608, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0) }, %struct.trace_print_flags { i64 16777216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0) }, %struct.trace_print_flags zeroinitializer], align 8
@.str.69 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"mayread\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"maywrite\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"mayexec\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"mayshare\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"growsdown\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"uffd_missing\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"pfnmap\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"uffd_wp\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"seqread\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"randread\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"dontcopy\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"dontexpand\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"lockonfault\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"account\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"noreserve\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"hugetlb\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"wipeonfork\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"dontdump\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"mixedmap\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"hugepage\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"nohugepage\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"mergeable\00", align 1
@vmaflag_names = dso_local local_unnamed_addr constant [31 x %struct.trace_print_flags] [%struct.trace_print_flags { i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0) }, %struct.trace_print_flags { i64 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0) }, %struct.trace_print_flags { i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0) }, %struct.trace_print_flags { i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0) }, %struct.trace_print_flags { i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0) }, %struct.trace_print_flags { i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0) }, %struct.trace_print_flags { i64 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0) }, %struct.trace_print_flags { i64 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0) }, %struct.trace_print_flags { i64 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0) }, %struct.trace_print_flags { i64 512, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0) }, %struct.trace_print_flags { i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0) }, %struct.trace_print_flags { i64 4096, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0) }, %struct.trace_print_flags { i64 8192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }, %struct.trace_print_flags { i64 16384, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0) }, %struct.trace_print_flags { i64 32768, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0) }, %struct.trace_print_flags { i64 65536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0) }, %struct.trace_print_flags { i64 131072, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0) }, %struct.trace_print_flags { i64 262144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0) }, %struct.trace_print_flags { i64 524288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0) }, %struct.trace_print_flags { i64 1048576, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0) }, %struct.trace_print_flags { i64 2097152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0) }, %struct.trace_print_flags { i64 4194304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0) }, %struct.trace_print_flags { i64 8388608, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0) }, %struct.trace_print_flags { i64 16777216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0) }, %struct.trace_print_flags { i64 33554432, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0) }, %struct.trace_print_flags { i64 67108864, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0) }, %struct.trace_print_flags { i64 268435456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0) }, %struct.trace_print_flags { i64 536870912, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0) }, %struct.trace_print_flags { i64 1073741824, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0) }, %struct.trace_print_flags { i64 2147483648, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0) }, %struct.trace_print_flags zeroinitializer], align 8
@.str.97 = private unnamed_addr constant [40 x i8] c"\014page:%p is uninitialized and poisoned\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"\014page dumped because: %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.100 = private unnamed_addr constant [66 x i8] c"\014page:%p refcount:%d mapcount:%d mapping:%p index:%#lx pfn:%#lx\0A\00", align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.101 = private unnamed_addr constant [62 x i8] c"\014head:%p order:%u compound_mapcount:%d compound_pincount:%d\0A\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"\014head:%p order:%u compound_mapcount:%d\0A\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"anon \00", align 1
@.str.105 = private unnamed_addr constant [64 x i8] c"\014failed to read mapping contents, not a valid kernel address?\0A\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"\014aops:%ps\0A\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"\014aops:%ps with invalid host inode %px\0A\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"\014aops:%ps ino:%lx\0A\00", align 1
@.str.109 = private unnamed_addr constant [44 x i8] c"\014aops:%ps ino:%lx with invalid dentry %px\0A\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"\014aops:%ps ino:%lx dentry name:\22%pd\22\0A\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"\014%sflags: %#lx(%pGp)%s\0A\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"raw: \00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"head: \00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dump_page(%struct.page* noundef %page, i8* noundef %reason) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @PagePoisoned(%struct.page* noundef %page) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.97, i64 0, i64 0), %struct.page* noundef %page) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @__dump_page(%struct.page* noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %tobool2.not = icmp eq i8* %reason, null
  br i1 %tobool2.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull %reason) #9
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @PagePoisoned(%struct.page* nocapture noundef readonly %page) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %cmp = icmp eq i64 %0, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dump_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %host = alloca %struct.inode*, align 8
  %a_ops = alloca %struct.address_space_operations*, align 8
  %dentry_first = alloca %struct.hlist_node*, align 8
  %dentry = alloca %struct.dentry, align 8
  %ino = alloca i64, align 8
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %0 = inttoptr i64 %call to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 65536
  %tobool.not.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %PageCompound.exit

lor.rhs.i:                                        ; preds = %entry
  %3 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %3 to i64*
  %4 = load volatile i64, i64* %compound_head.i.i, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 1
  br label %PageCompound.exit

PageCompound.exit:                                ; preds = %entry, %lor.rhs.i
  %7 = phi i32 [ 1, %entry ], [ %6, %lor.rhs.i ]
  %cmp = icmp ule %struct.page* %0, %page
  %add.ptr = getelementptr %struct.page, %struct.page* %0, i64 1024
  %cmp2.not = icmp ugt %struct.page* %add.ptr, %page
  %or.cond = and i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.else7, label %if.then

if.then:                                          ; preds = %PageCompound.exit
  %mapping3 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %8 = load %struct.address_space*, %struct.address_space** %mapping3, align 8
  %9 = ptrtoint %struct.address_space* %8 to i64
  %and = and i64 %9, 1
  %tobool4.not = icmp eq i64 %and, 0
  %and6 = and i64 %9, -4
  %10 = inttoptr i64 %and6 to %struct.address_space*
  %mapping.0 = select i1 %tobool4.not, %struct.address_space* %10, %struct.address_space* null
  br label %if.end9

if.else7:                                         ; preds = %PageCompound.exit
  %tobool = icmp ne i32 %7, 0
  %call8 = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #10
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then
  %compound.0.off0 = phi i1 [ false, %if.then ], [ %tobool, %if.else7 ]
  %mapping.1 = phi %struct.address_space* [ %mapping.0, %if.then ], [ %call8, %if.else7 ]
  %head.0 = phi %struct.page* [ %page, %if.then ], [ %0, %if.else7 ]
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %head.0) #10
  %11 = inttoptr i64 %call.i to %struct.page*
  %flags.i192 = getelementptr inbounds %struct.page, %struct.page* %11, i64 0, i32 0
  %12 = load volatile i64, i64* %flags.i192, align 8
  %13 = and i64 %12, 512
  %tobool11.not = icmp eq i64 %13, 0
  br i1 %tobool11.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end9
  %call12 = call fastcc i32 @page_mapcount(%struct.page* noundef %page) #8
  br label %cond.end

cond.end:                                         ; preds = %if.end9, %cond.false
  %cond = phi i32 [ %call12, %cond.false ], [ 0, %if.end9 ]
  %call14 = call fastcc i32 @page_ref_count(%struct.page* noundef %head.0) #8
  %call15 = call fastcc i64 @page_to_pgoff(%struct.page* noundef %page) #8
  %14 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %14, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr16 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.100, i64 0, i64 0), %struct.page* noundef %page, i32 noundef %call14, i32 noundef %cond, %struct.address_space* noundef %mapping.1, i64 noundef %call15, i64 noundef %sub.ptr.div) #9
  br i1 %compound.0.off0, label %if.then19, label %if.end39

if.then19:                                        ; preds = %cond.end
  %call20 = call fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) #8
  %call26 = call fastcc i32 @compound_order(%struct.page* noundef %head.0) #8
  %call27 = call fastcc i32 @head_compound_mapcount(%struct.page* noundef %head.0) #8
  br i1 %call20, label %do.end24, label %do.end33

do.end24:                                         ; preds = %if.then19
  %call28 = call fastcc i32 @head_compound_pincount(%struct.page* noundef %head.0) #8
  %call29 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.101, i64 0, i64 0), %struct.page* noundef %head.0, i32 noundef %call26, i32 noundef %call27, i32 noundef %call28) #9
  br label %if.end39

do.end33:                                         ; preds = %if.then19
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.102, i64 0, i64 0), %struct.page* noundef %head.0, i32 noundef %call26, i32 noundef %call27) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end24, %do.end33, %cond.end
  %call.i193 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #10
  %15 = inttoptr i64 %call.i193 to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 1, i32 0, i32 1
  %16 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %17 = ptrtoint %struct.address_space* %16 to i64
  %18 = and i64 %17, 1
  %tobool45.not = icmp eq i64 %18, 0
  br i1 %tobool45.not, label %if.else47, label %do.end134

if.else47:                                        ; preds = %if.end39
  %tobool48.not = icmp eq %struct.address_space* %mapping.1, null
  br i1 %tobool48.not, label %do.end134, label %if.then49

if.then49:                                        ; preds = %if.else47
  %19 = bitcast %struct.inode** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11
  store %struct.inode* null, %struct.inode** %host, align 8, !annotation !7
  %20 = bitcast %struct.address_space_operations** %a_ops to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #11
  store %struct.address_space_operations* null, %struct.address_space_operations** %a_ops, align 8, !annotation !7
  %21 = bitcast %struct.hlist_node** %dentry_first to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #11
  store %struct.hlist_node* null, %struct.hlist_node** %dentry_first, align 8, !annotation !7
  %22 = bitcast %struct.dentry* %dentry to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %22) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(192) %22, i8 0, i64 192, i1 false), !annotation !7
  %23 = bitcast i64* %ino to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #11
  store i64 0, i64* %ino, align 8, !annotation !7
  %24 = bitcast %struct.address_space* %mapping.1 to i8*
  %call52 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %19, i8* noundef nonnull %24, i64 noundef 8) #10
  %tobool53.not = icmp eq i64 %call52, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %do.end63

lor.lhs.false54:                                  ; preds = %if.then49
  %a_ops56 = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping.1, i64 0, i32 9
  %25 = bitcast %struct.address_space_operations** %a_ops56 to i8*
  %call58 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %20, i8* noundef %25, i64 noundef 8) #10
  %tobool59.not = icmp eq i64 %call58, 0
  br i1 %tobool59.not, label %if.end66, label %do.end63

do.end63:                                         ; preds = %if.then49, %lor.lhs.false54
  %call65 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.105, i64 0, i64 0)) #9
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false54
  %26 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool67.not = icmp eq %struct.inode* %26, null
  br i1 %tobool67.not, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end66
  %27 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %call73 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), %struct.address_space_operations* noundef %27) #9
  br label %cleanup

if.end74:                                         ; preds = %if.end66
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %26, i64 0, i32 29
  %29 = bitcast %union.anon.77* %28 to i8*
  %call77 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %21, i8* noundef %29, i64 noundef 8) #10
  %tobool78.not = icmp eq i64 %call77, 0
  br i1 %tobool78.not, label %lor.lhs.false79, label %do.end87

lor.lhs.false79:                                  ; preds = %if.end74
  %30 = load %struct.inode*, %struct.inode** %host, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %30, i64 0, i32 8
  %31 = bitcast i64* %i_ino to i8*
  %call82 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %23, i8* noundef %31, i64 noundef 8) #10
  %tobool83.not = icmp eq i64 %call82, 0
  br i1 %tobool83.not, label %if.end90, label %do.end87

do.end87:                                         ; preds = %if.end74, %lor.lhs.false79
  %32 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %33 = load %struct.inode*, %struct.inode** %host, align 8
  %call89 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.107, i64 0, i64 0), %struct.address_space_operations* noundef %32, %struct.inode* noundef %33) #9
  br label %cleanup

if.end90:                                         ; preds = %lor.lhs.false79
  %34 = load %struct.hlist_node*, %struct.hlist_node** %dentry_first, align 8
  %tobool91.not = icmp eq %struct.hlist_node* %34, null
  br i1 %tobool91.not, label %do.end95, label %if.end98

do.end95:                                         ; preds = %if.end90
  %35 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %36 = load i64, i64* %ino, align 8
  %call97 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i64 0, i64 0), %struct.address_space_operations* noundef %35, i64 noundef %36) #9
  br label %cleanup

if.end98:                                         ; preds = %if.end90
  %add.ptr103191 = getelementptr %struct.hlist_node, %struct.hlist_node* %34, i64 -11
  %add.ptr103 = bitcast %struct.hlist_node* %add.ptr103191 to i8*
  %call106 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %22, i8* noundef %add.ptr103, i64 noundef 192) #10
  %tobool107.not = icmp eq i64 %call106, 0
  %37 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %38 = load i64, i64* %ino, align 8
  br i1 %tobool107.not, label %do.end117, label %do.end111

do.end111:                                        ; preds = %if.end98
  %call113 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.109, i64 0, i64 0), %struct.address_space_operations* noundef %37, i64 noundef %38, %struct.hlist_node* noundef %add.ptr103191) #9
  br label %cleanup

do.end117:                                        ; preds = %if.end98
  %call119 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.110, i64 0, i64 0), %struct.address_space_operations* noundef %37, i64 noundef %38, %struct.dentry* noundef nonnull %dentry) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %do.end117, %do.end95, %do.end87, %do.end71, %do.end63
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #11
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %22) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11
  br label %do.end134

do.end134:                                        ; preds = %if.end39, %cleanup, %if.else47
  %type.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %cleanup ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %if.else47 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0), %if.end39 ]
  %flags = getelementptr inbounds %struct.page, %struct.page* %head.0, i64 0, i32 0
  %39 = load i64, i64* %flags, align 16
  %call139 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.111, i64 0, i64 0), i8* noundef nonnull %type.0, i64 noundef %39, i64* noundef %flags, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0)) #9
  %40 = bitcast %struct.page* %page to i8*
  call void @print_hex_dump(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i64 0, i64 0), i32 noundef 0, i32 noundef 32, i32 noundef 8, i8* noundef %40, i64 noundef 64, i1 noundef false) #10
  %cmp140.not = icmp eq %struct.page* %head.0, %page
  br i1 %cmp140.not, label %if.end142, label %if.then141

if.then141:                                       ; preds = %do.end134
  %41 = bitcast %struct.page* %head.0 to i8*
  call void @print_hex_dump(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i32 noundef 0, i32 noundef 32, i32 noundef 8, i8* noundef %41, i64 noundef 64, i1 noundef false) #10
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %do.end134
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_mapcount(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.then

PageCompound.exit:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry, %PageCompound.exit
  %call3 = call i32 @__page_mapcount(%struct.page* noundef %page) #10
  br label %return

if.end:                                           ; preds = %PageCompound.exit
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %add = add i32 %5, 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %add, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_ref_count(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_to_pgoff(%struct.page* nocapture noundef readonly %page) unnamed_addr #1 {
entry:
  %call4 = call fastcc i64 @page_to_index(%struct.page* noundef %page) #8
  ret i64 %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %0 = inttoptr i64 %call to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 65536
  %tobool.not.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %land.rhs

PageCompound.exit:                                ; preds = %entry
  %3 = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %3 to i64*
  %4 = load volatile i64, i64* %compound_head.i.i, align 8
  %5 = and i64 %4, 1
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %PageCompound.exit
  %call2 = call fastcc i32 @compound_order(%struct.page* noundef %0) #8
  %cmp = icmp ugt i32 %call2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %PageCompound.exit
  %6 = phi i1 [ false, %PageCompound.exit ], [ %cmp, %land.rhs ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #4 {
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @head_compound_mapcount(%struct.page* noundef %head) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef %head) #8
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %add = add i32 %0, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @head_compound_pincount(%struct.page* noundef %head) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef %head) #8
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_from_kernel_nofault(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_to_index(%struct.page* nocapture noundef readonly %page) unnamed_addr #1 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef readnone %page) unnamed_addr #7 {
entry:
  %0 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %1 = bitcast %union.anon* %0 to %struct.anon.63*
  %compound_mapcount = getelementptr inbounds %struct.anon.63, %struct.anon.63* %1, i64 0, i32 3
  ret %struct.atomic_t* %compound_mapcount
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef readnone %page) unnamed_addr #7 {
entry:
  %hpage_pinned_refcount = getelementptr %struct.page, %struct.page* %page, i64 2, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %hpage_pinned_refcount to %struct.atomic_t*
  ret %struct.atomic_t* %0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { cold nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }

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
