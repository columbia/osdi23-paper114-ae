; ModuleID = 'mm/swap.c'
source_filename = "mm/swap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lru_rotate = type { %struct.local_lock_t, %struct.pagevec }
%struct.local_lock_t = type {}
%struct.pagevec = type { i8, i8, [15 x %struct.page*] }
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
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, {}*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, {}*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.69 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lru_pvecs = type { %struct.local_lock_t, %struct.pagevec, %struct.pagevec, %struct.pagevec, %struct.pagevec, %struct.pagevec }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.vm_event_state = type { [53 x i64] }
%struct.kvec = type { i8*, i64 }

@lru_rotate = internal global %struct.lru_rotate { %struct.local_lock_t undef, %struct.pagevec zeroinitializer }, section ".data..percpu", align 8
@lru_pvecs = internal global %struct.lru_pvecs { %struct.local_lock_t undef, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer }, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__lru_add_drain_all.lru_drain_gen = internal global i32 0, align 4
@__lru_add_drain_all.has_work = internal global %struct.cpumask zeroinitializer, align 8
@__lru_add_drain_all.lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @__lru_add_drain_all.lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @__lru_add_drain_all.lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@mm_percpu_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@lru_add_drain_work = internal global %struct.work_struct zeroinitializer, section ".data..percpu", align 8
@lru_disable_count = dso_local global %struct.atomic_t zeroinitializer, align 4
@page_cluster = dso_local local_unnamed_addr global i32 0, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@compound_page_dtors = external dso_local local_unnamed_addr constant [2 x void (%struct.page*)*], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@vm_node_stat = external dso_local global [38 x %struct.atomic64_t], align 8
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__put_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.then4

PageCompound.exit:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then4, !prof !8

if.then4:                                         ; preds = %entry, %PageCompound.exit
  call fastcc void @__put_compound_page(%struct.page* noundef %page) #15
  br label %if.end5

if.else:                                          ; preds = %PageCompound.exit
  call fastcc void @__put_single_page(%struct.page* noundef %page) #15
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__put_compound_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call fastcc void @__page_cache_release(%struct.page* noundef %page) #15
  call fastcc void @destroy_compound_page(%struct.page* noundef %page) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__put_single_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call fastcc void @__page_cache_release(%struct.page* noundef %page) #15
  call void @free_unref_page(%struct.page* noundef %page, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_pages_list(%struct.list_head* noundef %pages) local_unnamed_addr #0 {
entry:
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %pages) #15
  %tobool.not6 = icmp eq i32 %call5, 0
  br i1 %tobool.not6, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %pages, i64 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -8
  %2 = bitcast i8* %add.ptr to %struct.page*
  %lru = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru) #15
  call fastcc void @put_page(%struct.page* noundef %2) #15
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %pages) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #1 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #15
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_kernel_pages(%struct.kvec* nocapture noundef readonly %kiov, i32 noundef %nr_segs, i32 noundef %write, %struct.page** nocapture noundef writeonly %pages) local_unnamed_addr #0 {
entry:
  %cmp38 = icmp sgt i32 %nr_segs, 0
  br i1 %cmp38, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %nr_segs to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end17
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end17 ]
  %iov_len = getelementptr %struct.kvec, %struct.kvec* %kiov, i64 %indvars.iv, i32 1
  %0 = load i64, i64* %iov_len, align 8
  %cmp1.not = icmp eq i64 %0, 4096
  br i1 %cmp1.not, label %if.end17, label %if.then, !prof !8

if.then:                                          ; preds = %for.body
  %1 = trunc i64 %indvars.iv to i32
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/swap.c\22; .popsection; .long 14472b - 14470b; .short 171; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %iov_base = getelementptr %struct.kvec, %struct.kvec* %kiov, i64 %indvars.iv, i32 0
  %2 = load i8*, i8** %iov_base, align 8
  %call = call fastcc %struct.page* @kmap_to_page(i8* noundef %2) #15
  %arrayidx21 = getelementptr %struct.page*, %struct.page** %pages, i64 %indvars.iv
  store %struct.page* %call, %struct.page** %arrayidx21, align 8
  call fastcc void @get_page(%struct.page* noundef %call) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end17, %entry, %if.then
  %seg.037 = phi i32 [ %1, %if.then ], [ 0, %entry ], [ %nr_segs, %if.end17 ]
  ret i32 %seg.037
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.page* @kmap_to_page(i8* noundef %addr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %addr to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  ret %struct.page* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rotate_reclaimable_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i83 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i83, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %entry
  %call.i74 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %2 = inttoptr i64 %call.i74 to %struct.page*
  %flags.i75 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i75, align 8
  %4 = and i64 %3, 8
  %tobool2.not = icmp eq i64 %4, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end59

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call.i77 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %5 = inttoptr i64 %call.i77 to %struct.page*
  %flags.i78 = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i78, align 8
  %7 = and i64 %6, 1048576
  %tobool5.not = icmp eq i64 %7, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.end59

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call.i80 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %8 = inttoptr i64 %call.i80 to %struct.page*
  %flags.i81 = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  %9 = load volatile i64, i64* %flags.i81, align 8
  %10 = and i64 %9, 16
  %tobool8.not = icmp eq i64 %10, 0
  br i1 %tobool8.not, label %if.end59, label %if.then

if.then:                                          ; preds = %land.lhs.true6
  call fastcc void @get_page(%struct.page* noundef %page) #15
  %call11 = call fastcc i64 @arch_local_irq_save() #15
  %call19 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add30 = add i64 %call19, ptrtoint (%struct.lru_rotate* @lru_rotate to i64)
  %11 = inttoptr i64 %add30 to %struct.pagevec*
  %call31 = call fastcc i1 @pagevec_add_and_need_flush(%struct.pagevec* noundef %11, %struct.page* noundef %page) #15
  br i1 %call31, label %if.then32, label %do.body34

if.then32:                                        ; preds = %if.then
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %11, void (%struct.page*, %struct.lruvec*)* noundef nonnull @pagevec_move_tail_fn) #15
  br label %do.body34

do.body34:                                        ; preds = %if.then32, %if.then
  %call41 = call fastcc i64 @__kern_my_cpu_offset() #15
  call fastcc void @arch_local_irq_restore(i64 noundef %call11) #15
  br label %if.end59

if.end59:                                         ; preds = %do.body34, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #15
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #5 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !10
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @pagevec_add_and_need_flush(%struct.pagevec* nocapture noundef %pvec, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @pagevec_add(%struct.pagevec* noundef %pvec, %struct.page* noundef %page) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.then

PageCompound.exit:                                ; preds = %lor.lhs.false
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool2.not = icmp eq i64 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %PageCompound.exit
  %call4 = call fastcc i1 @lru_cache_disabled() #15
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %lor.lhs.false3, %PageCompound.exit, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false3
  %ret.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false3 ]
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagevec_lru_move_fn(%struct.pagevec* nocapture noundef %pvec, void (%struct.page*, %struct.lruvec*)* nocapture noundef readonly %move_fn) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8
  %call24 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end5, label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %lruvec.027 = phi %struct.lruvec* [ %lruvec.1, %cleanup ], [ null, %entry ]
  %i.026 = phi i32 [ %inc, %cleanup ], [ 0, %entry ]
  %idxprom = sext i32 %i.026 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %1 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %1) #16
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 4, i64* noundef %flags.i) #16
  br i1 %call1.i, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body
  %call2 = call fastcc %struct.lruvec* @relock_page_lruvec_irqsave(%struct.page* noundef %1, %struct.lruvec* noundef %lruvec.027, i64* noundef nonnull %flags) #15
  call void %move_fn(%struct.page* noundef %1, %struct.lruvec* noundef %call2) #16
  %call.i22 = call fastcc i64 @_compound_head(%struct.page* noundef %1) #16
  %3 = inttoptr i64 %call.i22 to %struct.page*
  %flags.i23 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %flags.i23) #16
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end
  %lruvec.1 = phi %struct.lruvec* [ %call2, %if.end ], [ %lruvec.027, %for.body ]
  %inc = add nuw i32 %i.026, 1
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  %cmp = icmp ult i32 %inc, %call
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup
  %tobool3.not = icmp eq %struct.lruvec* %lruvec.1, null
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %for.end
  %4 = load i64, i64* %flags, align 8
  call fastcc void @unlock_page_lruvec_irqrestore(%struct.lruvec* noundef nonnull %lruvec.1, i64 noundef %4) #15
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then4, %for.end
  %arraydecay = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 0
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %5 = load i8, i8* %nr, align 8
  %conv = zext i8 %5 to i32
  call void @release_pages(%struct.page** noundef %arraydecay, i32 noundef %conv) #15
  call fastcc void @pagevec_reinit(%struct.pagevec* noundef %pvec) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pagevec_move_tail_fn(%struct.page* noundef %page, %struct.lruvec* noundef %lruvec) #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 1048576
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #16
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %3 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i.i.i, align 8
  %5 = and i64 %4, 1048576
  %tobool.not.i.i = icmp eq i64 %5, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %6 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i12.i.i, align 8
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 5
  %10 = and i32 %9, 1
  %11 = or i32 %10, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then, %if.end.i.i
  %retval.0.i.i = phi i32 [ %11, %if.end.i.i ], [ 4, %if.then ]
  %call1.i = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef -1) #16
  %idxprom.i.i = zext i32 %call1.i to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #16
  %call.i7 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %12 = inttoptr i64 %call.i7 to %struct.page*
  %flags.i8 = getelementptr inbounds %struct.page, %struct.page* %12, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i8) #16
  %call.i.i.i9 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %13 = inttoptr i64 %call.i.i.i9 to %struct.page*
  %flags.i.i.i10 = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 0
  %14 = load volatile i64, i64* %flags.i.i.i10, align 8
  %15 = and i64 %14, 1048576
  %tobool.not.i.i11 = icmp eq i64 %15, 0
  br i1 %tobool.not.i.i11, label %if.end.i.i17, label %add_page_to_lru_list_tail.exit

