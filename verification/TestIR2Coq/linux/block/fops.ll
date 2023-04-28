; ModuleID = 'block/fops.c'
source_filename = "block/fops.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_fops__437_639_blkdev_init6:\09\09\09"
module asm ".long\09blkdev_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.page = type { i64, %union.anon, %union.anon.77, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.54, %struct.list_head, %struct.list_head, %union.anon.55 }
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
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.56 }
%union.anon.56 = type { %struct.wait_page_queue* }
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
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.48, %union.anon.49, %union.anon.50, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.53, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.47, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.47 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%union.anon.48 = type { %struct.hlist_node }
%union.anon.49 = type { %struct.rb_node }
%union.anon.50 = type { %struct.anon.52 }
%struct.anon.52 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.53 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.25, %union.anon.26, i32 }
%union.anon.25 = type { %struct.list_head }
%union.anon.26 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.46, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.46 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.60, %struct.qspinlock }
%union.anon.60 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
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
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.81 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { {}*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.77 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.58 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.buffer_head = type { i64, %struct.buffer_head*, %struct.page*, i64, i64, i8*, %struct.block_device*, void (%struct.buffer_head*, i32)*, i8*, %struct.list_head, %struct.address_space*, %struct.atomic_t, %struct.spinlock }
%struct.blkdev_dio = type { %union.anon.82, i64, %struct.atomic_t, i8, %struct.bio }
%union.anon.82 = type { %struct.kiocb* }

@def_blk_aops = dso_local local_unnamed_addr constant { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* } { i32 (%struct.page*, %struct.writeback_control*)* @blkdev_writepage, i32 (%struct.file*, %struct.page*)* @blkdev_readpage, i32 (%struct.address_space*, %struct.writeback_control*)* @blkdev_writepages, i32 (%struct.page*)* @__set_page_dirty_buffers, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* null, void (%struct.readahead_control*)* @blkdev_readahead, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)* @blkdev_write_begin, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)* @blkdev_write_end, i64 (%struct.address_space*, i64)* null, void (%struct.page*, i32, i32)* null, i32 (%struct.page*, i32)* null, void (%struct.page*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @blkdev_direct_IO, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* null, i1 (%struct.page*, i32)* null, void (%struct.page*)* null, i32 (%struct.page*)* null, i32 (%struct.page*, i64, i64)* null, void (%struct.page*, i8*, i8*)* @buffer_check_dirty_writeback, i32 (%struct.address_space*, %struct.page*)* null, i32 (%struct.swap_info_struct*, %struct.file*, i64*)* null, void (%struct.file*)* null }, align 8
@def_blk_fops = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @blkdev_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @blkdev_read_iter, i64 (%struct.kiocb*, %struct.iov_iter*)* @blkdev_write_iter, i32 (%struct.kiocb*, i1)* @blkdev_iopoll, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @block_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* @generic_file_mmap, i64 0, i32 (%struct.inode*, %struct.file*)* @blkdev_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @blkdev_close, i32 (%struct.file*, i64, i64, i32)* @blkdev_fsync, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* @iter_file_splice_write, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* @blkdev_fallocate, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@__UNIQUE_ID___addressable_blkdev_init438 = internal global i8* bitcast (i32 ()* @blkdev_init to i8*), section ".discard.addressable", align 8
@blkdev_dio_pool = internal global %struct.bio_set zeroinitializer, align 8
@fs_bio_set = external dso_local global %struct.bio_set, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_blkdev_init438 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_writepage(%struct.page* noundef %page, %struct.writeback_control* noundef %wbc) #0 {
entry:
  %call = call i32 @block_write_full_page(%struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef nonnull @blkdev_get_block, %struct.writeback_control* noundef %wbc) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_readpage(%struct.file* nocapture noundef readnone %file, %struct.page* noundef %page) #0 {
entry:
  %call = call i32 @block_read_full_page(%struct.page* noundef %page, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef nonnull @blkdev_get_block) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_writepages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) #0 {