if.end.i.i17:                                     ; preds = %del_page_from_lru_list.exit
  %call1.i.i12 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i13 = icmp eq i32 %call1.i.i12, 0
  %cond.i.i14 = select i1 %tobool2.not.i.i13, i32 0, i32 2
  %call.i11.i.i15 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %16 = inttoptr i64 %call.i11.i.i15 to %struct.page*
  %flags.i12.i.i16 = getelementptr inbounds %struct.page, %struct.page* %16, i64 0, i32 0
  %17 = load volatile i64, i64* %flags.i12.i.i16, align 8
  %18 = trunc i64 %17 to i32
  %19 = lshr i32 %18, 5
  %20 = and i32 %19, 1
  %21 = or i32 %20, %cond.i.i14
  br label %add_page_to_lru_list_tail.exit

add_page_to_lru_list_tail.exit:                   ; preds = %del_page_from_lru_list.exit, %if.end.i.i17
  %retval.0.i.i18 = phi i32 [ %21, %if.end.i.i17 ], [ 4, %del_page_from_lru_list.exit ]
  %call1.i19 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i18, i32 noundef 1) #16
  %idxprom.i.i21 = zext i32 %call1.i19 to i64
  %arrayidx.i.i22 = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i21
  %add1.i.i23 = add nsw i32 %retval.0.i.i18, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i22, i32 noundef %add1.i.i23, i64 noundef 1) #16
  %idxprom.i = zext i32 %retval.0.i.i18 to i64
  %arrayidx.i = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom.i
  call fastcc void @list_add_tail(%struct.list_head* noundef %lru.i, %struct.list_head* noundef %arrayidx.i) #16
  call fastcc void @__count_vm_events(i32 noundef 42) #15
  br label %if.end

if.end:                                           ; preds = %add_page_to_lru_list_tail.exit, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #17, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_note_cost(%struct.lruvec* noundef %lruvec, i1 noundef %file, i32 noundef %nr_pages) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %conv = zext i32 %nr_pages to i64
  %anon_cost = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 2
  %file_cost = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 3
  %anon_cost.sink37 = select i1 %file, i64* %file_cost, i64* %anon_cost
  %0 = load i64, i64* %anon_cost.sink37, align 8
  %add2 = add i64 %0, %conv
  store i64 %add2, i64* %anon_cost.sink37, align 8
  %call = call fastcc i64 @lruvec_page_state(i32 noundef 0) #15
  %call3 = call fastcc i64 @lruvec_page_state(i32 noundef 1) #15
  %add4 = add i64 %call3, %call
  %call5 = call fastcc i64 @lruvec_page_state(i32 noundef 2) #15
  %add6 = add i64 %add4, %call5
  %call7 = call fastcc i64 @lruvec_page_state(i32 noundef 3) #15
  %add8 = add i64 %add6, %call7
  %file_cost9 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 3
  %1 = load i64, i64* %file_cost9, align 8
  %anon_cost10 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 2
  %2 = load i64, i64* %anon_cost10, align 8
  %add11 = add i64 %2, %1
  %div = lshr i64 %add8, 2
  %cmp = icmp ugt i64 %add11, %div
  br i1 %cmp, label %if.then13, label %if.end18

if.then13:                                        ; preds = %entry
  %div15 = lshr i64 %1, 1
  store i64 %div15, i64* %file_cost9, align 8
  %div17 = lshr i64 %2, 1
  store i64 %div17, i64* %anon_cost10, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @lruvec_page_state(i32 noundef %idx) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @global_node_page_state(i32 noundef %idx) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_note_cost_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #15
  %tobool = icmp ne i32 %call1, 0
  call void @lru_note_cost(%struct.lruvec* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16), i1 noundef %tobool, i32 noundef 1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_is_file_lru(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 19
  %4 = and i32 %3, 1
  %5 = xor i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mark_page_accessed(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call to %struct.page*
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %0) #16
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 2
  %tobool.not = icmp eq i64 %3, 0
  %call.i30 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #16
  %4 = inttoptr i64 %call.i30 to %struct.page*
  %flags.i31 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags.i31) #16
  br label %if.end15

if.else:                                          ; preds = %entry
  %5 = load volatile i64, i64* %flags.i31, align 8
  %6 = and i64 %5, 1048576
  %tobool3.not = icmp eq i64 %6, 0
  br i1 %tobool3.not, label %if.else5, label %if.end15

if.else5:                                         ; preds = %if.else
  %call.i35 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #16
  %7 = inttoptr i64 %call.i35 to %struct.page*
  %flags.i36 = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i36, align 8
  %9 = and i64 %8, 32
  %tobool7.not = icmp eq i64 %9, 0
  br i1 %tobool7.not, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.else5
  %call.i38 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #16
  %10 = inttoptr i64 %call.i38 to %struct.page*
  %flags.i39 = getelementptr inbounds %struct.page, %struct.page* %10, i64 0, i32 0
  %11 = load volatile i64, i64* %flags.i39, align 8
  %12 = and i64 %11, 16
  %tobool10.not = icmp eq i64 %12, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.then8
  call fastcc void @activate_page(%struct.page* noundef %0) #15
  br label %if.end

if.else12:                                        ; preds = %if.then8
  call fastcc void @__lru_cache_activate_page(%struct.page* noundef %0) #15
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  %call.i41 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #16
  %13 = inttoptr i64 %call.i41 to %struct.page*
  %flags.i42 = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags.i42) #16
  call void @workingset_activation(%struct.page* noundef %0) #16
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end, %if.else5, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #1 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @activate_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call to %struct.page*
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %0) #16
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 16
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end35, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i49 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #16
  %4 = inttoptr i64 %call.i49 to %struct.page*
  %flags.i50 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i50, align 8
  %6 = and i64 %5, 32
  %tobool3.not = icmp eq i64 %6, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %if.end35

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call.i52 = call fastcc i64 @_compound_head(%struct.page* noundef %0) #16
  %7 = inttoptr i64 %call.i52 to %struct.page*
  %flags.i53 = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i53, align 8
  %9 = and i64 %8, 1048576
  %tobool6.not = icmp eq i64 %9, 0
  br i1 %tobool6.not, label %if.then, label %if.end35

if.then:                                          ; preds = %land.lhs.true4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add20 = add i64 %call9, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 5) to i64)
  %10 = inttoptr i64 %add20 to %struct.pagevec*
  call fastcc void @get_page(%struct.page* noundef %0) #15
  %call21 = call fastcc i1 @pagevec_add_and_need_flush(%struct.pagevec* noundef %10, %struct.page* noundef %0) #15
  br i1 %call21, label %if.then22, label %do.body24

if.then22:                                        ; preds = %if.then
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %10, void (%struct.page*, %struct.lruvec*)* noundef nonnull @__activate_page) #15
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %if.then
  %call31 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  br label %if.end35

if.end35:                                         ; preds = %do.body24, %land.lhs.true4, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__lru_cache_activate_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add13 = add i64 %call, ptrtoint (%struct.lru_pvecs* @lru_pvecs to i64)
  %0 = inttoptr i64 %add13 to %struct.pagevec*
  %call14 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %0) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %call14, %entry ], [ %i.0, %for.body ]
  %i.0 = add i32 %i.0.in, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %do.body17

for.body:                                         ; preds = %for.cond
  %idxprom43 = zext i32 %i.0 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %0, i64 0, i32 2, i64 %idxprom43
  %1 = load %struct.page*, %struct.page** %arrayidx, align 8
  %cmp15 = icmp eq %struct.page* %1, %page
  br i1 %cmp15, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %flags.i) #16
  br label %do.body17

do.body17:                                        ; preds = %for.cond, %cleanup.thread
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_activation(%struct.page* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_cache_add(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  call fastcc void @get_page(%struct.page* noundef %page) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add13 = add i64 %call, ptrtoint (%struct.lru_pvecs* @lru_pvecs to i64)
  %0 = inttoptr i64 %add13 to %struct.pagevec*
  %call14 = call fastcc i1 @pagevec_add_and_need_flush(%struct.pagevec* noundef %0, %struct.page* noundef %page) #15
  br i1 %call14, label %if.then, label %do.body16

if.then:                                          ; preds = %entry
  call void @__pagevec_lru_add(%struct.pagevec* noundef %0) #15
  br label %do.body16

do.body16:                                        ; preds = %if.then, %entry
  %call23 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__pagevec_lru_add(%struct.pagevec* nocapture noundef %pvec) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8
  %call16 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.019 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %lruvec.018 = phi %struct.lruvec* [ %call1, %for.body ], [ null, %entry ]
  %idxprom = sext i32 %i.019 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %1 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call1 = call fastcc %struct.lruvec* @relock_page_lruvec_irqsave(%struct.page* noundef %1, %struct.lruvec* noundef %lruvec.018, i64* noundef nonnull %flags) #15
  call fastcc void @__pagevec_lru_add_fn(%struct.page* noundef %1, %struct.lruvec* noundef %call1) #15
  %inc = add nuw i32 %i.019, 1
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  %cmp = icmp ult i32 %inc, %call
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq %struct.lruvec* %call1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %2 = load i64, i64* %flags, align 8
  call fastcc void @unlock_page_lruvec_irqrestore(%struct.lruvec* noundef nonnull %call1, i64 noundef %2) #15
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %for.end
  %arraydecay = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 0
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %3 = load i8, i8* %nr, align 8
  %conv = zext i8 %3 to i32
  call void @release_pages(%struct.page** noundef %arraydecay, i32 noundef %conv) #15
  call fastcc void @pagevec_reinit(%struct.pagevec* noundef %pvec) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_cache_add_inactive_or_unevictable(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma) local_unnamed_addr #0 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 268723200
  %cmp = icmp eq i64 %and, 8192
  br i1 %cmp, label %land.lhs.true, label %if.end, !prof !18

land.lhs.true:                                    ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %call2.i = call fastcc i1 @test_and_set_bit(i64* noundef %flags.i) #16
  br i1 %call2.i, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call5 = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #15
  call void @__mod_zone_page_state(%struct.zone* noundef nonnull %call5, i32 noundef 7, i64 noundef 1) #16
  call fastcc void @count_vm_events() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @lru_cache_add(%struct.page* noundef %page) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(%struct.zone* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.zone* @page_zone(%struct.page* nocapture noundef readonly %page) unnamed_addr #7 {
entry:
  %call2 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #15
  %idxprom = zext i32 %call2 to i64
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %idxprom
  ret %struct.zone* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_events() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i64* getelementptr inbounds (%struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 49) to i64)
  %0 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %0) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_add_drain_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.lru_pvecs* @lru_pvecs to i64)
  %1 = inttoptr i64 %add to %struct.pagevec*
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %1) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__pagevec_lru_add(%struct.pagevec* noundef %1) #15
  %.pre = load i64, i64* %arrayidx, align 8
  br label %do.body2

do.body2:                                         ; preds = %entry, %if.then
  %2 = phi i64 [ %0, %entry ], [ %.pre, %if.then ]
  %add11 = add i64 %2, ptrtoint (%struct.lru_rotate* @lru_rotate to i64)
  %3 = inttoptr i64 %add11 to %struct.pagevec*
  %call13 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %3) #15
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %do.body64, label %if.then16

if.then16:                                        ; preds = %do.body2
  %call21 = call fastcc i64 @arch_local_irq_save() #15
  %call33 = call fastcc i64 @__kern_my_cpu_offset() #15
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %3, void (%struct.page*, %struct.lruvec*)* noundef nonnull @pagevec_move_tail_fn) #15
  %call45 = call fastcc i64 @__kern_my_cpu_offset() #15
  call fastcc void @arch_local_irq_restore(i64 noundef %call21) #15
  %.pre137 = load i64, i64* %arrayidx, align 8
  br label %do.body64

do.body64:                                        ; preds = %do.body2, %if.then16
  %4 = phi i64 [ %2, %do.body2 ], [ %.pre137, %if.then16 ]
  %add73 = add i64 %4, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 2) to i64)
  %5 = inttoptr i64 %add73 to %struct.pagevec*
  %call74 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %5) #15
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.body78, label %if.then76

if.then76:                                        ; preds = %do.body64
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %5, void (%struct.page*, %struct.lruvec*)* noundef nonnull @lru_deactivate_file_fn) #15
  %.pre138 = load i64, i64* %arrayidx, align 8
  br label %do.body78

do.body78:                                        ; preds = %do.body64, %if.then76
  %6 = phi i64 [ %4, %do.body64 ], [ %.pre138, %if.then76 ]
  %add87 = add i64 %6, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 3) to i64)
  %7 = inttoptr i64 %add87 to %struct.pagevec*
  %call88 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %7) #15
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.body92, label %if.then90

if.then90:                                        ; preds = %do.body78
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %7, void (%struct.page*, %struct.lruvec*)* noundef nonnull @lru_deactivate_fn) #15
  %.pre139 = load i64, i64* %arrayidx, align 8
  br label %do.body92

do.body92:                                        ; preds = %do.body78, %if.then90
  %8 = phi i64 [ %6, %do.body78 ], [ %.pre139, %if.then90 ]
  %add101 = add i64 %8, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 4) to i64)
  %9 = inttoptr i64 %add101 to %struct.pagevec*
  %call102 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %9) #15
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %do.body92
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %9, void (%struct.page*, %struct.lruvec*)* noundef nonnull @lru_lazyfree_fn) #15
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %do.body92
  call fastcc void @activate_page_drain(i32 noundef %cpu) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_count(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #7 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @lru_deactivate_file_fn(%struct.page* noundef %page, %struct.lruvec* noundef %lruvec) #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 32
  %tobool.not = icmp eq i64 %2, 0
  %call.i37 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %3 = inttoptr i64 %call.i37 to %struct.page*
  %flags.i38 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i38, align 8
  %5 = and i64 %4, 1048576
  %tobool3.not = icmp eq i64 %5, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i1 @page_mapped(%struct.page* noundef %page) #16
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #16
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %6 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i.i.i, align 8
  %8 = and i64 %7, 1048576
  %tobool.not.i.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.end6
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %9 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i12.i.i, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 5
  %13 = and i32 %12, 1
  %14 = or i32 %13, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.end6, %if.end.i.i
  %retval.0.i.i = phi i32 [ %14, %if.end.i.i ], [ 4, %if.end6 ]
  %call1.i = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef -1) #16
  %idxprom.i.i = zext i32 %call1.i to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #16
  %call.i40 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %15 = inttoptr i64 %call.i40 to %struct.page*
  %flags.i41 = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i41) #16
  %call.i42 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %16 = inttoptr i64 %call.i42 to %struct.page*
  %flags.i43 = getelementptr inbounds %struct.page, %struct.page* %16, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags.i43) #16
  %call.i44 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %17 = inttoptr i64 %call.i44 to %struct.page*
  %flags.i45 = getelementptr inbounds %struct.page, %struct.page* %17, i64 0, i32 0
  %18 = load volatile i64, i64* %flags.i45, align 8
  %19 = and i64 %18, 32768
  %tobool8.not = icmp eq i64 %19, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %del_page_from_lru_list.exit
  %call.i47 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %20 = inttoptr i64 %call.i47 to %struct.page*
  %flags.i48 = getelementptr inbounds %struct.page, %struct.page* %20, i64 0, i32 0
  %21 = load volatile i64, i64* %flags.i48, align 8
  %22 = and i64 %21, 8
  %tobool10.not = icmp eq i64 %22, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false, %del_page_from_lru_list.exit
  %call.i.i.i50 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %23 = inttoptr i64 %call.i.i.i50 to %struct.page*
  %flags.i.i.i51 = getelementptr inbounds %struct.page, %struct.page* %23, i64 0, i32 0
  %24 = load volatile i64, i64* %flags.i.i.i51, align 8
  %25 = and i64 %24, 1048576
  %tobool.not.i.i52 = icmp eq i64 %25, 0
  br i1 %tobool.not.i.i52, label %if.end.i.i58, label %add_page_to_lru_list.exit

if.end.i.i58:                                     ; preds = %if.then11
  %call1.i.i53 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i54 = icmp eq i32 %call1.i.i53, 0
  %cond.i.i55 = select i1 %tobool2.not.i.i54, i32 0, i32 2
  %call.i11.i.i56 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %26 = inttoptr i64 %call.i11.i.i56 to %struct.page*
  %flags.i12.i.i57 = getelementptr inbounds %struct.page, %struct.page* %26, i64 0, i32 0
  %27 = load volatile i64, i64* %flags.i12.i.i57, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 5
  %30 = and i32 %29, 1
  %31 = or i32 %30, %cond.i.i55
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %if.then11, %if.end.i.i58
  %retval.0.i.i59 = phi i32 [ %31, %if.end.i.i58 ], [ 4, %if.then11 ]
  %call1.i60 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i59, i32 noundef 1) #16
  %idxprom.i.i62 = zext i32 %call1.i60 to i64
  %arrayidx.i.i63 = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i62
  %add1.i.i64 = add nsw i32 %retval.0.i.i59, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i63, i32 noundef %add1.i.i64, i64 noundef 1) #16
  %idxprom.i = zext i32 %retval.0.i.i59 to i64
  %arrayidx.i = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom.i
  call fastcc void @list_add(%struct.list_head* noundef %lru.i, %struct.list_head* noundef %arrayidx.i) #16
  %call.i65 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %32 = inttoptr i64 %call.i65 to %struct.page*
  %flags.i66 = getelementptr inbounds %struct.page, %struct.page* %32, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 18, i64* noundef %flags.i66) #16
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %call.i.i.i67 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %33 = inttoptr i64 %call.i.i.i67 to %struct.page*
  %flags.i.i.i68 = getelementptr inbounds %struct.page, %struct.page* %33, i64 0, i32 0
  %34 = load volatile i64, i64* %flags.i.i.i68, align 8
  %35 = and i64 %34, 1048576
  %tobool.not.i.i69 = icmp eq i64 %35, 0
  br i1 %tobool.not.i.i69, label %if.end.i.i75, label %add_page_to_lru_list_tail.exit

if.end.i.i75:                                     ; preds = %if.else
  %call1.i.i70 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i71 = icmp eq i32 %call1.i.i70, 0
  %cond.i.i72 = select i1 %tobool2.not.i.i71, i32 0, i32 2
  %call.i11.i.i73 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %36 = inttoptr i64 %call.i11.i.i73 to %struct.page*
  %flags.i12.i.i74 = getelementptr inbounds %struct.page, %struct.page* %36, i64 0, i32 0
  %37 = load volatile i64, i64* %flags.i12.i.i74, align 8
  %38 = trunc i64 %37 to i32
  %39 = lshr i32 %38, 5
  %40 = and i32 %39, 1
  %41 = or i32 %40, %cond.i.i72
  br label %add_page_to_lru_list_tail.exit

add_page_to_lru_list_tail.exit:                   ; preds = %if.else, %if.end.i.i75
  %retval.0.i.i76 = phi i32 [ %41, %if.end.i.i75 ], [ 4, %if.else ]
  %call1.i77 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i76, i32 noundef 1) #16
  %idxprom.i.i79 = zext i32 %call1.i77 to i64
  %arrayidx.i.i80 = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i79
  %add1.i.i81 = add nsw i32 %retval.0.i.i76, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i80, i32 noundef %add1.i.i81, i64 noundef 1) #16
  %idxprom.i83 = zext i32 %retval.0.i.i76 to i64
  %arrayidx.i84 = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom.i83
  call fastcc void @list_add_tail(%struct.list_head* noundef %lru.i, %struct.list_head* noundef %arrayidx.i84) #16
  call fastcc void @__count_vm_events(i32 noundef 42) #15
  br label %if.end12