entry:
  %call = call i32 @generic_writepages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(%struct.page* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blkdev_readahead(%struct.readahead_control* noundef %rac) #0 {
entry:
  call void @mpage_readahead(%struct.readahead_control* noundef %rac, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef nonnull @blkdev_get_block) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_write_begin(%struct.file* nocapture noundef readnone %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** noundef %pagep, i8** nocapture noundef readnone %fsdata) #0 {
entry:
  %call = call i32 @block_write_begin(%struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** noundef %pagep, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef nonnull @blkdev_get_block) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_write_end(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* noundef %fsdata) #0 {
entry:
  %call = call i32 @block_write_end(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* noundef %fsdata) #11
  call void @unlock_page(%struct.page* noundef %page) #11
  call fastcc void @put_page(%struct.page* noundef %page) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blkdev_direct_IO(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #0 {
entry:
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #12
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @bio_iov_vecs_to_alloc(%struct.iov_iter* noundef %iter, i32 noundef 257) #12
  %call2 = call fastcc i1 @is_sync_kiocb(%struct.kiocb* noundef %iocb) #12
  %cmp = icmp ult i32 %call1, 257
  %or.cond = select i1 %call2, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i64 @__blkdev_direct_IO_simple(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter, i32 noundef %call1) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @bio_max_segs(i32 noundef %call1) #12
  %call7 = call fastcc i64 @__blkdev_direct_IO(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter, i32 noundef %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then3
  %retval.0 = phi i64 [ %call4, %if.then3 ], [ %call7, %if.end5 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @buffer_check_dirty_writeback(%struct.page* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blkdev_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence) #0 {
entry:
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %file) #12
  call fastcc void @inode_lock(%struct.inode* noundef %call) #12
  %call2 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #12
  %call3 = call i64 @fixed_size_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %call2) #11
  call fastcc void @inode_unlock(%struct.inode* noundef %call) #12
  ret i64 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blkdev_read_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %to) #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %0) #12
  %call1 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #12
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %1 = load i64, i64* %ki_pos, align 8
  %cmp.not = icmp sgt i64 %call1, %1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i64 %call1, %1
  %call2 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %to) #12
  %cmp3 = icmp ugt i64 %call2, %sub
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %sub6 = sub i64 %call2, %sub
  call fastcc void @iov_iter_truncate(%struct.iov_iter* noundef %to, i64 noundef %sub) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %shorted.0 = phi i64 [ %sub6, %if.then4 ], [ 0, %if.end ]
  %call8 = call i64 @generic_file_read_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %to) #11
  %call9 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %to) #12
  %add = add i64 %call9, %shorted.0
  call fastcc void @iov_iter_reexpand(%struct.iov_iter* noundef %to, i64 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  %retval.0 = phi i64 [ %call8, %if.end7 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blkdev_write_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) #0 {
entry:
  %plug = alloca %struct.blk_plug, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %0) #12
  %call1 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #12
  %1 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !7
  %call2 = call %struct.block_device* @I_BDEV(%struct.inode* noundef %call) #11
  %call3 = call i32 @bdev_read_only(%struct.block_device* noundef %call2) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %2 = load i32, i32* %i_flags, align 4
  %and = and i32 %2, 256
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #12
  %tobool10.not = icmp eq i64 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %3 = load i64, i64* %ki_pos, align 8
  %cmp.not = icmp sgt i64 %call1, %3
  br i1 %cmp.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end12
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %4 = load i32, i32* %ki_flags, align 8
  %and15 = and i32 %4, 131080
  %cmp16 = icmp eq i32 %and15, 8
  br i1 %cmp16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end14
  %sub = sub i64 %call1, %3
  %cmp21 = icmp ugt i64 %call9, %sub
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end18
  %sub24 = sub i64 %call9, %sub
  call fastcc void @iov_iter_truncate(%struct.iov_iter* noundef %from, i64 noundef %sub) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18
  %shorted.0 = phi i64 [ %sub24, %if.then22 ], [ 0, %if.end18 ]
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #11
  %call26 = call i64 @__generic_file_write_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) #11
  %cmp27 = icmp sgt i64 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %call29 = call fastcc i64 @generic_write_sync(%struct.kiocb* noundef %iocb, i64 noundef %call26) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %ret.0 = phi i64 [ %call29, %if.then28 ], [ %call26, %if.end25 ]
  %call31 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #12
  %add = add i64 %call31, %shorted.0
  call fastcc void @iov_iter_reexpand(%struct.iov_iter* noundef %from, i64 noundef %add) #12
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end14, %if.end12, %if.end8, %entry, %if.end30
  %retval.0 = phi i64 [ %ret.0, %if.end30 ], [ -1, %entry ], [ 0, %if.end8 ], [ -28, %if.end12 ], [ -95, %if.end14 ], [ -26, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_iopoll(%struct.kiocb* noundef %kiocb, i1 noundef %wait) #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call %struct.block_device* @I_BDEV(%struct.inode* noundef %2) #11
  %call1 = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %call) #12
  %3 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 7
  %ki_cookie = bitcast %union.anon.56* %3 to i32*
  %4 = load volatile i32, i32* %ki_cookie, align 8
  %call2 = call i32 @blk_poll(%struct.request_queue* noundef %call1, i32 noundef %4, i1 noundef %wait) #11
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @block_ioctl(%struct.file* nocapture noundef readonly %file, i32 noundef %cmd, i64 noundef %arg) #0 {
entry:
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %file) #12
  %call1 = call %struct.block_device* @I_BDEV(%struct.inode* noundef %call) #11
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %1 = load i32, i32* %f_flags, align 8
  %and2 = and i32 %0, -65
  %and = lshr i32 %1, 5
  %2 = and i32 %and, 64
  %mode.0 = or i32 %2, %and2
  %call3 = call i32 @blkdev_ioctl(%struct.block_device* noundef %call1, i32 noundef %mode.0, i32 noundef %cmd, i64 noundef %arg) #11
  %conv = sext i32 %call3 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(%struct.file* noundef, %struct.vm_area_struct* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_open(%struct.inode* nocapture noundef readonly %inode, %struct.file* noundef %filp) #0 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %or = or i32 %0, 131072
  store i32 %or, i32* %f_flags, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 2048
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 1207959552, i32 1207959616
  %spec.select = or i32 %spec.select.v, %1
  %and6 = and i32 %0, 128
  %2 = or i32 %and6, %spec.select
  %and13 = and i32 %0, 3
  %cmp = icmp eq i32 %and13, 3
  %or16 = or i32 %2, 256
  %spec.select41 = select i1 %cmp, i32 %or16, i32 %2
  store i32 %spec.select41, i32* %f_mode, align 4
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  %3 = load i32, i32* %i_rdev, align 4
  %4 = bitcast %struct.file* %filp to i8*
  %call = call %struct.block_device* @blkdev_get_by_dev(i32 noundef %3, i32 noundef %spec.select41, i8* noundef %4) #11
  %5 = bitcast %struct.block_device* %call to i8*
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %5) #12
  br i1 %call19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %entry
  %call21 = call fastcc i64 @PTR_ERR(i8* noundef %5) #12
  %conv = trunc i64 %call21 to i32
  br label %cleanup

if.end22:                                         ; preds = %entry
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 6
  %6 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %6, i64 0, i32 7
  %7 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 17
  store %struct.address_space* %7, %struct.address_space** %f_mapping, align 8
  %call24 = call fastcc i32 @filemap_sample_wb_err(%struct.address_space* noundef %7) #12
  %f_wb_err = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 18
  store i32 %call24, i32* %f_wb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20
  %retval.0 = phi i32 [ %conv, %if.then20 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_close(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %filp) #0 {
entry:
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %filp) #12
  %call1 = call %struct.block_device* @I_BDEV(%struct.inode* noundef %call) #11
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  call void @blkdev_put(%struct.block_device* noundef %call1, i32 noundef %0) #11
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_fsync(%struct.file* noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 {
entry:
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %filp) #12
  %call1 = call %struct.block_device* @I_BDEV(%struct.inode* noundef %call) #11
  %call2 = call i32 @file_write_and_wait_range(%struct.file* noundef %filp, i64 noundef %start, i64 noundef %end) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @blkdev_issue_flush(%struct.block_device* noundef %call1) #11
  %cmp = icmp eq i32 %call3, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ %call2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iter_file_splice_write(%struct.pipe_inode_info* noundef, %struct.file* noundef, i64* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_splice_read(%struct.file* noundef, i64* noundef, %struct.pipe_inode_info* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @blkdev_fallocate(%struct.file* nocapture noundef readonly %file, i32 noundef %mode, i64 noundef %start, i64 noundef %len) #0 {
entry:
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %file) #12
  %call1 = call %struct.block_device* @I_BDEV(%struct.inode* noundef %call) #11
  %add = add i64 %start, -1
  %sub = add i64 %add, %len
  %and = and i32 %mode, -24
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %call1, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call2 = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #12
  %cmp.not = icmp sgt i64 %call2, %start
  br i1 %cmp.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5.not = icmp slt i64 %sub, %call2
  br i1 %cmp5.not, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.end4
  %and7 = and i32 %mode, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.then6
  %sub10 = sub i64 %call2, %start
  %sub12 = add nsw i64 %call2, -1
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end4
  %len.addr.0 = phi i64 [ %sub10, %if.then9 ], [ %len, %if.end4 ]
  %end.0 = phi i64 [ %sub12, %if.then9 ], [ %sub, %if.end4 ]
  %or = or i64 %len.addr.0, %start
  %call15 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %call1) #12
  %sub16 = add i32 %call15, -1
  %conv = zext i32 %sub16 to i64
  %and17 = and i64 %or, %conv
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end14
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  call fastcc void @filemap_invalidate_lock(%struct.address_space* noundef %1) #12
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %call21 = call i32 @truncate_bdev_range(%struct.block_device* noundef %call1, i32 noundef %2, i64 noundef %start, i64 noundef %end.0) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %fail

if.end24:                                         ; preds = %if.end20
  switch i32 %mode, label %fail [
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 3, label %sw.bb27
    i32 7, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end24, %if.end24
  %shr = ashr i64 %start, 9
  %shr25 = ashr i64 %len.addr.0, 9
  %call26 = call i32 @blkdev_issue_zeroout(%struct.block_device* noundef %call1, i64 noundef %shr, i64 noundef %shr25, i32 noundef 3264, i32 noundef 1) #11
  br label %fail

sw.bb27:                                          ; preds = %if.end24
  %shr28 = ashr i64 %start, 9
  %shr29 = ashr i64 %len.addr.0, 9
  %call30 = call i32 @blkdev_issue_zeroout(%struct.block_device* noundef %call1, i64 noundef %shr28, i64 noundef %shr29, i32 noundef 3264, i32 noundef 2) #11
  br label %fail

sw.bb31:                                          ; preds = %if.end24
  %shr32 = ashr i64 %start, 9
  %shr33 = ashr i64 %len.addr.0, 9
  %call34 = call i32 @blkdev_issue_discard(%struct.block_device* noundef %call1, i64 noundef %shr32, i64 noundef %shr33, i32 noundef 3264, i64 noundef 0) #11
  br label %fail

fail:                                             ; preds = %if.end24, %sw.bb, %sw.bb27, %sw.bb31, %if.end20
  %error.0 = phi i32 [ %call21, %if.end20 ], [ %call34, %sw.bb31 ], [ %call30, %sw.bb27 ], [ %call26, %sw.bb ], [ -95, %if.end24 ]
  %3 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  call fastcc void @filemap_invalidate_unlock(%struct.address_space* noundef %3) #12
  %conv36 = sext i32 %error.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6, %if.end, %entry, %fail
  %retval.0 = phi i64 [ %conv36, %fail ], [ -95, %entry ], [ -22, %if.end ], [ -22, %if.then6 ], [ -22, %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @blkdev_init() #2 section ".init.text" {
entry:
  %call = call i32 @bioset_init(%struct.bio_set* noundef nonnull @blkdev_dio_pool, i32 noundef 4, i32 noundef 24, i32 noundef 5) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(%struct.page* noundef, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef, %struct.writeback_control* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blkdev_get_block(%struct.inode* noundef %inode, i64 noundef %iblock, %struct.buffer_head* noundef %bh, i32 noundef %create) #0 {
entry:
  %call = call %struct.block_device* @I_BDEV(%struct.inode* noundef %inode) #11
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 6
  store %struct.block_device* %call, %struct.block_device** %b_bdev, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 3
  store i64 %iblock, i64* %b_blocknr, align 8
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %bh, i64 0, i32 0
  %0 = load volatile i64, i64* %b_state.i, align 8
  %1 = and i64 %0, 16
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %set_buffer_mapped.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @set_bit(i64* noundef %b_state.i) #11
  br label %set_buffer_mapped.exit

set_buffer_mapped.exit:                           ; preds = %entry, %if.then.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 16, i64* elementtype(i64) %counter) #13, !srcloc !8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(%struct.page* noundef, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(%struct.address_space* noundef, %struct.writeback_control* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(%struct.readahead_control* noundef, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(%struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef, %struct.page** noundef, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(%struct.file* noundef, %struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef, %struct.page* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

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
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #11
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !10
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_iov_vecs_to_alloc(%struct.iov_iter* noundef %iter, i32 noundef %max_segs) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* noundef %iter) #12
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @iov_iter_npages(%struct.iov_iter* noundef %iter, i32 noundef %max_segs) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_sync_kiocb(%struct.kiocb* nocapture noundef readonly %kiocb) unnamed_addr #5 {
entry:
  %ki_complete = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 2
  %0 = load void (%struct.kiocb*, i64, i64)*, void (%struct.kiocb*, i64, i64)** %ki_complete, align 8
  %cmp = icmp eq void (%struct.kiocb*, i64, i64)* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__blkdev_direct_IO_simple(%struct.kiocb* nocapture noundef readonly %iocb, %struct.iov_iter* noundef %iter, i32 noundef %nr_pages) unnamed_addr #0 {
entry:
  %inline_vecs = alloca [4 x %struct.bio_vec], align 8
  %bio = alloca %struct.bio, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %0) #12
  %call1 = call %struct.block_device* @I_BDEV(%struct.inode* noundef %call) #11
  %1 = bitcast [4 x %struct.bio_vec]* %inline_vecs to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false), !annotation !7
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %2 = load i64, i64* %ki_pos, align 8
  %3 = bitcast %struct.bio* %bio to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false), !annotation !7
  %call2 = call i64 @iov_iter_alignment(%struct.iov_iter* noundef %iter) #11
  %or = or i64 %call2, %2
  %call3 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %call1) #12
  %sub = add i32 %call3, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %or, %conv
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp ult i32 %nr_pages, 5
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [4 x %struct.bio_vec], [4 x %struct.bio_vec]* %inline_vecs, i64 0, i64 0
  br label %if.end11