if.end12:                                         ; preds = %add_page_to_lru_list_tail.exit, %add_page_to_lru_list.exit
  br i1 %tobool.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end12
  call fastcc void @__count_vm_events(i32 noundef 18) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then14, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @lru_deactivate_fn(%struct.page* noundef %page, %struct.lruvec* noundef %lruvec) #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 32
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i16 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %3 = inttoptr i64 %call.i16 to %struct.page*
  %flags.i17 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i17, align 8
  %5 = and i64 %4, 1048576
  %tobool2.not = icmp eq i64 %5, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #16
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %6 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i.i.i, align 8
  %8 = and i64 %7, 1048576
  %tobool.not.i.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %9 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i12.i.i, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 5
  %13 = and i32 %12, 1
  %14 = or i32 %13, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then, %if.end.i.i
  %retval.0.i.i = phi i32 [ %14, %if.end.i.i ], [ 4, %if.then ]
  %call1.i = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef -1) #16
  %idxprom.i.i = zext i32 %call1.i to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #16
  %call.i19 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %15 = inttoptr i64 %call.i19 to %struct.page*
  %flags.i20 = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i20) #16
  %call.i21 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %16 = inttoptr i64 %call.i21 to %struct.page*
  %flags.i22 = getelementptr inbounds %struct.page, %struct.page* %16, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags.i22) #16
  %call.i.i.i23 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %17 = inttoptr i64 %call.i.i.i23 to %struct.page*
  %flags.i.i.i24 = getelementptr inbounds %struct.page, %struct.page* %17, i64 0, i32 0
  %18 = load volatile i64, i64* %flags.i.i.i24, align 8
  %19 = and i64 %18, 1048576
  %tobool.not.i.i25 = icmp eq i64 %19, 0
  br i1 %tobool.not.i.i25, label %if.end.i.i31, label %add_page_to_lru_list.exit

if.end.i.i31:                                     ; preds = %del_page_from_lru_list.exit
  %call1.i.i26 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i27 = icmp eq i32 %call1.i.i26, 0
  %cond.i.i28 = select i1 %tobool2.not.i.i27, i32 0, i32 2
  %call.i11.i.i29 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %20 = inttoptr i64 %call.i11.i.i29 to %struct.page*
  %flags.i12.i.i30 = getelementptr inbounds %struct.page, %struct.page* %20, i64 0, i32 0
  %21 = load volatile i64, i64* %flags.i12.i.i30, align 8
  %22 = trunc i64 %21 to i32
  %23 = lshr i32 %22, 5
  %24 = and i32 %23, 1
  %25 = or i32 %24, %cond.i.i28
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %del_page_from_lru_list.exit, %if.end.i.i31
  %retval.0.i.i32 = phi i32 [ %25, %if.end.i.i31 ], [ 4, %del_page_from_lru_list.exit ]
  %call1.i33 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i32, i32 noundef 1) #16
  %idxprom.i.i35 = zext i32 %call1.i33 to i64
  %arrayidx.i.i36 = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i35
  %add1.i.i37 = add nsw i32 %retval.0.i.i32, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i36, i32 noundef %add1.i.i37, i64 noundef 1) #16
  %idxprom.i = zext i32 %retval.0.i.i32 to i64
  %arrayidx.i = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom.i
  call fastcc void @list_add(%struct.list_head* noundef %lru.i, %struct.list_head* noundef %arrayidx.i) #16
  call fastcc void @__count_vm_events(i32 noundef 18) #15
  br label %if.end

if.end:                                           ; preds = %add_page_to_lru_list.exit, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @lru_lazyfree_fn(%struct.page* noundef %page, %struct.lruvec* noundef %lruvec) #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i25 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %4 = inttoptr i64 %call.i25 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 524288
  %tobool2.not = icmp eq i64 %6, 0
  br i1 %tobool2.not, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call.i26 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %7 = inttoptr i64 %call.i26 to %struct.page*
  %flags.i27 = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i27, align 8
  %9 = and i64 %8, 1048576
  %tobool8.not = icmp eq i64 %9, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #16
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %10 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %10, i64 0, i32 0
  %11 = load volatile i64, i64* %flags.i.i.i, align 8
  %12 = and i64 %11, 1048576
  %tobool.not.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %13 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 0
  %14 = load volatile i64, i64* %flags.i12.i.i, align 8
  %15 = trunc i64 %14 to i32
  %16 = lshr i32 %15, 5
  %17 = and i32 %16, 1
  %18 = or i32 %17, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then, %if.end.i.i
  %retval.0.i.i = phi i32 [ %18, %if.end.i.i ], [ 4, %if.then ]
  %call1.i = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef -1) #16
  %idxprom.i.i = zext i32 %call1.i to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #16
  %call.i29 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %19 = inttoptr i64 %call.i29 to %struct.page*
  %flags.i30 = getelementptr inbounds %struct.page, %struct.page* %19, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i30) #16
  %call.i31 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %20 = inttoptr i64 %call.i31 to %struct.page*
  %flags.i32 = getelementptr inbounds %struct.page, %struct.page* %20, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags.i32) #16
  %call.i33 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %21 = inttoptr i64 %call.i33 to %struct.page*
  %flags.i34 = getelementptr inbounds %struct.page, %struct.page* %21, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 19, i64* noundef %flags.i34) #16
  %call.i.i.i35 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %22 = inttoptr i64 %call.i.i.i35 to %struct.page*
  %flags.i.i.i36 = getelementptr inbounds %struct.page, %struct.page* %22, i64 0, i32 0
  %23 = load volatile i64, i64* %flags.i.i.i36, align 8
  %24 = and i64 %23, 1048576
  %tobool.not.i.i37 = icmp eq i64 %24, 0
  br i1 %tobool.not.i.i37, label %if.end.i.i43, label %add_page_to_lru_list.exit

if.end.i.i43:                                     ; preds = %del_page_from_lru_list.exit
  %call1.i.i38 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i39 = icmp eq i32 %call1.i.i38, 0
  %cond.i.i40 = select i1 %tobool2.not.i.i39, i32 0, i32 2
  %call.i11.i.i41 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %25 = inttoptr i64 %call.i11.i.i41 to %struct.page*
  %flags.i12.i.i42 = getelementptr inbounds %struct.page, %struct.page* %25, i64 0, i32 0
  %26 = load volatile i64, i64* %flags.i12.i.i42, align 8
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 5
  %29 = and i32 %28, 1
  %30 = or i32 %29, %cond.i.i40
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %del_page_from_lru_list.exit, %if.end.i.i43
  %retval.0.i.i44 = phi i32 [ %30, %if.end.i.i43 ], [ 4, %del_page_from_lru_list.exit ]
  %call1.i45 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i44, i32 noundef 1) #16
  %idxprom.i.i47 = zext i32 %call1.i45 to i64
  %arrayidx.i.i48 = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i47
  %add1.i.i49 = add nsw i32 %retval.0.i.i44, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i48, i32 noundef %add1.i.i49, i64 noundef 1) #16
  %idxprom.i = zext i32 %retval.0.i.i44 to i64
  %arrayidx.i = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom.i
  call fastcc void @list_add(%struct.list_head* noundef %lru.i, %struct.list_head* noundef %arrayidx.i) #16
  call fastcc void @__count_vm_events(i32 noundef 19) #15
  br label %if.end

if.end:                                           ; preds = %add_page_to_lru_list.exit, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @activate_page_drain(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 5) to i64)
  %1 = inttoptr i64 %add to %struct.pagevec*
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %1) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %1, void (%struct.page*, %struct.lruvec*)* noundef nonnull @__activate_page) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @deactivate_file_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 1048576
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.end35

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @get_page_unless_zero(%struct.page* noundef %page) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end35, label %if.then5, !prof !18

if.then5:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add19 = add i64 %call8, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 2) to i64)
  %3 = inttoptr i64 %add19 to %struct.pagevec*
  %call20 = call fastcc i1 @pagevec_add_and_need_flush(%struct.pagevec* noundef %3, %struct.page* noundef %page) #15
  br i1 %call20, label %if.then21, label %do.body24

if.then21:                                        ; preds = %if.then5
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %3, void (%struct.page*, %struct.lruvec*)* noundef nonnull @lru_deactivate_file_fn) #15
  br label %do.body24

do.body24:                                        ; preds = %if.then21, %if.then5
  %call31 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  br label %if.end35

if.end35:                                         ; preds = %entry, %do.body24, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_page_unless_zero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_add_unless(%struct.page* noundef %page) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @deactivate_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 16
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i47 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %3 = inttoptr i64 %call.i47 to %struct.page*
  %flags.i48 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i48, align 8
  %5 = and i64 %4, 32
  %tobool2.not = icmp eq i64 %5, 0
  br i1 %tobool2.not, label %if.end34, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call.i50 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %6 = inttoptr i64 %call.i50 to %struct.page*
  %flags.i51 = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i51, align 8
  %8 = and i64 %7, 1048576
  %tobool5.not = icmp eq i64 %8, 0
  br i1 %tobool5.not, label %if.then, label %if.end34

if.then:                                          ; preds = %land.lhs.true3
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add19 = add i64 %call8, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 3) to i64)
  %9 = inttoptr i64 %add19 to %struct.pagevec*
  call fastcc void @get_page(%struct.page* noundef %page) #15
  %call20 = call fastcc i1 @pagevec_add_and_need_flush(%struct.pagevec* noundef %9, %struct.page* noundef %page) #15
  br i1 %call20, label %if.then21, label %do.body23

if.then21:                                        ; preds = %if.then
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %9, void (%struct.page*, %struct.lruvec*)* noundef nonnull @lru_deactivate_fn) #15
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %if.then
  %call30 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  br label %if.end34

if.end34:                                         ; preds = %do.body23, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mark_page_lazyfree(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 16
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i55 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %3 = inttoptr i64 %call.i55 to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 1, i32 0, i32 1
  %4 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %5 = ptrtoint %struct.address_space* %4 to i64
  %6 = and i64 %5, 1
  %tobool2.not = icmp eq i64 %6, 0
  br i1 %tobool2.not, label %if.end40, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call.i56 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %7 = inttoptr i64 %call.i56 to %struct.page*
  %flags.i57 = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i57, align 8
  %9 = and i64 %8, 524288
  %tobool5.not = icmp eq i64 %9, 0
  br i1 %tobool5.not, label %if.end40, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call.i59 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %10 = inttoptr i64 %call.i59 to %struct.page*
  %flags.i60 = getelementptr inbounds %struct.page, %struct.page* %10, i64 0, i32 0
  %11 = load volatile i64, i64* %flags.i60, align 8
  %12 = and i64 %11, 1048576
  %tobool11.not = icmp eq i64 %12, 0
  br i1 %tobool11.not, label %if.then, label %if.end40

if.then:                                          ; preds = %land.lhs.true6
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !25
  %call14 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add25 = add i64 %call14, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 4) to i64)
  %13 = inttoptr i64 %add25 to %struct.pagevec*
  call fastcc void @get_page(%struct.page* noundef %page) #15
  %call26 = call fastcc i1 @pagevec_add_and_need_flush(%struct.pagevec* noundef %13, %struct.page* noundef %page) #15
  br i1 %call26, label %if.then27, label %do.body29