if.else:                                          ; preds = %if.end
  %conv6 = zext i32 %nr_pages to i64
  %call7 = call fastcc i8* @kmalloc_array(i64 noundef %conv6) #12
  %4 = bitcast i8* %call7 to %struct.bio_vec*
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %vecs.0 = phi %struct.bio_vec* [ %arraydecay, %if.then5 ], [ %4, %if.else ]
  %conv12 = trunc i32 %nr_pages to i16
  call void @bio_init(%struct.bio* noundef nonnull %bio, %struct.bio_vec* noundef %vecs.0, i16 noundef %conv12) #11
  call fastcc void @bio_clear_flag(%struct.bio* noundef nonnull %bio, i32 noundef 11) #12
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %5 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp13.not = icmp eq %struct.block_device* %5, %call1
  br i1 %cmp13.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  call fastcc void @bio_clear_flag(%struct.bio* noundef nonnull %bio, i32 noundef 7) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  store %struct.block_device* %call1, %struct.block_device** %bi_bdev, align 8
  %shr = ashr i64 %2, 9
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  store i64 %shr, i64* %bi_sector, align 8
  %ki_hint = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 5
  %6 = load i16, i16* %ki_hint, align 4
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 5
  store i16 %6, i16* %bi_write_hint, align 8
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %9 = bitcast i8** %bi_private to %struct.task_struct**
  store %struct.task_struct* %8, %struct.task_struct** %9, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 9
  store void (%struct.bio*)* @blkdev_bio_end_io_simple, void (%struct.bio*)** %bi_end_io, align 8
  %ki_ioprio = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 6
  %10 = load i16, i16* %ki_ioprio, align 2
  %bi_ioprio = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 4
  store i16 %10, i16* %bi_ioprio, align 2
  %call19 = call i32 @bio_iov_iter_get_pages(%struct.bio* noundef nonnull %bio, %struct.iov_iter* noundef %iter) #11
  %conv20 = sext i32 %call19 to i64
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end26, label %out, !prof !9

if.end26:                                         ; preds = %if.end16
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %11 = load i32, i32* %bi_size, align 8
  %conv28 = zext i32 %11 to i64
  %call29 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #12
  %cmp31 = icmp eq i8 %call29, 0
  br i1 %cmp31, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.end26
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 0, i32* %bi_opf, align 8
  %call34 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %iter) #12
  br label %if.end40

if.else37:                                        ; preds = %if.end26
  %call38 = call fastcc i32 @dio_bio_write_op(%struct.kiocb* noundef %iocb) #12
  %bi_opf39 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 %call38, i32* %bi_opf39, align 8
  %phi.bo = or i32 %call38, 2097152
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.else37
  %12 = phi i32 [ %phi.bo, %if.else37 ], [ 2097152, %if.then33 ]
  %should_dirty.0.off0 = phi i1 [ false, %if.else37 ], [ %call34, %if.then33 ]
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %13 = load i32, i32* %ki_flags, align 8
  %and41 = and i32 %13, 8
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.end40
  %bi_opf44 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 %12, i32* %bi_opf44, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end40
  %and50 = and i32 %13, 1
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end48
  call fastcc void @bio_set_polled(%struct.bio* noundef nonnull %bio, %struct.kiocb* noundef %iocb) #12
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end48
  %call54 = call i32 @submit_bio(%struct.bio* noundef nonnull %bio) #11
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %14 = load volatile i8*, i8** %bi_private, align 8
  %tobool78.not162 = icmp eq i8* %14, null
  br i1 %tobool78.not162, label %do.body97, label %if.end80

if.end80:                                         ; preds = %if.end53, %if.end88
  %15 = load i32, i32* %ki_flags, align 8
  %and82 = and i32 %15, 1
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.then87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end80
  %call84 = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %call1) #12
  %call85 = call i32 @blk_poll(%struct.request_queue* noundef %call84, i32 noundef %call54, i1 noundef true) #11
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end88

if.then87:                                        ; preds = %lor.lhs.false, %if.end80
  call void @blk_io_schedule() #11
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %lor.lhs.false
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %16 = load volatile i8*, i8** %bi_private, align 8
  %tobool78.not = icmp eq i8* %16, null
  br i1 %tobool78.not, label %do.body97, label %if.end80

do.body97:                                        ; preds = %if.end88, %if.end53
  store volatile i32 0, i32* %__state, align 16
  call void @bio_release_pages(%struct.bio* noundef nonnull %bio, i1 noundef %should_dirty.0.off0) #11
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  %17 = load i8, i8* %bi_status, align 2
  %tobool107.not = icmp eq i8 %17, 0
  br i1 %tobool107.not, label %out, label %if.then115, !prof !9