if.then27:                                        ; preds = %if.then
  call fastcc void @pagevec_lru_move_fn(%struct.pagevec* noundef %13, void (%struct.page*, %struct.lruvec*)* noundef nonnull @lru_lazyfree_fn) #15
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %if.then
  %call36 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !26
  br label %if.end40

if.end40:                                         ; preds = %do.body29, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_add_drain() local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add11 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add11 to i32*
  %1 = load i32, i32* %0, align 4
  call void @lru_add_drain_cpu(i32 noundef %1) #15
  %call19 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_add_drain_cpu_zone(%struct.zone* noundef %zone) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add11 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add11 to i32*
  %1 = load i32, i32* %0, align 4
  call void @lru_add_drain_cpu(i32 noundef %1) #15
  call void @drain_local_pages(%struct.zone* noundef %zone) #16
  %call19 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_local_pages(%struct.zone* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__lru_add_drain_all(i1 noundef %force_all_cpus) local_unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @mm_percpu_wq, align 8
  %tobool.not = icmp eq %struct.workqueue_struct* %0, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !18

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/swap.c\22; .popsection; .long 14472b - 14470b; .short 764; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !31
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %1 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* nonnull elementtype(i32) @__lru_add_drain_all.lru_drain_gen) #17, !srcloc !33
  call void @mutex_lock(%struct.mutex* noundef nonnull @__lru_add_drain_all.lock) #16
  %2 = load i32, i32* @__lru_add_drain_all.lru_drain_gen, align 4
  %cmp = icmp eq i32 %1, %2
  %3 = or i1 %cmp, %force_all_cpus
  br i1 %3, label %do.body37, label %done, !prof !8

do.body37:                                        ; preds = %if.end18
  %add = add i32 %2, 1
  store volatile i32 %add, i32* @__lru_add_drain_all.lru_drain_gen, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  call fastcc void @cpumask_clear() #15
  %call42192 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #19
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp43193 = icmp ult i32 %call42192, %4
  br i1 %cmp43193, label %for.body, label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %if.end131, %do.body37
  %5 = phi i32 [ %4, %do.body37 ], [ %14, %if.end131 ]
  %call133195 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__lru_add_drain_all.has_work) #19
  %cmp134196 = icmp ult i32 %call133195, %5
  br i1 %cmp134196, label %do.body137, label %done

for.body:                                         ; preds = %do.body37, %if.end131
  %call42194 = phi i32 [ %call42, %if.end131 ], [ %call42192, %do.body37 ]
  %idxprom = zext i32 %call42194 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add50 = add i64 %6, ptrtoint (%struct.work_struct* @lru_add_drain_work to i64)
  %7 = inttoptr i64 %add50 to %struct.work_struct*
  br i1 %force_all_cpus, label %do.body126, label %do.body53

do.body53:                                        ; preds = %for.body
  %add62 = add i64 %6, ptrtoint (%struct.lru_pvecs* @lru_pvecs to i64)
  %8 = inttoptr i64 %add62 to %struct.pagevec*
  %call63 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %8) #15
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %do.body126

lor.lhs.false65:                                  ; preds = %do.body53
  %add76 = add i64 %6, ptrtoint (%struct.lru_rotate* @lru_rotate to i64)
  %9 = inttoptr i64 %add76 to %struct.pagevec*
  %call77 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %9) #15
  %tobool79.not = icmp eq i32 %call77, 0
  br i1 %tobool79.not, label %do.body81, label %do.body126

do.body81:                                        ; preds = %lor.lhs.false65
  %add90 = add i64 %6, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 2) to i64)
  %10 = inttoptr i64 %add90 to %struct.pagevec*
  %call91 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %10) #15
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.body94, label %do.body126

do.body94:                                        ; preds = %do.body81
  %add103 = add i64 %6, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 3) to i64)
  %11 = inttoptr i64 %add103 to %struct.pagevec*
  %call104 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %11) #15
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.body107, label %do.body126

do.body107:                                       ; preds = %do.body94
  %add116 = add i64 %6, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 4) to i64)
  %12 = inttoptr i64 %add116 to %struct.pagevec*
  %call117 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %12) #15
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %lor.lhs.false119, label %do.body126

lor.lhs.false119:                                 ; preds = %do.body107
  %call120 = call fastcc i1 @need_activate_page_drain(i32 noundef %call42194) #15
  br i1 %call120, label %do.body126, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false119
  %call123 = call i1 @has_bh_in_lru(i32 noundef %call42194, i8* noundef null) #16
  br i1 %call123, label %do.body126, label %if.end131

do.body126:                                       ; preds = %for.body, %do.body53, %lor.lhs.false65, %do.body81, %do.body94, %do.body107, %lor.lhs.false119, %lor.lhs.false122
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.work_struct, %struct.work_struct* %7, i64 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry127 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %7, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry127) #15
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %7, i64 0, i32 2
  store void (%struct.work_struct*)* @lru_add_drain_per_cpu, void (%struct.work_struct*)** %func, align 8
  %13 = load %struct.workqueue_struct*, %struct.workqueue_struct** @mm_percpu_wq, align 8
  %call130 = call i1 @queue_work_on(i32 noundef %call42194, %struct.workqueue_struct* noundef %13, %struct.work_struct* noundef %7) #16
  call fastcc void @__cpumask_set_cpu(i32 noundef %call42194) #15
  br label %if.end131

if.end131:                                        ; preds = %do.body126, %lor.lhs.false122
  %call42 = call i32 @cpumask_next(i32 noundef %call42194, %struct.cpumask* noundef nonnull @__cpu_online_mask) #19
  %14 = load i32, i32* @nr_cpu_ids, align 4
  %cmp43 = icmp ult i32 %call42, %14
  br i1 %cmp43, label %for.body, label %for.cond132.preheader

do.body137:                                       ; preds = %for.cond132.preheader, %do.body137
  %call133197 = phi i32 [ %call133, %do.body137 ], [ %call133195, %for.cond132.preheader ]
  %idxprom144 = zext i32 %call133197 to i64
  %arrayidx145 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom144
  %15 = load i64, i64* %arrayidx145, align 8
  %add146 = add i64 %15, ptrtoint (%struct.work_struct* @lru_add_drain_work to i64)
  %16 = inttoptr i64 %add146 to %struct.work_struct*
  %call147 = call i1 @flush_work(%struct.work_struct* noundef %16) #16
  %call133 = call i32 @cpumask_next(i32 noundef %call133197, %struct.cpumask* noundef nonnull @__lru_add_drain_all.has_work) #19
  %17 = load i32, i32* @nr_cpu_ids, align 4
  %cmp134 = icmp ult i32 %call133, %17
  br i1 %cmp134, label %do.body137, label %done

done:                                             ; preds = %do.body137, %for.cond132.preheader, %if.end18
  call void @mutex_unlock(%struct.mutex* noundef nonnull @__lru_add_drain_all.lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %done
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear() unnamed_addr #0 {
entry:
  call fastcc void @bitmap_zero() #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @need_activate_page_drain(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.pagevec* getelementptr inbounds (%struct.lru_pvecs, %struct.lru_pvecs* @lru_pvecs, i64 0, i32 5) to i64)
  %1 = inttoptr i64 %add to %struct.pagevec*
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %1) #15
  %cmp = icmp ne i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @has_bh_in_lru(i32 noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @lru_add_drain_per_cpu(%struct.work_struct* nocapture noundef readnone %dummy) #0 {
entry:
  call fastcc void @lru_add_and_bh_lrus_drain() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__cpumask_set_cpu(i32 noundef %cpu) unnamed_addr #9 {
entry:
  %rem.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %cpu, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @__lru_add_drain_all.has_work, i64 0, i32 0, i64 %idx.ext.i
  %0 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %0, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_work(%struct.work_struct* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_add_drain_all() local_unnamed_addr #0 {
entry:
  call void @__lru_add_drain_all(i1 noundef false) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lru_cache_disable() local_unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef nonnull @lru_disable_count) #16
  call void @__lru_add_drain_all(i1 noundef true) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @release_pages(%struct.page** nocapture noundef readonly %pages, i32 noundef %nr) local_unnamed_addr #0 {
entry:
  %pages_to_free = alloca %struct.list_head, align 8
  %flags = alloca i64, align 8
  %0 = bitcast %struct.list_head* %pages_to_free to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %pages_to_free, i64 0, i32 0
  store %struct.list_head* %pages_to_free, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %pages_to_free, i64 0, i32 1
  store %struct.list_head* %pages_to_free, %struct.list_head** %prev, align 8
  %1 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %flags, align 8, !annotation !35
  %cmp81 = icmp sgt i32 %nr, 0
  br i1 %cmp81, label %for.body.preheader, label %if.end42

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %nr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %lock_batch.083 = phi i32 [ 0, %for.body.preheader ], [ %lock_batch.4, %cleanup ]
  %lruvec.082 = phi %struct.lruvec* [ null, %for.body.preheader ], [ %lruvec.5, %cleanup ]
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %indvars.iv
  %2 = load %struct.page*, %struct.page** %arrayidx, align 8
  %tobool.not = icmp eq %struct.lruvec* %lruvec.082, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %inc = add i32 %lock_batch.083, 1
  %cmp1 = icmp eq i32 %inc, 32
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %flags, align 8
  call fastcc void @unlock_page_lruvec_irqrestore(%struct.lruvec* noundef nonnull %lruvec.082, i64 noundef %3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %lruvec.1 = phi %struct.lruvec* [ null, %if.then ], [ %lruvec.082, %land.lhs.true ], [ null, %for.body ]
  %lock_batch.1 = phi i32 [ 32, %if.then ], [ %inc, %land.lhs.true ], [ %lock_batch.083, %for.body ]
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %2) #15
  %4 = inttoptr i64 %call to %struct.page*
  %call19 = call fastcc i32 @put_page_testzero(%struct.page* noundef %4) #15
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 65536
  %tobool.not.i = icmp eq i64 %6, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.then25

PageCompound.exit:                                ; preds = %if.end22
  %7 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %7 to i64*
  %8 = load volatile i64, i64* %compound_head.i.i, align 8
  %9 = and i64 %8, 1
  %tobool24.not = icmp eq i64 %9, 0
  br i1 %tobool24.not, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end22, %PageCompound.exit
  %tobool26.not = icmp eq %struct.lruvec* %lruvec.1, null
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then25
  %10 = load i64, i64* %flags, align 8
  call fastcc void @unlock_page_lruvec_irqrestore(%struct.lruvec* noundef nonnull %lruvec.1, i64 noundef %10) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25
  call fastcc void @__put_compound_page(%struct.page* noundef %4) #15
  br label %cleanup

if.end29:                                         ; preds = %PageCompound.exit
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %4) #16
  %11 = inttoptr i64 %call.i to %struct.page*
  %flags.i76 = getelementptr inbounds %struct.page, %struct.page* %11, i64 0, i32 0
  %12 = load volatile i64, i64* %flags.i76, align 8
  %13 = and i64 %12, 16
  %tobool31.not = icmp eq i64 %13, 0
  br i1 %tobool31.not, label %if.end38, label %if.then32

if.then32:                                        ; preds = %if.end29
  %call33 = call fastcc %struct.lruvec* @relock_page_lruvec_irqsave(%struct.page* noundef %4, %struct.lruvec* noundef %lruvec.1, i64* noundef nonnull %flags) #15
  %cmp34.not = icmp eq %struct.lruvec* %lruvec.1, %call33
  %spec.select = select i1 %cmp34.not, i32 %lock_batch.1, i32 0
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #16
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %4) #16
  %14 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %14, i64 0, i32 0
  %15 = load volatile i64, i64* %flags.i.i.i, align 8
  %16 = and i64 %15, 1048576
  %tobool.not.i.i = icmp eq i64 %16, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then32
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %4) #16
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %4) #16
  %17 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %17, i64 0, i32 0
  %18 = load volatile i64, i64* %flags.i12.i.i, align 8
  %19 = trunc i64 %18 to i32
  %20 = lshr i32 %19, 5
  %21 = and i32 %20, 1
  %22 = or i32 %21, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then32, %if.end.i.i
  %retval.0.i.i = phi i32 [ %22, %if.end.i.i ], [ 4, %if.then32 ]
  %call1.i = call fastcc i32 @page_zonenum(%struct.page* noundef %4) #16
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %call33) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %call33, i32 noundef %retval.0.i.i, i32 noundef -1) #16
  %idxprom.i.i = zext i32 %call1.i to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #16
  %call.i.i77 = call fastcc i64 @_compound_head(%struct.page* noundef %4) #16
  %23 = inttoptr i64 %call.i.i77 to %struct.page*
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %23, i64 0, i32 0
  %24 = load i64, i64* %flags.i.i, align 8
  %and.i.i.i = and i64 %24, -17
  store i64 %and.i.i.i, i64* %flags.i.i, align 8
  %call.i7.i = call fastcc i64 @_compound_head(%struct.page* noundef %4) #16
  %25 = inttoptr i64 %call.i7.i to %struct.page*
  %flags.i8.i = getelementptr inbounds %struct.page, %struct.page* %25, i64 0, i32 0
  %26 = load volatile i64, i64* %flags.i8.i, align 8
  %27 = and i64 %26, 32
  %tobool.not.i78 = icmp eq i64 %27, 0
  br i1 %tobool.not.i78, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %del_page_from_lru_list.exit
  %call.i9.i = call fastcc i64 @_compound_head(%struct.page* noundef %4) #16
  %28 = inttoptr i64 %call.i9.i to %struct.page*
  %flags.i10.i = getelementptr inbounds %struct.page, %struct.page* %28, i64 0, i32 0
  %29 = load volatile i64, i64* %flags.i10.i, align 8
  %30 = and i64 %29, 1048576
  %tobool2.not.i = icmp eq i64 %30, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.end38

if.end.i:                                         ; preds = %land.lhs.true.i, %del_page_from_lru_list.exit
  %call.i12.i = call fastcc i64 @_compound_head(%struct.page* noundef %4) #16
  %31 = inttoptr i64 %call.i12.i to %struct.page*
  %flags.i13.i = getelementptr inbounds %struct.page, %struct.page* %31, i64 0, i32 0
  %32 = load i64, i64* %flags.i13.i, align 8
  %and.i.i14.i = and i64 %32, -33
  store i64 %and.i.i14.i, i64* %flags.i13.i, align 8
  %call.i15.i = call fastcc i64 @_compound_head(%struct.page* noundef %4) #16
  %33 = inttoptr i64 %call.i15.i to %struct.page*
  %flags.i16.i = getelementptr inbounds %struct.page, %struct.page* %33, i64 0, i32 0
  %34 = load i64, i64* %flags.i16.i, align 8
  %and.i.i17.i = and i64 %34, -1048577
  store i64 %and.i.i17.i, i64* %flags.i16.i, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end.i, %land.lhs.true.i, %if.end29
  %lruvec.4 = phi %struct.lruvec* [ %lruvec.1, %if.end29 ], [ %call33, %land.lhs.true.i ], [ %call33, %if.end.i ]
  %lock_batch.3 = phi i32 [ %lock_batch.1, %if.end29 ], [ %spec.select, %land.lhs.true.i ], [ %spec.select, %if.end.i ]
  %35 = load i64, i64* %flags.i, align 8
  %and.i.i = and i64 %35, -129
  store i64 %and.i.i, i64* %flags.i, align 8
  %lru = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %pages_to_free) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end38, %if.end28
  %lruvec.5 = phi %struct.lruvec* [ null, %if.end28 ], [ %lruvec.4, %if.end38 ], [ %lruvec.1, %if.end ]
  %lock_batch.4 = phi i32 [ %lock_batch.1, %if.end28 ], [ %lock_batch.3, %if.end38 ], [ %lock_batch.1, %if.end ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup
  %tobool40.not = icmp eq %struct.lruvec* %lruvec.5, null
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %for.end
  %36 = load i64, i64* %flags, align 8
  call fastcc void @unlock_page_lruvec_irqrestore(%struct.lruvec* noundef nonnull %lruvec.5, i64 noundef %36) #15
  br label %if.end42

if.end42:                                         ; preds = %entry, %if.then41, %for.end
  call void @free_unref_page_list(%struct.list_head* noundef nonnull %pages_to_free) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_page_lruvec_irqrestore(%struct.lruvec* noundef %lruvec, i64 noundef %flags) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.lruvec* @relock_page_lruvec_irqsave(%struct.page* nocapture noundef readnone %page, %struct.lruvec* noundef %locked_lruvec, i64* nocapture noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.lruvec* %locked_lruvec, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @page_matches_lruvec(%struct.page* noundef %page, %struct.lruvec* noundef nonnull %locked_lruvec) #15
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %0 = load i64, i64* %flags, align 8
  call fastcc void @unlock_page_lruvec_irqrestore(%struct.lruvec* noundef nonnull %locked_lruvec, i64 noundef %0) #15
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  call fastcc void @lock_page_lruvec_irqsave(%struct.page* noundef %page, i64* noundef %flags) #15
  br label %return

return:                                           ; preds = %if.then, %if.end2
  %retval.0 = phi %struct.lruvec* [ getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16), %if.end2 ], [ %locked_lruvec, %if.then ]
  ret %struct.lruvec* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_unref_page_list(%struct.list_head* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__pagevec_release(%struct.pagevec* nocapture noundef %pvec) local_unnamed_addr #0 {
entry:
  %percpu_pvec_drained = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 1
  %0 = load i8, i8* %percpu_pvec_drained, align 1, !range !36
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @lru_add_drain() #15
  store i8 1, i8* %percpu_pvec_drained, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 0
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15, !range !37
  call void @release_pages(%struct.page** noundef %arraydecay, i32 noundef %call) #15
  call fastcc void @pagevec_reinit(%struct.pagevec* noundef %pvec) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pagevec_reinit(%struct.pagevec* nocapture noundef writeonly %pvec) unnamed_addr #10 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 0, i8* %nr, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pagevec_lru_add_fn(%struct.page* noundef %page, %struct.lruvec* noundef %lruvec) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 20, i64* noundef %flags.i) #16
  %call.i20 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %1 = inttoptr i64 %call.i20 to %struct.page*
  %flags.i21 = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %flags.i21) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  %call2 = call fastcc i1 @page_evictable(%struct.page* noundef %page) #15
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %call1.i, label %if.end8.sink.split, label %if.end8

if.else:                                          ; preds = %entry
  %call.i22 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %2 = inttoptr i64 %call.i22 to %struct.page*
  %flags.i23 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags.i23) #16
  %call.i24 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %3 = inttoptr i64 %call.i24 to %struct.page*
  %flags.i25 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 20, i64* noundef %flags.i25) #16
  br i1 %call1.i, label %if.end8, label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.else, %if.then
  %.sink = phi i32 [ 48, %if.then ], [ 46, %if.else ]
  call fastcc void @__count_vm_events(i32 noundef %.sink) #15
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.else, %if.then
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %4 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i.i.i, align 8
  %6 = and i64 %5, 1048576
  %tobool.not.i.i = icmp eq i64 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %add_page_to_lru_list.exit