if.then115:                                       ; preds = %do.body97
  %call117 = call i32 @blk_status_to_errno(i8 noundef %17) #11
  %conv118 = sext i32 %call117 to i64
  br label %out

out:                                              ; preds = %do.body97, %if.then115, %if.end16
  %ret.0 = phi i64 [ %conv20, %if.end16 ], [ %conv118, %if.then115 ], [ %conv28, %do.body97 ]
  %arraydecay120 = getelementptr inbounds [4 x %struct.bio_vec], [4 x %struct.bio_vec]* %inline_vecs, i64 0, i64 0
  %cmp121.not = icmp eq %struct.bio_vec* %vecs.0, %arraydecay120
  br i1 %cmp121.not, label %if.end124, label %if.then123

if.then123:                                       ; preds = %out
  %18 = bitcast %struct.bio_vec* %vecs.0 to i8*
  call void @kfree(i8* noundef %18) #11
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %out
  call void @bio_uninit(%struct.bio* noundef nonnull %bio) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.end124
  %retval.0 = phi i64 [ %ret.0, %if.end124 ], [ -22, %entry ], [ -12, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #13
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__blkdev_direct_IO(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter, i32 noundef %nr_pages) unnamed_addr #0 {
entry:
  %plug = alloca %struct.blk_plug, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.inode* @bdev_file_inode(%struct.file* noundef %0) #12
  %call1 = call %struct.block_device* @I_BDEV(%struct.inode* noundef %call) #11
  %1 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !7
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %2 = load i32, i32* %ki_flags, align 8
  %and = and i32 %2, 1
  %cmp.not = icmp eq i32 %and, 0
  %call2 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #12
  %cmp3 = icmp eq i8 %call2, 0
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %3 = load i64, i64* %ki_pos, align 8
  %call6 = call i64 @iov_iter_alignment(%struct.iov_iter* noundef %iter) #11
  %or = or i64 %call6, %3
  %call7 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %call1) #12
  %sub = add i32 %call7, -1
  %conv8 = zext i32 %sub to i64
  %and9 = and i64 %or, %conv8
  %tobool.not = icmp eq i64 %and9, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %conv10 = trunc i32 %nr_pages to i16
  %call11 = call %struct.bio* @bio_alloc_kiocb(%struct.kiocb* noundef %iocb, i16 noundef %conv10, %struct.bio_set* noundef nonnull @blkdev_dio_pool) #11
  %add.ptr = getelementptr %struct.bio, %struct.bio* %call11, i64 -1, i32 12
  %call12 = call fastcc i1 @is_sync_kiocb(%struct.kiocb* noundef %iocb) #12
  %is_sync14 = getelementptr inbounds i16, i16* %add.ptr, i64 10
  %4 = bitcast i16* %is_sync14 to i8*
  %bf.load = load i8, i8* %4, align 4
  %bf.shl = select i1 %call12, i8 4, i8 0
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %4, align 4
  br i1 %call12, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %waiter = bitcast i16* %add.ptr to %struct.task_struct**
  store %struct.task_struct* %6, %struct.task_struct** %waiter, align 8
  call fastcc void @bio_get(%struct.bio* noundef %call11) #12
  %bf.load23.pre = load i8, i8* %4, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end
  %iocb21 = bitcast i16* %add.ptr to %struct.kiocb**
  store %struct.kiocb* %iocb, %struct.kiocb** %iocb21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  %bf.load23 = phi i8 [ %bf.set, %if.else ], [ %bf.load23.pre, %if.then19 ]
  %size = getelementptr inbounds i16, i16* %add.ptr, i64 4
  %7 = bitcast i16* %size to i64*
  store i64 0, i64* %7, align 8
  %bf.clear24 = and i8 %bf.load23, -2
  store i8 %bf.clear24, i8* %4, align 4
  br i1 %cmp3, label %land.end, label %land.end.thread

land.end:                                         ; preds = %if.end22
  %call28 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %iter) #12
  %spec.select = select i1 %call28, i8 2, i8 0
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %if.end22
  %8 = phi i8 [ 0, %if.end22 ], [ %spec.select, %land.end ]
  %bf.clear32 = and i8 %bf.load23, -4
  %bf.set33 = or i8 %8, %bf.clear32
  store i8 %bf.set33, i8* %4, align 4
  br i1 %cmp.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.end.thread
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.end.thread
  %ki_hint = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 5
  %ki_ioprio = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 6
  %ref120 = getelementptr inbounds i16, i16* %add.ptr, i64 8
  %9 = bitcast i16* %ref120 to %struct.atomic_t*
  %counter.i = bitcast i16* %ref120 to i32*
  br label %for.cond

for.cond:                                         ; preds = %if.end121, %if.end37
  %bio.0 = phi %struct.bio* [ %call11, %if.end37 ], [ %call124, %if.end121 ]
  %pos.0 = phi i64 [ %3, %if.end37 ], [ %add84, %if.end121 ]
  call fastcc void @bio_clear_flag(%struct.bio* noundef %bio.0, i32 noundef 11) #12
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 1
  %10 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp39.not = icmp eq %struct.block_device* %10, %call1
  br i1 %cmp39.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %for.cond
  call fastcc void @bio_clear_flag(%struct.bio* noundef %bio.0, i32 noundef 7) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for.cond
  store %struct.block_device* %call1, %struct.block_device** %bi_bdev, align 8
  %shr = ashr i64 %pos.0, 9
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 8, i32 0
  store i64 %shr, i64* %bi_sector, align 8
  %11 = load i16, i16* %ki_hint, align 4
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 5
  store i16 %11, i16* %bi_write_hint, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 10
  %12 = bitcast i8** %bi_private to i16**
  store i16* %add.ptr, i16** %12, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 9
  store void (%struct.bio*)* @blkdev_bio_end_io, void (%struct.bio*)** %bi_end_io, align 8
  %13 = load i16, i16* %ki_ioprio, align 2
  %bi_ioprio = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 4
  store i16 %13, i16* %bi_ioprio, align 2
  %call46 = call i32 @bio_iov_iter_get_pages(%struct.bio* noundef %bio.0, %struct.iov_iter* noundef %iter) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end52, label %if.then51, !prof !9