if.end.i.i:                                       ; preds = %if.end8
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %7 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i12.i.i, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i32 %9, 5
  %11 = and i32 %10, 1
  %12 = or i32 %11, %cond.i.i
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %if.end8, %if.end.i.i
  %retval.0.i.i = phi i32 [ %12, %if.end.i.i ], [ 4, %if.end8 ]
  %call1.i26 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef 1) #16
  %idxprom.i.i = zext i32 %call1.i26 to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef 1) #16
  %lru3.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  %idxprom.i = zext i32 %retval.0.i.i to i64
  %arrayidx.i = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom.i
  call fastcc void @list_add(%struct.list_head* noundef %lru3.i, %struct.list_head* noundef %arrayidx.i) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @pagevec_remove_exceptionals(%struct.pagevec* nocapture noundef %pvec) local_unnamed_addr #11 {
entry:
  %call16 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %j.019 = phi i32 [ %j.1, %if.end ], [ 0, %entry ]
  %i.018 = phi i32 [ %inc5, %if.end ], [ 0, %entry ]
  %idxprom = sext i32 %i.018 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %0 = load %struct.page*, %struct.page** %arrayidx, align 8
  %1 = bitcast %struct.page* %0 to i8*
  %call1 = call fastcc i1 @xa_is_value(i8* noundef %1) #15
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add i32 %j.019, 1
  %idxprom3 = sext i32 %j.019 to i64
  %arrayidx4 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom3
  store %struct.page* %0, %struct.page** %arrayidx4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %j.1 = phi i32 [ %j.019, %for.body ], [ %inc, %if.then ]
  %inc5 = add nuw i32 %i.018, 1
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  %cmp = icmp ult i32 %inc5, %call
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ %j.1, %if.end ]
  %conv = trunc i32 %j.0.lcssa to i8
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 %conv, i8* %nr, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pagevec_lookup_range(%struct.pagevec* noundef %pvec, %struct.address_space* noundef %mapping, i64* noundef %start, i64 noundef %end) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 0
  %call = call i32 @find_get_pages_range(%struct.address_space* noundef %mapping, i64* noundef %start, i64 noundef %end, i32 noundef 15, %struct.page** noundef %arraydecay) #16
  %conv = trunc i32 %call to i8
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 %conv, i8* %nr, align 8
  %call1 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_range(%struct.address_space* noundef, i64* noundef, i64 noundef, i32 noundef, %struct.page** noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pagevec_lookup_range_tag(%struct.pagevec* noundef %pvec, %struct.address_space* noundef %mapping, i64* noundef %index, i64 noundef %end, i32 noundef %tag) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 0
  %call = call i32 @find_get_pages_range_tag(%struct.address_space* noundef %mapping, i64* noundef %index, i64 noundef %end, i32 noundef %tag, i32 noundef 15, %struct.page** noundef %arraydecay) #16
  %conv = trunc i32 %call to i8
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 %conv, i8* %nr, align 8
  %call1 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_range_tag(%struct.address_space* noundef, i64* noundef, i64 noundef, i32 noundef, i32 noundef, %struct.page** noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nofree noinline norecurse nounwind null_pointer_is_valid optsize willreturn
define dso_local void @swap_setup() local_unnamed_addr #12 section ".init.text" {
entry:
  %call = call fastcc i64 @totalram_pages() #15
  %cmp = icmp ult i64 %call, 4096
  %. = select i1 %cmp, i32 2, i32 3
  store i32 %., i32* @page_cluster, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 1, i64* elementtype(i64) %0) #17, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  call void @rcu_read_unlock_strict() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__page_cache_release(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 16
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #17
  store i64 0, i64* %flags, align 8, !annotation !35
  call fastcc void @lock_page_lruvec_irqsave(%struct.page* noundef %page, i64* noundef nonnull %flags) #15
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #16
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %4 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i.i.i, align 8
  %6 = and i64 %5, 1048576
  %tobool.not.i.i = icmp eq i64 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %7 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i12.i.i, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i32 %9, 5
  %11 = and i32 %10, 1
  %12 = or i32 %11, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then, %if.end.i.i
  %retval.0.i.i = phi i32 [ %12, %if.end.i.i ], [ 4, %if.then ]
  %call1.i = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16)) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16), i32 noundef %retval.0.i.i, i32 noundef -1) #16
  %idxprom.i.i = zext i32 %call1.i to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #16
  %call.i.i8 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %13 = inttoptr i64 %call.i.i8 to %struct.page*
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 0
  %14 = load i64, i64* %flags.i.i, align 8
  %and.i.i.i = and i64 %14, -17
  store i64 %and.i.i.i, i64* %flags.i.i, align 8
  %call.i7.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %15 = inttoptr i64 %call.i7.i to %struct.page*
  %flags.i8.i = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  %16 = load volatile i64, i64* %flags.i8.i, align 8
  %17 = and i64 %16, 32
  %tobool.not.i = icmp eq i64 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %del_page_from_lru_list.exit
  %call.i9.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %18 = inttoptr i64 %call.i9.i to %struct.page*
  %flags.i10.i = getelementptr inbounds %struct.page, %struct.page* %18, i64 0, i32 0
  %19 = load volatile i64, i64* %flags.i10.i, align 8
  %20 = and i64 %19, 1048576
  %tobool2.not.i = icmp eq i64 %20, 0
  br i1 %tobool2.not.i, label %if.end.i, label %__clear_page_lru_flags.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %del_page_from_lru_list.exit
  %call.i12.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %21 = inttoptr i64 %call.i12.i to %struct.page*
  %flags.i13.i = getelementptr inbounds %struct.page, %struct.page* %21, i64 0, i32 0
  %22 = load i64, i64* %flags.i13.i, align 8
  %and.i.i14.i = and i64 %22, -33
  store i64 %and.i.i14.i, i64* %flags.i13.i, align 8
  %call.i15.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %23 = inttoptr i64 %call.i15.i to %struct.page*
  %flags.i16.i = getelementptr inbounds %struct.page, %struct.page* %23, i64 0, i32 0
  %24 = load i64, i64* %flags.i16.i, align 8
  %and.i.i17.i = and i64 %24, -1048577
  store i64 %and.i.i17.i, i64* %flags.i16.i, align 8
  br label %__clear_page_lru_flags.exit

__clear_page_lru_flags.exit:                      ; preds = %land.lhs.true.i, %if.end.i
  %25 = load i64, i64* %flags, align 8
  call fastcc void @unlock_page_lruvec_irqrestore(%struct.lruvec* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16), i64 noundef %25) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #17
  br label %if.end

if.end:                                           ; preds = %__clear_page_lru_flags.exit, %entry
  %flags.i9 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %26 = load i64, i64* %flags.i9, align 8
  %and.i.i = and i64 %26, -129
  store i64 %and.i.i, i64* %flags.i9, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @destroy_compound_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %compound_dtor = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %compound_dtor to i8*
  %1 = load i8, i8* %0, align 8
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr [2 x void (%struct.page*)*], [2 x void (%struct.page*)*]* @compound_page_dtors, i64 0, i64 %idxprom
  %2 = load void (%struct.page*)*, void (%struct.page*)** %arrayidx1, align 8
  call void %2(%struct.page* noundef %page) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page_lruvec_irqsave(%struct.page* nocapture noundef readnone %page, i64* nocapture noundef writeonly %flagsp) unnamed_addr #0 {
entry:
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave() #15
  store i64 %call3, i64* %flagsp, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  call fastcc void @do_raw_spin_lock_flags() #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.qspinlock* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16, i32 1, i32 0, i32 0, i32 0) to i8*), i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16, i32 1, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !43
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_unref_page(%struct.page* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #17, !srcloc !44
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #17, !srcloc !45
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #15
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !18

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #17, !srcloc !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #1 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @pagevec_add(%struct.pagevec* nocapture noundef %pvec, %struct.page* noundef %page) unnamed_addr #9 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %inc = add i8 %0, 1
  store i8 %inc, i8* %nr, align 8
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  store %struct.page* %page, %struct.page** %arrayidx, align 8
  %call = call fastcc i32 @pagevec_space(%struct.pagevec* noundef %pvec) #15
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @lru_cache_disabled() unnamed_addr #1 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @lru_disable_count, i64 0, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_space(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #7 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  %sub = sub nsw i32 15, %conv
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #16
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !47
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !48
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__count_vm_events(i32 noundef %item) unnamed_addr #14 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  %add7 = add i64 %2, 1
  store i64 %add7, i64* %1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_zonenum(%struct.page* nocapture noundef readonly %page) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %shr = lshr i64 %0, 62
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef readnone %lruvec) unnamed_addr #4 {
entry:
  %add.ptr = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 -38, i32 0, i64 3
  %0 = bitcast %struct.list_head* %add.ptr to %struct.pglist_data*
  ret %struct.pglist_data* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %idx, i32 noundef %val) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #15
  %conv = sext i32 %val to i64
  call void @__mod_node_page_state(%struct.pglist_data* noundef %call, i32 noundef %idx, i64 noundef %conv) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
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
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !50
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state(i32 noundef %item) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @global_node_page_state_pages(i32 noundef %item) #15
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state_pages(i32 noundef %item) unnamed_addr #1 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @arch_local_irq_enable() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !52
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #17, !srcloc !53
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__activate_page(%struct.page* noundef %page, %struct.lruvec* noundef %lruvec) #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 32
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i16 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %3 = inttoptr i64 %call.i16 to %struct.page*
  %flags.i17 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i17, align 8
  %5 = and i64 %4, 1048576
  %tobool2.not = icmp eq i64 %5, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #16
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %6 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i.i.i, align 8
  %8 = and i64 %7, 1048576
  %tobool.not.i.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %9 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i12.i.i, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 5
  %13 = and i32 %12, 1
  %14 = or i32 %13, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then, %if.end.i.i
  %retval.0.i.i = phi i32 [ %14, %if.end.i.i ], [ 4, %if.then ]
  %call1.i = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef -1) #16
  %idxprom.i.i = zext i32 %call1.i to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #16
  %call.i19 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %15 = inttoptr i64 %call.i19 to %struct.page*
  %flags.i20 = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %flags.i20) #16
  %call.i.i.i21 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %16 = inttoptr i64 %call.i.i.i21 to %struct.page*
  %flags.i.i.i22 = getelementptr inbounds %struct.page, %struct.page* %16, i64 0, i32 0
  %17 = load volatile i64, i64* %flags.i.i.i22, align 8
  %18 = and i64 %17, 1048576
  %tobool.not.i.i23 = icmp eq i64 %18, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i29, label %add_page_to_lru_list.exit