if.then51:                                        ; preds = %if.end42
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 6
  store i8 10, i8* %bi_status, align 2
  call void @bio_endio(%struct.bio* noundef %bio.0) #11
  br label %for.end

if.end52:                                         ; preds = %if.end42
  br i1 %cmp3, label %if.then54, label %if.else62

if.then54:                                        ; preds = %if.end52
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 2
  store i32 0, i32* %bi_opf, align 8
  %bf.load56 = load i8, i8* %4, align 4
  %14 = and i8 %bf.load56, 2
  %bf.cast59.not = icmp eq i8 %14, 0
  br i1 %bf.cast59.not, label %if.end67, label %if.then60

if.then60:                                        ; preds = %if.then54
  call void @bio_set_pages_dirty(%struct.bio* noundef %bio.0) #11
  br label %if.end67

if.else62:                                        ; preds = %if.end52
  %call63 = call fastcc i32 @dio_bio_write_op(%struct.kiocb* noundef %iocb) #12
  %bi_opf64 = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 2
  store i32 %call63, i32* %bi_opf64, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then54, %if.then60, %if.else62
  %15 = load i32, i32* %ki_flags, align 8
  %and69 = and i32 %15, 8
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end76, label %if.then71

if.then71:                                        ; preds = %if.end67
  %bi_opf72 = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 2
  %16 = load i32, i32* %bi_opf72, align 8
  %17 = or i32 %16, 2097152
  store i32 %17, i32* %bi_opf72, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end67
  %bi_size78 = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 8, i32 1
  %18 = load i32, i32* %bi_size78, align 8
  %conv79 = zext i32 %18 to i64
  %19 = load i64, i64* %7, align 8
  %add = add i64 %19, %conv79
  store i64 %add, i64* %7, align 8
  %20 = load i32, i32* %bi_size78, align 8
  %conv83 = zext i32 %20 to i64
  %add84 = add i64 %pos.0, %conv83
  %call85 = call fastcc i32 @bio_iov_vecs_to_alloc(%struct.iov_iter* noundef %iter, i32 noundef 256) #12
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end106

if.then87:                                        ; preds = %if.end76
  %21 = load i32, i32* %ki_flags, align 8
  %and89 = and i32 %21, 1
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end92.thread, label %do.body100

if.end92.thread:                                  ; preds = %if.then87
  %call93300 = call i32 @submit_bio(%struct.bio* noundef %bio.0) #11
  br label %for.end

do.body100:                                       ; preds = %if.then87
  call fastcc void @bio_set_polled(%struct.bio* noundef %bio.0, %struct.kiocb* noundef %iocb) #12
  %call93 = call i32 @submit_bio(%struct.bio* noundef %bio.0) #11
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 7
  %ki_cookie = bitcast %union.anon.56* %22 to i32*
  store volatile i32 %call93, i32* %ki_cookie, align 8
  br label %for.end

if.end106:                                        ; preds = %if.end76
  %bf.load108 = load i8, i8* %4, align 4
  %23 = and i8 %bf.load108, 1
  %bf.cast110.not = icmp eq i8 %23, 0
  br i1 %bf.cast110.not, label %if.then111, label %if.else119

if.then111:                                       ; preds = %if.end106
  br i1 %call12, label %if.end114, label %if.then113

if.then113:                                       ; preds = %if.then111
  call fastcc void @bio_get(%struct.bio* noundef %bio.0) #12
  %bf.load116.pre = load i8, i8* %4, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.then111
  %bf.load116 = phi i8 [ %bf.load116.pre, %if.then113 ], [ %bf.load108, %if.then111 ]
  %bf.set118 = or i8 %bf.load116, 1
  store i8 %bf.set118, i8* %4, align 4
  store volatile i32 2, i32* %counter.i, align 4
  br label %if.end121

if.else119:                                       ; preds = %if.end106
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %9) #11
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.end114
  %call122 = call i32 @submit_bio(%struct.bio* noundef %bio.0) #11
  %conv123 = trunc i32 %call85 to i16
  %call124 = call fastcc %struct.bio* @bio_alloc(i16 noundef %conv123) #12
  br label %for.cond

for.end:                                          ; preds = %if.end92.thread, %do.body100, %if.then51
  %tobool47.not312 = phi i1 [ false, %if.then51 ], [ true, %do.body100 ], [ true, %if.end92.thread ]
  %qc.0 = phi i32 [ -1, %if.then51 ], [ %call93, %do.body100 ], [ %call93300, %if.end92.thread ]
  br i1 %cmp.not, label %if.then126, label %if.end127

if.then126:                                       ; preds = %for.end
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #11
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %for.end
  br i1 %call12, label %for.cond131.preheader, label %cleanup

for.cond131.preheader:                            ; preds = %if.end127
  %24 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %25 = inttoptr i64 %24 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %waiter155 = bitcast i16* %add.ptr to %struct.task_struct**
  %26 = load volatile %struct.task_struct*, %struct.task_struct** %waiter155, align 8
  %tobool156.not309 = icmp eq %struct.task_struct* %26, null
  br i1 %tobool156.not309, label %do.body176, label %if.end158

if.end158:                                        ; preds = %for.cond131.preheader, %if.end166
  %27 = load i32, i32* %ki_flags, align 8
  %and160 = and i32 %27, 1
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.then165, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end158
  %call162 = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %call1) #12
  %call163 = call i32 @blk_poll(%struct.request_queue* noundef %call162, i32 noundef %qc.0, i1 noundef true) #11
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then165, label %if.end166