if.end.i.i29:                                     ; preds = %del_page_from_lru_list.exit
  %call1.i.i24 = call fastcc i32 @page_is_file_lru(%struct.page* noundef %page) #16
  %tobool2.not.i.i25 = icmp eq i32 %call1.i.i24, 0
  %cond.i.i26 = select i1 %tobool2.not.i.i25, i32 0, i32 2
  %call.i11.i.i27 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %19 = inttoptr i64 %call.i11.i.i27 to %struct.page*
  %flags.i12.i.i28 = getelementptr inbounds %struct.page, %struct.page* %19, i64 0, i32 0
  %20 = load volatile i64, i64* %flags.i12.i.i28, align 8
  %21 = trunc i64 %20 to i32
  %22 = lshr i32 %21, 5
  %23 = and i32 %22, 1
  %24 = or i32 %23, %cond.i.i26
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %del_page_from_lru_list.exit, %if.end.i.i29
  %retval.0.i.i30 = phi i32 [ %24, %if.end.i.i29 ], [ 4, %del_page_from_lru_list.exit ]
  %call1.i31 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #16
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %retval.0.i.i30, i32 noundef 1) #16
  %idxprom.i.i33 = zext i32 %call1.i31 to i64
  %arrayidx.i.i34 = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i33
  %add1.i.i35 = add nsw i32 %retval.0.i.i30, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i34, i32 noundef %add1.i.i35, i64 noundef 1) #16
  %idxprom.i = zext i32 %retval.0.i.i30 to i64
  %arrayidx.i = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 0, i64 %idxprom.i
  call fastcc void @list_add(%struct.list_head* noundef %lru.i, %struct.list_head* noundef %arrayidx.i) #16
  call fastcc void @__count_vm_events(i32 noundef 17) #15
  br label %if.end

if.end:                                           ; preds = %add_page_to_lru_list.exit, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 2097152
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #16
  %2 = and i64 %call.i.i.i, 2097152
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 2097152, i64* elementtype(i64) %counter) #17, !srcloc !54
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @page_mapped(%struct.page* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_add_unless(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %_refcount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i, align 4
  %1 = bitcast %struct.atomic_t* %_refcount to i8*
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i, %entry
  %c.0.i.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i.i, %do.cond.i.i.i ]
  %cmp.i.i.i = icmp eq i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %atomic_add_unless.exit, label %do.cond.i.i.i, !prof !18

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %c.0.i.i.i, 1
  %call11.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i, i32 noundef %add.i.i.i) #16
  %cmp.not.i.i.i.i = icmp eq i32 %c.0.i.i.i, %call11.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %atomic_add_unless.exit, label %do.body.i.i.i, !prof !8

atomic_add_unless.exit:                           ; preds = %do.body.i.i.i, %do.cond.i.i.i
  %2 = xor i1 %cmp.i.i.i, true
  %conv = zext i1 %2 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #17, !srcloc !55
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero() unnamed_addr #0 {
entry:
  %call = call i8* @memset(i8* noundef bitcast (%struct.cpumask* @__lru_add_drain_all.has_work to i8*), i32 noundef 0, i64 noundef 32) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lru_add_and_bh_lrus_drain() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !56
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add11 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add11 to i32*
  %1 = load i32, i32* %0, align 4
  call void @lru_add_drain_cpu(i32 noundef %1) #15
  %call19 = call fastcc i64 @__kern_my_cpu_offset() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !57
  call void @invalidate_bh_lrus_cpu() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bh_lrus_cpu() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !58
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !59
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #16
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !60
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @page_matches_lruvec(%struct.page* nocapture noundef readnone %page, %struct.lruvec* noundef readnone %lruvec) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #15
  %cmp = icmp eq %struct.pglist_data* %call, @contig_page_data
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @page_evictable(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #16
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #16
  %call1 = call fastcc i1 @mapping_unevictable(%struct.address_space* noundef %call) #15
  br i1 %call1, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 2097152
  %tobool.not = icmp eq i64 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool.not, %land.rhs ]
  call fastcc void @rcu_read_unlock() #15
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @mapping_unevictable(%struct.address_space* noundef %mapping) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.address_space* %mapping, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 8
  %tobool1 = icmp ne i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold mustprogress nofree noinline norecurse nounwind null_pointer_is_valid optsize willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly }
attributes #19 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155318254}
!10 = !{i64 2149140988, i64 2149141035, i64 2149141041, i64 2149141078, i64 2149141096, i64 2149142023, i64 2149142071, i64 2149142119, i64 2149142182, i64 2149142231, i64 2149141174, i64 2149141199, i64 2149141225, i64 2149141231, i64 2149141268, i64 2149141274, i64 2149141324, i64 2149141370, i64 2149141403}
!11 = !{i64 2149124682, i64 2149124729, i64 2149124735, i64 2149124772, i64 2149124790, i64 2149126101, i64 2149126149, i64 2149126197, i64 2149126260, i64 2149126309, i64 2149124868, i64 2149124893, i64 2149124919, i64 2149124925, i64 2149125767, i64 2149125807, i64 2149125825, i64 2149125857, i64 2149125885, i64 2149125939, i64 2149125959, i64 2149126056, i64 2149124948, i64 2149124962, i64 2149124968, i64 2149125018, i64 2149125064, i64 2149125097}
!12 = !{i64 2155324030}
!13 = !{i64 2155326627}
!14 = !{i64 2155326823}
!15 = !{i64 2155329354}
!16 = !{i64 2155330018}
!17 = !{i64 2155332549}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2152532424}
!20 = !{i64 2152533376}
!21 = !{i64 2155341234}
!22 = !{i64 2155343897}
!23 = !{i64 2155344093}
!24 = !{i64 2155346701}
!25 = !{i64 2155346897}
!26 = !{i64 2155349483}
!27 = !{i64 2155349679}
!28 = !{i64 2155352177}
!29 = !{i64 2155355067}
!30 = !{i64 2155357565}
!31 = !{i64 2155359928}
!32 = !{i64 2155360261}
!33 = !{i64 2155360865}
!34 = !{i64 2155365556}
!35 = !{!"auto-init"}
!36 = !{i8 0, i8 2}
!37 = !{i32 0, i32 256}
!38 = !{i64 2155376248}
!39 = !{i64 2149166934, i64 2149166975, i64 2149167031, i64 2149167083}
!40 = !{i64 2150033273}
!41 = !{i64 2150033490}
!42 = !{i64 2149552842}
!43 = !{i64 2148078120, i64 2148078153, i64 2148078206, i64 2148078265, i64 2148078299, i64 2148078354, i64 2148078383, i64 2148078403}
!44 = !{i64 2149118669, i64 2149118716, i64 2149118722, i64 2149118759, i64 2149118777, i64 2149120088, i64 2149120136, i64 2149120184, i64 2149120247, i64 2149120296, i64 2149118855, i64 2149118880, i64 2149118906, i64 2149118912, i64 2149119754, i64 2149119794, i64 2149119812, i64 2149119844, i64 2149119872, i64 2149119926, i64 2149119946, i64 2149120043, i64 2149118935, i64 2149118949, i64 2149118955, i64 2149119005, i64 2149119051, i64 2149119084}
!45 = !{i64 2149120848, i64 2149120895, i64 2149120901, i64 2149120938, i64 2149120956, i64 2149121899, i64 2149121947, i64 2149121995, i64 2149122058, i64 2149122107, i64 2149121034, i64 2149121059, i64 2149121085, i64 2149121091, i64 2149121128, i64 2149121134, i64 2149121184, i64 2149121230, i64 2149121263}
!46 = !{i64 2149112966, i64 2149113013, i64 2149113019, i64 2149113056, i64 2149113074, i64 2149114415, i64 2149114463, i64 2149114511, i64 2149114574, i64 2149114623, i64 2149113152, i64 2149113177, i64 2149113203, i64 2149113209, i64 2149114081, i64 2149114121, i64 2149114139, i64 2149114171, i64 2149114199, i64 2149114253, i64 2149114273, i64 2149114370, i64 2149113232, i64 2149113246, i64 2149113252, i64 2149113302, i64 2149113348, i64 2149113381}
!47 = !{i64 2148058700, i64 2148059362, i64 2148059392, i64 2148059423, i64 2148059455, i64 2148059490, i64 2148059515}
!48 = !{i64 2148047277, i64 2148047788, i64 2148047818, i64 2148047844, i64 2148047876, i64 2148047905}
!49 = !{i64 2148057847, i64 2148058368, i64 2148058398, i64 2148058424, i64 2148058456, i64 2148058485}
!50 = !{i64 2149557135}
!51 = !{i64 2149581988}
!52 = !{i64 2149367354}
!53 = !{i64 2149103510, i64 2149103557, i64 2149103563, i64 2149103600, i64 2149103618, i64 2149104958, i64 2149105006, i64 2149105054, i64 2149105117, i64 2149105166, i64 2149103696, i64 2149103721, i64 2149103747, i64 2149103753, i64 2149104624, i64 2149104664, i64 2149104682, i64 2149104714, i64 2149104742, i64 2149104796, i64 2149104816, i64 2149104913, i64 2149103776, i64 2149103790, i64 2149103796, i64 2149103846, i64 2149103892, i64 2149103925}
!54 = !{i64 2148048123, i64 2148048775, i64 2148048805, i64 2148048836, i64 2148048868, i64 2148048903, i64 2148048928}
!55 = !{i64 2148091267, i64 2148091300, i64 2148091352, i64 2148091411, i64 2148091445, i64 2148091501, i64 2148091530, i64 2148091557}
!56 = !{i64 2155352373}
!57 = !{i64 2155354871}
!58 = !{i64 2147978197, i64 2147978713, i64 2147978743, i64 2147978770, i64 2147978804, i64 2147978834}
!59 = !{i64 2149578685}
!60 = !{i64 2147988770, i64 2147989418, i64 2147989448, i64 2147989480, i64 2147989514, i64 2147989550, i64 2147989575}