if.then165:                                       ; preds = %lor.lhs.false, %if.end158
  call void @blk_io_schedule() #11
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %lor.lhs.false
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %28 = load volatile %struct.task_struct*, %struct.task_struct** %waiter155, align 8
  %tobool156.not = icmp eq %struct.task_struct* %28, null
  br i1 %tobool156.not, label %do.body176, label %if.end158

do.body176:                                       ; preds = %if.end166, %for.cond131.preheader
  store volatile i32 0, i32* %__state, align 16
  br i1 %tobool47.not312, label %if.end190, label %if.end204

if.end190:                                        ; preds = %do.body176
  %bi_status188 = getelementptr inbounds i16, i16* %add.ptr, i64 25
  %29 = bitcast i16* %bi_status188 to i8*
  %30 = load i8, i8* %29, align 2
  %call189 = call i32 @blk_status_to_errno(i8 noundef %30) #11
  %tobool191.not = icmp eq i32 %call189, 0
  br i1 %tobool191.not, label %if.then201, label %if.end204, !prof !9

if.then201:                                       ; preds = %if.end190
  %31 = load i64, i64* %7, align 8
  %conv203 = trunc i64 %31 to i32
  br label %if.end204

if.end204:                                        ; preds = %do.body176, %if.then201, %if.end190
  %ret.1 = phi i32 [ %conv203, %if.then201 ], [ %call189, %if.end190 ], [ %call46, %do.body176 ]
  %bio205 = getelementptr inbounds i16, i16* %add.ptr, i64 12
  %32 = bitcast i16* %bio205 to %struct.bio*
  call void @bio_put(%struct.bio* noundef %32) #11
  %conv206 = sext i32 %ret.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %entry, %if.end204
  %retval.0 = phi i64 [ %conv206, %if.end204 ], [ -22, %entry ], [ -529, %if.end127 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @bio_max_segs(i32 noundef %nr_segs) unnamed_addr #6 {
entry:
  %cmp = icmp ult i32 %nr_segs, 256
  %cond = select i1 %cmp, i32 %nr_segs, i32 256
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iov_iter_is_bvec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #12
  %cmp = icmp eq i32 %call, 2
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(%struct.iov_iter* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iov_iter_type(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %iter_type = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  %0 = load i8, i8* %iter_type, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @bdev_file_inode(%struct.file* nocapture noundef readonly %file) unnamed_addr #5 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  ret %struct.inode* %1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iov_iter_alignment(%struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_logical_block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #12
  %call1 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %call) #12
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 16)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !14

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(%struct.bio* noundef, %struct.bio_vec* noundef, i16 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #8 {
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
define internal void @blkdev_bio_end_io_simple(%struct.bio* noundef %bio) #0 {
entry:
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = bitcast i8** %bi_private to %struct.task_struct**
  %1 = load %struct.task_struct*, %struct.task_struct** %0, align 8
  store volatile i8* null, i8** %bi_private, align 8
  call fastcc void @blk_wake_io_task(%struct.task_struct* noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_iov_iter_get_pages(%struct.bio* noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @iov_iter_rw(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %data_source = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  %0 = load i8, i8* %data_source, align 1, !range !15
  ret i8 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iter_is_iovec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #12
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dio_bio_write_op(%struct.kiocb* nocapture noundef readonly %iocb) unnamed_addr #5 {
entry:
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %0 = load i32, i32* %ki_flags, align 8
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 34817, i32 165889
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_set_polled(%struct.bio* nocapture noundef %bio, %struct.kiocb* nocapture noundef readonly %kiocb) unnamed_addr #8 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %1 = or i32 %0, 16777216
  store i32 %1, i32* %bi_opf, align 8
  %call = call fastcc i1 @is_sync_kiocb(%struct.kiocb* noundef %kiocb) #12
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = or i32 %0, 18874368
  store i32 %2, i32* %bi_opf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_poll(%struct.request_queue* noundef, i32 noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #5 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  ret %struct.request_queue* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_release_pages(%struct.bio* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_uninit(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef readonly %q) unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_wake_io_task(%struct.task_struct* noundef %waiter) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %1, %waiter
  br i1 %cmp, label %do.body5, label %if.else

do.body5:                                         ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %waiter, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  br label %if.end

if.else:                                          ; preds = %entry
  %call10 = call i32 @wake_up_process(%struct.task_struct* noundef %waiter) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.bio* @bio_alloc_kiocb(%struct.kiocb* noundef, i16 noundef, %struct.bio_set* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_get(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = or i16 %0, 64
  store i16 %1, i16* %bi_flags, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %__bi_cnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 14
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %__bi_cnt) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blkdev_bio_end_io(%struct.bio* noundef %bio) #0 {
entry:
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = bitcast i8** %bi_private to %struct.blkdev_dio**
  %1 = load %struct.blkdev_dio*, %struct.blkdev_dio** %0, align 8
  %should_dirty1 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %1, i64 0, i32 3
  %bf.load = load i8, i8* %should_dirty1, align 4
  %2 = and i8 %bf.load, 2
  %bf.cast.not = icmp eq i8 %2, 0
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  %3 = load i8, i8* %bi_status, align 2
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bi_status3 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %1, i64 0, i32 4, i32 6
  %4 = load i8, i8* %bi_status3, align 2
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8 %3, i8* %bi_status3, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = and i8 %bf.load, 1
  %bf.cast10.not = icmp eq i8 %5, 0
  br i1 %bf.cast10.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %ref = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %1, i64 0, i32 2
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %ref) #11
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.if.then12_crit_edge, label %if.end50

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  %bf.load13.pre = load i8, i8* %should_dirty1, align 4
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end
  %bf.load13 = phi i8 [ %bf.load13.pre, %lor.lhs.false.if.then12_crit_edge ], [ %bf.load, %if.end ]
  %6 = and i8 %bf.load13, 4
  %bf.cast16.not = icmp eq i8 %6, 0
  br i1 %bf.cast16.not, label %if.then17, label %if.else40

if.then17:                                        ; preds = %if.then12
  %iocb18 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %1, i64 0, i32 0, i32 0
  %7 = load %struct.kiocb*, %struct.kiocb** %iocb18, align 8
  %bio19 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %1, i64 0, i32 4
  %bi_status20 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %1, i64 0, i32 4, i32 6
  %8 = load i8, i8* %bi_status20, align 2
  %tobool21.not = icmp eq i8 %8, 0
  br i1 %tobool21.not, label %if.then26, label %if.else, !prof !9

if.then26:                                        ; preds = %if.then17
  %size = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %1, i64 0, i32 1
  %9 = load i64, i64* %size, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %7, i64 0, i32 1
  %10 = load i64, i64* %ki_pos, align 8
  %add = add i64 %10, %9
  store i64 %add, i64* %ki_pos, align 8
  br label %if.end31

if.else:                                          ; preds = %if.then17
  %call29 = call i32 @blk_status_to_errno(i8 noundef %8) #11
  %conv30 = sext i32 %call29 to i64
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %ret.0 = phi i64 [ %9, %if.then26 ], [ %conv30, %if.else ]
  %11 = load %struct.kiocb*, %struct.kiocb** %iocb18, align 8
  %ki_complete = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i64 0, i32 2
  %12 = load void (%struct.kiocb*, i64, i64)*, void (%struct.kiocb*, i64, i64)** %ki_complete, align 8
  call void %12(%struct.kiocb* noundef %7, i64 noundef %ret.0, i64 noundef 0) #11
  %bf.load34 = load i8, i8* %should_dirty1, align 4
  %13 = and i8 %bf.load34, 1
  %bf.cast36.not = icmp eq i8 %13, 0
  br i1 %bf.cast36.not, label %if.end50, label %if.then37

if.then37:                                        ; preds = %if.end31
  call void @bio_put(%struct.bio* noundef %bio19) #11
  br label %if.end50

if.else40:                                        ; preds = %if.then12
  %waiter41 = bitcast %struct.blkdev_dio* %1 to %struct.task_struct**
  %14 = load %struct.task_struct*, %struct.task_struct** %waiter41, align 8
  store volatile %struct.task_struct* null, %struct.task_struct** %waiter41, align 8
  call fastcc void @blk_wake_io_task(%struct.task_struct* noundef %14) #12
  br label %if.end50

if.end50:                                         ; preds = %if.end31, %if.then37, %if.else40, %lor.lhs.false
  br i1 %bf.cast.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.end50
  call void @bio_check_pages_dirty(%struct.bio* noundef %bio) #11
  br label %if.end54

if.else53:                                        ; preds = %if.end50
  call void @bio_release_pages(%struct.bio* noundef %bio, i1 noundef false) #11
  call void @bio_put(%struct.bio* noundef %bio) #11
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_set_pages_dirty(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @bio_alloc(i16 noundef %nr_iovecs) unnamed_addr #0 {
entry:
  %call = call %struct.bio* @bio_alloc_bioset(i32 noundef 3264, i16 noundef %nr_iovecs, %struct.bio_set* noundef nonnull @fs_bio_set) #11
  ret %struct.bio* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_check_pages_dirty(%struct.bio* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.bio* @bio_alloc_bioset(i32 noundef, i16 noundef, %struct.bio_set* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(%struct.file* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #5 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @iov_iter_truncate(%struct.iov_iter* nocapture noundef %i, i64 noundef %count) unnamed_addr #8 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_read_iter(%struct.kiocb* noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @iov_iter_reexpand(%struct.iov_iter* nocapture noundef writeonly %i, i64 noundef %count) unnamed_addr #10 {
entry:
  %count1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  store i64 %count, i64* %count1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_only(%struct.block_device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__generic_file_write_iter(%struct.kiocb* noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @generic_write_sync(%struct.kiocb* nocapture noundef readonly %iocb, i64 noundef %count) unnamed_addr #0 {
entry:
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %0 = load i32, i32* %ki_flags, align 8
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %ki_filp, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %2 = load i64, i64* %ki_pos, align 8
  %sub = sub i64 %2, %count
  %sub2 = add i64 %2, -1
  %and4 = lshr i32 %0, 2
  %and4.lobit = and i32 %and4, 1
  %3 = xor i32 %and4.lobit, 1
  %call = call i32 @vfs_fsync_range(%struct.file* noundef %1, i64 noundef %sub, i64 noundef %sub2, i32 noundef %3) #11
  %tobool6.not = icmp eq i32 %call, 0
  %conv = sext i32 %call to i64
  br i1 %tobool6.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end8
  %retval.1 = phi i64 [ %conv, %if.then ], [ %count, %if.end8 ]
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(%struct.file* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_ioctl(%struct.block_device* noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @blkdev_get_by_dev(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_sample_wb_err(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %wb_err = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 11
  %call = call i32 @errseq_sample(i32* noundef %wb_err) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(i32* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(%struct.block_device* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(%struct.file* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(%struct.block_device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @filemap_invalidate_lock(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 2
  call void @down_write(%struct.rw_semaphore* noundef %invalidate_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_bdev_range(%struct.block_device* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(%struct.block_device* noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(%struct.block_device* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @filemap_invalidate_unlock(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 2
  call void @up_write(%struct.rw_semaphore* noundef %invalidate_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(%struct.bio_set* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }

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
!8 = !{i64 2148030480, i64 2148030991, i64 2148031021, i64 2148031047, i64 2148031079, i64 2148031108}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2147971973, i64 2147972621, i64 2147972651, i64 2147972683, i64 2147972717, i64 2147972753, i64 2147972778}
!11 = !{i64 1364620}
!12 = !{i64 2155250614}
!13 = !{i64 2155267354}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i8 0, i8 2}
!16 = !{i64 2154078398}
!17 = !{i64 2147961400, i64 2147961916, i64 2147961946, i64 2147961973, i64 2147962007, i64 2147962037}
