; ModuleID = 'mm/page_alloc.c'
source_filename = "mm/page_alloc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_page_alloc__560_8492_init_per_zone_wmark_min2:\09\09\09"
module asm ".long\09init_per_zone_wmark_min - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nodemask_t = type { [1 x i64] }
%struct.static_key_false = type { %struct.static_key }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
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
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11, [48 x i8] }
%struct.anon.11 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.ctl_table*, i32, i32, i32 }
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
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.58 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.44, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.42, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.26, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.47, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.47 = type { %struct.kernfs_elem_dir }
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
%struct.blk_mq_hw_ctx = type opaque
%union.anon.48 = type { %struct.hlist_node }
%union.anon.49 = type { %struct.rb_node }
%union.anon.50 = type { %struct.anon.52 }
%struct.anon.52 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.53 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.27, %union.anon.28, i32 }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
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
%union.anon.26 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.41, i32, [12 x i8] }
%union.anon.41 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.42 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.43, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.43 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.44 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.45, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.46, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.45 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.46 = type { %struct.pte_t }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.14 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.14 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.9, i64, i32 }
%union.anon.9 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.16, i32 }
%union.anon.16 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
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
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, {}*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, {}*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.77 = type { %struct.atomic_t }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.mem_section = type { i64, %struct.mem_section_usage* }
%struct.mem_section_usage = type { [1 x i64], [0 x i64] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.pcpu_drain = type { %struct.zone*, %struct.work_struct }
%struct.vm_event_state = type { [53 x i64] }
%struct.memblock_region = type { i64, i64, i32 }
%struct.memblock = type { i8, i64, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i64, i64, i64, %struct.memblock_region*, i8* }
%struct.anon.71 = type { i64, i8, i8, %struct.atomic_t, i32 }
%struct.va_format = type { i8*, %"struct.std::__va_list"* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.alloc_context = type { %struct.zonelist*, %struct.nodemask_t*, %struct.zoneref*, i32, i32, i8 }
%struct.page_frag_cache = type { i8*, i16, i16, i32, i8 }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.vmem_altmap = type { i64, i64, i64, i64, i64, i64 }
%struct.oom_control = type { %struct.zonelist*, %struct.nodemask_t*, %struct.mem_cgroup*, i32, i32, i64, %struct.task_struct*, i64, i32 }

@vm_numa_stat_key = dso_local local_unnamed_addr global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@node_states = dso_local global [6 x %struct.nodemask_t] [%struct.nodemask_t { [1 x i64] [i64 1] }, %struct.nodemask_t { [1 x i64] [i64 1] }, %struct.nodemask_t { [1 x i64] [i64 1] }, %struct.nodemask_t { [1 x i64] [i64 1] }, %struct.nodemask_t { [1 x i64] [i64 1] }, %struct.nodemask_t zeroinitializer], section ".data..read_mostly", align 8
@gfp_allowed_mask = dso_local local_unnamed_addr global i32 33551167, section ".data..read_mostly", align 4
@init_on_alloc = dso_local global %struct.static_key_false zeroinitializer, align 4
@init_on_free = dso_local global %struct.static_key_false zeroinitializer, align 4
@__setup_str_early_init_on_alloc = internal constant [14 x i8] c"init_on_alloc\00", section ".init.rodata", align 1
@__setup_early_init_on_alloc = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__setup_str_early_init_on_alloc, i32 0, i32 0), i32 (i8*)* @early_init_on_alloc, i32 1 }, section ".init.setup", align 8
@__setup_str_early_init_on_free = internal constant [13 x i8] c"init_on_free\00", section ".init.rodata", align 1
@__setup_early_init_on_free = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_early_init_on_free, i32 0, i32 0), i32 (i8*)* @early_init_on_free, i32 1 }, section ".init.setup", align 8
@sysctl_lowmem_reserve_ratio = dso_local local_unnamed_addr global [4 x i32] [i32 256, i32 256, i32 32, i32 0], align 4
@.str = private unnamed_addr constant [10 x i8] c"Unmovable\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Movable\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Reclaimable\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"HighAtomic\00", align 1
@migratetype_names = dso_local local_unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)], align 8
@compound_page_dtors = dso_local local_unnamed_addr constant [2 x void (%struct.page*)*] [void (%struct.page*)* null, void (%struct.page*)* @free_compound_page], align 8
@min_free_kbytes = dso_local local_unnamed_addr global i32 1024, align 4
@user_min_free_kbytes = dso_local local_unnamed_addr global i32 -1, align 4
@watermark_boost_factor = dso_local local_unnamed_addr global i32 15000, section ".data..read_mostly", align 4
@watermark_scale_factor = dso_local local_unnamed_addr global i32 10, align 4
@page_group_by_mobility_disabled = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@_init_on_alloc_enabled_early = internal global i8 0, section ".data..read_mostly", align 1
@_init_on_free_enabled_early = internal global i8 0, section ".data..read_mostly", align 1
@fallbacks = internal unnamed_addr constant [4 x [3 x i32]] [[3 x i32] [i32 2, i32 1, i32 4], [3 x i32] [i32 2, i32 0, i32 4], [3 x i32] [i32 0, i32 1, i32 4], [3 x i32] zeroinitializer], align 4
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@warn_alloc.nopage_rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 2500, i32 1, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.warn_alloc = private unnamed_addr constant [11 x i8] c"warn_alloc\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\014%s: %pV, mode:%#x(%pGg), nodemask=%*pbl\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@totalreserve_pages = dso_local local_unnamed_addr global i64 0, section ".data..read_mostly", align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.8 = private unnamed_addr constant [305 x i8] c"active_anon:%lu inactive_anon:%lu isolated_anon:%lu\0A active_file:%lu inactive_file:%lu isolated_file:%lu\0A unevictable:%lu dirty:%lu writeback:%lu\0A slab_reclaimable:%lu slab_unreclaimable:%lu\0A mapped:%lu shmem:%lu pagetables:%lu bounce:%lu\0A kernel_misc_reclaimable:%lu\0A free:%lu free_pcp:%lu free_cma:%lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [276 x i8] c"Node %d active_anon:%lukB inactive_anon:%lukB active_file:%lukB inactive_file:%lukB unevictable:%lukB isolated(anon):%lukB isolated(file):%lukB mapped:%lukB dirty:%lukB writeback:%lukB shmem:%lukB writeback_tmp:%lukB kernel_stack:%lukB pagetables:%lukB all_unreclaimable? %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [287 x i8] c"\01c%s free:%lukB min:%lukB low:%lukB high:%lukB reserved_highatomic:%luKB active_anon:%lukB inactive_anon:%lukB active_file:%lukB inactive_file:%lukB unevictable:%lukB writepending:%lukB present:%lukB managed:%lukB mlocked:%lukB bounce:%lukB free_pcp:%lukB local_pcp:%ukB free_cma:%lukB\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"lowmem_reserve[]:\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\01c %ld\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\01c%s: \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"\01c%lu*%lukB \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"\01c= %lukB\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"%ld total pagecache pages\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [63 x i8] c"\016Built %u zonelists, mobility grouping %s.  Total pages: %ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@highest_memmap_pfn = external dso_local local_unnamed_addr global i64, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@mminit_loglevel = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [73 x i8] c"\017mminit::memmap_init Initialising map node %d zone %lu pfns %lu -> %lu\0A\00", align 1
@arch_zone_lowest_possible_pfn = internal global [4 x i64] zeroinitializer, section ".init.data", align 8
@arch_zone_highest_possible_pfn = internal global [4 x i64] zeroinitializer, section ".init.data", align 8
@zone_movable_pfn = internal global [1 x i64] zeroinitializer, section ".init.data", align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"\016Zone ranges:\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"\016  %-8s \00", align 1
@zone_names = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"\01cempty\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"\01c[mem %#018Lx-%#018Lx]\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"\016Movable zone start for each node\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"\016  Node %d: %#018Lx\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"\016Early memory node ranges\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"\016  node %3d: [mem %#018Lx-%#018Lx]\0A\00", align 1
@__setup_str_cmdline_parse_kernelcore = internal constant [11 x i8] c"kernelcore\00", section ".init.rodata", align 1
@__setup_cmdline_parse_kernelcore = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_cmdline_parse_kernelcore, i32 0, i32 0), i32 (i8*)* @cmdline_parse_kernelcore, i32 1 }, section ".init.setup", align 8
@__setup_str_cmdline_parse_movablecore = internal constant [12 x i8] c"movablecore\00", section ".init.rodata", align 1
@__setup_cmdline_parse_movablecore = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__setup_str_cmdline_parse_movablecore, i32 0, i32 0), i32 (i8*)* @cmdline_parse_movablecore, i32 1 }, section ".init.setup", align 8
@.str.31 = private unnamed_addr constant [27 x i8] c"\016Freeing %s memory: %ldK\0A\00", align 1
@_etext = external dso_local global [0 x i8], align 1
@_stext = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1
@_sdata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@__start_rodata = external dso_local global [0 x i8], align 1
@__bss_stop = external dso_local global [0 x i8], align 1
@__bss_start = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@__init_begin = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@_sinittext = external dso_local global [0 x i8], align 1
@.str.32 = private unnamed_addr constant [131 x i8] c"\016Memory: %luK/%luK available (%luK kernel code, %luK rwdata, %luK rodata, %luK init, %luK bss, %luK reserved, %luK cma-reserved)\0A\00", align 1
@totalcma_pages = dso_local local_unnamed_addr global i64 0, section ".data..read_mostly", align 8
@dma_reserve = internal unnamed_addr global i64 0, section ".init.data", align 8
@.str.33 = private unnamed_addr constant [18 x i8] c"mm/page_alloc:pcp\00", align 1
@setup_per_zone_wmarks.lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.34 = private unnamed_addr constant [83 x i8] c"\014min_free_kbytes is not updated to %d because user defined value %d is preferred\0A\00", align 1
@__UNIQUE_ID___addressable_init_per_zone_wmark_min561 = internal global i8* bitcast (i32 ()* @init_per_zone_wmark_min to i8*), section ".discard.addressable", align 8
@pcp_batch_high_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pcp_batch_high_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pcp_batch_high_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@percpu_pagelist_high_fraction = dso_local local_unnamed_addr global i32 0, align 4
@nr_kernel_pages = internal unnamed_addr global i64 0, section ".init.data", align 8
@nr_all_pages = internal unnamed_addr global i64 0, section ".init.data", align 8
@.str.35 = private unnamed_addr constant [34 x i8] c"Failed to allocate %s hash table\0A\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"\016%s hash table entries: %ld (order: %d, %lu bytes, %s)\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"vmalloc\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"%lu pages are still in use!\0A\00", align 1
@boot_pageset = internal global %struct.per_cpu_pages zeroinitializer, section ".data..percpu", align 8
@boot_zonestats = internal global %struct.per_cpu_zonestat zeroinitializer, section ".data..percpu", align 1
@_totalram_pages = dso_local global %struct.atomic64_t zeroinitializer, section ".data..read_mostly", align 8
@movable_zone = dso_local local_unnamed_addr global i32 0, align 4
@mem_section = external dso_local local_unnamed_addr global %struct.mem_section**, align 8
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@bad_page.resume = internal unnamed_addr global i64 0, align 8
@bad_page.nr_shown = internal unnamed_addr global i64 0, align 8
@bad_page.nr_unshown = internal unnamed_addr global i64 0, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.42 = private unnamed_addr constant [48 x i8] c"\011BUG: Bad page state: %lu messages suppressed\0A\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"\011BUG: Bad page state in process %s  pfn:%05lx\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"nonzero mapcount\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"non-NULL mapping\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"nonzero _refcount\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"PAGE_FLAGS_CHECK_AT_PREP flag(s) set\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"PAGE_FLAGS_CHECK_AT_FREE flag(s) set\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@__drain_all_pages.cpus_with_pcps = internal global %struct.cpumask zeroinitializer, align 8
@mm_percpu_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@pcpu_drain_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pcpu_drain_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pcpu_drain_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@pcpu_drain = internal global %struct.pcpu_drain zeroinitializer, section ".data..percpu", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@.str.49 = private unnamed_addr constant [34 x i8] c"page allocation failure: order:%u\00", align 1
@oom_lock = external dso_local global %struct.mutex, align 8
@vm_zone_stat = external dso_local global [10 x %struct.atomic64_t], align 8
@vm_node_stat = external dso_local global [38 x %struct.atomic64_t], align 8
@.str.50 = private unnamed_addr constant [8 x i8] c"\01c(%s) \00", align 1
@__build_all_zonelists.lock = internal global %struct.spinlock zeroinitializer, align 4
@overlap_memmap_init.r = internal unnamed_addr global %struct.memblock_region* null, align 8
@mirrored_kernelcore = internal unnamed_addr global i1 false, section ".meminit.data", align 1
@memblock = external dso_local local_unnamed_addr global %struct.memblock, align 8
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.51 = private unnamed_addr constant [47 x i8] c"\016Initmem setup node %d [mem %#018Lx-%#018Lx]\0A\00", align 1
@boot_nodestats = internal global %struct.per_cpu_nodestat zeroinitializer, section ".data..percpu", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"\014  %s zone: %lu memmap pages exceeds freesize %lu\0A\00", align 1
@pgdat_init_internals.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"&pgdat->kswapd_wait\00", align 1
@pgdat_init_internals.__key.54 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"&pgdat->pfmemalloc_wait\00", align 1
@.str.56 = private unnamed_addr constant [59 x i8] c"\014This configuration results in unmirrored kernel memory.\0A\00", align 1
@required_kernelcore_percent = internal global i64 0, section ".init.data", align 8
@required_kernelcore = internal global i64 0, section ".init.data", align 8
@required_movablecore_percent = internal global i64 0, section ".init.data", align 8
@required_movablecore = internal global i64 0, section ".init.data", align 8
@.str.57 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"DMA32\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.60 = private unnamed_addr constant [56 x i8] c"\016On node %d, zone %s: %lld pages in unavailable ranges\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_per_zone_wmark_min561 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_cmdline_parse_kernelcore to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_cmdline_parse_movablecore to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_early_init_on_alloc to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_early_init_on_free to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @early_init_on_alloc(i8* noundef %buf) #0 section ".init.text" {
entry:
  %call = call i32 @kstrtobool(i8* noundef %buf, i8* noundef nonnull @_init_on_alloc_enabled_early) #28
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @early_init_on_free(i8* noundef %buf) #0 section ".init.text" {
entry:
  %call = call i32 @kstrtobool(i8* noundef %buf, i8* noundef nonnull @_init_on_free_enabled_early) #28
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_compound_page(%struct.page* noundef %page) #1 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #29, !range !8
  call fastcc void @free_the_page(%struct.page* noundef %page, i32 noundef %call) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @get_pfnblock_flags_mask(%struct.page* nocapture readnone %page, i64 noundef %pfn, i64 noundef %mask) local_unnamed_addr #2 {
entry:
  %call.i = call fastcc i64* @get_pageblock_bitmap(i64 noundef %pfn) #28
  %call1.i = call fastcc i32 @pfn_to_bitidx(i64 noundef %pfn) #28
  %0 = zext i32 %call1.i to i64
  %div.i = lshr i64 %0, 6
  %and.i = and i64 %0, 63
  %arrayidx.i = getelementptr i64, i64* %call.i, i64 %div.i
  %1 = load i64, i64* %arrayidx.i, align 8
  %shr.i = lshr i64 %1, %and.i
  %and2.i = and i64 %shr.i, %mask
  ret i64 %and2.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_pfnblock_flags_mask(%struct.page* nocapture readnone %page, i64 noundef %flags, i64 noundef %pfn, i64 noundef %mask) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64* @get_pageblock_bitmap(i64 noundef %pfn) #29
  %call4 = call fastcc i32 @pfn_to_bitidx(i64 noundef %pfn) #29
  %0 = zext i32 %call4 to i64
  %div = lshr i64 %0, 6
  %and = and i64 %0, 63
  %shl = shl i64 %mask, %and
  %shl5 = shl i64 %flags, %and
  %arrayidx = getelementptr i64, i64* %call, i64 %div
  %1 = load volatile i64, i64* %arrayidx, align 8
  %2 = bitcast i64* %arrayidx to i8*
  %neg = xor i64 %shl, -1
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %word.0 = phi i64 [ %1, %entry ], [ %call14.i, %for.cond ]
  %and11 = and i64 %word.0, %neg
  %or = or i64 %and11, %shl5
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %2, i64 noundef %word.0, i64 noundef %or) #28
  %cmp = icmp eq i64 %word.0, %call14.i
  br i1 %cmp, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64* @get_pageblock_bitmap(i64 noundef %pfn) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.mem_section* @__pfn_to_section(i64 noundef %pfn) #29
  %call1 = call fastcc i64* @section_to_usemap(%struct.mem_section* noundef %call) #29
  ret i64* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pfn_to_bitidx(i64 noundef %pfn) unnamed_addr #4 {
entry:
  %0 = trunc i64 %pfn to i32
  %1 = lshr i32 %0, 8
  %conv = and i32 %1, 124
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_pageblock_migratetype(%struct.page* noundef %page, i32 noundef %migratetype) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @page_group_by_mobility_disabled, align 4
  %tobool = icmp ne i32 %0, 0
  %cmp = icmp slt i32 %migratetype, 3
  %1 = and i1 %cmp, %tobool
  br i1 %1, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %migratetype.addr.0 = phi i32 [ 0, %if.then ], [ %migratetype, %entry ]
  %conv3 = sext i32 %migratetype.addr.0 to i64
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  call void @set_pfnblock_flags_mask(%struct.page* undef, i64 noundef %conv3, i64 noundef %sub.ptr.div, i64 noundef 7) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_the_page(%struct.page* noundef %page, i32 noundef %order) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @pcp_allowed_order(i32 noundef %order) #29
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @free_unref_page(%struct.page* noundef %page, i32 noundef %order) #29
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @__free_pages_ok(%struct.page* noundef %page, i32 noundef %order, i32 noundef 0) #29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon* %2 to %struct.anon.71*
  %compound_order = getelementptr inbounds %struct.anon.71, %struct.anon.71* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @prep_compound_page(%struct.page* noundef %page, i32 noundef %order) local_unnamed_addr #6 {
entry:
  %shl = shl nuw i32 1, %order
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %0, 65536
  store i64 %or.i.i, i64* %flags.i, align 8
  %cmp18 = icmp sgt i32 %shl, 1
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint %struct.page* %page to i64
  %add.i = add i64 %1, 1
  %wide.trip.count = zext i32 %shl to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %mapping = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv, i32 1, i32 0, i32 1
  store %struct.address_space* inttoptr (i64 -2401263026318605312 to %struct.address_space*), %struct.address_space** %mapping, align 8
  %2 = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv, i32 1
  %compound_head.i = bitcast %union.anon* %2 to i64*
  store volatile i64 %add.i, i64* %compound_head.i, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @set_compound_page_dtor(%struct.page* noundef %page) #29
  call fastcc void @set_compound_order(%struct.page* noundef %page, i32 noundef %order) #29
  %call = call fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef %page) #29
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call, i64 0, i32 0
  store volatile i32 -1, i32* %counter.i, align 4
  %call1 = call fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) #29
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call2 = call fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef %page) #29
  %counter.i17 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call2, i64 0, i32 0
  store volatile i32 0, i32* %counter.i17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_compound_page_dtor(%struct.page* nocapture noundef writeonly %page) unnamed_addr #7 {
entry:
  %compound_dtor1 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %compound_dtor1 to i8*
  store i8 1, i8* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_compound_order(%struct.page* nocapture noundef writeonly %page, i32 noundef %order) unnamed_addr #7 {
entry:
  %conv = trunc i32 %order to i8
  %0 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %1 = bitcast %union.anon* %0 to %struct.anon.71*
  %compound_order = getelementptr inbounds %struct.anon.71, %struct.anon.71* %1, i64 0, i32 2
  store i8 %conv, i8* %compound_order, align 1
  %shl = shl nuw i32 1, %order
  %compound_nr = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1, i32 0, i32 1
  %2 = bitcast %struct.address_space** %compound_nr to i32*
  store i32 %shl, i32* %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef readnone %page) unnamed_addr #4 {
entry:
  %0 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %1 = bitcast %union.anon* %0 to %struct.anon.71*
  %compound_mapcount = getelementptr inbounds %struct.anon.71, %struct.anon.71* %1, i64 0, i32 3
  ret %struct.atomic_t* %compound_mapcount
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #29
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
  %call2 = call fastcc i32 @compound_order(%struct.page* noundef %0) #29
  %cmp = icmp ugt i32 %call2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %PageCompound.exit
  %6 = phi i1 [ false, %PageCompound.exit ], [ %cmp, %land.rhs ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef readnone %page) unnamed_addr #4 {
entry:
  %hpage_pinned_refcount = getelementptr %struct.page, %struct.page* %page, i64 2, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %hpage_pinned_refcount to %struct.atomic_t*
  ret %struct.atomic_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_mem_debugging_and_hardening() local_unnamed_addr #1 {
entry:
  %0 = load i8, i8* @_init_on_alloc_enabled_early, align 1, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %entry
  call fastcc void @static_key_enable(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_alloc, i64 0, i32 0)) #29
  br label %if.end5

if.else:                                          ; preds = %entry
  call fastcc void @static_key_disable(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_alloc, i64 0, i32 0)) #29
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %1 = load i8, i8* @_init_on_free_enabled_early, align 1, !range !10
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call fastcc void @static_key_enable(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_free, i64 0, i32 0)) #29
  br label %if.end9

if.else8:                                         ; preds = %if.end5
  call fastcc void @static_key_disable(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_free, i64 0, i32 0)) #29
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_enable(%struct.static_key* noundef %key) unnamed_addr #1 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !9

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.static_key_enable, i64 0, i64 0), %struct.static_key* noundef %key) #28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 318; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* %counter.i, align 4
  %cmp27.not = icmp eq i32 %2, 1
  br i1 %cmp27.not, label %return, label %if.then41, !prof !12

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 321; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !13
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 1, i32* %counter.i, align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_disable(%struct.static_key* noundef %key) unnamed_addr #1 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !9

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.static_key_disable, i64 0, i64 0), %struct.static_key* noundef %key) #28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 329; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* %counter.i, align 4
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %return, label %if.then41, !prof !12

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !15
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 0, i32* %counter.i, align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @reserve_bootmem_region(i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 section ".meminit.text" {
entry:
  %shr = lshr i64 %start, 12
  %sub = add i64 %end, 4095
  %shr1 = lshr i64 %sub, 12
  %cmp12 = icmp ult i64 %shr, %shr1
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %start_pfn.013 = phi i64 [ %inc, %for.inc ], [ %shr, %entry ]
  %call = call i32 @pfn_valid(i64 noundef %start_pfn.013) #28
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %0 = load i64, i64* @memstart_addr, align 8
  %shr2 = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr2
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr3 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %start_pfn.013
  %1 = getelementptr inbounds %struct.page, %struct.page* %add.ptr3, i64 0, i32 1
  %lru = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %lru) #29
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr3, i64 0, i32 0
  %2 = load i64, i64* %flags.i, align 64
  %or.i.i = or i64 %2, 4096
  store i64 %or.i.i, i64* %flags.i, align 64
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %start_pfn.013, 1
  %exitcond.not = icmp eq i64 %inc, %shr1
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i64 noundef) local_unnamed_addr #9

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
define dso_local void @__free_pages_core(%struct.page* noundef %page, i32 noundef %order) local_unnamed_addr #1 {
entry:
  %shl = shl nuw i32 1, %order
  %0 = bitcast %struct.page* %page to i8*
  call fastcc void @prefetchw(i8* noundef %0) #29
  %sub = add i32 %shl, -1
  %cmp17.not = icmp eq i32 %sub, 0
  br i1 %cmp17.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %loop.019 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %p.018 = phi %struct.page* [ %add.ptr, %for.body ], [ %page, %entry ]
  %add.ptr = getelementptr %struct.page, %struct.page* %p.018, i64 1
  %1 = bitcast %struct.page* %add.ptr to i8*
  call fastcc void @prefetchw(i8* noundef %1) #29
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %p.018, i64 0, i32 0
  %2 = load i64, i64* %flags.i, align 8
  %and.i.i = and i64 %2, -4097
  store i64 %and.i.i, i64* %flags.i, align 8
  call fastcc void @set_page_count(%struct.page* noundef %p.018, i32 noundef 0) #29
  %inc = add nuw i32 %loop.019, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %p.0.lcssa = phi %struct.page* [ %page, %entry ], [ %add.ptr, %for.body ]
  %flags.i15 = getelementptr inbounds %struct.page, %struct.page* %p.0.lcssa, i64 0, i32 0
  %3 = load i64, i64* %flags.i15, align 8
  %and.i.i16 = and i64 %3, -4097
  store i64 %and.i.i16, i64* %flags.i15, align 8
  call fastcc void @set_page_count(%struct.page* noundef %p.0.lcssa, i32 noundef 0) #29
  %conv = zext i32 %shl to i64
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #29
  %managed_pages = getelementptr inbounds %struct.zone, %struct.zone* %call, i64 0, i32 10
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv, %struct.atomic64_t* noundef %managed_pages) #28
  call fastcc void @__free_pages_ok(%struct.page* noundef %page, i32 noundef %order, i32 noundef 6) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetchw(i8* noundef %ptr) unnamed_addr #1 {
entry:
  call void asm sideeffect "prfm pstl1keep, ${0:a}\0A", "r"(i8* %ptr) #30, !srcloc !16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @set_page_count(%struct.page* noundef %page, i32 noundef %v) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  store volatile i32 %v, i32* %counter.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.zone* @page_zone(%struct.page* nocapture noundef readonly %page) unnamed_addr #2 {
entry:
  %call2 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #29
  %idxprom = zext i32 %call2 to i64
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %idxprom
  ret %struct.zone* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__free_pages_ok(%struct.page* noundef %page, i32 noundef %order, i32 noundef %fpi_flags) unnamed_addr #1 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #29
  %tobool13.not.i = icmp eq i32 %order, 0
  br i1 %tobool13.not.i, label %if.end49.i, label %if.then21.i, !prof !12

if.then21.i:                                      ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i.i, align 8
  %2 = and i64 %1, 65536
  %tobool.not.i.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.end27.i

PageCompound.exit.i:                              ; preds = %if.then21.i
  %3 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i.i = bitcast %union.anon* %3 to i64*
  %4 = load volatile i64, i64* %compound_head.i.i.i, align 8
  %5 = and i64 %4, 1
  %tobool23.not.i = icmp eq i64 %5, 0
  br label %if.end27.i

if.end27.i:                                       ; preds = %PageCompound.exit.i, %if.then21.i
  %tobool23.not159.i = phi i1 [ %tobool23.not.i, %PageCompound.exit.i ], [ false, %if.then21.i ]
  %shl.i = shl nuw i32 1, %order
  %cmp160.i = icmp sgt i32 %shl.i, 1
  br i1 %cmp160.i, label %for.body.preheader.i, label %if.end49.i

for.body.preheader.i:                             ; preds = %if.end27.i
  %wide.trip.count.i = zext i32 %shl.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %bad.0161.i = phi i32 [ 0, %for.body.preheader.i ], [ %bad.2.i, %for.inc.i ]
  br i1 %tobool23.not159.i, label %if.end32.i, label %if.then30.i

if.then30.i:                                      ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv.i
  call fastcc void @free_tail_pages_check(%struct.page* noundef %add.ptr.i) #28
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %for.body.i
  %add.ptr34.i = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv.i
  %call35.i = call fastcc i32 @check_free_page(%struct.page* noundef %add.ptr34.i) #28
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end45.i, label %if.then44.i, !prof !12

if.then44.i:                                      ; preds = %if.end32.i
  %inc.i = add i32 %bad.0161.i, 1
  br label %for.inc.i

if.end45.i:                                       ; preds = %if.end32.i
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr34.i, i64 0, i32 0
  %6 = load i64, i64* %flags.i, align 16
  %and.i = and i64 %6, -8388608
  store i64 %and.i, i64* %flags.i, align 16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end45.i, %if.then44.i
  %bad.2.i = phi i32 [ %inc.i, %if.then44.i ], [ %bad.0161.i, %if.end45.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %if.end49.i, label %for.body.i

if.end49.i:                                       ; preds = %for.inc.i, %if.end27.i, %entry
  %bad.3.i = phi i32 [ 0, %entry ], [ 0, %if.end27.i ], [ %bad.2.i, %for.inc.i ]
  %mapping.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %7 = load %struct.address_space*, %struct.address_space** %mapping.i.i, align 8
  %8 = ptrtoint %struct.address_space* %7 to i64
  %and.i.i = and i64 %8, 3
  %cmp.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.end53.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end49.i
  store %struct.address_space* null, %struct.address_space** %mapping.i.i, align 8
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %if.end49.i
  %call63.i = call fastcc i32 @check_free_page(%struct.page* noundef %page) #28
  %add64.i = sub i32 0, %bad.3.i
  %tobool66.not.i = icmp eq i32 %call63.i, %add64.i
  br i1 %tobool66.not.i, label %if.end68.i, label %cleanup

if.end68.i:                                       ; preds = %if.end53.i
  %flags69.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %9 = load i64, i64* %flags69.i, align 16
  %and70.i = and i64 %9, -8388608
  store i64 %and70.i, i64* %flags69.i, align 16
  %call86.i = call fastcc i1 @want_init_on_free() #28
  %shl80.i = shl nuw i32 1, %order
  br i1 %call86.i, label %if.then89.i, label %if.end

if.then89.i:                                      ; preds = %if.end68.i
  call fastcc void @kernel_init_free_pages(%struct.page* noundef %page, i32 noundef %shl80.i, i1 noundef false) #28
  br label %if.end

if.end:                                           ; preds = %if.end68.i, %if.then89.i
  %call.i.i = call fastcc i64* @get_pageblock_bitmap(i64 noundef %sub.ptr.div) #28
  %call1.i.i = call fastcc i32 @pfn_to_bitidx(i64 noundef %sub.ptr.div) #28
  %10 = zext i32 %call1.i.i to i64
  %div.i.i = lshr i64 %10, 6
  %and.i.i40 = and i64 %10, 63
  %arrayidx.i.i = getelementptr i64, i64* %call.i.i, i64 %div.i.i
  %11 = load i64, i64* %arrayidx.i.i, align 8
  %shr.i.i = lshr i64 %11, %and.i.i40
  %12 = trunc i64 %shr.i.i to i32
  %conv.i = and i32 %12, 7
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %call, i64 0, i32 19, i32 0, i32 0
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #29
  call fastcc void @__free_one_page(%struct.page* noundef %page, i64 noundef %sub.ptr.div, %struct.zone* noundef nonnull %call, i32 noundef %order, i32 noundef %conv.i, i32 noundef %fpi_flags) #29
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call5) #28
  %conv18 = sext i32 %shl80.i to i64
  call fastcc void @__count_vm_events(i32 noundef 16, i64 noundef %conv18) #29
  br label %cleanup

cleanup:                                          ; preds = %if.end53.i, %if.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @memblock_free_pages(%struct.page* noundef %page, i64 noundef %pfn, i32 noundef %order) local_unnamed_addr #0 section ".init.text" {
entry:
  call void @__free_pages_core(%struct.page* noundef %page, i32 noundef %order) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @__pageblock_pfn_to_page(i64 noundef %start_pfn, i64 noundef %end_pfn, %struct.zone* noundef readnone %zone) local_unnamed_addr #1 {
entry:
  %dec = add i64 %end_pfn, -1
  %call = call i32 @pfn_valid(i64 noundef %start_pfn) #28
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @pfn_valid(i64 noundef %dec) #28
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @pfn_valid(i64 noundef %start_pfn) #28
  %tobool4.not = icmp eq i32 %call3, 0
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr6 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %start_pfn
  %tobool8.not34 = icmp eq %struct.page* %add.ptr6, null
  %tobool8.not = select i1 %tobool4.not, i1 true, i1 %tobool8.not34
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = call fastcc %struct.zone* @page_zone(%struct.page* noundef nonnull %add.ptr6) #29
  %cmp.not = icmp eq %struct.zone* %call11, %zone
  br i1 %cmp.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end10
  %add.ptr17 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %dec
  %call18 = call fastcc i32 @page_zone_id(%struct.page* noundef nonnull %add.ptr6) #29
  %call19 = call fastcc i32 @page_zone_id(%struct.page* noundef %add.ptr17) #29
  %cmp20.not = icmp eq i32 %call18, %call19
  %___page.0. = select i1 %cmp20.not, %struct.page* %add.ptr6, %struct.page* null
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi %struct.page* [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %if.end10 ], [ %___page.0., %if.end13 ]
  ret %struct.page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_zone_id(%struct.page* nocapture noundef readonly %page) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %shr = lshr i64 %0, 62
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_zone_contiguous(%struct.zone* noundef %zone) local_unnamed_addr #1 {
entry:
  %zone_start_pfn = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 9
  %0 = load i64, i64* %zone_start_pfn, align 8
  %call24 = call fastcc i64 @zone_end_pfn(%struct.zone* noundef %zone) #29
  %cmp25 = icmp ult i64 %0, %call24
  br i1 %cmp25, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %add1 = add i64 %0, 1024
  %and = and i64 %add1, -1024
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end
  %call28 = phi i64 [ %call, %if.end ], [ %call24, %for.body.preheader ]
  %block_start_pfn.027 = phi i64 [ %cond, %if.end ], [ %0, %for.body.preheader ]
  %block_end_pfn.026 = phi i64 [ %add7, %if.end ], [ %and, %for.body.preheader ]
  %cmp3 = icmp ult i64 %block_end_pfn.026, %call28
  %cond = select i1 %cmp3, i64 %block_end_pfn.026, i64 %call28
  %call4 = call %struct.page* @__pageblock_pfn_to_page(i64 noundef %block_start_pfn.027, i64 noundef %cond, %struct.zone* noundef %zone) #29
  %tobool.not = icmp eq %struct.page* %call4, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  call fastcc void @_cond_resched() #29
  %add7 = add i64 %cond, 1024
  %call = call fastcc i64 @zone_end_pfn(%struct.zone* noundef %zone) #29
  %cmp = icmp ult i64 %cond, %call
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %contiguous = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 23
  store i8 1, i8* %contiguous, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @zone_end_pfn(%struct.zone* nocapture noundef readonly %zone) unnamed_addr #2 {
entry:
  %zone_start_pfn = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 9
  %0 = load i64, i64* %zone_start_pfn, align 8
  %spanned_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 11
  %1 = load i64, i64* %spanned_pages, align 8
  %add = add i64 %1, %0
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #1 {
entry:
  %call = call i32 @__cond_resched() #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @clear_zone_contiguous(%struct.zone* nocapture noundef writeonly %zone) local_unnamed_addr #7 {
entry:
  %contiguous = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 23
  store i8 0, i8* %contiguous, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @page_alloc_init_late() local_unnamed_addr #0 section ".init.text" {
entry:
  call void @buffer_init() #28
  %call1 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not14 = icmp eq %struct.pglist_data* %call1, null
  br i1 %tobool.not14, label %for.end7, label %for.body3.preheader

for.body3.preheader:                              ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call1, i64 0, i32 0, i64 0
  br label %for.body3

for.body3:                                        ; preds = %for.body3.preheader, %for.inc5
  %zone.015 = phi %struct.zone* [ %call6, %for.inc5 ], [ %arraydecay, %for.body3.preheader ]
  %call4 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.015) #29
  br i1 %call4, label %if.else, label %for.inc5

if.else:                                          ; preds = %for.body3
  call void @set_zone_contiguous(%struct.zone* noundef nonnull %zone.015) #29
  br label %for.inc5

for.inc5:                                         ; preds = %if.else, %for.body3
  %call6 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.015) #28
  %tobool.not = icmp eq %struct.zone* %call6, null
  br i1 %tobool.not, label %for.end7, label %for.body3

for.end7:                                         ; preds = %for.inc5, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @buffer_init() local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pglist_data* @first_online_pgdat() local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @populated_zone(%struct.zone* nocapture noundef readonly %zone) unnamed_addr #2 {
entry:
  %present_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 12
  %0 = load i64, i64* %present_pages, align 64
  %tobool = icmp ne i64 %0, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.zone* @next_zone(%struct.zone* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @post_alloc_hook(%struct.page* noundef %page, i32 noundef %order, i32 noundef %gfp_flags) local_unnamed_addr #1 {
entry:
  call fastcc void @set_page_private(%struct.page* noundef %page, i64 noundef 0) #29
  call fastcc void @set_page_refcounted(%struct.page* noundef %page) #29
  %shl = shl nuw i32 1, %order
  %call2 = call fastcc i1 @want_init_on_free() #29
  br i1 %call2, label %if.end8, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call3 = call fastcc i1 @want_init_on_alloc(i32 noundef %gfp_flags) #29
  br i1 %call3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %land.rhs
  %and = and i32 %gfp_flags, 8388608
  %tobool7 = icmp ne i32 %and, 0
  call fastcc void @kernel_init_free_pages(%struct.page* noundef %page, i32 noundef %shl, i1 noundef %tobool7) #29
  br label %if.end8

if.end8:                                          ; preds = %entry, %land.rhs, %if.then5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_page_private(%struct.page* nocapture noundef writeonly %page, i64 noundef %private) unnamed_addr #7 {
entry:
  %private1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  store i64 %private, i64* %private1, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @set_page_refcounted(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  call fastcc void @set_page_count(%struct.page* noundef %page, i32 noundef 1) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @want_init_on_free() unnamed_addr #5 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_free, i64 0, i32 0)) #29
  %cmp = icmp sgt i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @want_init_on_alloc(i32 noundef %flags) unnamed_addr #5 {
entry:
  %call5 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_alloc, i64 0, i32 0)) #29
  %cmp6 = icmp sgt i32 %call5, 0
  %and = and i32 %flags, 256
  %tobool16 = icmp ne i32 %and, 0
  %retval.0 = or i1 %tobool16, %cmp6
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernel_init_free_pages(%struct.page* noundef %page, i32 noundef %numpages, i1 noundef %zero_tags) unnamed_addr #1 {
entry:
  %cmp32 = icmp sgt i32 %numpages, 0
  br i1 %zero_tags, label %for.cond.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry
  br i1 %cmp32, label %for.body3.preheader, label %cleanup

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %wide.trip.count = zext i32 %numpages to i64
  br label %for.body3

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp32, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count39 = zext i32 %numpages to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv36 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next37, %for.body ]
  %add.ptr = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv36
  call void @tag_clear_highpage(%struct.page* noundef %add.ptr) #28
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %cleanup, label %for.body

for.body3:                                        ; preds = %for.body3.preheader, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body3.preheader ], [ %indvars.iv.next, %for.body3 ]
  %add.ptr5 = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv
  call fastcc void @clear_highpage(%struct.page* noundef %add.ptr5) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body3

cleanup:                                          ; preds = %for.body3, %for.body, %for.cond1.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i32 @move_freepages_block(%struct.zone* noundef %zone, %struct.page* noundef %page, i32 noundef %migratetype, i32* noundef %num_movable) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq i32* %num_movable, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %num_movable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %and = and i64 %sub.ptr.div, -1024
  %sub = or i64 %sub.ptr.div, 1023
  %call3 = call fastcc i1 @zone_spans_pfn(%struct.zone* noundef %zone, i64 noundef %sub) #29
  br i1 %call3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call = call fastcc i1 @zone_spans_pfn(%struct.zone* noundef %zone, i64 noundef %and) #29
  %spec.select = select i1 %call, i64 %and, i64 %sub.ptr.div
  %call6 = call fastcc i32 @move_freepages(%struct.zone* noundef %zone, i64 noundef %spec.select, i64 noundef %sub, i32 noundef %migratetype, i32* noundef %num_movable) #29
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @zone_spans_pfn(%struct.zone* nocapture noundef readonly %zone, i64 noundef %pfn) unnamed_addr #2 {
entry:
  %zone_start_pfn = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 9
  %0 = load i64, i64* %zone_start_pfn, align 8
  %cmp.not = icmp ugt i64 %0, %pfn
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call fastcc i64 @zone_end_pfn(%struct.zone* noundef %zone) #29
  %cmp1 = icmp ugt i64 %call, %pfn
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i32 @move_freepages(%struct.zone* noundef %zone, i64 noundef %start_pfn, i64 noundef %end_pfn, i32 noundef %migratetype, i32* noundef %num_movable) unnamed_addr #6 {
entry:
  %cmp.not3235 = icmp ugt i64 %start_pfn, %end_pfn
  br i1 %cmp.not3235, label %for.end, label %for.body.lr.ph.lr.ph

for.body.lr.ph.lr.ph:                             ; preds = %entry
  %tobool2.not = icmp eq i32* %num_movable, null
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.end9
  %pages_moved.0.ph37 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %add12, %if.end9 ]
  %pfn.0.ph36 = phi i64 [ %start_pfn, %for.body.lr.ph.lr.ph ], [ %add, %if.end9 ]
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %pfn.033 = phi i64 [ %pfn.0.ph36, %for.body.lr.ph ], [ %inc8, %if.end ]
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr1 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %pfn.033
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr1, i64 0, i32 2, i32 0, i32 0
  %1 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %1, -268435328
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %if.end9, label %if.then

if.then:                                          ; preds = %for.body
  br i1 %tobool2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %add.ptr1) #28
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 16
  %tobool4.not = icmp eq i64 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %land.lhs.true
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr1, i64 0, i32 1, i32 0, i32 1
  %5 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %6 = ptrtoint %struct.address_space* %5 to i64
  %and.i28 = and i64 %6, 3
  %cmp.i29.not = icmp eq i64 %and.i28, 2
  br i1 %cmp.i29.not, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i32, i32* %num_movable, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %num_movable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %lor.lhs.false, %if.then
  %inc8 = add i64 %pfn.033, 1
  %cmp.not = icmp ugt i64 %inc8, %end_pfn
  br i1 %cmp.not, label %for.end, label %for.body

if.end9:                                          ; preds = %for.body
  %call10 = call fastcc i32 @buddy_order(%struct.page* noundef %add.ptr1) #29
  call fastcc void @move_to_free_list(%struct.page* noundef %add.ptr1, %struct.zone* noundef %zone, i32 noundef %call10, i32 noundef %migratetype) #29
  %shl = shl nuw i32 1, %call10
  %conv = sext i32 %shl to i64
  %add = add i64 %pfn.033, %conv
  %add12 = add i32 %shl, %pages_moved.0.ph37
  %cmp.not32 = icmp ugt i64 %add, %end_pfn
  br i1 %cmp.not32, label %for.end, label %for.body.lr.ph

for.end:                                          ; preds = %if.end9, %if.end, %entry
  %pages_moved.0.ph.lcssa = phi i32 [ 0, %entry ], [ %pages_moved.0.ph37, %if.end ], [ %add12, %if.end9 ]
  ret i32 %pages_moved.0.ph.lcssa
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i32 @find_suitable_fallback(%struct.free_area* noundef %area, i32 noundef %order, i32 noundef %migratetype, i1 noundef %only_stealable, i8* nocapture noundef %can_steal) local_unnamed_addr #6 {
entry:
  %nr_free = getelementptr inbounds %struct.free_area, %struct.free_area* %area, i64 0, i32 1
  %0 = load i64, i64* %nr_free, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end5.preheader

if.end5.preheader:                                ; preds = %entry
  store i8 0, i8* %can_steal, align 1
  %idxprom = sext i32 %migratetype to i64
  %arrayidx227 = getelementptr [4 x [3 x i32]], [4 x [3 x i32]]* @fallbacks, i64 0, i64 %idxprom, i64 0
  %1 = load i32, i32* %arrayidx227, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.preheader, %for.inc
  %2 = phi i32 [ %4, %for.inc ], [ %1, %if.end5.preheader ]
  %i.029 = phi i32 [ %inc, %for.inc ], [ 0, %if.end5.preheader ]
  %call = call fastcc i1 @free_area_empty(%struct.free_area* noundef %area, i32 noundef %2) #29
  br i1 %call, label %for.inc, label %if.end7

if.end7:                                          ; preds = %if.end5
  %call8 = call fastcc i1 @can_steal_fallback(i32 noundef %order, i32 noundef %migratetype) #29
  br i1 %call8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i8 1, i8* %can_steal, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  br i1 %only_stealable, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end10
  %3 = load i8, i8* %can_steal, align 1, !range !10
  %tobool13.not = icmp eq i8 %3, 0
  br i1 %tobool13.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end12, %if.end5
  %inc = add i32 %i.029, 1
  %idxprom1 = sext i32 %inc to i64
  %arrayidx2 = getelementptr [4 x [3 x i32]], [4 x [3 x i32]]* @fallbacks, i64 0, i64 %idxprom, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %4, 4
  br i1 %cmp3, label %cleanup, label %if.end5

cleanup:                                          ; preds = %if.end10, %if.end12, %for.inc, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %2, %if.end10 ], [ %2, %if.end12 ], [ -1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @free_area_empty(%struct.free_area* noundef %area, i32 noundef %migratetype) unnamed_addr #5 {
entry:
  %idxprom = sext i32 %migratetype to i64
  %arrayidx = getelementptr %struct.free_area, %struct.free_area* %area, i64 0, i32 0, i64 %idxprom
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx) #29
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @can_steal_fallback(i32 noundef %order, i32 noundef %start_mt) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i32 %order, 9
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i32 %order, 4
  %0 = and i32 %start_mt, -3
  %1 = icmp eq i32 %0, 0
  %2 = or i1 %cmp1, %1
  %3 = load i32, i32* @page_group_by_mobility_disabled, align 4
  %tobool = icmp ne i32 %3, 0
  %or.cond9 = select i1 %2, i1 true, i1 %tobool
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %or.cond9, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drain_local_pages(%struct.zone* noundef %zone) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #29
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %tobool.not = icmp eq %struct.zone* %zone, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @drain_pages_zone(i32 noundef %1, %struct.zone* noundef nonnull %zone) #29
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @drain_pages(i32 noundef %1) #29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #31, !srcloc !17
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @drain_pages_zone(i32 noundef %cpu, %struct.zone* noundef %zone) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #29
  %call10 = call fastcc i64 @__kern_my_cpu_offset() #29
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 5
  %0 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %1 = ptrtoint %struct.per_cpu_pages* %0 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add20 = add i64 %2, %1
  %3 = inttoptr i64 %add20 to %struct.per_cpu_pages*
  %count = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %3, i64 0, i32 0
  %4 = load i32, i32* %count, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body23, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @free_pcppages_bulk(%struct.zone* noundef %zone, i32 noundef %4, %struct.per_cpu_pages* noundef %3) #29
  br label %do.body23

do.body23:                                        ; preds = %if.then, %entry
  %call30 = call fastcc i64 @__kern_my_cpu_offset() #29
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @drain_pages(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not7 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not7, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %zone.08 = phi %struct.zone* [ %call2, %for.inc ], [ %arraydecay, %for.body.preheader ]
  %call1 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.08) #29
  br i1 %call1, label %if.else, label %for.inc

if.else:                                          ; preds = %for.body
  call fastcc void @drain_pages_zone(i32 noundef %cpu, %struct.zone* noundef nonnull %zone.08) #29
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body
  %call2 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.08) #28
  %tobool.not = icmp eq %struct.zone* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drain_all_pages(%struct.zone* noundef %zone) local_unnamed_addr #1 {
entry:
  call fastcc void @__drain_all_pages(%struct.zone* noundef %zone, i1 noundef false) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__drain_all_pages(%struct.zone* noundef %zone, i1 noundef %force_all_cpus) unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @mm_percpu_wq, align 8
  %tobool.not = icmp eq %struct.workqueue_struct* %0, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 3181; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !18
  br label %cleanup

if.end18:                                         ; preds = %entry
  %call = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @pcpu_drain_mutex) #28
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %if.then29, label %if.end33, !prof !9

if.then29:                                        ; preds = %if.end18
  %tobool30.not = icmp eq %struct.zone* %zone, null
  br i1 %tobool30.not, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.then29
  call void @mutex_lock(%struct.mutex* noundef nonnull @pcpu_drain_mutex) #28
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end18
  %call34163 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp164 = icmp ult i32 %call34163, %1
  br i1 %cmp164, label %for.body.lr.ph, label %for.cond77.preheader

for.body.lr.ph:                                   ; preds = %if.end33
  %tobool38.not = icmp eq %struct.zone* %zone, null
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 5
  br label %for.body

for.cond77.preheader:                             ; preds = %if.end75, %if.end33
  %2 = phi i32 [ %1, %if.end33 ], [ %13, %if.end75 ]
  %call78166 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__drain_all_pages.cpus_with_pcps) #32
  %cmp79167 = icmp ult i32 %call78166, %2
  br i1 %cmp79167, label %for.body81, label %for.cond103.preheader

for.body:                                         ; preds = %for.body.lr.ph, %if.end75
  %call34165 = phi i32 [ %call34163, %for.body.lr.ph ], [ %call34, %if.end75 ]
  br i1 %force_all_cpus, label %if.then73, label %if.else

if.else:                                          ; preds = %for.body
  br i1 %tobool38.not, label %if.else45, label %do.body

do.body:                                          ; preds = %if.else
  %3 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %4 = ptrtoint %struct.per_cpu_pages* %3 to i64
  %idxprom = sext i32 %call34165 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.per_cpu_pages*
  %count = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %6, i64 0, i32 0
  %7 = load i32, i32* %count, align 8
  %tobool42.not.not = icmp eq i32 %7, 0
  br i1 %tobool42.not.not, label %if.else74, label %if.then73

if.else45:                                        ; preds = %if.else
  %call46 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool48.not160 = icmp eq %struct.pglist_data* %call46, null
  br i1 %tobool48.not160, label %if.else74, label %for.body49.lr.ph

for.body49.lr.ph:                                 ; preds = %if.else45
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call46, i64 0, i32 0, i64 0
  %idxprom61 = sext i32 %call34165 to i64
  %arrayidx62 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom61
  br label %for.body49

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc
  %z.0161 = phi %struct.zone* [ %arraydecay, %for.body49.lr.ph ], [ %call69, %for.inc ]
  %call50 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %z.0161) #29
  br i1 %call50, label %do.body53, label %for.inc

do.body53:                                        ; preds = %for.body49
  %per_cpu_pageset59 = getelementptr inbounds %struct.zone, %struct.zone* %z.0161, i64 0, i32 5
  %8 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset59, align 16
  %9 = ptrtoint %struct.per_cpu_pages* %8 to i64
  %10 = load i64, i64* %arrayidx62, align 8
  %add63 = add i64 %10, %9
  %11 = inttoptr i64 %add63 to %struct.per_cpu_pages*
  %count64 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %11, i64 0, i32 0
  %12 = load i32, i32* %count64, align 8
  %tobool65.not = icmp eq i32 %12, 0
  br i1 %tobool65.not, label %for.inc, label %if.then73

for.inc:                                          ; preds = %for.body49, %do.body53
  %call69 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %z.0161) #28
  %tobool48.not = icmp eq %struct.zone* %call69, null
  br i1 %tobool48.not, label %if.else74, label %for.body49

if.then73:                                        ; preds = %do.body53, %for.body, %do.body
  call fastcc void @cpumask_set_cpu(i32 noundef %call34165) #29
  br label %if.end75

if.else74:                                        ; preds = %for.inc, %if.else45, %do.body
  call fastcc void @cpumask_clear_cpu(i32 noundef %call34165) #29
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then73
  %call34 = call i32 @cpumask_next(i32 noundef %call34165, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %13 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call34, %13
  br i1 %cmp, label %for.body, label %for.cond77.preheader

for.cond103.preheader:                            ; preds = %for.body81, %for.cond77.preheader
  %14 = phi i32 [ %2, %for.cond77.preheader ], [ %18, %for.body81 ]
  %call104169 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__drain_all_pages.cpus_with_pcps) #32
  %cmp105170 = icmp ult i32 %call104169, %14
  br i1 %cmp105170, label %do.body108, label %for.end120

for.body81:                                       ; preds = %for.cond77.preheader, %for.body81
  %call78168 = phi i32 [ %call78, %for.body81 ], [ %call78166, %for.cond77.preheader ]
  %idxprom89 = sext i32 %call78168 to i64
  %arrayidx90 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom89
  %15 = load i64, i64* %arrayidx90, align 8
  %add91 = add i64 %15, ptrtoint (%struct.pcpu_drain* @pcpu_drain to i64)
  %16 = inttoptr i64 %add91 to %struct.pcpu_drain*
  %zone92 = getelementptr inbounds %struct.pcpu_drain, %struct.pcpu_drain* %16, i64 0, i32 0
  store %struct.zone* %zone, %struct.zone** %zone92, align 8
  %work = getelementptr inbounds %struct.pcpu_drain, %struct.pcpu_drain* %16, i64 0, i32 1
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pcpu_drain, %struct.pcpu_drain* %16, i64 0, i32 1, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry96 = getelementptr inbounds %struct.pcpu_drain, %struct.pcpu_drain* %16, i64 0, i32 1, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry96) #29
  %func = getelementptr inbounds %struct.pcpu_drain, %struct.pcpu_drain* %16, i64 0, i32 1, i32 2
  store void (%struct.work_struct*)* @drain_local_pages_wq, void (%struct.work_struct*)** %func, align 8
  %17 = load %struct.workqueue_struct*, %struct.workqueue_struct** @mm_percpu_wq, align 8
  %call101 = call i1 @queue_work_on(i32 noundef %call78168, %struct.workqueue_struct* noundef %17, %struct.work_struct* noundef %work) #28
  %call78 = call i32 @cpumask_next(i32 noundef %call78168, %struct.cpumask* noundef nonnull @__drain_all_pages.cpus_with_pcps) #32
  %18 = load i32, i32* @nr_cpu_ids, align 4
  %cmp79 = icmp ult i32 %call78, %18
  br i1 %cmp79, label %for.body81, label %for.cond103.preheader

do.body108:                                       ; preds = %for.cond103.preheader, %do.body108
  %call104171 = phi i32 [ %call104, %do.body108 ], [ %call104169, %for.cond103.preheader ]
  %idxprom115 = sext i32 %call104171 to i64
  %arrayidx116 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom115
  %19 = load i64, i64* %arrayidx116, align 8
  %add117 = add i64 %19, ptrtoint (%struct.pcpu_drain* @pcpu_drain to i64)
  %20 = inttoptr i64 %add117 to %struct.pcpu_drain*
  %work118 = getelementptr inbounds %struct.pcpu_drain, %struct.pcpu_drain* %20, i64 0, i32 1
  %call119 = call i1 @flush_work(%struct.work_struct* noundef %work118) #28
  %call104 = call i32 @cpumask_next(i32 noundef %call104171, %struct.cpumask* noundef nonnull @__drain_all_pages.cpus_with_pcps) #32
  %21 = load i32, i32* @nr_cpu_ids, align 4
  %cmp105 = icmp ult i32 %call104, %21
  br i1 %cmp105, label %do.body108, label %for.end120

for.end120:                                       ; preds = %do.body108, %for.cond103.preheader
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pcpu_drain_mutex) #28
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then29, %for.end120
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_unref_page(%struct.page* noundef %page, i32 noundef %order) local_unnamed_addr #1 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call = call fastcc i1 @free_unref_page_prepare(%struct.page* noundef %page, i64 noundef %sub.ptr.div, i32 noundef %order) #29
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @get_pcppage_migratetype(%struct.page* noundef %page) #29
  %cmp = icmp sgt i32 %call1, 2
  br i1 %cmp, label %if.then3, label %do.body17, !prof !9

if.then3:                                         ; preds = %if.end
  br label %do.body17

do.body17:                                        ; preds = %if.end, %if.then3
  %migratetype.0 = phi i32 [ 1, %if.then3 ], [ %call1, %if.end ]
  %call20 = call fastcc i64 @arch_local_irq_save() #29
  %call28 = call fastcc i64 @__kern_my_cpu_offset() #29
  call fastcc void @free_unref_page_commit(%struct.page* noundef %page, i32 noundef %migratetype.0, i32 noundef %order) #29
  %call39 = call fastcc i64 @__kern_my_cpu_offset() #29
  call fastcc void @arch_local_irq_restore(i64 noundef %call20) #29
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @free_unref_page_prepare(%struct.page* noundef %page, i64 noundef %pfn, i32 noundef %order) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @free_pcp_prepare(%struct.page* noundef %page, i32 noundef %order) #29
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call fastcc i64* @get_pageblock_bitmap(i64 noundef %pfn) #28
  %call1.i.i = call fastcc i32 @pfn_to_bitidx(i64 noundef %pfn) #28
  %0 = zext i32 %call1.i.i to i64
  %div.i.i = lshr i64 %0, 6
  %and.i.i = and i64 %0, 63
  %arrayidx.i.i = getelementptr i64, i64* %call.i.i, i64 %div.i.i
  %1 = load i64, i64* %arrayidx.i.i, align 8
  %shr.i.i = lshr i64 %1, %and.i.i
  %2 = trunc i64 %shr.i.i to i32
  %conv.i = and i32 %2, 7
  call fastcc void @set_pcppage_migratetype(%struct.page* noundef %page, i32 noundef %conv.i) #29
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_pcppage_migratetype(%struct.page* nocapture noundef readonly %page) unnamed_addr #2 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #29
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #29
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_unref_page_commit(%struct.page* noundef %page, i32 noundef %migratetype, i32 noundef %order) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #29
  call fastcc void @__count_vm_event() #29
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %call, i64 0, i32 5
  %0 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %1 = ptrtoint %struct.per_cpu_pages* %0 to i64
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #29
  %add = add i64 %call2, %1
  %2 = inttoptr i64 %add to %struct.per_cpu_pages*
  %call3 = call fastcc i32 @order_to_pindex(i32 noundef %migratetype, i32 noundef %order) #29
  %lru = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  %idxprom = sext i32 %call3 to i64
  %arrayidx = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %2, i64 0, i32 4, i64 %idxprom
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef %arrayidx) #29
  %shl = shl nuw i32 1, %order
  %count = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %2, i64 0, i32 0
  %3 = load i32, i32* %count, align 8
  %add4 = add i32 %3, %shl
  store i32 %add4, i32* %count, align 8
  %call5 = call fastcc i32 @nr_pcp_high(%struct.per_cpu_pages* noundef %2, %struct.zone* noundef nonnull %call) #29
  %4 = load i32, i32* %count, align 8
  %cmp.not = icmp slt i32 %4, %call5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %batch11 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %2, i64 0, i32 2
  %5 = load volatile i32, i32* %batch11, align 8
  %call12 = call fastcc i32 @nr_pcp_free(%struct.per_cpu_pages* noundef %2, i32 noundef %call5, i32 noundef %5) #29
  call fastcc void @free_pcppages_bulk(%struct.zone* noundef nonnull %call, i32 noundef %call12, %struct.per_cpu_pages* noundef %2) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #30, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_unref_page_list(%struct.list_head* noundef readonly %list) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.list_head* %list to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not228 = icmp eq %struct.list_head* %2, %list
  br i1 %cmp.not228, label %do.body30, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %3 = phi %struct.list_head* [ %5, %for.inc ], [ %2, %entry ]
  %.pn231.in.in = phi i8* [ %.pn231, %for.inc ], [ %1, %entry ]
  %page.0.in229 = getelementptr i8, i8* %.pn231.in.in, i64 -8
  %page.0230 = bitcast i8* %page.0.in229 to %struct.page*
  %.pn231.in = bitcast i8* %.pn231.in.in to i8**
  %.pn231 = load i8*, i8** %.pn231.in, align 8
  %4 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %4, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr10 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint i8* %page.0.in229 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call = call fastcc i1 @free_unref_page_prepare(%struct.page* noundef %page.0230, i64 noundef %sub.ptr.div, i32 noundef 0) #29
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call fastcc void @list_del(%struct.list_head* noundef %3) #29
  br label %for.inc

if.end:                                           ; preds = %for.body
  call fastcc void @set_page_private(%struct.page* noundef %page.0230, i64 noundef %sub.ptr.div) #29
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %5 = bitcast i8* %.pn231 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %5, %list
  br i1 %cmp.not, label %do.body30, label %for.body

do.body30:                                        ; preds = %for.inc, %entry
  %call34 = call fastcc i64 @arch_local_irq_save() #29
  %call44 = call fastcc i64 @__kern_my_cpu_offset() #29
  %6 = load i8*, i8** %0, align 8
  %7 = bitcast i8* %6 to %struct.list_head*
  %cmp64.not236 = icmp eq %struct.list_head* %7, %list
  br i1 %cmp64.not236, label %do.body147, label %for.body68

for.body68:                                       ; preds = %do.body30, %for.inc136
  %.pn221240.in.in = phi i8* [ %.pn221240, %for.inc136 ], [ %6, %do.body30 ]
  %flags.0238 = phi i64 [ %flags.1, %for.inc136 ], [ %call34, %do.body30 ]
  %batch_count.0237 = phi i32 [ %batch_count.1, %for.inc136 ], [ 0, %do.body30 ]
  %page.1239.in = getelementptr i8, i8* %.pn221240.in.in, i64 -8
  %page.1239 = bitcast i8* %page.1239.in to %struct.page*
  %.pn221240.in = bitcast i8* %.pn221240.in.in to i8**
  %.pn221240 = load i8*, i8** %.pn221240.in, align 8
  call fastcc void @set_page_private(%struct.page* noundef %page.1239, i64 noundef 0) #29
  %call69 = call fastcc i32 @get_pcppage_migratetype(%struct.page* noundef %page.1239) #29
  %cmp70 = icmp sgt i32 %call69, 2
  br i1 %cmp70, label %if.then79, label %if.end80, !prof !9

if.then79:                                        ; preds = %for.body68
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %for.body68
  %migratetype.0 = phi i32 [ 1, %if.then79 ], [ %call69, %for.body68 ]
  call fastcc void @free_unref_page_commit(%struct.page* noundef %page.1239, i32 noundef %migratetype.0, i32 noundef 0) #29
  %inc = add i32 %batch_count.0237, 1
  %cmp82 = icmp eq i32 %inc, 32
  br i1 %cmp82, label %do.body86, label %for.inc136

do.body86:                                        ; preds = %if.end80
  %call93 = call fastcc i64 @__kern_my_cpu_offset() #29
  call fastcc void @arch_local_irq_restore(i64 noundef %flags.0238) #29
  %call119 = call fastcc i64 @arch_local_irq_save() #29
  %call131 = call fastcc i64 @__kern_my_cpu_offset() #29
  br label %for.inc136

for.inc136:                                       ; preds = %if.end80, %do.body86
  %batch_count.1 = phi i32 [ 0, %do.body86 ], [ %inc, %if.end80 ]
  %flags.1 = phi i64 [ %call119, %do.body86 ], [ %flags.0238, %if.end80 ]
  %8 = bitcast i8* %.pn221240 to %struct.list_head*
  %cmp64.not = icmp eq %struct.list_head* %8, %list
  br i1 %cmp64.not, label %do.body147, label %for.body68

do.body147:                                       ; preds = %for.inc136, %do.body30
  %flags.0.lcssa = phi i64 [ %call34, %do.body30 ], [ %flags.1, %for.inc136 ]
  %call154 = call fastcc i64 @__kern_my_cpu_offset() #29
  call fastcc void @arch_local_irq_restore(i64 noundef %flags.0.lcssa) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #29
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @split_page(%struct.page* noundef %page, i32 noundef %order) local_unnamed_addr #6 {
entry:
  %shl = shl nuw i32 1, %order
  %cmp10 = icmp sgt i32 %shl, 1
  br i1 %cmp10, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %shl to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %add.ptr = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv
  call fastcc void @set_page_refcounted(%struct.page* noundef %add.ptr) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__isolate_free_page(%struct.page* noundef %page, i32 noundef %order) local_unnamed_addr #1 {
entry:
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %0, -268435328
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !12

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 3509; .short 0; .popsection; 14471: brk 0x800", ""() #30, !srcloc !20
  unreachable

do.end9:                                          ; preds = %entry
  %call10 = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #29
  %arrayidx = getelementptr inbounds %struct.zone, %struct.zone* %call10, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 64
  %sh_prom = zext i32 %order to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add i64 %1, %shl
  %call15 = call i1 @zone_watermark_ok(%struct.zone* noundef nonnull %call10, i32 noundef 0, i64 noundef %add, i32 noundef 0, i32 noundef 128) #29
  br i1 %call15, label %if.end17, label %cleanup

if.end17:                                         ; preds = %do.end9
  %2 = trunc i64 %shl to i32
  %conv20 = sub i32 0, %2
  call fastcc void @__mod_zone_freepage_state(%struct.zone* noundef nonnull %call10, i32 noundef %conv20) #29
  call fastcc void @del_page_from_free_list(%struct.page* noundef %page, %struct.zone* noundef nonnull %call10, i32 noundef %order) #29
  %cmp = icmp ugt i32 %order, 8
  br i1 %cmp, label %if.then23, label %cleanup

if.then23:                                        ; preds = %if.end17
  %shl24 = shl nuw i32 1, %order
  %idx.ext = sext i32 %shl24 to i64
  %add.ptr25 = getelementptr %struct.page, %struct.page* %page, i64 %idx.ext
  %add.ptr26 = getelementptr %struct.page, %struct.page* %add.ptr25, i64 -1
  %cmp2775 = icmp ugt %struct.page* %add.ptr26, %page
  br i1 %cmp2775, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %if.then23
  %.pre77 = load i64, i64* @memstart_addr, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end42
  %3 = phi i64 [ %4, %if.end42 ], [ %.pre77, %for.body.preheader ]
  %page.addr.076 = phi %struct.page* [ %add.ptr43, %if.end42 ], [ %page, %for.body.preheader ]
  %shr30 = ashr i64 %3, 12
  %idx.neg31 = sub nsw i64 0, %shr30
  %add.ptr32 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg31
  %sub.ptr.lhs.cast33 = ptrtoint %struct.page* %page.addr.076 to i64
  %sub.ptr.rhs.cast34 = ptrtoint %struct.page* %add.ptr32 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36 = ashr exact i64 %sub.ptr.sub35, 6
  %call37 = call i64 @get_pfnblock_flags_mask(%struct.page* undef, i64 noundef %sub.ptr.div36, i64 noundef 7) #29
  %conv38 = trunc i64 %call37 to i32
  %call40 = call fastcc i1 @is_migrate_highatomic(i32 noundef %conv38) #29
  br i1 %call40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %for.body
  call void @set_pageblock_migratetype(%struct.page* noundef %page.addr.076, i32 noundef 1) #29
  %.pre = load i64, i64* @memstart_addr, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for.body
  %4 = phi i64 [ %.pre, %if.then41 ], [ %3, %for.body ]
  %add.ptr43 = getelementptr %struct.page, %struct.page* %page.addr.076, i64 1024
  %cmp27 = icmp ult %struct.page* %add.ptr43, %add.ptr26
  br i1 %cmp27, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then23, %if.end17, %do.end9
  %retval.0 = phi i32 [ 0, %do.end9 ], [ %2, %if.end17 ], [ %2, %if.then23 ], [ %2, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i1 @zone_watermark_ok(%struct.zone* noundef %z, i32 noundef %order, i64 noundef %mark, i32 noundef %highest_zoneidx, i32 noundef %alloc_flags) local_unnamed_addr #6 {
entry:
  %call = call fastcc i64 @zone_page_state(%struct.zone* noundef %z, i32 noundef 0) #29
  %call1 = call i1 @__zone_watermark_ok(%struct.zone* noundef %z, i32 noundef %order, i64 noundef %mark, i32 noundef %highest_zoneidx, i32 noundef %alloc_flags, i64 noundef %call) #29
  ret i1 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mod_zone_freepage_state(%struct.zone* noundef %zone, i32 noundef %nr_pages) unnamed_addr #1 {
entry:
  %conv = sext i32 %nr_pages to i64
  call void @__mod_zone_page_state(%struct.zone* noundef %zone, i32 noundef 0, i64 noundef %conv) #28
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @del_page_from_free_list(%struct.page* nocapture noundef %page, %struct.zone* nocapture noundef %zone, i32 noundef %order) unnamed_addr #6 {
entry:
  %lru = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru) #29
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %or.i = or i32 %0, 128
  store i32 %or.i, i32* %page_type.i, align 16
  call fastcc void @set_page_private(%struct.page* noundef %page, i64 noundef 0) #29
  %idxprom = zext i32 %order to i64
  %nr_free = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %idxprom, i32 1
  %1 = load i64, i64* %nr_free, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %nr_free, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_migrate_highatomic(i32 noundef %migratetype) unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %migratetype, 3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__putback_isolated_page(%struct.page* noundef %page, i32 noundef %order, i32 noundef %mt) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #29
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  call fastcc void @__free_one_page(%struct.page* noundef %page, i64 noundef %sub.ptr.div, %struct.zone* noundef nonnull %call, i32 noundef %order, i32 noundef %mt, i32 noundef 3) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__free_one_page(%struct.page* noundef %page, i64 noundef %pfn, %struct.zone* noundef %zone, i32 noundef %order, i32 noundef %migratetype, i32 noundef %fpi_flags) unnamed_addr #1 {
entry:
  %shl = shl nuw i32 1, %order
  call fastcc void @__mod_zone_freepage_state(%struct.zone* noundef %zone, i32 noundef %shl) #29
  %cmp138 = icmp ult i32 %order, 10
  br i1 %cmp138, label %while.body, label %done_merging

while.body:                                       ; preds = %entry, %if.end13
  %page.addr.1141 = phi %struct.page* [ %add.ptr18, %if.end13 ], [ %page, %entry ]
  %pfn.addr.1140 = phi i64 [ %and, %if.end13 ], [ %pfn, %entry ]
  %order.addr.1139 = phi i32 [ %inc, %if.end13 ], [ %order, %entry ]
  %call9 = call fastcc i64 @__find_buddy_pfn(i64 noundef %pfn.addr.1140, i32 noundef %order.addr.1139) #29
  %sub10 = sub i64 %call9, %pfn.addr.1140
  %add.ptr = getelementptr %struct.page, %struct.page* %page.addr.1141, i64 %sub10
  %call11 = call fastcc i1 @page_is_buddy(%struct.page* noundef %page.addr.1141, %struct.page* noundef %add.ptr, i32 noundef %order.addr.1139) #29
  br i1 %call11, label %if.end13, label %done_merging

if.end13:                                         ; preds = %while.body
  call fastcc void @del_page_from_free_list(%struct.page* noundef %add.ptr, %struct.zone* noundef %zone, i32 noundef %order.addr.1139) #29
  %and = and i64 %call9, %pfn.addr.1140
  %sub17 = sub i64 %and, %pfn.addr.1140
  %add.ptr18 = getelementptr %struct.page, %struct.page* %page.addr.1141, i64 %sub17
  %inc = add i32 %order.addr.1139, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %done_merging, label %while.body

done_merging:                                     ; preds = %while.body, %if.end13, %entry
  %order.addr.1.lcssa = phi i32 [ %order, %entry ], [ 10, %if.end13 ], [ %order.addr.1139, %while.body ]
  %pfn.addr.1.lcssa = phi i64 [ %pfn, %entry ], [ %and, %if.end13 ], [ %pfn.addr.1140, %while.body ]
  %page.addr.1.lcssa = phi %struct.page* [ %page, %entry ], [ %add.ptr18, %if.end13 ], [ %page.addr.1141, %while.body ]
  %buddy_pfn.3 = phi i64 [ 0, %entry ], [ %call9, %if.end13 ], [ %call9, %while.body ]
  call fastcc void @set_buddy_order(%struct.page* noundef %page.addr.1.lcssa, i32 noundef %order.addr.1.lcssa) #29
  %and47 = and i32 %fpi_flags, 2
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else50, label %if.then60

if.else50:                                        ; preds = %done_merging
  %call55 = call fastcc i1 @buddy_merge_likely(i64 noundef %pfn.addr.1.lcssa, i64 noundef %buddy_pfn.3, %struct.page* noundef %page.addr.1.lcssa, i32 noundef %order.addr.1.lcssa) #29
  br i1 %call55, label %if.then60, label %if.else61

if.then60:                                        ; preds = %done_merging, %if.else50
  call fastcc void @add_to_free_list_tail(%struct.page* noundef %page.addr.1.lcssa, %struct.zone* noundef %zone, i32 noundef %order.addr.1.lcssa, i32 noundef %migratetype) #29
  br label %cleanup67

if.else61:                                        ; preds = %if.else50
  call fastcc void @add_to_free_list(%struct.page* noundef %page.addr.1.lcssa, %struct.zone* noundef %zone, i32 noundef %order.addr.1.lcssa, i32 noundef %migratetype) #29
  br label %cleanup67

cleanup67:                                        ; preds = %if.then60, %if.else61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i1 @should_fail_alloc_page(i32 %gfp_mask, i32 %order) local_unnamed_addr #4 {
entry:
  ret i1 false
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i1 @__zone_watermark_ok(%struct.zone* noundef %z, i32 noundef %order, i64 noundef %mark, i32 noundef %highest_zoneidx, i32 noundef %alloc_flags, i64 noundef %free_pages) local_unnamed_addr #6 {
entry:
  %and = and i32 %alloc_flags, 24
  %tobool.not = icmp eq i32 %and, 0
  %call = call fastcc i64 @__zone_watermark_unusable_free(%struct.zone* noundef %z, i32 noundef %order, i32 noundef %alloc_flags) #29
  %sub = sub i64 %free_pages, %call
  %and1 = and i32 %alloc_flags, 32
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %div.neg = sdiv i64 %mark, -2
  %sub3 = add i64 %div.neg, %mark
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %min.0 = phi i64 [ %sub3, %if.then ], [ %mark, %entry ]
  br i1 %tobool.not, label %if.end16, label %if.then7, !prof !12

if.then7:                                         ; preds = %if.end
  %and8 = and i32 %alloc_flags, 8
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then7
  %div11.neg = sdiv i64 %min.0, -2
  %sub12 = add i64 %div11.neg, %min.0
  br label %if.end16

if.else:                                          ; preds = %if.then7
  %div13.neg = sdiv i64 %min.0, -4
  %sub14 = add i64 %div13.neg, %min.0
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.else, %if.end
  %min.1 = phi i64 [ %sub12, %if.then10 ], [ %sub14, %if.else ], [ %min.0, %if.end ]
  %idxprom = sext i32 %highest_zoneidx to i64
  %arrayidx = getelementptr %struct.zone, %struct.zone* %z, i64 0, i32 3, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, %min.1
  %cmp.not = icmp sgt i64 %sub, %add
  br i1 %cmp.not, label %if.end19, label %cleanup46

if.end19:                                         ; preds = %if.end16
  %tobool20.not = icmp eq i32 %order, 0
  br i1 %tobool20.not, label %cleanup46, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end19
  %cmp2377 = icmp slt i32 %order, 11
  br i1 %cmp2377, label %for.body.preheader, label %cleanup46

for.body.preheader:                               ; preds = %for.cond.preheader
  %1 = sext i32 %order to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc43
  %indvars.iv = phi i64 [ %1, %for.body.preheader ], [ %indvars.iv.next, %for.inc43 ]
  %arrayidx26 = getelementptr %struct.zone, %struct.zone* %z, i64 0, i32 17, i64 %indvars.iv
  %nr_free = getelementptr %struct.zone, %struct.zone* %z, i64 0, i32 17, i64 %indvars.iv, i32 1
  %2 = load i64, i64* %nr_free, align 8
  %tobool27.not = icmp eq i64 %2, 0
  br i1 %tobool27.not, label %for.inc43, label %for.body33.preheader

for.body33.preheader:                             ; preds = %for.body
  %call34 = call fastcc i1 @free_area_empty(%struct.free_area* noundef %arrayidx26, i32 noundef 0) #29
  br i1 %call34, label %for.cond30, label %cleanup46

for.cond30:                                       ; preds = %for.body33.preheader
  %call34.1 = call fastcc i1 @free_area_empty(%struct.free_area* noundef %arrayidx26, i32 noundef 1) #29
  br i1 %call34.1, label %for.cond30.1, label %cleanup46

for.cond30.1:                                     ; preds = %for.cond30
  %call34.2 = call fastcc i1 @free_area_empty(%struct.free_area* noundef %arrayidx26, i32 noundef 2) #29
  br i1 %call34.2, label %for.cond30.2, label %cleanup46

for.cond30.2:                                     ; preds = %for.cond30.1
  br i1 %tobool.not, label %for.inc43, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond30.2
  %call39 = call fastcc i1 @free_area_empty(%struct.free_area* noundef %arrayidx26, i32 noundef 3) #29
  br i1 %call39, label %for.inc43, label %cleanup46

for.inc43:                                        ; preds = %for.cond30.2, %land.lhs.true, %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %cleanup46, label %for.body

cleanup46:                                        ; preds = %for.inc43, %land.lhs.true, %for.body33.preheader, %for.cond30, %for.cond30.1, %for.cond.preheader, %if.end19, %if.end16
  %retval.2 = phi i1 [ false, %if.end16 ], [ true, %if.end19 ], [ false, %for.cond.preheader ], [ false, %for.inc43 ], [ true, %land.lhs.true ], [ true, %for.body33.preheader ], [ true, %for.cond30 ], [ true, %for.cond30.1 ]
  ret i1 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @__zone_watermark_unusable_free(%struct.zone* nocapture noundef readonly %z, i32 noundef %order, i32 noundef %alloc_flags) unnamed_addr #2 {
entry:
  %and = and i32 %alloc_flags, 24
  %tobool.not = icmp eq i32 %and, 0
  %notmask = shl nsw i32 -1, %order
  %sub = xor i32 %notmask, -1
  %conv = sext i32 %sub to i64
  br i1 %tobool.not, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %entry
  %nr_reserved_highatomic = getelementptr inbounds %struct.zone, %struct.zone* %z, i64 0, i32 2
  %0 = load i64, i64* %nr_reserved_highatomic, align 32
  %add = add i64 %0, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %unusable_free.0 = phi i64 [ %add, %if.then ], [ %conv, %entry ]
  ret i64 %unusable_free.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @zone_page_state(%struct.zone* noundef %zone, i32 noundef %item) unnamed_addr #5 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 26, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i1 @zone_watermark_ok_safe(%struct.zone* noundef %z, i32 noundef %order, i64 noundef %mark, i32 noundef %highest_zoneidx) local_unnamed_addr #11 {
entry:
  %call = call fastcc i64 @zone_page_state(%struct.zone* noundef %z, i32 noundef 0) #29
  %percpu_drift_mark = getelementptr inbounds %struct.zone, %struct.zone* %z, i64 0, i32 22
  %0 = load i64, i64* %percpu_drift_mark, align 64
  %tobool.not = icmp ne i64 %0, 0
  %cmp = icmp ult i64 %call, %0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @zone_page_state_snapshot(%struct.zone* noundef %z, i32 noundef 0) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %free_pages.0 = phi i64 [ %call2, %if.then ], [ %call, %entry ]
  %call3 = call i1 @__zone_watermark_ok(%struct.zone* noundef %z, i32 noundef %order, i64 noundef %mark, i32 noundef %highest_zoneidx, i32 noundef 0, i64 noundef %free_pages.0) #29
  ret i1 %call3
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @zone_page_state_snapshot(%struct.zone* noundef %zone, i32 noundef %item) unnamed_addr #11 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 26, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %call120 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %cmp21 = icmp ult i32 %call120, %1
  br i1 %cmp21, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  %2 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %3 = ptrtoint %struct.per_cpu_zonestat* %2 to i64
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call123 = phi i32 [ %call120, %do.body.lr.ph ], [ %call1, %do.body ]
  %x.022 = phi i64 [ %0, %do.body.lr.ph ], [ %add7, %do.body ]
  %idxprom3 = sext i32 %call123 to i64
  %arrayidx4 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom3
  %4 = load i64, i64* %arrayidx4, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to %struct.per_cpu_zonestat*
  %arrayidx6 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %5, i64 0, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %6 to i64
  %add7 = add i64 %x.022, %conv
  %call1 = call i32 @cpumask_next(i32 noundef %call123, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %cmp = icmp ult i32 %call1, %1
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %x.0.lcssa = phi i64 [ %0, %entry ], [ %add7, %do.body ]
  %7 = icmp sgt i64 %x.0.lcssa, 0
  %spec.store.select = select i1 %7, i64 %x.0.lcssa, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @warn_alloc(i32 noundef %gfp_mask, %struct.nodemask_t* noundef %nodemask, i8* noundef %fmt, ...) local_unnamed_addr #1 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #30
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !21
  %and = and i32 %gfp_mask, 8192
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @warn_alloc.nopage_rs, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.warn_alloc, i64 0, i64 0)) #28
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.va_start(i8* nonnull %1)
  %fmt3 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt3, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call5 = call fastcc i32 @__nodemask_pr_numnodes(%struct.nodemask_t* noundef %nodemask) #29
  %call6 = call fastcc i64* @__nodemask_pr_bits(%struct.nodemask_t* noundef %nodemask) #29
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* noundef %arraydecay, %struct.va_format* noundef nonnull %vaf, i32 noundef %gfp_mask, i32* noundef nonnull %gfp_mask.addr, i32 noundef %call5, i64* noundef %call6) #34
  call void @llvm.va_end(i8* nonnull %1)
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #34
  call void @dump_stack() #34
  %4 = load i32, i32* %gfp_mask.addr, align 4
  call fastcc void @warn_alloc_show_mem(i32 noundef %4, %struct.nodemask_t* noundef %nodemask) #29
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #30
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__nodemask_pr_numnodes(%struct.nodemask_t* noundef readnone %m) unnamed_addr #4 {
entry:
  %tobool.not = icmp ne %struct.nodemask_t* %m, null
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64* @__nodemask_pr_bits(%struct.nodemask_t* noundef readnone %m) unnamed_addr #4 {
entry:
  %arraydecay = getelementptr %struct.nodemask_t, %struct.nodemask_t* %m, i64 0, i32 0, i64 0
  ret i64* %arraydecay
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #13

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @warn_alloc_show_mem(i32 noundef %gfp_mask, %struct.nodemask_t* noundef %nodemask) unnamed_addr #1 {
entry:
  %and = and i32 %gfp_mask, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i1 @tsk_is_oom_victim(%struct.task_struct* noundef %1) #29
  br i1 %call1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and3 = and i32 %2, 2052
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %if.then5, %entry
  %filter.0 = phi i32 [ 1, %entry ], [ 0, %if.then5 ], [ 1, %lor.lhs.false ]
  %call8 = call fastcc i32 @preempt_count() #29
  %3 = and i32 %call8, 15728640
  %call10 = call fastcc i32 @preempt_count() #29
  %4 = and i32 %call10, 983040
  %or31 = or i32 %4, %3
  %call13 = call fastcc i32 @preempt_count() #29
  %5 = and i32 %call13, 256
  %or1733 = or i32 %or31, %5
  %tobool18.not = icmp ne i32 %or1733, 0
  %and20 = and i32 %gfp_mask, 1024
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond = or i1 %tobool21.not, %tobool18.not
  %filter.1 = select i1 %or.cond, i32 0, i32 %filter.0
  call void @show_mem(i32 noundef %filter.1, %struct.nodemask_t* noundef %nodemask) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @gfp_pfmemalloc_allowed(i32 noundef %gfp_mask) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__gfp_pfmemalloc_flags(i32 noundef %gfp_mask) #29
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__gfp_pfmemalloc_flags(i32 noundef %gfp_mask) unnamed_addr #1 {
entry:
  %and = and i32 %gfp_mask, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %entry
  %and3 = and i32 %gfp_mask, 131072
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.end
  %call = call fastcc i32 @preempt_count() #29
  %0 = and i32 %call, 256
  %tobool10.not = icmp eq i32 %0, 0
  br i1 %tobool10.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %and12 = and i32 %3, 2048
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %return

if.end15:                                         ; preds = %land.lhs.true, %if.end6
  %call16 = call fastcc i32 @preempt_count() #29
  %4 = and i32 %call16, 15728640
  %call19 = call fastcc i32 @preempt_count() #29
  %5 = and i32 %call19, 983040
  %or43 = or i32 %5, %4
  %call22 = call fastcc i32 @preempt_count() #29
  %6 = and i32 %call22, 65280
  %or2545 = or i32 %or43, %6
  %tobool26.not = icmp eq i32 %or2545, 0
  br i1 %tobool26.not, label %if.then27, label %if.end38

if.then27:                                        ; preds = %if.end15
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %flags29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i64 0, i32 4
  %9 = load i32, i32* %flags29, align 4
  %and30 = and i32 %9, 2048
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else, label %return

if.else:                                          ; preds = %if.then27
  %call34 = call fastcc i1 @oom_reserves_allowed(%struct.task_struct* noundef %8) #29
  br i1 %call34, label %return, label %if.end38

if.end38:                                         ; preds = %if.else, %if.end15
  br label %return

return:                                           ; preds = %if.else, %if.then27, %land.lhs.true, %if.end, %entry, %if.end38
  %retval.0 = phi i32 [ 0, %if.end38 ], [ 0, %entry ], [ 4, %if.end ], [ 4, %land.lhs.true ], [ 4, %if.then27 ], [ 8, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__alloc_pages_bulk(i32 noundef %gfp, i32 noundef %preferred_nid, %struct.nodemask_t* noundef %nodemask, i32 noundef %nr_pages, %struct.list_head* noundef %page_list, %struct.page** noundef %page_array) local_unnamed_addr #1 {
entry:
  %ac = alloca %struct.alloc_context, align 8
  %alloc_flags = alloca i32, align 4
  %0 = bitcast %struct.alloc_context* %ac to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !21
  %1 = bitcast i32* %alloc_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #30
  store i32 1, i32* %alloc_flags, align 4
  %tobool = icmp ne %struct.page** %page_array, null
  %cmp300 = icmp sgt i32 %nr_pages, 0
  %or.cond301 = and i1 %tobool, %cmp300
  br i1 %or.cond301, label %land.rhs.preheader, label %while.end

land.rhs.preheader:                               ; preds = %entry
  %2 = zext i32 %nr_pages to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %indvars.iv = phi i64 [ 0, %land.rhs.preheader ], [ %indvars.iv.next, %while.body ]
  %arrayidx = getelementptr %struct.page*, %struct.page** %page_array, i64 %indvars.iv
  %3 = load %struct.page*, %struct.page** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.page* %3, null
  br i1 %tobool1.not, label %while.end.loopexit, label %while.body

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp ult i64 %indvars.iv.next, %2
  br i1 %cmp, label %land.rhs, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body, %land.rhs
  %nr_populated.0.lcssa.ph.in = phi i64 [ %indvars.iv, %land.rhs ], [ %indvars.iv.next, %while.body ]
  %nr_populated.0.lcssa.ph = trunc i64 %nr_populated.0.lcssa.ph.in to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %nr_populated.0.lcssa = phi i32 [ 0, %entry ], [ %nr_populated.0.lcssa.ph, %while.end.loopexit ]
  %cmp2 = icmp slt i32 %nr_pages, 1
  br i1 %cmp2, label %out, label %if.end, !prof !9

if.end:                                           ; preds = %while.end
  %sub = sub i32 %nr_pages, %nr_populated.0.lcssa
  %cmp7 = icmp eq i32 %sub, 0
  %4 = select i1 %tobool, i1 %cmp7, i1 false
  br i1 %4, label %out, label %if.end18, !prof !9

if.end18:                                         ; preds = %if.end
  %cmp25 = icmp eq i32 %sub, 1
  br i1 %cmp25, label %failed, label %if.end28

if.end28:                                         ; preds = %if.end18
  %5 = load i32, i32* @gfp_allowed_mask, align 4
  %and29 = and i32 %5, %gfp
  call fastcc void @prepare_alloc_pages(i32 noundef %and29, i32 noundef 0, %struct.nodemask_t* noundef %nodemask, %struct.alloc_context* noundef nonnull %ac, i32* noundef nonnull %alloc_flags) #29
  %zonelist = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  %6 = load %struct.zonelist*, %struct.zonelist** %zonelist, align 8
  %highest_zoneidx = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  %7 = load i32, i32* %highest_zoneidx, align 4
  %nodemask33 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %8 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask33, align 8
  %call34 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %6, i32 noundef %7, %struct.nodemask_t* noundef %8) #29
  %call35 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call34) #29
  %tobool36.not306 = icmp eq %struct.zone* %call35, null
  br i1 %tobool36.not306, label %failed, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end28
  %9 = load i32, i32* %alloc_flags, align 4
  %and46 = and i32 %9, 3
  %idxprom47 = zext i32 %and46 to i64
  %conv49332 = zext i32 %nr_pages to i64
  %preferred_zoneref = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 2
  %10 = load %struct.zoneref*, %struct.zoneref** %preferred_zoneref, align 8
  %tobool.not.i = icmp eq %struct.nodemask_t* %8, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %next_zones_zonelist.exit
  %zone.0308 = phi %struct.zone* [ %call35, %for.body.lr.ph ], [ %call58, %next_zones_zonelist.exit ]
  %z.0307 = phi %struct.zoneref* [ %call34, %for.body.lr.ph ], [ %retval.0.i, %next_zones_zonelist.exit ]
  %arrayidx48 = getelementptr %struct.zone, %struct.zone* %zone.0308, i64 0, i32 0, i64 %idxprom47
  %11 = load i64, i64* %arrayidx48, align 8
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.0308, i64 0, i32 1
  %12 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %11, %conv49332
  %add50 = add i64 %add, %12
  %call51 = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %10) #29
  %call52 = call fastcc i1 @zone_watermark_fast(%struct.zone* noundef nonnull %zone.0308, i32 noundef 0, i64 noundef %add50, i32 noundef %call51, i32 noundef %9, i32 noundef %and29) #29
  br i1 %call52, label %do.body72, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.0307, i64 1
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !12

land.rhs.i:                                       ; preds = %for.inc
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #28
  %cmp.not.i = icmp ugt i32 %call.i, %7
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %for.inc
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %7, %struct.nodemask_t* noundef %8) #28
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call58 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #29
  %tobool36.not = icmp eq %struct.zone* %call58, null
  br i1 %tobool36.not, label %failed, label %for.body

do.body72:                                        ; preds = %for.body
  %call75 = call fastcc i64 @arch_local_irq_save() #29
  %call83 = call fastcc i64 @__kern_my_cpu_offset() #29
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone.0308, i64 0, i32 5
  %13 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %14 = ptrtoint %struct.per_cpu_pages* %13 to i64
  %add95 = add i64 %call83, %14
  %15 = inttoptr i64 %add95 to %struct.per_cpu_pages*
  %migratetype = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 3
  %16 = load i32, i32* %migratetype, align 8
  %call96 = call fastcc i32 @order_to_pindex(i32 noundef %16, i32 noundef 0) #29
  %idxprom97 = zext i32 %call96 to i64
  %arrayidx98 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %15, i64 0, i32 4, i64 %idxprom97
  %cmp100309315 = icmp slt i32 %nr_populated.0.lcssa, %nr_pages
  br i1 %cmp100309315, label %while.body102.lr.ph.lr.ph, label %do.body137

while.body102.lr.ph.lr.ph:                        ; preds = %do.body72
  %tobool129.not = icmp eq %struct.list_head* %page_list, null
  br label %while.body102.lr.ph

while.body102.lr.ph:                              ; preds = %while.body102.lr.ph.lr.ph, %if.end133
  %nr_populated.1.ph318 = phi i32 [ %nr_populated.0.lcssa, %while.body102.lr.ph.lr.ph ], [ %inc134, %if.end133 ]
  %nr_account.0.ph316 = phi i32 [ 0, %while.body102.lr.ph.lr.ph ], [ %inc128, %if.end133 ]
  %17 = sext i32 %nr_populated.1.ph318 to i64
  br label %while.body102

while.body102:                                    ; preds = %while.body102.lr.ph, %if.then108
  %indvars.iv328 = phi i64 [ %17, %while.body102.lr.ph ], [ %indvars.iv.next329, %if.then108 ]
  br i1 %tobool, label %land.lhs.true104, label %if.end110

land.lhs.true104:                                 ; preds = %while.body102
  %arrayidx106 = getelementptr %struct.page*, %struct.page** %page_array, i64 %indvars.iv328
  %18 = load %struct.page*, %struct.page** %arrayidx106, align 8
  %tobool107.not = icmp eq %struct.page* %18, null
  br i1 %tobool107.not, label %if.end110, label %if.then108

if.then108:                                       ; preds = %land.lhs.true104
  %indvars.iv.next329 = add nsw i64 %indvars.iv328, 1
  %cmp100 = icmp slt i64 %indvars.iv.next329, %conv49332
  br i1 %cmp100, label %while.body102, label %do.body137.loopexit

if.end110:                                        ; preds = %land.lhs.true104, %while.body102
  %19 = trunc i64 %indvars.iv328 to i32
  %call112 = call fastcc %struct.page* @__rmqueue_pcplist(%struct.zone* noundef nonnull %zone.0308, i32 noundef 0, i32 noundef %16, i32 noundef %9, %struct.per_cpu_pages* noundef %15, %struct.list_head* noundef %arrayidx98) #29
  %tobool113.not = icmp eq %struct.page* %call112, null
  br i1 %tobool113.not, label %if.then123, label %if.end127, !prof !9

if.then123:                                       ; preds = %if.end110
  %20 = trunc i64 %indvars.iv328 to i32
  %tobool124.not = icmp eq i32 %20, 0
  br i1 %tobool124.not, label %do.body170, label %do.body137

if.end127:                                        ; preds = %if.end110
  %inc128 = add i32 %nr_account.0.ph316, 1
  call fastcc void @prep_new_page(%struct.page* noundef nonnull %call112, i32 noundef 0, i32 noundef %and29, i32 noundef 0) #29
  br i1 %tobool129.not, label %if.else, label %if.then130

if.then130:                                       ; preds = %if.end127
  %lru = getelementptr inbounds %struct.page, %struct.page* %call112, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %page_list) #29
  br label %if.end133

if.else:                                          ; preds = %if.end127
  %sext = shl i64 %indvars.iv328, 32
  %idxprom131 = ashr exact i64 %sext, 32
  %arrayidx132 = getelementptr %struct.page*, %struct.page** %page_array, i64 %idxprom131
  store %struct.page* %call112, %struct.page** %arrayidx132, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.else, %if.then130
  %inc134 = add nsw i32 %19, 1
  %cmp100309 = icmp slt i32 %inc134, %nr_pages
  br i1 %cmp100309, label %while.body102.lr.ph, label %do.body137

do.body137.loopexit:                              ; preds = %if.then108
  %21 = trunc i64 %indvars.iv.next329 to i32
  br label %do.body137

do.body137:                                       ; preds = %if.end133, %do.body137.loopexit, %do.body72, %if.then123
  %nr_account.0.ph298 = phi i32 [ %nr_account.0.ph316, %if.then123 ], [ 0, %do.body72 ], [ %nr_account.0.ph316, %do.body137.loopexit ], [ %inc128, %if.end133 ]
  %nr_populated.1296 = phi i32 [ %20, %if.then123 ], [ %nr_populated.0.lcssa, %do.body72 ], [ %21, %do.body137.loopexit ], [ %inc134, %if.end133 ]
  %call144 = call fastcc i64 @__kern_my_cpu_offset() #29
  call fastcc void @arch_local_irq_restore(i64 noundef %call75) #29
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone.0308, i64 0, i32 4
  %22 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.zone* %zone.0308 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.pglist_data* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1216
  %23 = trunc i64 %sub.ptr.div to i32
  %conv163 = add i32 %23, 4
  %conv164 = sext i32 %nr_account.0.ph298 to i64
  call fastcc void @__count_vm_events(i32 noundef %conv163, i64 noundef %conv164) #29
  br label %out

out:                                              ; preds = %failed, %if.end204, %if.end, %while.end, %do.body137
  %nr_populated.2 = phi i32 [ %nr_populated.0.lcssa, %while.end ], [ %nr_populated.0.lcssa, %if.end ], [ %inc205, %if.end204 ], [ %nr_populated.3, %failed ], [ %nr_populated.1296, %do.body137 ]
  %conv168 = sext i32 %nr_populated.2 to i64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #30
  ret i64 %conv168

do.body170:                                       ; preds = %if.then123
  %call177 = call fastcc i64 @__kern_my_cpu_offset() #29
  call fastcc void @arch_local_irq_restore(i64 noundef %call75) #29
  br label %failed

failed:                                           ; preds = %next_zones_zonelist.exit, %if.end28, %if.end18, %do.body170
  %nr_populated.3 = phi i32 [ %nr_populated.0.lcssa, %if.end18 ], [ 0, %do.body170 ], [ %nr_populated.0.lcssa, %if.end28 ], [ %nr_populated.0.lcssa, %next_zones_zonelist.exit ]
  %gfp.addr.0 = phi i32 [ %gfp, %if.end18 ], [ %and29, %do.body170 ], [ %and29, %if.end28 ], [ %and29, %next_zones_zonelist.exit ]
  %call195 = call %struct.page* @__alloc_pages(i32 noundef %gfp.addr.0, i32 noundef 0, i32 undef, %struct.nodemask_t* noundef %nodemask) #29
  %tobool196.not = icmp eq %struct.page* %call195, null
  br i1 %tobool196.not, label %out, label %if.then197

if.then197:                                       ; preds = %failed
  %tobool198.not = icmp eq %struct.list_head* %page_list, null
  br i1 %tobool198.not, label %if.else201, label %if.then199

if.then199:                                       ; preds = %if.then197
  %lru200 = getelementptr inbounds %struct.page, %struct.page* %call195, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %lru200, %struct.list_head* noundef nonnull %page_list) #29
  br label %if.end204

if.else201:                                       ; preds = %if.then197
  %idxprom202 = zext i32 %nr_populated.3 to i64
  %arrayidx203 = getelementptr %struct.page*, %struct.page** %page_array, i64 %idxprom202
  store %struct.page* %call195, %struct.page** %arrayidx203, align 8
  br label %if.end204

if.end204:                                        ; preds = %if.else201, %if.then199
  %inc205 = add nuw i32 %nr_populated.3, 1
  br label %out
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prepare_alloc_pages(i32 noundef %gfp_mask, i32 noundef %order, %struct.nodemask_t* noundef %nodemask, %struct.alloc_context* nocapture noundef %ac, i32* nocapture noundef %alloc_flags) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @gfp_zone(i32 noundef %gfp_mask) #29
  %highest_zoneidx = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  store i32 %call, i32* %highest_zoneidx, align 4
  %zonelist = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  store %struct.zonelist* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 1, i64 0), %struct.zonelist** %zonelist, align 8
  %nodemask2 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  store %struct.nodemask_t* %nodemask, %struct.nodemask_t** %nodemask2, align 8
  %call3 = call fastcc i32 @gfp_migratetype(i32 noundef %gfp_mask) #29
  %migratetype = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 3
  store i32 %call3, i32* %migratetype, align 8
  %spread_dirty_pages = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 5
  %and33 = lshr i32 %gfp_mask, 12
  %0 = trunc i32 %and33 to i8
  %1 = and i8 %0, 1
  store i8 %1, i8* %spread_dirty_pages, align 8
  %call38 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 1, i64 0), i32 noundef %call, %struct.nodemask_t* noundef %nodemask) #29
  %preferred_zoneref = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 2
  store %struct.zoneref* %call38, %struct.zoneref** %preferred_zoneref, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %zonelist, i32 noundef %highest_zoneidx, %struct.nodemask_t* noundef %nodes) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.zonelist, %struct.zonelist* %zonelist, i64 0, i32 0, i64 0
  %tobool.not.i = icmp eq %struct.nodemask_t* %nodes, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !12

land.rhs.i:                                       ; preds = %entry
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %arraydecay) #28
  %cmp.not.i = icmp ugt i32 %call.i, %highest_zoneidx
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %entry
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %arraydecay, i32 noundef %highest_zoneidx, %struct.nodemask_t* noundef %nodes) #28
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %arraydecay, %land.rhs.i ]
  ret %struct.zoneref* %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.zone* @zonelist_zone(%struct.zoneref* nocapture noundef readonly %zoneref) unnamed_addr #2 {
entry:
  %zone = getelementptr inbounds %struct.zoneref, %struct.zoneref* %zoneref, i64 0, i32 0
  %0 = load %struct.zone*, %struct.zone** %zone, align 8
  ret %struct.zone* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i1 @zone_watermark_fast(%struct.zone* noundef %z, i32 noundef %order, i64 noundef %mark, i32 noundef %highest_zoneidx, i32 noundef %alloc_flags, i32 noundef %gfp_mask) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @zone_page_state(%struct.zone* noundef %z, i32 noundef 0) #29
  %tobool.not = icmp eq i32 %order, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @__zone_watermark_unusable_free(%struct.zone* noundef %z, i32 noundef 0, i32 noundef %alloc_flags) #29
  %sub = sub i64 %call, %call1
  %idxprom = sext i32 %highest_zoneidx to i64
  %arrayidx = getelementptr %struct.zone, %struct.zone* %z, i64 0, i32 3, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, %mark
  %cmp = icmp ugt i64 %sub, %add
  br i1 %cmp, label %cleanup19, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %call4 = call i1 @__zone_watermark_ok(%struct.zone* noundef %z, i32 noundef %order, i64 noundef %mark, i32 noundef %highest_zoneidx, i32 noundef %alloc_flags, i64 noundef %call) #29
  br i1 %call4, label %cleanup19, label %if.end6

if.end6:                                          ; preds = %if.end3
  %and = and i32 %gfp_mask, 512
  %tobool8.not = icmp ne i32 %and, 0
  %1 = and i1 %tobool.not, %tobool8.not
  br i1 %1, label %land.lhs.true9, label %cleanup19

land.lhs.true9:                                   ; preds = %if.end6
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %z, i64 0, i32 1
  %2 = load i64, i64* %watermark_boost, align 8
  %tobool10.not = icmp ne i64 %2, 0
  %and11 = and i32 %alloc_flags, 3
  %cmp12 = icmp eq i32 %and11, 0
  %or.cond42 = and i1 %cmp12, %tobool10.not
  br i1 %or.cond42, label %if.then15, label %cleanup19, !prof !23

if.then15:                                        ; preds = %land.lhs.true9
  %arrayidx16 = getelementptr inbounds %struct.zone, %struct.zone* %z, i64 0, i32 0, i64 0
  %3 = load i64, i64* %arrayidx16, align 64
  %call17 = call i1 @__zone_watermark_ok(%struct.zone* noundef %z, i32 noundef 0, i64 noundef %3, i32 noundef %highest_zoneidx, i32 noundef %alloc_flags, i64 noundef %call) #29
  br label %cleanup19

cleanup19:                                        ; preds = %land.lhs.true9, %if.end6, %if.end3, %if.then, %if.then15
  %retval.1 = phi i1 [ %call17, %if.then15 ], [ true, %if.then ], [ true, %if.end3 ], [ false, %if.end6 ], [ false, %land.lhs.true9 ]
  ret i1 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @zonelist_zone_idx(%struct.zoneref* nocapture noundef readonly %zoneref) unnamed_addr #2 {
entry:
  %zone_idx = getelementptr inbounds %struct.zoneref, %struct.zoneref* %zoneref, i64 0, i32 1
  %0 = load i32, i32* %zone_idx, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @order_to_pindex(i32 noundef %migratetype, i32 noundef %order) unnamed_addr #4 {
entry:
  %mul = mul i32 %order, 3
  %add = add i32 %mul, %migratetype
  ret i32 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__rmqueue_pcplist(%struct.zone* noundef %zone, i32 noundef %order, i32 noundef %migratetype, i32 noundef %alloc_flags, %struct.per_cpu_pages* noundef %pcp, %struct.list_head* noundef %list) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #29
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %batch2 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 2
  %0 = load volatile i32, i32* %batch2, align 8
  %cmp = icmp sgt i32 %0, 1
  %shr = ashr i32 %0, %order
  %cmp5 = icmp sgt i32 %shr, 2
  %cond = select i1 %cmp5, i32 %shr, i32 2
  %batch.0 = select i1 %cmp, i32 %cond, i32 %0
  %conv = sext i32 %batch.0 to i64
  %call6 = call fastcc i32 @rmqueue_bulk(%struct.zone* noundef %zone, i32 noundef %order, i64 noundef %conv, %struct.list_head* noundef %list, i32 noundef %migratetype, i32 noundef %alloc_flags) #29
  %shl = shl i32 %call6, %order
  %count = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 0
  %1 = load i32, i32* %count, align 8
  %add = add i32 %1, %shl
  store i32 %add, i32* %count, align 8
  %call7 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #29
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %cleanup25

if.end15:                                         ; preds = %if.then, %entry
  %2 = bitcast %struct.list_head* %list to i8**
  %3 = load i8*, i8** %2, align 8
  %lru = bitcast i8* %3 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru) #29
  %shl20.neg = shl nsw i32 -1, %order
  %count21 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 0
  %4 = load i32, i32* %count21, align 8
  %sub = add i32 %4, %shl20.neg
  store i32 %sub, i32* %count21, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 -8
  %5 = bitcast i8* %add.ptr to %struct.page*
  br label %cleanup25

cleanup25:                                        ; preds = %if.then, %if.end15
  %retval.3 = phi %struct.page* [ %5, %if.end15 ], [ null, %if.then ]
  ret %struct.page* %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prep_new_page(%struct.page* noundef %page, i32 noundef %order, i32 noundef %gfp_flags, i32 noundef %alloc_flags) unnamed_addr #1 {
entry:
  call void @post_alloc_hook(%struct.page* noundef %page, i32 noundef %order, i32 noundef %gfp_flags) #29
  %tobool.not = icmp eq i32 %order, 0
  %and = and i32 %gfp_flags, 262144
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @prep_compound_page(%struct.page* noundef %page, i32 noundef %order) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and2 = and i32 %alloc_flags, 4
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @set_page_pfmemalloc(%struct.page* noundef %page) #29
  br label %if.end5

if.else:                                          ; preds = %if.end
  call fastcc void @clear_page_pfmemalloc(%struct.page* noundef %page) #29
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #29
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__count_vm_events(i32 noundef %item, i64 noundef %delta) unnamed_addr #11 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #29
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  %add7 = add i64 %2, %delta
  store i64 %add7, i64* %1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @__alloc_pages(i32 noundef %gfp, i32 noundef %order, i32 %preferred_nid, %struct.nodemask_t* noundef %nodemask) local_unnamed_addr #1 {
entry:
  %alloc_flags = alloca i32, align 4
  %ac = alloca %struct.alloc_context, align 8
  %0 = bitcast i32* %alloc_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #30
  store i32 1, i32* %alloc_flags, align 4
  %1 = bitcast %struct.alloc_context* %ac to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %cmp = icmp ugt i32 %order, 10
  br i1 %cmp, label %if.then, label %if.end25, !prof !9

if.then:                                          ; preds = %entry
  %and = and i32 %gfp, 8192
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then17, label %cleanup, !prof !9

if.then17:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 5356; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !24
  br label %cleanup

if.end25:                                         ; preds = %entry
  %2 = load i32, i32* @gfp_allowed_mask, align 4
  %and26 = and i32 %2, %gfp
  %call = call fastcc i32 @current_gfp_context(i32 noundef %and26) #29
  call fastcc void @prepare_alloc_pages(i32 noundef %call, i32 noundef %order, %struct.nodemask_t* noundef %nodemask, %struct.alloc_context* noundef nonnull %ac, i32* noundef nonnull %alloc_flags) #29
  %preferred_zoneref = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 2
  %3 = load %struct.zoneref*, %struct.zoneref** %preferred_zoneref, align 8
  %zone = getelementptr inbounds %struct.zoneref, %struct.zoneref* %3, i64 0, i32 0
  %4 = load %struct.zone*, %struct.zone** %zone, align 8
  %call30 = call fastcc i32 @alloc_flags_nofragment(%struct.zone* noundef %4, i32 noundef %call) #29
  %5 = load i32, i32* %alloc_flags, align 4
  %or = or i32 %5, %call30
  %call31 = call fastcc %struct.page* @get_page_from_freelist(i32 noundef %call, i32 noundef %order, i32 noundef %or, %struct.alloc_context* noundef nonnull %ac) #29
  %tobool32.not = icmp eq %struct.page* %call31, null
  br i1 %tobool32.not, label %if.end41, label %cleanup, !prof !9

if.end41:                                         ; preds = %if.end25
  %spread_dirty_pages = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 5
  store i8 0, i8* %spread_dirty_pages, align 8
  %nodemask42 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  store %struct.nodemask_t* %nodemask, %struct.nodemask_t** %nodemask42, align 8
  %call43 = call fastcc %struct.page* @__alloc_pages_slowpath(i32 noundef %call, i32 noundef %order, %struct.alloc_context* noundef nonnull %ac) #29
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end25, %if.then, %if.then17
  %retval.0 = phi %struct.page* [ null, %if.then17 ], [ null, %if.then ], [ %call31, %if.end25 ], [ %call43, %if.end41 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #30
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @current_gfp_context(i32 noundef %flags) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load volatile i32, i32* %flags1, align 4
  %and = and i32 %2, 269221888
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  %and4 = and i32 %2, 524288
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %and7 = and i32 %flags, -193
  br label %if.end12

if.else:                                          ; preds = %if.then
  %and8 = and i32 %2, 262144
  %tobool9.not = icmp eq i32 %and8, 0
  %and11 = and i32 %flags, -129
  %spec.select = select i1 %tobool9.not, i32 %flags, i32 %and11
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6
  %flags.addr.0 = phi i32 [ %and7, %if.then6 ], [ %spec.select, %if.else ]
  %and13 = and i32 %2, 268435456
  %tobool14.not = icmp eq i32 %and13, 0
  %and16 = and i32 %flags.addr.0, -9
  %spec.select26 = select i1 %tobool14.not, i32 %flags.addr.0, i32 %and16
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %entry
  %flags.addr.1 = phi i32 [ %flags, %entry ], [ %spec.select26, %if.end12 ]
  ret i32 %flags.addr.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @alloc_flags_nofragment(%struct.zone* noundef %zone, i32 noundef %gfp_mask) unnamed_addr #2 {
entry:
  %and = and i32 %gfp_mask, 2048
  %tobool.not = icmp eq %struct.zone* %zone, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  %0 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.zone* %zone to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.pglist_data* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %1 = icmp eq i64 %sub.ptr.sub, 2432
  %or = or i32 %and, 256
  %spec.select = select i1 %1, i32 %or, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %and, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @get_page_from_freelist(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %alloc_flags, %struct.alloc_context* nocapture noundef readonly %ac) unnamed_addr #1 {
entry:
  %preferred_zoneref = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 2
  %spread_dirty_pages = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 5
  %highest_zoneidx = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  %migratetype = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 3
  %nodemask = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %0 = and i32 %alloc_flags, -257
  br label %retry

retry:                                            ; preds = %for.end, %entry
  %alloc_flags.addr.0 = phi i32 [ %alloc_flags, %entry ], [ %0, %for.end ]
  %last_pgdat_dirty_limit.0 = phi %struct.pglist_data* [ null, %entry ], [ %last_pgdat_dirty_limit.1.lcssa, %for.end ]
  %and = and i32 %alloc_flags.addr.0, 256
  %tobool.not = icmp eq i32 %and, 0
  %1 = load %struct.zoneref*, %struct.zoneref** %preferred_zoneref, align 8
  %zone1 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %1, i64 0, i32 0
  %2 = load %struct.zone*, %struct.zone** %zone1, align 8
  %tobool2.not146 = icmp eq %struct.zone* %2, null
  br i1 %tobool2.not146, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %retry
  %and33 = and i32 %alloc_flags.addr.0, 3
  %3 = zext i32 %and33 to i64
  %and36 = and i32 %alloc_flags.addr.0, 4
  %tobool37.not = icmp ne i32 %and36, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %next_zones_zonelist.exit
  %last_pgdat_dirty_limit.1149 = phi %struct.pglist_data* [ %last_pgdat_dirty_limit.0, %for.body.lr.ph ], [ %last_pgdat_dirty_limit.2.ph, %next_zones_zonelist.exit ]
  %zone.0148 = phi %struct.zone* [ %2, %for.body.lr.ph ], [ %call75, %next_zones_zonelist.exit ]
  %z.0147 = phi %struct.zoneref* [ %1, %for.body.lr.ph ], [ %retval.0.i, %next_zones_zonelist.exit ]
  %4 = load i8, i8* %spread_dirty_pages, align 8, !range !10
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %for.body
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone.0148, i64 0, i32 4
  %5 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %cmp = icmp eq %struct.pglist_data* %last_pgdat_dirty_limit.1149, %5
  br i1 %cmp, label %for.inc, label %if.end10

if.end10:                                         ; preds = %if.then8
  %call12 = call i1 @node_dirty_ok(%struct.pglist_data* noundef %5) #28
  br i1 %call12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end10
  %6 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  br label %for.inc

if.end16:                                         ; preds = %if.end10, %for.body
  %arrayidx = getelementptr %struct.zone, %struct.zone* %zone.0148, i64 0, i32 0, i64 %3
  %7 = load i64, i64* %arrayidx, align 8
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.0148, i64 0, i32 1
  %8 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %8, %7
  %9 = load i32, i32* %highest_zoneidx, align 4
  %call34 = call fastcc i1 @zone_watermark_fast(%struct.zone* noundef nonnull %zone.0148, i32 noundef %order, i64 noundef %add, i32 noundef %9, i32 noundef %alloc_flags.addr.0, i32 noundef %gfp_mask) #29
  %10 = or i1 %tobool37.not, %call34
  br i1 %10, label %try_this_zone, label %for.inc

try_this_zone:                                    ; preds = %if.end16
  %11 = load i32, i32* %migratetype, align 8
  %call58 = call fastcc %struct.page* @rmqueue(%struct.zone* noundef nonnull %zone.0148, i32 noundef %order, i32 noundef %gfp_mask, i32 noundef %alloc_flags.addr.0, i32 noundef %11) #29
  %tobool59.not = icmp eq %struct.page* %call58, null
  br i1 %tobool59.not, label %for.inc, label %if.then60

if.then60:                                        ; preds = %try_this_zone
  call fastcc void @prep_new_page(%struct.page* noundef nonnull %call58, i32 noundef %order, i32 noundef %gfp_mask, i32 noundef %alloc_flags.addr.0) #29
  %tobool61 = icmp ne i32 %order, 0
  %and62 = and i32 %alloc_flags.addr.0, 16
  %tobool63 = icmp ne i32 %and62, 0
  %12 = and i1 %tobool61, %tobool63
  br i1 %12, label %if.then66, label %cleanup80, !prof !9

if.then66:                                        ; preds = %if.then60
  call fastcc void @reserve_highatomic_pageblock(%struct.page* noundef nonnull %call58, %struct.zone* noundef nonnull %zone.0148) #29
  br label %cleanup80

for.inc:                                          ; preds = %if.end16, %if.then13, %if.then8, %try_this_zone
  %last_pgdat_dirty_limit.2.ph = phi %struct.pglist_data* [ %last_pgdat_dirty_limit.1149, %try_this_zone ], [ %last_pgdat_dirty_limit.1149, %if.then8 ], [ %6, %if.then13 ], [ %last_pgdat_dirty_limit.1149, %if.end16 ]
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.0147, i64 1
  %13 = load i32, i32* %highest_zoneidx, align 4
  %14 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %tobool.not.i = icmp eq %struct.nodemask_t* %14, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !12

land.rhs.i:                                       ; preds = %for.inc
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #28
  %cmp.not.i = icmp ugt i32 %call.i, %13
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %for.inc
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %13, %struct.nodemask_t* noundef %14) #28
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call75 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #29
  %tobool2.not = icmp eq %struct.zone* %call75, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %next_zones_zonelist.exit, %retry
  %last_pgdat_dirty_limit.1.lcssa = phi %struct.pglist_data* [ %last_pgdat_dirty_limit.0, %retry ], [ %last_pgdat_dirty_limit.2.ph, %next_zones_zonelist.exit ]
  br i1 %tobool.not, label %cleanup80, label %retry

cleanup80:                                        ; preds = %for.end, %if.then66, %if.then60
  %retval.3 = phi %struct.page* [ %call58, %if.then66 ], [ %call58, %if.then60 ], [ null, %for.end ]
  ret %struct.page* %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_slowpath(i32 noundef %gfp_mask, i32 noundef %order, %struct.alloc_context* nocapture noundef %ac) unnamed_addr #1 {
entry:
  %did_some_progress = alloca i64, align 8
  %compact_result = alloca i32, align 4
  %no_progress_loops = alloca i32, align 4
  %and = and i32 %gfp_mask, 1024
  %tobool.not = icmp eq i32 %and, 0
  %cmp = icmp ugt i32 %order, 3
  %0 = bitcast i64* %did_some_progress to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i64 0, i64* %did_some_progress, align 8, !annotation !21
  %1 = bitcast i32* %compact_result to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #30
  store i32 0, i32* %compact_result, align 4, !annotation !21
  %2 = bitcast i32* %no_progress_loops to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #30
  %and2 = and i32 %gfp_mask, 1536
  %cmp3 = icmp eq i32 %and2, 1536
  br i1 %cmp3, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 4892; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and20 = and i32 %gfp_mask, -513
  %spec.select = select i1 %cmp3, i32 %and20, i32 %gfp_mask
  store i32 0, i32* %no_progress_loops, align 4
  %call22 = call fastcc i32 @gfp_to_alloc_flags(i32 noundef %spec.select) #29
  %zonelist = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  %3 = load %struct.zonelist*, %struct.zonelist** %zonelist, align 8
  %highest_zoneidx = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  %4 = load i32, i32* %highest_zoneidx, align 4
  %nodemask = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %5 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call23 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %3, i32 noundef %4, %struct.nodemask_t* noundef %5) #29
  %preferred_zoneref = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 2
  store %struct.zoneref* %call23, %struct.zoneref** %preferred_zoneref, align 8
  %zone = getelementptr inbounds %struct.zoneref, %struct.zoneref* %call23, i64 0, i32 0
  %6 = load %struct.zone*, %struct.zone** %zone, align 8
  %tobool25.not = icmp eq %struct.zone* %6, null
  br i1 %tobool25.not, label %nopage, label %if.end27

if.end27:                                         ; preds = %if.end
  %and28 = and i32 %call22, 2048
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call fastcc void @wake_all_kswapds(i32 noundef %order, i32 noundef %spec.select, %struct.alloc_context* noundef %ac) #29
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27
  %call32 = call fastcc %struct.page* @get_page_from_freelist(i32 noundef %spec.select, i32 noundef %order, i32 noundef %call22, %struct.alloc_context* noundef %ac) #29
  %tobool33.not = icmp eq %struct.page* %call32, null
  br i1 %tobool33.not, label %if.end35, label %got_pg

if.end35:                                         ; preds = %if.end31
  br i1 %tobool.not, label %retry.preheader, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35
  br i1 %cmp, label %land.lhs.true45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp40.not = icmp eq i32 %order, 0
  br i1 %cmp40.not, label %retry.preheader, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %lor.lhs.false
  %migratetype = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 3
  %7 = load i32, i32* %migratetype, align 8
  %cmp43.not = icmp eq i32 %7, 1
  br i1 %cmp43.not, label %retry.preheader, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true42, %land.lhs.true
  %call46 = call i1 @gfp_pfmemalloc_allowed(i32 noundef %spec.select) #29
  br i1 %call46, label %retry.preheader, label %if.then47

if.then47:                                        ; preds = %land.lhs.true45
  call fastcc void @__alloc_pages_direct_compact(i32* noundef nonnull %compact_result) #29
  %and55 = and i32 %spec.select, 65536
  %tobool56.not = icmp ne i32 %and55, 0
  %8 = and i1 %cmp, %tobool56.not
  br i1 %8, label %if.then57, label %retry.preheader

if.then57:                                        ; preds = %if.then47
  %9 = load i32, i32* %compact_result, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %nopage, label %retry.preheader

retry.preheader:                                  ; preds = %if.end35, %lor.lhs.false, %land.lhs.true42, %land.lhs.true45, %if.then47, %if.then57, %if.end242
  %alloc_flags.0.ph = phi i32 [ %alloc_flags.2, %if.end242 ], [ %call22, %if.then57 ], [ %call22, %if.then47 ], [ %call22, %land.lhs.true45 ], [ %call22, %land.lhs.true42 ], [ %call22, %lor.lhs.false ], [ %call22, %if.end35 ]
  %and108 = and i32 %spec.select, 65536
  %tobool109.not = icmp ne i32 %and108, 0
  %and115 = and i32 %spec.select, 16384
  %tobool116.not = icmp eq i32 %and115, 0
  %or.cond345 = and i1 %cmp, %tobool116.not
  %and145 = and i32 %spec.select, 524288
  %tobool146 = icmp eq i32 %and145, 0
  %brmerge = or i1 %tobool109.not, %or.cond345
  br label %retry

retry:                                            ; preds = %retry.backedge, %retry.preheader
  %alloc_flags.0 = phi i32 [ %alloc_flags.0.ph, %retry.preheader ], [ %alloc_flags.1350, %retry.backedge ]
  %and67 = and i32 %alloc_flags.0, 2048
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %retry
  call fastcc void @wake_all_kswapds(i32 noundef %order, i32 noundef %spec.select, %struct.alloc_context* noundef %ac) #29
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %retry
  %call71 = call fastcc i32 @__gfp_pfmemalloc_flags(i32 noundef %spec.select) #29
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end75, label %if.then80

if.end75:                                         ; preds = %if.end70
  %and76 = and i32 %alloc_flags.0, 64
  %tobool77 = icmp eq i32 %and76, 0
  br i1 %tobool77, label %if.then80, label %if.end87

if.then80:                                        ; preds = %if.end70, %if.end75
  %alloc_flags.1351 = phi i32 [ %alloc_flags.0, %if.end75 ], [ %call71, %if.end70 ]
  store %struct.nodemask_t* null, %struct.nodemask_t** %nodemask, align 8
  %12 = load %struct.zonelist*, %struct.zonelist** %zonelist, align 8
  %13 = load i32, i32* %highest_zoneidx, align 4
  %call85 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %12, i32 noundef %13, %struct.nodemask_t* noundef null) #29
  store %struct.zoneref* %call85, %struct.zoneref** %preferred_zoneref, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.end75, %if.then80
  %alloc_flags.1350 = phi i32 [ %alloc_flags.0, %if.end75 ], [ %alloc_flags.1351, %if.then80 ]
  %call88 = call fastcc %struct.page* @get_page_from_freelist(i32 noundef %spec.select, i32 noundef %order, i32 noundef %alloc_flags.1350, %struct.alloc_context* noundef %ac) #29
  %tobool89.not = icmp eq %struct.page* %call88, null
  br i1 %tobool89.not, label %if.end91, label %got_pg

if.end91:                                         ; preds = %if.end87
  br i1 %tobool.not, label %nopage.loopexit, label %if.end94

if.end94:                                         ; preds = %if.end91
  %14 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %15 = inttoptr i64 %14 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i64 0, i32 4
  %16 = load i32, i32* %flags, align 4
  %and96 = and i32 %16, 2048
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end99, label %nopage.loopexit

if.end99:                                         ; preds = %if.end94
  %call100 = call fastcc %struct.page* @__alloc_pages_direct_reclaim(i32 noundef %spec.select, i32 noundef %order, i32 noundef %alloc_flags.1350, %struct.alloc_context* noundef %ac, i64* noundef nonnull %did_some_progress) #29
  %tobool101.not = icmp eq %struct.page* %call100, null
  br i1 %tobool101.not, label %if.end103, label %got_pg

if.end103:                                        ; preds = %if.end99
  call fastcc void @__alloc_pages_direct_compact(i32* noundef nonnull %compact_result) #29
  br i1 %brmerge, label %nopage.loopexit, label %if.end118

if.end118:                                        ; preds = %if.end103
  %17 = load i64, i64* %did_some_progress, align 8
  %cmp119 = icmp ne i64 %17, 0
  %call121 = call fastcc i1 @should_reclaim_retry(i32 noundef %order, %struct.alloc_context* noundef %ac, i32 noundef %alloc_flags.1350, i1 noundef %cmp119, i32* noundef nonnull %no_progress_loops) #29
  br i1 %call121, label %retry.backedge, label %if.end123

if.end123:                                        ; preds = %if.end118
  %cmp124.not = icmp eq i64 %17, 0
  br i1 %cmp124.not, label %if.end130, label %land.lhs.true126

land.lhs.true126:                                 ; preds = %if.end123
  %call127 = call fastcc i1 @should_compact_retry(%struct.alloc_context* noundef %ac, i32 noundef %order, i32 noundef %alloc_flags.1350) #29
  br i1 %call127, label %retry.backedge, label %if.end130

if.end130:                                        ; preds = %land.lhs.true126, %if.end123
  %call134 = call fastcc %struct.page* @__alloc_pages_may_oom(i32 noundef %spec.select, i32 noundef %order, %struct.alloc_context* noundef %ac, i64* noundef nonnull %did_some_progress) #29
  %tobool135.not = icmp eq %struct.page* %call134, null
  br i1 %tobool135.not, label %if.end137, label %got_pg

if.end137:                                        ; preds = %if.end130
  %call139 = call fastcc i1 @tsk_is_oom_victim(%struct.task_struct* noundef %15) #29
  br i1 %call139, label %land.lhs.true141, label %if.end148

land.lhs.true141:                                 ; preds = %if.end137
  %and142 = and i32 %alloc_flags.1350, 8
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %lor.lhs.false144, label %nopage.loopexit

lor.lhs.false144:                                 ; preds = %land.lhs.true141
  %18 = load i64, i64* %did_some_progress, align 8
  %tobool149 = icmp ne i64 %18, 0
  %or.cond248 = select i1 %tobool146, i1 %tobool149, i1 false
  br i1 %or.cond248, label %if.then150, label %nopage.loopexit

if.end148:                                        ; preds = %if.end137
  %.old = load i64, i64* %did_some_progress, align 8
  %tobool149.old.not = icmp eq i64 %.old, 0
  br i1 %tobool149.old.not, label %nopage.loopexit, label %if.then150

if.then150:                                       ; preds = %lor.lhs.false144, %if.end148
  store i32 0, i32* %no_progress_loops, align 4
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.then150, %if.end118, %land.lhs.true126
  br label %retry

nopage.loopexit:                                  ; preds = %if.end103, %if.end91, %if.end94, %lor.lhs.false144, %land.lhs.true141, %if.end148
  br label %nopage

nopage:                                           ; preds = %nopage.loopexit, %if.then57, %if.end
  %alloc_flags.2 = phi i32 [ %call22, %if.then57 ], [ %call22, %if.end ], [ %alloc_flags.1350, %nopage.loopexit ]
  %and155 = and i32 %spec.select, 32768
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %fail, label %if.then157

if.then157:                                       ; preds = %nopage
  br i1 %tobool.not, label %if.then174, label %if.end186, !prof !9

if.then174:                                       ; preds = %if.then157
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 5093; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !26
  br label %fail

if.end186:                                        ; preds = %if.then157
  %19 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %20 = inttoptr i64 %19 to %struct.task_struct*
  %flags189 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i64 0, i32 4
  %21 = load i32, i32* %flags189, align 4
  %and190 = and i32 %21, 2048
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end205, label %if.then204, !prof !12

if.then204:                                       ; preds = %if.end186
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 5101; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !27
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end186
  br i1 %cmp, label %if.then229, label %if.end230, !prof !9

if.then229:                                       ; preds = %if.end205
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 5109; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !28
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %if.end205
  %call239 = call fastcc %struct.page* @__alloc_pages_cpuset_fallback(i32 noundef %spec.select, i32 noundef %order, i32 noundef 16, %struct.alloc_context* noundef %ac) #29
  %tobool240.not = icmp eq %struct.page* %call239, null
  br i1 %tobool240.not, label %if.end242, label %got_pg

if.end242:                                        ; preds = %if.end230
  call fastcc void @_cond_resched() #29
  br label %retry.preheader

fail:                                             ; preds = %if.then174, %nopage
  %22 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  call void (i32, %struct.nodemask_t*, i8*, ...) @warn_alloc(i32 noundef %spec.select, %struct.nodemask_t* noundef %22, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i64 0, i64 0), i32 noundef %order) #29
  br label %got_pg

got_pg:                                           ; preds = %if.end130, %if.end99, %if.end87, %if.end230, %if.end31, %fail
  %page.2 = phi %struct.page* [ %call32, %if.end31 ], [ null, %fail ], [ %call239, %if.end230 ], [ %call134, %if.end130 ], [ %call100, %if.end99 ], [ %call88, %if.end87 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret %struct.page* %page.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__free_pages(%struct.page* noundef %page, i32 noundef %order) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @put_page_testzero(%struct.page* noundef %page) #29
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @free_the_page(%struct.page* noundef %page, i32 noundef %order) #29
  br label %if.end4

if.else:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool2.not = icmp ne i64 %1, 0
  %cmp.not12 = icmp eq i32 %order, 0
  %or.cond = or i1 %tobool2.not, %cmp.not12
  br i1 %or.cond, label %if.end4, label %while.body

while.body:                                       ; preds = %if.else, %while.body
  %dec13.in = phi i32 [ %dec13, %while.body ], [ %order, %if.else ]
  %dec13 = add i32 %dec13.in, -1
  %shl = shl nuw i32 1, %dec13
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %page, i64 %idx.ext
  call fastcc void @free_the_page(%struct.page* noundef %add.ptr, i32 noundef %dec13) #29
  %cmp.not = icmp eq i32 %dec13, 0
  br i1 %cmp.not, label %if.end4, label %while.body

if.end4:                                          ; preds = %while.body, %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__get_free_pages(i32 noundef %gfp_mask, i32 noundef %order) local_unnamed_addr #1 {
entry:
  %and = and i32 %gfp_mask, -3
  %call = call fastcc %struct.page* @alloc_pages(i32 noundef %and, i32 noundef %order) #29
  %tobool.not = icmp eq %struct.page* %call, null
  %0 = ptrtoint %struct.page* %call to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %retval.0 = select i1 %tobool.not, i64 0, i64 %add.i
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  call fastcc void @numa_node_id() #29
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask, i32 noundef %order) #29
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_zeroed_page(i32 noundef %gfp_mask) local_unnamed_addr #1 {
entry:
  %or = or i32 %gfp_mask, 256
  %call = call i64 @__get_free_pages(i32 noundef %or, i32 noundef 0) #29
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #29
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_pages(i64 noundef %addr, i32 noundef %order) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq i64 %addr, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i64 %addr, 549755813888
  %0 = lshr i64 %sub, 6
  %mul = and i64 %0, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %1 = inttoptr i64 %add to %struct.page*
  call void @__free_pages(%struct.page* noundef %1, i32 noundef %order) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__page_frag_cache_drain(%struct.page* noundef %page, i32 noundef %count) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @page_ref_sub_and_test(%struct.page* noundef %page, i32 noundef %count) #29
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @compound_order(%struct.page* noundef %page) #29, !range !8
  call fastcc void @free_the_page(%struct.page* noundef %page, i32 noundef %call1) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_sub_and_test(%struct.page* noundef %page, i32 noundef %nr) unnamed_addr #1 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef %nr, %struct.atomic_t* noundef %_refcount) #28
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @page_frag_alloc_align(%struct.page_frag_cache* nocapture noundef %nc, i32 noundef %fragsz, i32 noundef %gfp_mask, i32 noundef %align_mask) local_unnamed_addr #1 {
entry:
  %va = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 0
  %0 = load i8*, i8** %va, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %refill, label %entry.if.end11_crit_edge, !prof !9

entry.if.end11_crit_edge:                         ; preds = %entry
  %offset12.phi.trans.insert = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 1
  %.pre = load i16, i16* %offset12.phi.trans.insert, align 8
  br label %if.end11

refill:                                           ; preds = %if.then22, %entry, %if.then39
  %call = call fastcc %struct.page* @__page_frag_cache_refill(%struct.page_frag_cache* noundef %nc, i32 noundef %gfp_mask) #29
  %tobool4.not = icmp eq %struct.page* %call, null
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %refill
  %size6 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 2
  %1 = load i16, i16* %size6, align 2
  call fastcc void @page_ref_add(%struct.page* noundef nonnull %call) #29
  %call8 = call fastcc i1 @page_is_pfmemalloc(%struct.page* noundef nonnull %call) #29
  %pfmemalloc = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 4
  %frombool = zext i1 %call8 to i8
  store i8 %frombool, i8* %pfmemalloc, align 8
  %pagecnt_bias = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 3
  store i32 32769, i32* %pagecnt_bias, align 4
  %offset10 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 1
  store i16 %1, i16* %offset10, align 8
  br label %if.end11

if.end11:                                         ; preds = %entry.if.end11_crit_edge, %if.end
  %2 = phi i16 [ %.pre, %entry.if.end11_crit_edge ], [ %1, %if.end ]
  %offset12 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 1
  %conv13 = zext i16 %2 to i32
  %sub = sub i32 %conv13, %fragsz
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then22, label %if.end11.if.end46_crit_edge, !prof !9

if.end11.if.end46_crit_edge:                      ; preds = %if.end11
  %pagecnt_bias47.phi.trans.insert = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 3
  %.pre83 = load i32, i32* %pagecnt_bias47.phi.trans.insert, align 4
  %phi.bo = add i32 %.pre83, -1
  br label %if.end46

if.then22:                                        ; preds = %if.end11
  %3 = load i8*, i8** %va, align 8
  %4 = ptrtoint i8* %3 to i64
  %sub24 = add i64 %4, 549755813888
  %5 = lshr i64 %sub24, 6
  %mul = and i64 %5, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %6 = inttoptr i64 %add to %struct.page*
  %pagecnt_bias25 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 3
  %7 = load i32, i32* %pagecnt_bias25, align 4
  %call26 = call fastcc i32 @page_ref_sub_and_test(%struct.page* noundef %6, i32 noundef %7) #29
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %refill, label %if.end29

if.end29:                                         ; preds = %if.then22
  %pfmemalloc30 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 4
  %8 = load i8, i8* %pfmemalloc30, align 8, !range !10
  %tobool31.not = icmp eq i8 %8, 0
  br i1 %tobool31.not, label %if.end41, label %if.then39, !prof !12

if.then39:                                        ; preds = %if.end29
  %call40 = call fastcc i32 @compound_order(%struct.page* noundef %6) #29, !range !8
  call fastcc void @free_the_page(%struct.page* noundef %6, i32 noundef %call40) #29
  br label %refill

if.end41:                                         ; preds = %if.end29
  %size42 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 2
  %9 = load i16, i16* %size42, align 2
  %conv43 = zext i16 %9 to i32
  call fastcc void @set_page_count(%struct.page* noundef %6, i32 noundef 32769) #29
  %sub45 = sub i32 %conv43, %fragsz
  br label %if.end46

if.end46:                                         ; preds = %if.end11.if.end46_crit_edge, %if.end41
  %10 = phi i32 [ 32768, %if.end41 ], [ %phi.bo, %if.end11.if.end46_crit_edge ]
  %offset.0 = phi i32 [ %sub45, %if.end41 ], [ %sub, %if.end11.if.end46_crit_edge ]
  %pagecnt_bias47 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 3
  store i32 %10, i32* %pagecnt_bias47, align 4
  %and = and i32 %offset.0, %align_mask
  %conv48 = trunc i32 %and to i16
  store i16 %conv48, i16* %offset12, align 8
  %11 = load i8*, i8** %va, align 8
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr i8, i8* %11, i64 %idx.ext
  br label %cleanup

cleanup:                                          ; preds = %refill, %if.end46
  %retval.0 = phi i8* [ %add.ptr, %if.end46 ], [ null, %refill ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__page_frag_cache_refill(%struct.page_frag_cache* nocapture noundef writeonly %nc, i32 noundef %gfp_mask) unnamed_addr #1 {
entry:
  %or = or i32 %gfp_mask, 860160
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef -1, i32 noundef %or, i32 noundef 3) #29
  %tobool.not = icmp eq %struct.page* %call1, null
  %conv = select i1 %tobool.not, i16 4096, i16 -32768
  %size = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 2
  store i16 %conv, i16* %size, align 2
  br i1 %tobool.not, label %if.end, label %cond.true, !prof !9

if.end:                                           ; preds = %entry
  %call7 = call fastcc %struct.page* @alloc_pages_node(i32 noundef -1, i32 noundef %gfp_mask, i32 noundef 0) #29
  %tobool8.not = icmp eq %struct.page* %call7, null
  br i1 %tobool8.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry, %if.end
  %page.022 = phi %struct.page* [ %call7, %if.end ], [ %call1, %entry ]
  %0 = ptrtoint %struct.page* %page.022 to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %page.023 = phi %struct.page* [ %page.022, %cond.true ], [ null, %if.end ]
  %cond10 = phi i8* [ %1, %cond.true ], [ null, %if.end ]
  %va = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %nc, i64 0, i32 0
  store i8* %cond10, i8** %va, align 8
  ret %struct.page* %page.023
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_add(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @page_is_pfmemalloc(%struct.page* nocapture noundef readonly %page) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %1 = ptrtoint %struct.list_head* %0 to i64
  %and = and i64 %1, 2
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_frag_free(i8* noundef %addr) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.page* @virt_to_head_page(i8* noundef %addr) #29
  %call1 = call fastcc i32 @put_page_testzero(%struct.page* noundef %call) #29
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  %call4 = call fastcc i32 @compound_order(%struct.page* noundef %call) #29, !range !8
  call fastcc void @free_the_page(%struct.page* noundef %call, i32 noundef %call4) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.page* @virt_to_head_page(i8* noundef %x) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %2) #29
  %3 = inttoptr i64 %call to %struct.page*
  ret %struct.page* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @alloc_pages_exact(i64 noundef %size, i32 noundef %gfp_mask) local_unnamed_addr #1 {
entry:
  %dec.i = add i64 %size, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #30, !range !29
  %1 = trunc i64 %0 to i32
  %conv.i.i = sub nuw nsw i32 64, %1
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %and = and i32 %gfp_mask, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 5621; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and17 = and i32 %gfp_mask, -262145
  %call19 = call i64 @__get_free_pages(i32 noundef %and17, i32 noundef %retval.0.i.i) #29
  %call20 = call fastcc i8* @make_alloc_exact(i64 noundef %call19, i32 noundef %retval.0.i.i, i64 noundef %size) #29
  ret i8* %call20
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @make_alloc_exact(i64 noundef %addr, i32 noundef %order, i64 noundef %size) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i64 %addr, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sh_prom = zext i32 %order to i64
  %shl = shl i64 4096, %sh_prom
  %add = add i64 %shl, %addr
  %add1 = add i64 %size, 4095
  %and = and i64 %add1, -4096
  %add2 = add i64 %and, %addr
  %sub = add i64 %addr, 549755813888
  %0 = lshr i64 %sub, 6
  %mul = and i64 %0, 288230376151711680
  %add3 = add nsw i64 %mul, -8589934592
  %1 = inttoptr i64 %add3 to %struct.page*
  call void @split_page(%struct.page* noundef %1, i32 noundef %order) #29
  %cmp16 = icmp ult i64 %add2, %add
  br i1 %cmp16, label %while.body, label %if.end

while.body:                                       ; preds = %if.then, %while.body
  %used.017 = phi i64 [ %add4, %while.body ], [ %add2, %if.then ]
  call void @free_pages(i64 noundef %used.017, i32 noundef 0) #29
  %add4 = add i64 %used.017, 4096
  %cmp = icmp ult i64 %add4, %add
  br i1 %cmp, label %while.body, label %if.end

if.end:                                           ; preds = %while.body, %if.then, %entry
  %2 = inttoptr i64 %addr to i8*
  ret i8* %2
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @alloc_pages_exact_nid(i32 noundef %nid, i64 noundef %size, i32 noundef %gfp_mask) local_unnamed_addr #0 section ".meminit.text" {
entry:
  %dec.i = add i64 %size, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #30, !range !29
  %1 = trunc i64 %0 to i32
  %conv.i.i = sub nuw nsw i32 64, %1
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %and = and i32 %gfp_mask, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 5646; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and17 = and i32 %gfp_mask, -262145
  %call19 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %nid, i32 noundef %and17, i32 noundef %retval.0.i.i) #29
  %tobool20.not = icmp eq %struct.page* %call19, null
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end
  %2 = ptrtoint %struct.page* %call19 to i64
  %sub.i35 = shl i64 %2, 6
  %add.i36 = and i64 %sub.i35, -4096
  %call24 = call fastcc i8* @make_alloc_exact(i64 noundef %add.i36, i32 noundef %retval.0.i.i, i64 noundef %size) #29
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end22
  %retval.0 = phi i8* [ %call24, %if.end22 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %nid, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @numa_mem_id() #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nid.addr.0 = phi i32 [ 0, %if.then ], [ %nid, %entry ]
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid.addr.0, i32 noundef %gfp_mask, i32 noundef %order) #29
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_pages_exact(i8* noundef %virt, i64 noundef %size) local_unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %virt to i64
  %add = add i64 %size, 4095
  %and = and i64 %add, -4096
  %add1 = add i64 %and, %0
  %cmp8 = icmp ugt i64 %add1, %0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %addr.09 = phi i64 [ %add2, %while.body ], [ %0, %entry ]
  call void @free_pages(i64 noundef %addr.09, i32 noundef 0) #29
  %add2 = add i64 %addr.09, 4096
  %cmp = icmp ult i64 %add2, %add1
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @nr_free_buffer_pages() local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @gfp_zone(i32 noundef 1051840) #29, !range !32
  %call1 = call fastcc i64 @nr_free_zone_pages(i32 noundef %call) #29
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @nr_free_zone_pages(i32 noundef %offset) unnamed_addr #1 {
entry:
  call fastcc void @numa_node_id() #29
  %call2 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 1, i64 0), i32 noundef %offset, %struct.nodemask_t* noundef null) #29
  %call3 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call2) #29
  %tobool.not23 = icmp eq %struct.zone* %call3, null
  br i1 %tobool.not23, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %next_zones_zonelist.exit
  %z.026 = phi %struct.zoneref* [ %retval.0.i, %next_zones_zonelist.exit ], [ %call2, %entry ]
  %sum.025 = phi i64 [ %sum.1, %next_zones_zonelist.exit ], [ 0, %entry ]
  %zone.024 = phi %struct.zone* [ %call7, %next_zones_zonelist.exit ], [ %call3, %entry ]
  %call4 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef nonnull %zone.024) #29
  %arrayidx = getelementptr %struct.zone, %struct.zone* %zone.024, i64 0, i32 0, i64 2
  %0 = load i64, i64* %arrayidx, align 16
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.024, i64 0, i32 1
  %1 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %1, %0
  %2 = call i64 @llvm.usub.sat.i64(i64 %call4, i64 %add)
  %sum.1 = add i64 %2, %sum.025
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.026, i64 1
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #28
  %cmp.not.i = icmp ugt i32 %call.i, %offset
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %for.body
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %offset, %struct.nodemask_t* noundef null) #28
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %for.body, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %for.body ]
  %call7 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #29
  %tobool.not = icmp eq %struct.zone* %call7, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %next_zones_zonelist.exit, %entry
  %sum.0.lcssa = phi i64 [ 0, %entry ], [ %sum.1, %next_zones_zonelist.exit ]
  ret i64 %sum.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @gfp_zone(i32 noundef %flags) unnamed_addr #4 {
entry:
  %and = shl i32 %flags, 1
  %mul = and i32 %and, 30
  %shr = lshr i32 20054306, %mul
  %and1 = and i32 %shr, 3
  ret i32 %and1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @si_mem_available() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @global_node_page_state(i32 noundef 0) #29
  %call.1 = call fastcc i64 @global_node_page_state(i32 noundef 1) #29
  %call.2 = call fastcc i64 @global_node_page_state(i32 noundef 2) #29
  %call.3 = call fastcc i64 @global_node_page_state(i32 noundef 3) #29
  %call.4 = call fastcc i64 @global_node_page_state(i32 noundef 4) #29
  %call1 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not59 = icmp eq %struct.pglist_data* %call1, null
  br i1 %tobool.not59, label %for.end9, label %for.body3.preheader

for.body3.preheader:                              ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call1, i64 0, i32 0, i64 0
  br label %for.body3

for.body3:                                        ; preds = %for.body3.preheader, %for.body3
  %wmark_low.061 = phi i64 [ %add6, %for.body3 ], [ 0, %for.body3.preheader ]
  %zone.060 = phi %struct.zone* [ %call8, %for.body3 ], [ %arraydecay, %for.body3.preheader ]
  %arrayidx4 = getelementptr %struct.zone, %struct.zone* %zone.060, i64 0, i32 0, i64 1
  %0 = load i64, i64* %arrayidx4, align 8
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.060, i64 0, i32 1
  %1 = load i64, i64* %watermark_boost, align 8
  %add5 = add i64 %0, %wmark_low.061
  %add6 = add i64 %add5, %1
  %call8 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.060) #28
  %tobool.not = icmp eq %struct.zone* %call8, null
  br i1 %tobool.not, label %for.end9, label %for.body3

for.end9:                                         ; preds = %for.body3, %entry
  %wmark_low.0.lcssa = phi i64 [ 0, %entry ], [ %add6, %for.body3 ]
  %call10 = call fastcc i64 @global_zone_page_state(i32 noundef 0) #29
  %2 = load i64, i64* @totalreserve_pages, align 8
  %add13 = add i64 %call.2, %call.3
  %div = lshr i64 %add13, 1
  %cmp14 = icmp ult i64 %div, %wmark_low.0.lcssa
  %cond = select i1 %cmp14, i64 %div, i64 %wmark_low.0.lcssa
  %call17 = call fastcc i64 @global_node_page_state_pages(i32 noundef 5) #29
  %call18 = call fastcc i64 @global_node_page_state(i32 noundef 33) #29
  %add19 = add i64 %call18, %call17
  %div20 = lshr i64 %add19, 1
  %cmp22 = icmp ult i64 %div20, %wmark_low.0.lcssa
  %cond26 = select i1 %cmp22, i64 %div20, i64 %wmark_low.0.lcssa
  %sub27 = sub i64 %add19, %cond26
  %3 = add i64 %call10, %add13
  %4 = add i64 %2, %cond
  %add16 = sub i64 %3, %4
  %add28 = add i64 %add16, %sub27
  %5 = icmp sgt i64 %add28, 0
  %spec.store.select = select i1 %5, i64 %add28, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state(i32 noundef %item) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @global_node_page_state_pages(i32 noundef %item) #29
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_zone_page_state(i32 noundef %item) unnamed_addr #5 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr [10 x %struct.atomic64_t], [10 x %struct.atomic64_t]* @vm_zone_stat, i64 0, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state_pages(i32 noundef %item) unnamed_addr #5 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @si_meminfo(%struct.sysinfo* nocapture noundef writeonly %val) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @totalram_pages() #29
  %totalram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %val, i64 0, i32 2
  store i64 %call, i64* %totalram, align 8
  %call1 = call fastcc i64 @global_node_page_state(i32 noundef 23) #29
  %sharedram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %val, i64 0, i32 4
  store i64 %call1, i64* %sharedram, align 8
  %call2 = call fastcc i64 @global_zone_page_state(i32 noundef 0) #29
  %freeram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %val, i64 0, i32 3
  store i64 %call2, i64* %freeram, align 8
  %call3 = call i64 @nr_blockdev_pages() #28
  %bufferram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %val, i64 0, i32 5
  store i64 %call3, i64* %bufferram, align 8
  %totalhigh = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %val, i64 0, i32 10
  store i64 0, i64* %totalhigh, align 8
  %freehigh = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %val, i64 0, i32 11
  store i64 0, i64* %freehigh, align 8
  %mem_unit = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %val, i64 0, i32 12
  store i32 4096, i32* %mem_unit, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #5 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nr_blockdev_pages() local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @show_free_areas(i32 noundef %filter, %struct.nodemask_t* noundef %nodemask) local_unnamed_addr #1 {
entry:
  %nr = alloca [11 x i64], align 8
  %types = alloca [11 x i8], align 4
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not415 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not415, label %do.end15, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %free_pcp.0419 = phi i64 [ %free_pcp.2, %for.inc ], [ 0, %for.body.preheader ]
  %zone.0416 = phi %struct.zone* [ %call11, %for.inc ], [ %arraydecay, %for.body.preheader ]
  %call1 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.0416) #29
  br i1 %call1, label %if.else, label %for.inc

if.else:                                          ; preds = %for.body
  %call3 = call fastcc i1 @show_mem_node_skip(i32 noundef %filter, i32 noundef 0, %struct.nodemask_t* noundef %nodemask) #29
  br i1 %call3, label %for.inc, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %if.else
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call6411 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %cmp412 = icmp ult i32 %call6411, %0
  br i1 %cmp412, label %do.body.lr.ph, label %for.inc

do.body.lr.ph:                                    ; preds = %for.cond5.preheader
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone.0416, i64 0, i32 5
  %1 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %2 = ptrtoint %struct.per_cpu_pages* %1 to i64
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call6414 = phi i32 [ %call6411, %do.body.lr.ph ], [ %call6, %do.body ]
  %free_pcp.1413 = phi i64 [ %free_pcp.0419, %do.body.lr.ph ], [ %add9, %do.body ]
  %idxprom = sext i32 %call6414 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.per_cpu_pages*
  %count = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %4, i64 0, i32 0
  %5 = load i32, i32* %count, align 8
  %conv = sext i32 %5 to i64
  %add9 = add i64 %free_pcp.1413, %conv
  %call6 = call i32 @cpumask_next(i32 noundef %call6414, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %cmp = icmp ult i32 %call6, %0
  br i1 %cmp, label %do.body, label %for.inc

for.inc:                                          ; preds = %do.body, %for.cond5.preheader, %for.body, %if.else
  %free_pcp.2 = phi i64 [ %free_pcp.0419, %if.else ], [ %free_pcp.0419, %for.body ], [ %free_pcp.0419, %for.cond5.preheader ], [ %add9, %do.body ]
  %call11 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.0416) #28
  %tobool.not = icmp eq %struct.zone* %call11, null
  br i1 %tobool.not, label %do.end15, label %for.body

do.end15:                                         ; preds = %for.inc, %entry
  %free_pcp.0.lcssa = phi i64 [ 0, %entry ], [ %free_pcp.2, %for.inc ]
  %call17 = call fastcc i64 @global_node_page_state(i32 noundef 1) #29
  %call18 = call fastcc i64 @global_node_page_state(i32 noundef 0) #29
  %call19 = call fastcc i64 @global_node_page_state(i32 noundef 7) #29
  %call20 = call fastcc i64 @global_node_page_state(i32 noundef 3) #29
  %call21 = call fastcc i64 @global_node_page_state(i32 noundef 2) #29
  %call22 = call fastcc i64 @global_node_page_state(i32 noundef 8) #29
  %call23 = call fastcc i64 @global_node_page_state(i32 noundef 4) #29
  %call24 = call fastcc i64 @global_node_page_state(i32 noundef 20) #29
  %call25 = call fastcc i64 @global_node_page_state(i32 noundef 21) #29
  %call26 = call fastcc i64 @global_node_page_state_pages(i32 noundef 5) #29
  %call27 = call fastcc i64 @global_node_page_state_pages(i32 noundef 6) #29
  %call28 = call fastcc i64 @global_node_page_state(i32 noundef 18) #29
  %call29 = call fastcc i64 @global_node_page_state(i32 noundef 23) #29
  %call30 = call fastcc i64 @global_node_page_state(i32 noundef 37) #29
  %call31 = call fastcc i64 @global_zone_page_state(i32 noundef 8) #29
  %call32 = call fastcc i64 @global_node_page_state(i32 noundef 33) #29
  %call33 = call fastcc i64 @global_zone_page_state(i32 noundef 0) #29
  %call34 = call fastcc i64 @global_zone_page_state(i32 noundef 9) #29
  %call35 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([305 x i8], [305 x i8]* @.str.8, i64 0, i64 0), i64 noundef %call17, i64 noundef %call18, i64 noundef %call19, i64 noundef %call20, i64 noundef %call21, i64 noundef %call22, i64 noundef %call23, i64 noundef %call24, i64 noundef %call25, i64 noundef %call26, i64 noundef %call27, i64 noundef %call28, i64 noundef %call29, i64 noundef %call30, i64 noundef %call31, i64 noundef %call32, i64 noundef %call33, i64 noundef %free_pcp.0.lcssa, i64 noundef %call34) #34
  %call36 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool38.not421 = icmp eq %struct.pglist_data* %call36, null
  br i1 %tobool38.not421, label %for.end79, label %for.body39

for.body39:                                       ; preds = %do.end15, %for.inc77
  %pgdat.0422 = phi %struct.pglist_data* [ %call78, %for.inc77 ], [ %call36, %do.end15 ]
  %node_id = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat.0422, i64 0, i32 6
  %6 = load i32, i32* %node_id, align 16
  %call40 = call fastcc i1 @show_mem_node_skip(i32 noundef %filter, i32 noundef %6, %struct.nodemask_t* noundef %nodemask) #29
  br i1 %call40, label %for.inc77, label %do.end45

do.end45:                                         ; preds = %for.body39
  %7 = load i32, i32* %node_id, align 16
  %call48 = call fastcc i64 @global_node_page_state(i32 noundef 1) #29
  %shl = shl i64 %call48, 2
  %call49 = call fastcc i64 @global_node_page_state(i32 noundef 0) #29
  %shl50 = shl i64 %call49, 2
  %call51 = call fastcc i64 @global_node_page_state(i32 noundef 3) #29
  %shl52 = shl i64 %call51, 2
  %call53 = call fastcc i64 @global_node_page_state(i32 noundef 2) #29
  %shl54 = shl i64 %call53, 2
  %call55 = call fastcc i64 @global_node_page_state(i32 noundef 4) #29
  %shl56 = shl i64 %call55, 2
  %call57 = call fastcc i64 @global_node_page_state(i32 noundef 7) #29
  %shl58 = shl i64 %call57, 2
  %call59 = call fastcc i64 @global_node_page_state(i32 noundef 8) #29
  %shl60 = shl i64 %call59, 2
  %call61 = call fastcc i64 @global_node_page_state(i32 noundef 18) #29
  %shl62 = shl i64 %call61, 2
  %call63 = call fastcc i64 @global_node_page_state(i32 noundef 20) #29
  %shl64 = shl i64 %call63, 2
  %call65 = call fastcc i64 @global_node_page_state(i32 noundef 21) #29
  %shl66 = shl i64 %call65, 2
  %call67 = call fastcc i64 @global_node_page_state(i32 noundef 23) #29
  %shl68 = shl i64 %call67, 2
  %call69 = call fastcc i64 @global_node_page_state(i32 noundef 22) #29
  %shl70 = shl i64 %call69, 2
  %call71 = call fastcc i64 @global_node_page_state(i32 noundef 36) #29
  %call72 = call fastcc i64 @global_node_page_state(i32 noundef 37) #29
  %shl73 = shl i64 %call72, 2
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat.0422, i64 0, i32 12
  %8 = load i32, i32* %kswapd_failures, align 8
  %cmp74 = icmp sgt i32 %8, 15
  %cond = select i1 %cmp74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %call76 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([276 x i8], [276 x i8]* @.str.9, i64 0, i64 0), i32 noundef %7, i64 noundef %shl, i64 noundef %shl50, i64 noundef %shl52, i64 noundef %shl54, i64 noundef %shl56, i64 noundef %shl58, i64 noundef %shl60, i64 noundef %shl62, i64 noundef %shl64, i64 noundef %shl66, i64 noundef %shl68, i64 noundef %shl70, i64 noundef %call71, i64 noundef %shl73, i8* noundef %cond) #34
  br label %for.inc77

for.inc77:                                        ; preds = %for.body39, %do.end45
  %call78 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.0422) #28
  %tobool38.not = icmp eq %struct.pglist_data* %call78, null
  br i1 %tobool38.not, label %for.end79, label %for.body39

for.end79:                                        ; preds = %for.inc77, %do.end15
  %call80 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool84.not429 = icmp eq %struct.pglist_data* %call80, null
  br i1 %tobool84.not429, label %for.end202, label %for.body85.preheader

for.body85.preheader:                             ; preds = %for.end79
  %arraydecay82 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call80, i64 0, i32 0, i64 0
  br label %for.body85

for.body85:                                       ; preds = %for.body85.preheader, %for.inc200
  %zone.1430 = phi %struct.zone* [ %call201, %for.inc200 ], [ %arraydecay82, %for.body85.preheader ]
  %call86 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.1430) #29
  br i1 %call86, label %if.else88, label %for.inc200

if.else88:                                        ; preds = %for.body85
  %call90 = call fastcc i1 @show_mem_node_skip(i32 noundef %filter, i32 noundef 0, %struct.nodemask_t* noundef %nodemask) #29
  br i1 %call90, label %for.inc200, label %for.cond93.preheader

for.cond93.preheader:                             ; preds = %if.else88
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %call94423 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %cmp95424 = icmp ult i32 %call94423, %9
  br i1 %cmp95424, label %do.body98.lr.ph, label %for.end112

do.body98.lr.ph:                                  ; preds = %for.cond93.preheader
  %per_cpu_pageset104 = getelementptr inbounds %struct.zone, %struct.zone* %zone.1430, i64 0, i32 5
  %10 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset104, align 16
  %11 = ptrtoint %struct.per_cpu_pages* %10 to i64
  br label %do.body98

do.body98:                                        ; preds = %do.body98.lr.ph, %do.body98
  %call94426 = phi i32 [ %call94423, %do.body98.lr.ph ], [ %call94, %do.body98 ]
  %free_pcp.3425 = phi i64 [ 0, %do.body98.lr.ph ], [ %add111, %do.body98 ]
  %idxprom106 = sext i32 %call94426 to i64
  %arrayidx107 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom106
  %12 = load i64, i64* %arrayidx107, align 8
  %add108 = add i64 %12, %11
  %13 = inttoptr i64 %add108 to %struct.per_cpu_pages*
  %count109 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %13, i64 0, i32 0
  %14 = load i32, i32* %count109, align 8
  %conv110 = sext i32 %14 to i64
  %add111 = add i64 %free_pcp.3425, %conv110
  %call94 = call i32 @cpumask_next(i32 noundef %call94426, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %cmp95 = icmp ult i32 %call94, %9
  br i1 %cmp95, label %do.body98, label %for.end112

for.end112:                                       ; preds = %do.body98, %for.cond93.preheader
  %free_pcp.3.lcssa = phi i64 [ 0, %for.cond93.preheader ], [ %add111, %do.body98 ]
  %name = getelementptr inbounds %struct.zone, %struct.zone* %zone.1430, i64 0, i32 13
  %15 = load i8*, i8** %name, align 8
  %call117 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 0) #29
  %shl118 = shl i64 %call117, 2
  %arrayidx119 = getelementptr inbounds %struct.zone, %struct.zone* %zone.1430, i64 0, i32 0, i64 0
  %16 = load i64, i64* %arrayidx119, align 64
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.1430, i64 0, i32 1
  %17 = load i64, i64* %watermark_boost, align 8
  %add120 = add i64 %17, %16
  %shl121 = shl i64 %add120, 2
  %arrayidx123 = getelementptr %struct.zone, %struct.zone* %zone.1430, i64 0, i32 0, i64 1
  %18 = load i64, i64* %arrayidx123, align 8
  %add125 = add i64 %18, %17
  %shl126 = shl i64 %add125, 2
  %arrayidx128 = getelementptr %struct.zone, %struct.zone* %zone.1430, i64 0, i32 0, i64 2
  %19 = load i64, i64* %arrayidx128, align 16
  %add130 = add i64 %19, %17
  %shl131 = shl i64 %add130, 2
  %nr_reserved_highatomic = getelementptr inbounds %struct.zone, %struct.zone* %zone.1430, i64 0, i32 2
  %20 = load i64, i64* %nr_reserved_highatomic, align 32
  %shl132 = shl i64 %20, 2
  %call133 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 2) #29
  %shl134 = shl i64 %call133, 2
  %call135 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 1) #29
  %shl136 = shl i64 %call135, 2
  %call137 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 4) #29
  %shl138 = shl i64 %call137, 2
  %call139 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 3) #29
  %shl140 = shl i64 %call139, 2
  %call141 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 5) #29
  %shl142 = shl i64 %call141, 2
  %call143 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 6) #29
  %shl144 = shl i64 %call143, 2
  %present_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone.1430, i64 0, i32 12
  %21 = load i64, i64* %present_pages, align 64
  %shl145 = shl i64 %21, 2
  %call146 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone.1430) #29
  %shl147 = shl i64 %call146, 2
  %call148 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 7) #29
  %shl149 = shl i64 %call148, 2
  %call150 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 8) #29
  %shl151 = shl i64 %call150, 2
  %shl152 = shl i64 %free_pcp.3.lcssa, 2
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !33
  %per_cpu_pageset163 = getelementptr inbounds %struct.zone, %struct.zone* %zone.1430, i64 0, i32 5
  %22 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset163, align 16
  %23 = ptrtoint %struct.per_cpu_pages* %22 to i64
  %call166 = call fastcc i64 @__kern_my_cpu_offset() #29
  %add167 = add i64 %call166, %23
  %24 = inttoptr i64 %add167 to i8*
  %call168 = call fastcc i64 @__percpu_read_32(i8* noundef %24) #29
  %conv169 = trunc i64 %call168 to i32
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !34
  %shl172 = shl i32 %conv169, 2
  %call173 = call fastcc i64 @zone_page_state(%struct.zone* noundef %zone.1430, i32 noundef 9) #29
  %shl174 = shl i64 %call173, 2
  %call175 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([287 x i8], [287 x i8]* @.str.12, i64 0, i64 0), i8* noundef %15, i64 noundef %shl118, i64 noundef %shl121, i64 noundef %shl126, i64 noundef %shl131, i64 noundef %shl132, i64 noundef %shl134, i64 noundef %shl136, i64 noundef %shl138, i64 noundef %shl140, i64 noundef %shl142, i64 noundef %shl144, i64 noundef %shl145, i64 noundef %shl147, i64 noundef %shl149, i64 noundef %shl151, i64 noundef %shl152, i32 noundef %shl172, i64 noundef %shl174) #34
  %call180 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0)) #34
  %arrayidx190 = getelementptr %struct.zone, %struct.zone* %zone.1430, i64 0, i32 3, i64 0
  %25 = load i64, i64* %arrayidx190, align 8
  %call191 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 noundef %25) #34
  %arrayidx190.1 = getelementptr %struct.zone, %struct.zone* %zone.1430, i64 0, i32 3, i64 1
  %26 = load i64, i64* %arrayidx190.1, align 8
  %call191.1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 noundef %26) #34
  %arrayidx190.2 = getelementptr %struct.zone, %struct.zone* %zone.1430, i64 0, i32 3, i64 2
  %27 = load i64, i64* %arrayidx190.2, align 8
  %call191.2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 noundef %27) #34
  %arrayidx190.3 = getelementptr %struct.zone, %struct.zone* %zone.1430, i64 0, i32 3, i64 3
  %28 = load i64, i64* %arrayidx190.3, align 8
  %call191.3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 noundef %28) #34
  %call198 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #34
  br label %for.inc200

for.inc200:                                       ; preds = %for.end112, %if.else88, %for.body85
  %call201 = call %struct.zone* @next_zone(%struct.zone* noundef %zone.1430) #28
  %tobool84.not = icmp eq %struct.zone* %call201, null
  br i1 %tobool84.not, label %for.end202, label %for.body85

for.end202:                                       ; preds = %for.inc200, %for.end79
  %call203 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool207.not436 = icmp eq %struct.pglist_data* %call203, null
  br i1 %tobool207.not436, label %for.end305, label %for.body208.lr.ph

for.body208.lr.ph:                                ; preds = %for.end202
  %arraydecay205 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call203, i64 0, i32 0, i64 0
  %29 = bitcast [11 x i64]* %nr to i8*
  %30 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 0
  %arrayidx275 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 0
  %arrayidx275.1 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 1
  %arrayidx284.1 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 1
  %arrayidx275.2 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 2
  %arrayidx284.2 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 2
  %arrayidx275.3 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 3
  %arrayidx284.3 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 3
  %arrayidx275.4 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 4
  %arrayidx284.4 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 4
  %arrayidx275.5 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 5
  %arrayidx284.5 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 5
  %arrayidx275.6 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 6
  %arrayidx284.6 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 6
  %arrayidx275.7 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 7
  %arrayidx284.7 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 7
  %arrayidx275.8 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 8
  %arrayidx284.8 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 8
  %arrayidx275.9 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 9
  %arrayidx284.9 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 9
  %arrayidx275.10 = getelementptr inbounds [11 x i64], [11 x i64]* %nr, i64 0, i64 10
  %arrayidx284.10 = getelementptr inbounds [11 x i8], [11 x i8]* %types, i64 0, i64 10
  br label %for.body208

for.body208:                                      ; preds = %for.body208.lr.ph, %for.inc303
  %zone.2437 = phi %struct.zone* [ %arraydecay205, %for.body208.lr.ph ], [ %call304, %for.inc303 ]
  %call209 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.2437) #29
  br i1 %call209, label %if.else211, label %for.inc303

if.else211:                                       ; preds = %for.body208
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %29) #30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %29, i8 0, i64 88, i1 false), !annotation !21
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %30) #30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(11) %30, i8 0, i64 11, i1 false), !annotation !21
  %call213 = call fastcc i1 @show_mem_node_skip(i32 noundef %filter, i32 noundef 0, %struct.nodemask_t* noundef %nodemask) #29
  br i1 %call213, label %cleanup295, label %if.end215

if.end215:                                        ; preds = %if.else211
  %name220 = getelementptr inbounds %struct.zone, %struct.zone* %zone.2437, i64 0, i32 13
  %31 = load i8*, i8** %name220, align 8
  %call221 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* noundef %31) #34
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %zone.2437, i64 0, i32 19, i32 0, i32 0
  %call228 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #29
  br label %for.body236

for.body236:                                      ; preds = %if.end215, %for.inc259.3
  %indvars.iv = phi i64 [ 0, %if.end215 ], [ %indvars.iv.next, %for.inc259.3 ]
  %total.0434 = phi i64 [ 0, %if.end215 ], [ %add244, %for.inc259.3 ]
  %arrayidx238 = getelementptr %struct.zone, %struct.zone* %zone.2437, i64 0, i32 17, i64 %indvars.iv
  %nr_free = getelementptr %struct.zone, %struct.zone* %zone.2437, i64 0, i32 17, i64 %indvars.iv, i32 1
  %32 = load i64, i64* %nr_free, align 8
  %arrayidx240 = getelementptr [11 x i64], [11 x i64]* %nr, i64 0, i64 %indvars.iv
  store i64 %32, i64* %arrayidx240, align 8
  %shl243 = shl i64 %32, %indvars.iv
  %arrayidx246 = getelementptr [11 x i8], [11 x i8]* %types, i64 0, i64 %indvars.iv
  store i8 0, i8* %arrayidx246, align 1
  %call251 = call fastcc i1 @free_area_empty(%struct.free_area* noundef %arrayidx238, i32 noundef 0) #29
  br i1 %call251, label %for.inc259, label %if.then252

if.then252:                                       ; preds = %for.body236
  store i8 1, i8* %arrayidx246, align 1
  br label %for.inc259

for.inc259:                                       ; preds = %for.body236, %if.then252
  %33 = phi i8 [ 0, %for.body236 ], [ 1, %if.then252 ]
  %call251.1 = call fastcc i1 @free_area_empty(%struct.free_area* noundef %arrayidx238, i32 noundef 1) #29
  br i1 %call251.1, label %for.inc259.1, label %if.then252.1

if.then252.1:                                     ; preds = %for.inc259
  %conv257.1 = or i8 %33, 2
  store i8 %conv257.1, i8* %arrayidx246, align 1
  br label %for.inc259.1

for.inc259.1:                                     ; preds = %if.then252.1, %for.inc259
  %34 = phi i8 [ %conv257.1, %if.then252.1 ], [ %33, %for.inc259 ]
  %call251.2 = call fastcc i1 @free_area_empty(%struct.free_area* noundef %arrayidx238, i32 noundef 2) #29
  br i1 %call251.2, label %for.inc259.2, label %if.then252.2

if.then252.2:                                     ; preds = %for.inc259.1
  %conv257.2 = or i8 %34, 4
  store i8 %conv257.2, i8* %arrayidx246, align 1
  br label %for.inc259.2

for.inc259.2:                                     ; preds = %if.then252.2, %for.inc259.1
  %35 = phi i8 [ %conv257.2, %if.then252.2 ], [ %34, %for.inc259.1 ]
  %call251.3 = call fastcc i1 @free_area_empty(%struct.free_area* noundef %arrayidx238, i32 noundef 3) #29
  br i1 %call251.3, label %for.inc259.3, label %if.then252.3

if.then252.3:                                     ; preds = %for.inc259.2
  %conv257.3 = or i8 %35, 8
  store i8 %conv257.3, i8* %arrayidx246, align 1
  br label %for.inc259.3

for.inc259.3:                                     ; preds = %if.then252.3, %for.inc259.2
  %add244 = add i64 %shl243, %total.0434
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %for.end264, label %for.body236

for.end264:                                       ; preds = %for.inc259.3
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call228) #28
  %36 = load i64, i64* %arrayidx275, align 8
  %call278 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %36, i64 noundef 4) #34
  %tobool281.not = icmp eq i64 %36, 0
  br i1 %tobool281.not, label %for.inc286, label %if.then282

if.then282:                                       ; preds = %for.end264
  %37 = load i8, i8* %30, align 4
  call fastcc void @show_migration_types(i8 noundef %37) #29
  br label %for.inc286

for.inc286:                                       ; preds = %for.end264, %if.then282
  %38 = load i64, i64* %arrayidx275.1, align 8
  %call278.1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %38, i64 noundef 8) #34
  %tobool281.not.1 = icmp eq i64 %38, 0
  br i1 %tobool281.not.1, label %for.inc286.1, label %if.then282.1

if.then282.1:                                     ; preds = %for.inc286
  %39 = load i8, i8* %arrayidx284.1, align 1
  call fastcc void @show_migration_types(i8 noundef %39) #29
  br label %for.inc286.1

for.inc286.1:                                     ; preds = %if.then282.1, %for.inc286
  %40 = load i64, i64* %arrayidx275.2, align 8
  %call278.2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %40, i64 noundef 16) #34
  %tobool281.not.2 = icmp eq i64 %40, 0
  br i1 %tobool281.not.2, label %for.inc286.2, label %if.then282.2

if.then282.2:                                     ; preds = %for.inc286.1
  %41 = load i8, i8* %arrayidx284.2, align 2
  call fastcc void @show_migration_types(i8 noundef %41) #29
  br label %for.inc286.2

for.inc286.2:                                     ; preds = %if.then282.2, %for.inc286.1
  %42 = load i64, i64* %arrayidx275.3, align 8
  %call278.3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %42, i64 noundef 32) #34
  %tobool281.not.3 = icmp eq i64 %42, 0
  br i1 %tobool281.not.3, label %for.inc286.3, label %if.then282.3

if.then282.3:                                     ; preds = %for.inc286.2
  %43 = load i8, i8* %arrayidx284.3, align 1
  call fastcc void @show_migration_types(i8 noundef %43) #29
  br label %for.inc286.3

for.inc286.3:                                     ; preds = %if.then282.3, %for.inc286.2
  %44 = load i64, i64* %arrayidx275.4, align 8
  %call278.4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %44, i64 noundef 64) #34
  %tobool281.not.4 = icmp eq i64 %44, 0
  br i1 %tobool281.not.4, label %for.inc286.4, label %if.then282.4

if.then282.4:                                     ; preds = %for.inc286.3
  %45 = load i8, i8* %arrayidx284.4, align 4
  call fastcc void @show_migration_types(i8 noundef %45) #29
  br label %for.inc286.4

for.inc286.4:                                     ; preds = %if.then282.4, %for.inc286.3
  %46 = load i64, i64* %arrayidx275.5, align 8
  %call278.5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %46, i64 noundef 128) #34
  %tobool281.not.5 = icmp eq i64 %46, 0
  br i1 %tobool281.not.5, label %for.inc286.5, label %if.then282.5

if.then282.5:                                     ; preds = %for.inc286.4
  %47 = load i8, i8* %arrayidx284.5, align 1
  call fastcc void @show_migration_types(i8 noundef %47) #29
  br label %for.inc286.5

for.inc286.5:                                     ; preds = %if.then282.5, %for.inc286.4
  %48 = load i64, i64* %arrayidx275.6, align 8
  %call278.6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %48, i64 noundef 256) #34
  %tobool281.not.6 = icmp eq i64 %48, 0
  br i1 %tobool281.not.6, label %for.inc286.6, label %if.then282.6

if.then282.6:                                     ; preds = %for.inc286.5
  %49 = load i8, i8* %arrayidx284.6, align 2
  call fastcc void @show_migration_types(i8 noundef %49) #29
  br label %for.inc286.6

for.inc286.6:                                     ; preds = %if.then282.6, %for.inc286.5
  %50 = load i64, i64* %arrayidx275.7, align 8
  %call278.7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %50, i64 noundef 512) #34
  %tobool281.not.7 = icmp eq i64 %50, 0
  br i1 %tobool281.not.7, label %for.inc286.7, label %if.then282.7

if.then282.7:                                     ; preds = %for.inc286.6
  %51 = load i8, i8* %arrayidx284.7, align 1
  call fastcc void @show_migration_types(i8 noundef %51) #29
  br label %for.inc286.7

for.inc286.7:                                     ; preds = %if.then282.7, %for.inc286.6
  %52 = load i64, i64* %arrayidx275.8, align 8
  %call278.8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %52, i64 noundef 1024) #34
  %tobool281.not.8 = icmp eq i64 %52, 0
  br i1 %tobool281.not.8, label %for.inc286.8, label %if.then282.8

if.then282.8:                                     ; preds = %for.inc286.7
  %53 = load i8, i8* %arrayidx284.8, align 4
  call fastcc void @show_migration_types(i8 noundef %53) #29
  br label %for.inc286.8

for.inc286.8:                                     ; preds = %if.then282.8, %for.inc286.7
  %54 = load i64, i64* %arrayidx275.9, align 8
  %call278.9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %54, i64 noundef 2048) #34
  %tobool281.not.9 = icmp eq i64 %54, 0
  br i1 %tobool281.not.9, label %for.inc286.9, label %if.then282.9

if.then282.9:                                     ; preds = %for.inc286.8
  %55 = load i8, i8* %arrayidx284.9, align 1
  call fastcc void @show_migration_types(i8 noundef %55) #29
  br label %for.inc286.9

for.inc286.9:                                     ; preds = %if.then282.9, %for.inc286.8
  %56 = load i64, i64* %arrayidx275.10, align 8
  %call278.10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 noundef %56, i64 noundef 4096) #34
  %tobool281.not.10 = icmp eq i64 %56, 0
  br i1 %tobool281.not.10, label %for.inc286.10, label %if.then282.10

if.then282.10:                                    ; preds = %for.inc286.9
  %57 = load i8, i8* %arrayidx284.10, align 2
  call fastcc void @show_migration_types(i8 noundef %57) #29
  br label %for.inc286.10

for.inc286.10:                                    ; preds = %if.then282.10, %for.inc286.9
  %shl293 = shl i64 %add244, 2
  %call294 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i64 noundef %shl293) #34
  br label %cleanup295

cleanup295:                                       ; preds = %if.else211, %for.inc286.10
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %30) #30
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %29) #30
  br label %for.inc303

for.inc303:                                       ; preds = %cleanup295, %for.body208
  %call304 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.2437) #28
  %tobool207.not = icmp eq %struct.zone* %call304, null
  br i1 %tobool207.not, label %for.end305, label %for.body208

for.end305:                                       ; preds = %for.inc303, %for.end202
  %call310 = call fastcc i64 @global_node_page_state(i32 noundef 19) #29
  %call311 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i64 noundef %call310) #34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @show_mem_node_skip(i32 noundef %flags, i32 noundef %nid, %struct.nodemask_t* noundef %nodemask) unnamed_addr #5 {
entry:
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.nodemask_t* %nodemask, null
  %spec.store.select = select i1 %tobool1.not, %struct.nodemask_t* getelementptr inbounds ([6 x %struct.nodemask_t], [6 x %struct.nodemask_t]* @node_states, i64 0, i64 3), %struct.nodemask_t* %nodemask
  %div.i = lshr i32 %nid, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.nodemask_t, %struct.nodemask_t* %spec.store.select, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %nid, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool4.not = icmp eq i64 %2, 0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %tobool4.not, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) unnamed_addr #5 {
entry:
  %counter.i.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 10, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @__percpu_read_32(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = load volatile i32, i32* %0, align 4
  %conv = zext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #29
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !35
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #29
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_migration_types(i8 noundef %type) unnamed_addr #1 {
entry:
  %tmp = alloca [5 x i8], align 4
  %0 = getelementptr inbounds [5 x i8], [5 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %0) #30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(5) %0, i8 0, i64 5, i1 false), !annotation !21
  %conv = zext i8 %type to i32
  %and = and i32 %conv, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds [5 x i8], [5 x i8]* %tmp, i64 0, i64 1
  store i8 85, i8* %0, align 4
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %p.1 = phi i8* [ %incdec.ptr, %if.then ], [ %0, %entry ]
  %and.1 = and i32 %conv, 2
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr i8, i8* %p.1, i64 1
  store i8 77, i8* %p.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %p.1.1 = phi i8* [ %incdec.ptr.1, %if.then.1 ], [ %p.1, %for.inc ]
  %and.2 = and i32 %conv, 4
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr i8, i8* %p.1.1, i64 1
  store i8 69, i8* %p.1.1, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %p.1.2 = phi i8* [ %incdec.ptr.2, %if.then.2 ], [ %p.1.1, %for.inc.1 ]
  %and.3 = and i32 %conv, 8
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr i8, i8* %p.1.2, i64 1
  store i8 72, i8* %p.1.2, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %p.1.3 = phi i8* [ %incdec.ptr.3, %if.then.3 ], [ %p.1.2, %for.inc.2 ]
  store i8 0, i8* %p.1.3, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i8* noundef nonnull %0) #34
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %0) #30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @build_all_zonelists(%struct.pglist_data* noundef %pgdat) local_unnamed_addr #1 section ".ref.text" {
entry:
  %0 = load i32, i32* @system_state, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @build_all_zonelists_init() #35
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = bitcast %struct.pglist_data* %pgdat to i8*
  call fastcc void @__build_all_zonelists(i8* noundef %1) #29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call fastcc i32 @gfp_zone(i32 noundef 17829066) #29, !range !32
  %call1 = call fastcc i64 @nr_free_zone_pages(i32 noundef %call) #29
  %cmp2 = icmp ult i64 %call1, 4096
  %. = select i1 %cmp2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)
  %.9 = zext i1 %cmp2 to i32
  store i32 %.9, i32* @page_group_by_mobility_disabled, align 4
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.19, i64 0, i64 0), i32 noundef 1, i8* noundef %., i64 noundef %call1) #34
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @build_all_zonelists_init() unnamed_addr #0 section ".init.text" {
entry:
  call fastcc void @__build_all_zonelists(i8* noundef null) #29
  %call20 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #32
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp21 = icmp ult i32 %call20, %0
  br i1 %cmp21, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call22 = phi i32 [ %call, %do.body ], [ %call20, %entry ]
  %idxprom = sext i32 %call22 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.per_cpu_pages* @boot_pageset to i64)
  %2 = inttoptr i64 %add to %struct.per_cpu_pages*
  %add11 = add i64 %1, ptrtoint (%struct.per_cpu_zonestat* @boot_zonestats to i64)
  %3 = inttoptr i64 %add11 to %struct.per_cpu_zonestat*
  call fastcc void @per_cpu_pages_init(%struct.per_cpu_pages* noundef %2, %struct.per_cpu_zonestat* noundef %3) #29
  %call = call i32 @cpumask_next(i32 noundef %call22, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #32
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  call void @mminit_verify_zonelist() #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__build_all_zonelists(i8* noundef %data) unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @__build_all_zonelists.lock, i64 0, i32 0, i32 0)) #28
  %tobool.not = icmp eq i8* %data, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %data to %struct.pglist_data*
  %node_id = getelementptr inbounds i8, i8* %data, i64 4976
  %1 = bitcast i8* %node_id to i32*
  %2 = load i32, i32* %1, align 16
  %call = call fastcc i32 @node_state(i32 noundef %2) #29
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %contig_page_data.sink = phi %struct.pglist_data* [ @contig_page_data, %if.else ], [ %0, %land.lhs.true ]
  call fastcc void @build_zonelists(%struct.pglist_data* noundef nonnull %contig_page_data.sink) #29
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @__build_all_zonelists.lock, i64 0, i32 0, i32 0)) #28
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @memmap_init_range(i64 noundef %size, i32 noundef %nid, i64 noundef %zone, i64 noundef %start_pfn, i64 %zone_end_pfn, i32 noundef %context, %struct.vmem_altmap* nocapture readnone %altmap, i32 noundef %migratetype) local_unnamed_addr #0 section ".meminit.text" {
entry:
  %pfn = alloca i64, align 8
  %0 = bitcast i64* %pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  %add = add i64 %start_pfn, %size
  %1 = load i64, i64* @highest_memmap_pfn, align 8
  %sub = add i64 %add, -1
  %cmp = icmp ult i64 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %sub, i64* @highest_memmap_pfn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 %start_pfn, i64* %pfn, align 8
  %cmp229 = icmp ugt i64 %add, %start_pfn
  br i1 %cmp229, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %cmp3 = icmp eq i32 %context, 0
  %cmp12 = icmp eq i32 %context, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %2 = phi i64 [ %start_pfn, %for.body.lr.ph ], [ %6, %for.cond.backedge ]
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %for.body
  %call = call fastcc i1 @overlap_memmap_init(i64 noundef %zone, i64* noundef nonnull %pfn) #35
  %.pre30 = load i64, i64* %pfn, align 8
  br i1 %call, label %for.cond.backedge, label %if.end10

if.end10:                                         ; preds = %if.then4, %for.body
  %3 = phi i64 [ %2, %for.body ], [ %.pre30, %if.then4 ]
  %4 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %4, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr11 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %3
  call fastcc void @__init_single_page(%struct.page* noundef %add.ptr11, i64 noundef %zone, i32 noundef %nid) #35
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr11, i64 0, i32 0
  %5 = load i64, i64* %flags.i, align 64
  %or.i.i = or i64 %5, 4096
  store i64 %or.i.i, i64* %flags.i, align 64
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %and = and i64 %3, 1023
  %cmp15 = icmp eq i64 %and, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @set_pageblock_migratetype(%struct.page* noundef %add.ptr11, i32 noundef %migratetype) #29
  call fastcc void @_cond_resched() #29
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %inc = add i64 %3, 1
  store i64 %inc, i64* %pfn, align 8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then4, %if.end18
  %6 = phi i64 [ %inc, %if.end18 ], [ %.pre30, %if.then4 ]
  %cmp2 = icmp ult i64 %6, %add
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.cond.backedge, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret void
}

; Function Attrs: cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize
define internal fastcc i1 @overlap_memmap_init(i64 noundef %zone, i64* nocapture noundef %pfn) unnamed_addr #15 section ".meminit.text" {
entry:
  %.b21 = load i1, i1* @mirrored_kernelcore, align 1
  %cmp = icmp eq i64 %zone, 3
  %or.cond = and i1 %cmp, %.b21
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = load %struct.memblock_region*, %struct.memblock_region** @overlap_memmap_init.r, align 8
  %tobool1.not = icmp eq %struct.memblock_region* %0, null
  br i1 %tobool1.not, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %1 = load i64, i64* %pfn, align 8
  %call = call fastcc i64 @memblock_region_memory_end_pfn(%struct.memblock_region* noundef nonnull %0) #29
  %cmp2.not = icmp ult i64 %1, %call
  br i1 %cmp2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %2 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %3
  %cmp422 = icmp ult %struct.memblock_region* %2, %add.ptr
  %4 = load i64, i64* %pfn, align 8
  br i1 %cmp422, label %for.body, label %if.end8.loopexit

for.body:                                         ; preds = %if.then3, %for.inc
  %storemerge23 = phi %struct.memblock_region* [ %incdec.ptr, %for.inc ], [ %2, %if.then3 ]
  %call5 = call fastcc i64 @memblock_region_memory_end_pfn(%struct.memblock_region* noundef %storemerge23) #29
  %cmp6 = icmp ult i64 %4, %call5
  br i1 %cmp6, label %if.end8.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %storemerge23, i64 1
  %cmp4 = icmp ult %struct.memblock_region* %incdec.ptr, %add.ptr
  br i1 %cmp4, label %for.body, label %if.end8.loopexit

if.end8.loopexit:                                 ; preds = %for.inc, %for.body, %if.then3
  %storemerge.lcssa = phi %struct.memblock_region* [ %2, %if.then3 ], [ %storemerge23, %for.body ], [ %incdec.ptr, %for.inc ]
  store %struct.memblock_region* %storemerge.lcssa, %struct.memblock_region** @overlap_memmap_init.r, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end8.loopexit, %lor.lhs.false
  %5 = phi %struct.memblock_region* [ %storemerge.lcssa, %if.end8.loopexit ], [ %0, %lor.lhs.false ]
  %6 = phi i64 [ %4, %if.end8.loopexit ], [ %1, %lor.lhs.false ]
  %call9 = call fastcc i64 @memblock_region_memory_base_pfn(%struct.memblock_region* noundef %5) #29
  %cmp10.not = icmp ult i64 %6, %call9
  br i1 %cmp10.not, label %return, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8
  %call12 = call fastcc i1 @memblock_is_mirror(%struct.memblock_region* noundef %5) #29
  br i1 %call12, label %if.then13, label %return

if.then13:                                        ; preds = %land.lhs.true11
  %call14 = call fastcc i64 @memblock_region_memory_end_pfn(%struct.memblock_region* noundef %5) #29
  store i64 %call14, i64* %pfn, align 8
  br label %return

return:                                           ; preds = %entry, %land.lhs.true11, %if.end8, %if.then13
  %retval.0 = phi i1 [ true, %if.then13 ], [ false, %if.end8 ], [ false, %land.lhs.true11 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: cold nofree noinline norecurse nounwind null_pointer_is_valid optsize
define internal fastcc void @__init_single_page(%struct.page* noundef %page, i64 noundef %zone, i32 noundef %nid) unnamed_addr #16 section ".meminit.text" {
entry:
  call fastcc void @__mm_zero_struct_page(%struct.page* noundef %page) #29
  %conv = trunc i64 %zone to i32
  call fastcc void @set_page_links(%struct.page* noundef %page, i32 noundef %conv) #29
  call fastcc void @init_page_count(%struct.page* noundef %page) #29
  call fastcc void @page_mapcount_reset(%struct.page* noundef %page) #29
  %lru = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %lru) #29
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @memmap_alloc(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i32 noundef %nid, i1 noundef %exact_nid) local_unnamed_addr #0 section ".init.text" {
entry:
  br i1 %exact_nid, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @memblock_alloc_exact_nid_raw(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i64 noundef 0, i32 noundef %nid) #28
  br label %if.end4

if.else:                                          ; preds = %entry
  %call1 = call i8* @memblock_alloc_try_nid_raw(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i64 noundef 0, i32 noundef %nid) #28
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else
  %ptr.0 = phi i8* [ %call, %if.then ], [ %call1, %if.else ]
  ret i8* %ptr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_exact_nid_raw(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid_raw(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @setup_zone_pageset(%struct.zone* noundef %zone) local_unnamed_addr #0 section ".meminit.text" {
entry:
  %call = call i8* @__alloc_percpu(i64 noundef 11, i64 noundef 1) #28
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  %0 = bitcast %struct.per_cpu_zonestat** %per_cpu_zonestats to i8**
  store i8* %call, i8** %0, align 8
  %call1 = call i8* @__alloc_percpu(i64 noundef 208, i64 noundef 8) #28
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 5
  %1 = bitcast %struct.per_cpu_pages** %per_cpu_pageset to i8**
  store i8* %call1, i8** %1, align 16
  %call230 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #32
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp31 = icmp ult i32 %call230, %2
  br i1 %cmp31, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %3 = ptrtoint i8* %call1 to i64
  %idxprom33 = sext i32 %call230 to i64
  %arrayidx34 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom33
  %4 = load i64, i64* %arrayidx34, align 8
  %add35 = add i64 %4, %3
  %5 = inttoptr i64 %add35 to %struct.per_cpu_pages*
  %6 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %7 = ptrtoint %struct.per_cpu_zonestat* %6 to i64
  %add1536 = add i64 %4, %7
  %8 = inttoptr i64 %add1536 to %struct.per_cpu_zonestat*
  call fastcc void @per_cpu_pages_init(%struct.per_cpu_pages* noundef %5, %struct.per_cpu_zonestat* noundef %8) #29
  %call237 = call i32 @cpumask_next(i32 noundef %call230, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #32
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp38 = icmp ult i32 %call237, %9
  br i1 %cmp38, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %call239 = phi i32 [ %call2, %for.body.for.body_crit_edge ], [ %call237, %for.body.preheader ]
  %.pre = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %10 = ptrtoint %struct.per_cpu_pages* %.pre to i64
  %idxprom = sext i32 %call239 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %11 = load i64, i64* %arrayidx, align 8
  %add = add i64 %11, %10
  %12 = inttoptr i64 %add to %struct.per_cpu_pages*
  %13 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %14 = ptrtoint %struct.per_cpu_zonestat* %13 to i64
  %add15 = add i64 %11, %14
  %15 = inttoptr i64 %add15 to %struct.per_cpu_zonestat*
  call fastcc void @per_cpu_pages_init(%struct.per_cpu_pages* noundef %12, %struct.per_cpu_zonestat* noundef %15) #29
  %call2 = call i32 @cpumask_next(i32 noundef %call239, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #32
  %16 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %entry
  call fastcc void @zone_set_pageset_high_and_batch(%struct.zone* noundef %zone, i32 noundef 0) #29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @per_cpu_pages_init(%struct.per_cpu_pages* noundef %pcp, %struct.per_cpu_zonestat* noundef %pzstats) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.per_cpu_pages* %pcp to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 208) #28
  %1 = getelementptr %struct.per_cpu_zonestat, %struct.per_cpu_zonestat* %pzstats, i64 0, i32 0, i64 0
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 11) #28
  %arrayidx = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx) #29
  %arrayidx.1 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.1) #29
  %arrayidx.2 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.2) #29
  %arrayidx.3 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.3) #29
  %arrayidx.4 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.4) #29
  %arrayidx.5 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 5
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.5) #29
  %arrayidx.6 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 6
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.6) #29
  %arrayidx.7 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 7
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.7) #29
  %arrayidx.8 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.8) #29
  %arrayidx.9 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 9
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.9) #29
  %arrayidx.10 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.10) #29
  %arrayidx.11 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 11
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx.11) #29
  %high = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 1
  store i32 0, i32* %high, align 4
  %batch = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 2
  store i32 1, i32* %batch, align 8
  %free_factor = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 3
  store i16 0, i16* %free_factor, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zone_set_pageset_high_and_batch(%struct.zone* noundef %zone, i32 noundef %cpu_online) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @zone_batchsize(%struct.zone* noundef %zone) #29
  %0 = icmp sgt i32 %call, 1
  %cond = select i1 %0, i32 %call, i32 1
  %call1 = call fastcc i32 @zone_highsize(%struct.zone* noundef %zone, i32 noundef %cond, i32 noundef %cpu_online) #29
  %pageset_high = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 7
  %1 = load i32, i32* %pageset_high, align 32
  %cmp2 = icmp eq i32 %1, %call1
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %pageset_batch = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 8
  %2 = load i32, i32* %pageset_batch, align 4
  %cmp3 = icmp eq i32 %2, %cond
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 %call1, i32* %pageset_high, align 32
  %pageset_batch5 = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 8
  store i32 %cond, i32* %pageset_batch5, align 4
  %conv = sext i32 %call1 to i64
  %conv6 = zext i32 %cond to i64
  call fastcc void @__zone_set_pageset_high_and_batch(%struct.zone* noundef %zone, i64 noundef %conv, i64 noundef %conv6) #29
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @setup_per_cpu_pageset() local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not19 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not19, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %zone.020 = phi %struct.zone* [ %call2, %for.inc ], [ %arraydecay, %for.body.preheader ]
  %call1 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.020) #29
  br i1 %call1, label %if.else, label %for.inc

if.else:                                          ; preds = %for.body
  call void @setup_zone_pageset(%struct.zone* noundef nonnull %zone.020) #35
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body
  %call2 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.020) #28
  %tobool.not = icmp eq %struct.zone* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %call3 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool5.not22 = icmp eq %struct.pglist_data* %call3, null
  br i1 %tobool5.not22, label %for.end10, label %for.body6

for.body6:                                        ; preds = %for.end, %for.body6
  %pgdat.023 = phi %struct.pglist_data* [ %call9, %for.body6 ], [ %call3, %for.end ]
  %call7 = call i8* @__alloc_percpu(i64 noundef 39, i64 noundef 1) #28
  %per_cpu_nodestats = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat.023, i64 0, i32 20
  %0 = bitcast %struct.per_cpu_nodestat** %per_cpu_nodestats to i8**
  store i8* %call7, i8** %0, align 64
  %call9 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.023) #28
  %tobool5.not = icmp eq %struct.pglist_data* %call9, null
  br i1 %tobool5.not, label %for.end10, label %for.body6

for.end10:                                        ; preds = %for.body6, %for.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_currently_empty_zone(%struct.zone* noundef %zone, i64 noundef %zone_start_pfn, i64 noundef %size) local_unnamed_addr #0 section ".meminit.text" {
entry:
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  %0 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.zone* %zone to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.pglist_data* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1216
  %1 = trunc i64 %sub.ptr.div to i32
  %conv = add i32 %1, 1
  %nr_zones = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %0, i64 0, i32 2
  %2 = load i32, i32* %nr_zones, align 16
  %cmp = icmp sgt i32 %conv, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %conv, i32* %nr_zones, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %zone_start_pfn4 = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 9
  store i64 %zone_start_pfn, i64* %zone_start_pfn4, align 8
  %3 = load i32, i32* @mminit_loglevel, align 4
  %cmp5 = icmp sgt i32 %3, 2
  br i1 %cmp5, label %do.end, label %do.end19

do.end:                                           ; preds = %if.end
  %node_id = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %0, i64 0, i32 6
  %4 = load i32, i32* %node_id, align 16
  %5 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.rhs.cast13 = ptrtoint %struct.pglist_data* %5 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast13
  %sub.ptr.div15 = sdiv exact i64 %sub.ptr.sub14, 1216
  %add16 = add i64 %size, %zone_start_pfn
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.22, i64 0, i64 0), i32 noundef %4, i64 noundef %sub.ptr.div15, i64 noundef %zone_start_pfn, i64 noundef %add16) #34
  br label %do.end19

do.end19:                                         ; preds = %do.end, %if.end
  call fastcc void @zone_init_free_lists(%struct.zone* noundef %zone) #35
  %initialized = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 14
  store i32 1, i32* %initialized, align 16
  ret void
}

; Function Attrs: cold nofree noinline norecurse nounwind null_pointer_is_valid optsize
define internal fastcc void @zone_init_free_lists(%struct.zone* noundef %zone) unnamed_addr #16 section ".meminit.text" {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc9
  %indvars.iv23 = phi i64 [ 0, %entry ], [ %indvars.iv.next24, %for.inc9 ]
  %nr_free = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv23, i32 1
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv23, i32 0, i64 %indvars.iv
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx5) #29
  store i64 0, i64* %nr_free, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.inc9, label %for.body3

for.inc9:                                         ; preds = %for.body3
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 11
  br i1 %exitcond26.not, label %for.end11, label %for.cond1.preheader

for.end11:                                        ; preds = %for.inc9
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @get_pfn_range_for_nid(i32 noundef %nid, i64* nocapture noundef %start_pfn, i64* nocapture noundef %end_pfn) local_unnamed_addr #0 section ".init.text" {
entry:
  %this_start_pfn = alloca i64, align 8
  %this_end_pfn = alloca i64, align 8
  %i = alloca i32, align 4
  %0 = bitcast i64* %this_start_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i64 0, i64* %this_start_pfn, align 8, !annotation !21
  %1 = bitcast i64* %this_end_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #30
  store i64 0, i64* %this_end_pfn, align 8, !annotation !21
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #30
  store i64 -1, i64* %start_pfn, align 8
  store i64 0, i64* %end_pfn, align 8
  store i32 -1, i32* %i, align 4
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef %nid, i64* noundef nonnull %this_start_pfn, i64* noundef nonnull %this_end_pfn, i32* noundef null) #28
  %3 = load i32, i32* %i, align 4
  %cmp24 = icmp sgt i32 %3, -1
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %4 = load i64, i64* %start_pfn, align 8
  %5 = load i64, i64* %this_start_pfn, align 8
  %cmp1 = icmp ult i64 %4, %5
  %cond = select i1 %cmp1, i64 %4, i64 %5
  store i64 %cond, i64* %start_pfn, align 8
  %6 = load i64, i64* %end_pfn, align 8
  %7 = load i64, i64* %this_end_pfn, align 8
  %cmp3 = icmp ugt i64 %6, %7
  %cond7 = select i1 %cmp3, i64 %6, i64 %7
  store i64 %cond7, i64* %end_pfn, align 8
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef %nid, i64* noundef nonnull %this_start_pfn, i64* noundef nonnull %this_end_pfn, i32* noundef null) #28
  %8 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %9 = load i64, i64* %start_pfn, align 8
  %cmp8 = icmp eq i64 %9, -1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i64 0, i64* %start_pfn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_pfn_range(i32* noundef, i32 noundef, i64* noundef, i64* noundef, i32* noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @__absent_pages_in_range(i32 noundef %nid, i64 noundef %range_start_pfn, i64 noundef %range_end_pfn) local_unnamed_addr #0 section ".init.text" {
entry:
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %i = alloca i32, align 4
  %sub = sub i64 %range_end_pfn, %range_start_pfn
  %0 = bitcast i64* %start_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i64 0, i64* %start_pfn, align 8, !annotation !21
  %1 = bitcast i64* %end_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #30
  store i64 0, i64* %end_pfn, align 8, !annotation !21
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #30
  store i32 -1, i32* %i, align 4
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef %nid, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef null) #28
  %3 = load i32, i32* %i, align 4
  %cmp45 = icmp sgt i32 %3, -1
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %nr_absent.046 = phi i64 [ %sub21, %for.body ], [ %sub, %entry ]
  %4 = load i64, i64* %start_pfn, align 8
  %cmp1 = icmp ugt i64 %4, %range_start_pfn
  %cond = select i1 %cmp1, i64 %4, i64 %range_start_pfn
  %cmp3 = icmp ult i64 %cond, %range_end_pfn
  %cond7 = select i1 %cmp3, i64 %cond, i64 %range_end_pfn
  store i64 %cond7, i64* %start_pfn, align 8
  %5 = load i64, i64* %end_pfn, align 8
  %cmp9 = icmp ugt i64 %5, %range_start_pfn
  %cond13 = select i1 %cmp9, i64 %5, i64 %range_start_pfn
  %cmp15 = icmp ult i64 %cond13, %range_end_pfn
  %cond19 = select i1 %cmp15, i64 %cond13, i64 %range_end_pfn
  store i64 %cond19, i64* %end_pfn, align 8
  %sub20.neg = add i64 %cond7, %nr_absent.046
  %sub21 = sub i64 %sub20.neg, %cond19
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef %nid, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef null) #28
  %6 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %6, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %nr_absent.0.lcssa = phi i64 [ %sub, %entry ], [ %sub21, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret i64 %nr_absent.0.lcssa
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @absent_pages_in_range(i64 noundef %start_pfn, i64 noundef %end_pfn) local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call i64 @__absent_pages_in_range(i32 noundef 1, i64 noundef %start_pfn, i64 noundef %end_pfn) #35
  ret i64 %call
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define dso_local void @set_pageblock_order() local_unnamed_addr #17 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @free_area_init_memoryless_node(i32 noundef %nid) local_unnamed_addr #0 section ".init.text" {
entry:
  call fastcc void @free_area_init_node(i32 noundef %nid) #35
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @free_area_init_node(i32 noundef %nid) unnamed_addr #0 section ".init.text" {
entry:
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %0 = bitcast i64* %start_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i64 0, i64* %start_pfn, align 8
  %1 = bitcast i64* %end_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #30
  store i64 0, i64* %end_pfn, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 2), align 16
  %tobool.not = icmp ne i32 %2, 0
  %3 = load i32, i32* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 11), align 4
  %tobool1 = icmp ne i32 %3, 0
  %4 = select i1 %tobool.not, i1 true, i1 %tobool1
  br i1 %4, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 7577; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @get_pfn_range_for_nid(i32 noundef %nid, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn) #35
  store i32 %nid, i32* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 6), align 16
  %5 = load i64, i64* %start_pfn, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 3), align 8
  store %struct.per_cpu_nodestat* null, %struct.per_cpu_nodestat** getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 20), align 64
  %shl = shl i64 %5, 12
  %6 = load i64, i64* %end_pfn, align 8
  %tobool17.not = icmp eq i64 %6, 0
  %shl18 = shl i64 %6, 12
  %sub = add i64 %shl18, -1
  %cond = select i1 %tobool17.not, i64 0, i64 %sub
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.51, i64 0, i64 0), i32 noundef %nid, i64 noundef %shl, i64 noundef %cond) #34
  call fastcc void @calculate_node_totalpages(i64 noundef %5, i64 noundef %6) #35
  call fastcc void @free_area_init_core() #35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @node_map_pfn_alignment() local_unnamed_addr #0 section ".init.text" {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i32, align 4
  %nid = alloca i32, align 4
  %0 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i64 0, i64* %start, align 8, !annotation !21
  %1 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #30
  store i64 0, i64* %end, align 8, !annotation !21
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #30
  %3 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #30
  store i32 0, i32* %nid, align 4, !annotation !21
  store i32 -1, i32* %i, align 4
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 1, i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef nonnull %nid) #28
  %4 = load i32, i32* %i, align 4
  %cmp20 = icmp sgt i32 %4, -1
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %last_nid.023 = phi i32 [ %last_nid.1, %for.inc ], [ -1, %entry ]
  %last_end.022 = phi i64 [ %last_end.1, %for.inc ], [ 0, %entry ]
  %accl_mask.021 = phi i64 [ %accl_mask.1, %for.inc ], [ 0, %entry ]
  %5 = load i64, i64* %start, align 8
  %tobool = icmp eq i64 %5, 0
  %cmp1 = icmp slt i32 %last_nid.023, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp1
  %6 = load i32, i32* %nid, align 4
  %cmp3 = icmp eq i32 %last_nid.023, %6
  %or.cond19 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i64, i64* %end, align 8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = call i64 @llvm.cttz.i64(i64 %5, i1 false) #30, !range !29
  %sh_prom = trunc i64 %8 to i32
  %notmask = shl nsw i32 -1, %sh_prom
  %conv = sext i32 %notmask to i64
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end
  %mask.0 = phi i64 [ %conv, %if.end ], [ %shl5, %land.rhs ]
  %tobool4.not = icmp eq i64 %mask.0, 0
  br i1 %tobool4.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %shl5 = shl i64 %mask.0, 1
  %and = and i64 %shl5, %5
  %cmp6.not = icmp ugt i64 %last_end.022, %and
  br i1 %cmp6.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs
  %or = or i64 %mask.0, %accl_mask.021
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then
  %accl_mask.1 = phi i64 [ %accl_mask.021, %if.then ], [ %or, %while.end ]
  %last_end.1 = phi i64 [ %7, %if.then ], [ %last_end.022, %while.end ]
  %last_nid.1 = phi i32 [ %6, %if.then ], [ %last_nid.023, %while.end ]
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 1, i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef nonnull %nid) #28
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %accl_mask.0.lcssa = phi i64 [ 0, %entry ], [ %accl_mask.1, %for.inc ]
  %add = sub i64 0, %accl_mask.0.lcssa
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret i64 %add
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @find_min_pfn_with_active_regions() local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call i64 @memblock_start_of_DRAM() #28
  %shr = lshr i64 %call, 12
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memblock_start_of_DRAM() local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i1 @arch_has_descending_max_zone_pfns() local_unnamed_addr #1 {
entry:
  ret i1 false
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @free_area_init(i64* nocapture noundef readonly %max_zone_pfn) local_unnamed_addr #0 section ".init.text" {
entry:
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %i = alloca i32, align 4
  %nid = alloca i32, align 4
  %0 = bitcast i64* %start_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  %1 = bitcast i64* %end_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #30
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #30
  store i32 0, i32* %i, align 4, !annotation !21
  %3 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #30
  store i32 0, i32* %nid, align 4, !annotation !21
  %call = call i8* @memset(i8* noundef bitcast ([4 x i64]* @arch_zone_lowest_possible_pfn to i8*), i32 noundef 0, i64 noundef 32) #28
  %call1 = call i8* @memset(i8* noundef bitcast ([4 x i64]* @arch_zone_highest_possible_pfn to i8*), i32 noundef 0, i64 noundef 32) #28
  %call2 = call i64 @find_min_pfn_with_active_regions() #35
  %call3 = call i1 @arch_has_descending_max_zone_pfns() #29
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %storemerge133 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cond128132 = phi i64 [ %call2, %entry ], [ %cond127, %for.inc ]
  %cond130131 = phi i64 [ 0, %entry ], [ %cond129, %for.inc ]
  %sub4 = sub nuw nsw i32 3, %storemerge133
  %zone.0 = select i1 %call3, i32 %sub4, i32 %storemerge133
  %cmp5 = icmp eq i32 %zone.0, 3
  br i1 %cmp5, label %for.inc, label %if.end7

if.end7:                                          ; preds = %for.body
  %idxprom = sext i32 %zone.0 to i64
  %arrayidx = getelementptr i64, i64* %max_zone_pfn, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %cmp8 = icmp ugt i64 %4, %cond128132
  %cond = select i1 %cmp8, i64 %4, i64 %cond128132
  %arrayidx10 = getelementptr [4 x i64], [4 x i64]* @arch_zone_lowest_possible_pfn, i64 0, i64 %idxprom
  store i64 %cond128132, i64* %arrayidx10, align 8
  %arrayidx12 = getelementptr [4 x i64], [4 x i64]* @arch_zone_highest_possible_pfn, i64 0, i64 %idxprom
  store i64 %cond, i64* %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end7
  %cond129 = phi i64 [ %cond130131, %for.body ], [ %cond, %if.end7 ]
  %cond127 = phi i64 [ %cond128132, %for.body ], [ %cond, %if.end7 ]
  %inc = add nuw nsw i32 %storemerge133, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  store i64 %cond127, i64* %start_pfn, align 8
  store i64 %cond129, i64* %end_pfn, align 8
  %call13 = call i8* @memset(i8* noundef bitcast ([1 x i64]* @zone_movable_pfn to i8*), i32 noundef 0, i64 noundef 8) #28
  call fastcc void @find_zone_movable_pfns_for_nodes() #35
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0)) #34
  br label %do.end24

do.end24:                                         ; preds = %for.end, %for.inc53
  %5 = phi i32 [ 0, %for.end ], [ %inc54, %for.inc53 ]
  %idxprom26 = zext i32 %5 to i64
  %arrayidx27 = getelementptr [4 x i8*], [4 x i8*]* @zone_names, i64 0, i64 %idxprom26
  %6 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* noundef %6) #34
  %arrayidx30 = getelementptr [4 x i64], [4 x i64]* @arch_zone_lowest_possible_pfn, i64 0, i64 %idxprom26
  %7 = load i64, i64* %arrayidx30, align 8
  %arrayidx32 = getelementptr [4 x i64], [4 x i64]* @arch_zone_highest_possible_pfn, i64 0, i64 %idxprom26
  %8 = load i64, i64* %arrayidx32, align 8
  %cmp33 = icmp eq i64 %7, %8
  br i1 %cmp33, label %do.end37, label %do.end43

do.end37:                                         ; preds = %do.end24
  %call39 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)) #34
  br label %for.inc53

do.end43:                                         ; preds = %do.end24
  %shl = shl i64 %7, 12
  %shl49 = shl i64 %8, 12
  %sub50 = add i64 %shl49, -1
  %call51 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i64 noundef %shl, i64 noundef %sub50) #34
  br label %for.inc53

for.inc53:                                        ; preds = %do.end37, %do.end43
  %inc54 = add nuw nsw i32 %5, 1
  store i32 %inc54, i32* %i, align 4
  %cmp19 = icmp eq i32 %inc54, 3
  br i1 %cmp19, label %for.body63, label %do.end24

for.body63:                                       ; preds = %for.inc53
  %call60 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0)) #34
  %9 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 0), align 8
  %tobool66.not = icmp eq i64 %9, 0
  br i1 %tobool66.not, label %do.end82, label %do.end70

do.end70:                                         ; preds = %for.body63
  %shl74 = shl i64 %9, 12
  %call75 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 noundef 0, i64 noundef %shl74) #34
  br label %do.end82

do.end82:                                         ; preds = %do.end70, %for.body63
  %call84 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0)) #34
  store i32 -1, i32* %i, align 4
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 1, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef nonnull %nid) #28
  %10 = load i32, i32* %i, align 4
  %cmp86136 = icmp sgt i32 %10, -1
  br i1 %cmp86136, label %do.end90, label %for.end98

do.end90:                                         ; preds = %do.end82, %do.end90
  %11 = load i32, i32* %nid, align 4
  %12 = load i64, i64* %start_pfn, align 8
  %shl92 = shl i64 %12, 12
  %13 = load i64, i64* %end_pfn, align 8
  %shl93 = shl i64 %13, 12
  %sub94 = add i64 %shl93, -1
  %call95 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i64 0, i64 0), i32 noundef %11, i64 noundef %shl92, i64 noundef %sub94) #34
  %14 = load i64, i64* %start_pfn, align 8
  %15 = load i64, i64* %end_pfn, align 8
  %sub96 = sub i64 %15, %14
  call void @subsection_map_init(i64 noundef %14, i64 noundef %sub96) #28
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 1, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef nonnull %nid) #28
  %16 = load i32, i32* %i, align 4
  %cmp86 = icmp sgt i32 %16, -1
  br i1 %cmp86, label %do.end90, label %for.end98

for.end98:                                        ; preds = %do.end90, %do.end82
  call void @mminit_verify_pageflags_layout() #28
  store i32 0, i32* %nid, align 4
  call fastcc void @free_area_init_node(i32 noundef 0) #35
  call fastcc void @check_for_memory() #29
  store i32 1, i32* %nid, align 4
  call fastcc void @memmap_init() #35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @find_zone_movable_pfns_for_nodes() unnamed_addr #0 section ".init.text" {
entry:
  %i = alloca i32, align 4
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #30
  %saved_node_state.sroa.0.0.copyload = load i64, i64* getelementptr inbounds ([6 x %struct.nodemask_t], [6 x %struct.nodemask_t]* @node_states, i64 0, i64 3, i32 0, i64 0), align 8
  %call = call fastcc i64 @early_calculate_totalpages() #35
  %call1 = call fastcc i32 @__nodes_weight() #29
  call fastcc void @find_usable_zone_for_movable() #35
  %.b327 = load i1, i1* @mirrored_kernelcore, align 1
  br i1 %.b327, label %if.then17, label %if.end55

if.then17:                                        ; preds = %entry
  %1 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr19 = getelementptr %struct.memblock_region, %struct.memblock_region* %1, i64 %2
  %cmp20341 = icmp ult %struct.memblock_region* %1, %add.ptr19
  br i1 %cmp20341, label %for.body21.outer, label %out2

for.body21.outer:                                 ; preds = %if.then17, %for.inc47.thread
  %r.1343.ph = phi %struct.memblock_region* [ %incdec.ptr48346, %for.inc47.thread ], [ %1, %if.then17 ]
  %mem_below_4gb_not_mirrored.0.off0342.ph = phi i1 [ true, %for.inc47.thread ], [ false, %if.then17 ]
  br label %for.body21

for.body21:                                       ; preds = %for.body21.outer, %for.inc47
  %r.1343 = phi %struct.memblock_region* [ %incdec.ptr48, %for.inc47 ], [ %r.1343.ph, %for.body21.outer ]
  %call22 = call fastcc i1 @memblock_is_mirror(%struct.memblock_region* noundef %r.1343) #29
  br i1 %call22, label %for.inc47, label %if.end24

if.end24:                                         ; preds = %for.body21
  %call26 = call fastcc i64 @memblock_region_memory_base_pfn(%struct.memblock_region* noundef %r.1343) #29
  %cmp27 = icmp ult i64 %call26, 1048576
  br i1 %cmp27, label %for.inc47.thread, label %if.end29

if.end29:                                         ; preds = %if.end24
  %3 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 0), align 8
  %tobool32.not = icmp eq i64 %3, 0
  %cmp37 = icmp ult i64 %call26, %3
  %4 = select i1 %tobool32.not, i1 true, i1 %cmp37
  %cond44 = select i1 %4, i64 %call26, i64 %3
  store i64 %cond44, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 0), align 8
  br label %for.inc47

for.inc47:                                        ; preds = %for.body21, %if.end29
  %incdec.ptr48 = getelementptr %struct.memblock_region, %struct.memblock_region* %r.1343, i64 1
  %cmp20 = icmp ult %struct.memblock_region* %incdec.ptr48, %add.ptr19
  br i1 %cmp20, label %for.body21, label %for.end49

for.inc47.thread:                                 ; preds = %if.end24
  %incdec.ptr48346 = getelementptr %struct.memblock_region, %struct.memblock_region* %r.1343, i64 1
  %cmp20347 = icmp ult %struct.memblock_region* %incdec.ptr48346, %add.ptr19
  br i1 %cmp20347, label %for.body21.outer, label %do.end

for.end49:                                        ; preds = %for.inc47
  br i1 %mem_below_4gb_not_mirrored.0.off0342.ph, label %do.end, label %out2

do.end:                                           ; preds = %for.inc47.thread, %for.end49
  %call53 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.56, i64 0, i64 0)) #34
  br label %out2

if.end55:                                         ; preds = %entry
  %5 = load i64, i64* @required_kernelcore_percent, align 8
  %tobool56.not = icmp eq i64 %5, 0
  br i1 %tobool56.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end55
  %mul = mul i64 %call, 100
  %mul58 = mul i64 %mul, %5
  %div = udiv i64 %mul58, 10000
  store i64 %div, i64* @required_kernelcore, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end55
  %6 = load i64, i64* @required_movablecore_percent, align 8
  %tobool60.not = icmp eq i64 %6, 0
  br i1 %tobool60.not, label %if.end65thread-pre-split, label %if.then61

if.then61:                                        ; preds = %if.end59
  %mul62 = mul i64 %call, 100
  %mul63 = mul i64 %mul62, %6
  %div64 = udiv i64 %mul63, 10000
  store i64 %div64, i64* @required_movablecore, align 8
  br label %if.end65

if.end65thread-pre-split:                         ; preds = %if.end59
  %.pr = load i64, i64* @required_movablecore, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.end65thread-pre-split, %if.then61
  %7 = phi i64 [ %.pr, %if.end65thread-pre-split ], [ %div64, %if.then61 ]
  %tobool66.not = icmp eq i64 %7, 0
  br i1 %tobool66.not, label %if.end65.if.end88_crit_edge, label %if.then67

if.end65.if.end88_crit_edge:                      ; preds = %if.end65
  %.pre = load i64, i64* @required_kernelcore, align 8
  br label %if.end88

if.then67:                                        ; preds = %if.end65
  %add = add i64 %7, 1023
  %div70 = and i64 %add, -1024
  %cmp74 = icmp ult i64 %call, %div70
  %cond79 = select i1 %cmp74, i64 %call, i64 %div70
  store i64 %cond79, i64* @required_movablecore, align 8
  %sub80 = sub i64 %call, %cond79
  %8 = load i64, i64* @required_kernelcore, align 8
  %cmp82 = icmp ugt i64 %8, %sub80
  %cond87 = select i1 %cmp82, i64 %8, i64 %sub80
  store i64 %cond87, i64* @required_kernelcore, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.end65.if.end88_crit_edge, %if.then67
  %9 = phi i64 [ %.pre, %if.end65.if.end88_crit_edge ], [ %cond87, %if.then67 ]
  %tobool89.not = icmp ne i64 %9, 0
  %cmp90.not = icmp ult i64 %9, %call
  %or.cond = select i1 %tobool89.not, i1 %cmp90.not, i1 false
  br i1 %or.cond, label %if.end93, label %out

if.end93:                                         ; preds = %if.end88
  %10 = load i32, i32* @movable_zone, align 4
  %idxprom94 = sext i32 %10 to i64
  %arrayidx95 = getelementptr [4 x i64], [4 x i64]* @arch_zone_lowest_possible_pfn, i64 0, i64 %idxprom94
  %11 = load i64, i64* %arrayidx95, align 8
  %12 = bitcast i64* %start_pfn to i8*
  %13 = bitcast i64* %end_pfn to i8*
  br label %if.end107

if.end107:                                        ; preds = %if.end93, %land.lhs.true
  %14 = phi i64 [ %9, %if.end93 ], [ %26, %land.lhs.true ]
  %usable_nodes.0 = phi i32 [ %call1, %if.end93 ], [ %dec, %land.lhs.true ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #30
  store i64 0, i64* %start_pfn, align 8, !annotation !21
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #30
  store i64 0, i64* %end_pfn, align 8, !annotation !21
  store i32 -1, i32* %i, align 4
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 0, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef null) #28
  %15 = load i32, i32* %i, align 4
  %cmp109338 = icmp sgt i32 %15, -1
  br i1 %cmp109338, label %for.body111.preheader, label %for.end183

for.body111.preheader:                            ; preds = %if.end107
  %conv96 = sext i32 %usable_nodes.0 to i64
  %div97 = udiv i64 %14, %conv96
  br label %for.body111

for.body111:                                      ; preds = %for.body111.preheader, %for.inc182
  %kernelcore_remaining.0339 = phi i64 [ %kernelcore_remaining.2337, %for.inc182 ], [ %div97, %for.body111.preheader ]
  %16 = load i64, i64* %start_pfn, align 8
  %17 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 0), align 8
  %cmp115 = icmp ugt i64 %16, %17
  %cond120 = select i1 %cmp115, i64 %16, i64 %17
  store i64 %cond120, i64* %start_pfn, align 8
  %18 = load i64, i64* %end_pfn, align 8
  %cmp121.not = icmp ult i64 %cond120, %18
  br i1 %cmp121.not, label %if.end124, label %for.inc182

if.end124:                                        ; preds = %for.body111
  %cmp125 = icmp ult i64 %cond120, %11
  br i1 %cmp125, label %if.then127, label %if.end124.cleanup179_crit_edge

if.end124.cleanup179_crit_edge:                   ; preds = %if.end124
  %.pre344 = load i64, i64* @required_kernelcore, align 8
  br label %cleanup179

if.then127:                                       ; preds = %if.end124
  %cmp129 = icmp ult i64 %18, %11
  %cond134 = select i1 %cmp129, i64 %18, i64 %11
  %sub135 = sub i64 %cond134, %cond120
  %19 = call i64 @llvm.usub.sat.i64(i64 %kernelcore_remaining.0339, i64 %sub135)
  %20 = load i64, i64* @required_kernelcore, align 8
  %21 = call i64 @llvm.usub.sat.i64(i64 %20, i64 %sub135)
  store i64 %21, i64* @required_kernelcore, align 8
  %cmp152.not = icmp ugt i64 %18, %11
  br i1 %cmp152.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then127
  store i64 %11, i64* %start_pfn, align 8
  br label %cleanup179

cleanup:                                          ; preds = %if.then127
  store i64 %18, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 0), align 8
  br label %for.inc182

cleanup179:                                       ; preds = %if.end124.cleanup179_crit_edge, %cleanup.thread
  %22 = phi i64 [ %.pre344, %if.end124.cleanup179_crit_edge ], [ %21, %cleanup.thread ]
  %23 = phi i64 [ %cond120, %if.end124.cleanup179_crit_edge ], [ %11, %cleanup.thread ]
  %kernelcore_remaining.1 = phi i64 [ %kernelcore_remaining.0339, %if.end124.cleanup179_crit_edge ], [ %19, %cleanup.thread ]
  %sub159 = sub i64 %18, %23
  %cmp160 = icmp ugt i64 %sub159, %kernelcore_remaining.1
  %spec.select = select i1 %cmp160, i64 %kernelcore_remaining.1, i64 %sub159
  %add164 = add i64 %spec.select, %23
  store i64 %add164, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 0), align 8
  %24 = call i64 @llvm.usub.sat.i64(i64 %22, i64 %spec.select)
  store i64 %24, i64* @required_kernelcore, align 8
  %sub175 = sub i64 %kernelcore_remaining.1, %spec.select
  %tobool176.not = icmp eq i64 %sub175, 0
  br i1 %tobool176.not, label %for.end183, label %for.inc182

for.inc182:                                       ; preds = %for.body111, %cleanup, %cleanup179
  %kernelcore_remaining.2337 = phi i64 [ %sub175, %cleanup179 ], [ %kernelcore_remaining.0339, %for.body111 ], [ %19, %cleanup ]
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 0, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef null) #28
  %25 = load i32, i32* %i, align 4
  %cmp109 = icmp sgt i32 %25, -1
  br i1 %cmp109, label %for.body111, label %for.end183

for.end183:                                       ; preds = %for.inc182, %cleanup179, %if.end107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #30
  %dec = add i32 %usable_nodes.0, -1
  %tobool186.not = icmp eq i32 %dec, 0
  br i1 %tobool186.not, label %out2, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end183
  %26 = load i64, i64* @required_kernelcore, align 8
  %conv187 = sext i32 %dec to i64
  %cmp188 = icmp ugt i64 %26, %conv187
  br i1 %cmp188, label %if.end107, label %out2

out2:                                             ; preds = %for.end183, %land.lhs.true, %if.then17, %for.end49, %do.end
  %27 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 0), align 8
  %add203 = add i64 %27, 1023
  %div205 = and i64 %add203, -1024
  store i64 %div205, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 0), align 8
  br label %out

out:                                              ; preds = %out2, %if.end88
  store i64 %saved_node_state.sroa.0.0.copyload, i64* getelementptr inbounds ([6 x %struct.nodemask_t], [6 x %struct.nodemask_t]* @node_states, i64 0, i64 3, i32 0, i64 0), align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @subsection_map_init(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mminit_verify_pageflags_layout() local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc void @check_for_memory() unnamed_addr #18 {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @memmap_init() unnamed_addr #0 section ".init.text" {
entry:
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %hole_pfn = alloca i64, align 8
  %i = alloca i32, align 4
  %nid = alloca i32, align 4
  %0 = bitcast i64* %start_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i64 0, i64* %start_pfn, align 8, !annotation !21
  %1 = bitcast i64* %end_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #30
  store i64 0, i64* %end_pfn, align 8, !annotation !21
  %2 = bitcast i64* %hole_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #30
  store i64 0, i64* %hole_pfn, align 8
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #30
  %4 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #30
  store i32 0, i32* %nid, align 4, !annotation !21
  store i32 -1, i32* %i, align 4
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 1, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef nonnull %nid) #28
  %5 = load i32, i32* %i, align 4
  %cmp21 = icmp sgt i32 %5, -1
  br i1 %cmp21, label %for.body3, label %for.end6

for.body3:                                        ; preds = %entry, %for.body3.backedge
  %indvars.iv = phi i64 [ %indvars.iv.be, %for.body3.backedge ], [ 0, %entry ]
  %zone_id.120 = phi i32 [ %zone_id.2, %for.body3.backedge ], [ 0, %entry ]
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %indvars.iv
  %call4 = call fastcc i1 @populated_zone(%struct.zone* noundef %add.ptr) #29
  br i1 %call4, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body3
  %6 = load i64, i64* %start_pfn, align 8
  %7 = load i64, i64* %end_pfn, align 8
  call fastcc void @memmap_init_zone_range(%struct.zone* noundef %add.ptr, i64 noundef %6, i64 noundef %7, i64* noundef nonnull %hole_pfn) #35
  %8 = trunc i64 %indvars.iv to i32
  br label %cleanup

cleanup:                                          ; preds = %for.body3, %if.end
  %zone_id.2 = phi i32 [ %8, %if.end ], [ %zone_id.120, %for.body3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body3.backedge

for.body3.backedge:                               ; preds = %cleanup, %for.end
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %for.end ]
  br label %for.body3

for.end:                                          ; preds = %cleanup
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 1, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef nonnull %nid) #28
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %for.body3.backedge, label %for.end6.loopexit

for.end6.loopexit:                                ; preds = %for.end
  %.pre = load i64, i64* %hole_pfn, align 8
  br label %for.end6

for.end6:                                         ; preds = %for.end6.loopexit, %entry
  %10 = phi i64 [ 0, %entry ], [ %.pre, %for.end6.loopexit ]
  %zone_id.0.lcssa = phi i32 [ 0, %entry ], [ %zone_id.2, %for.end6.loopexit ]
  %11 = load i64, i64* %end_pfn, align 8
  %sub = add i64 %11, -1
  %or = or i64 %sub, 32767
  %add = add i64 %or, 1
  store i64 %add, i64* %end_pfn, align 8
  %cmp7 = icmp ult i64 %10, %add
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end6
  %12 = load i32, i32* %nid, align 4
  call fastcc void @init_unavailable_range(i64 noundef %10, i64 noundef %add, i32 noundef %zone_id.0.lcssa, i32 noundef %12) #35
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.end6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @cmdline_parse_kernelcore(i8* noundef %p) #0 section ".init.text" {
entry:
  %call = call i1 @parse_option_str(i8* noundef %p, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0)) #28
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* @mirrored_kernelcore, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @cmdline_parse_core(i8* noundef %p, i64* noundef nonnull @required_kernelcore, i64* noundef nonnull @required_kernelcore_percent) #35
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @cmdline_parse_movablecore(i8* noundef %p) #0 section ".init.text" {
entry:
  %call = call fastcc i32 @cmdline_parse_core(i8* noundef %p, i64* noundef nonnull @required_movablecore, i64* noundef nonnull @required_movablecore_percent) #35
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @adjust_managed_page_count(%struct.page* nocapture noundef readonly %page, i64 noundef %count) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #29
  %managed_pages = getelementptr inbounds %struct.zone, %struct.zone* %call, i64 0, i32 10
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %count, %struct.atomic64_t* noundef %managed_pages) #28
  call fastcc void @totalram_pages_add(i64 noundef %count) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @totalram_pages_add(i64 noundef %count) unnamed_addr #1 {
entry:
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %count, %struct.atomic64_t* noundef nonnull @_totalram_pages) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @free_reserved_area(i8* noundef %start, i8* noundef %end, i32 noundef %poison, i8* noundef %s) local_unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %start to i64
  %add = add i64 %0, 4095
  %and = and i64 %add, -4096
  %1 = inttoptr i64 %and to i8*
  %2 = ptrtoint i8* %end to i64
  %and1 = and i64 %2, -4096
  %3 = inttoptr i64 %and1 to i8*
  %cmp28 = icmp ult i8* %1, %3
  br i1 %cmp28, label %for.body.lr.ph, label %if.end10

for.body.lr.ph:                                   ; preds = %entry
  %cmp4 = icmp ult i32 %poison, 256
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %pos.030 = phi i8* [ %1, %for.body.lr.ph ], [ %add.ptr, %if.end ]
  %pages.029 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %4 = ptrtoint i8* %pos.030 to i64
  %sub = add i64 %4, 549755813888
  %5 = lshr i64 %sub, 6
  %mul = and i64 %5, 288230376151711680
  %add2 = add nsw i64 %mul, -8589934592
  %6 = inttoptr i64 %add2 to %struct.page*
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %sub.i = shl i64 %add2, 6
  %7 = inttoptr i64 %sub.i to i8*
  %call5 = call i8* @memset(i8* noundef %7, i32 noundef %poison, i64 noundef 4096) #28
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call fastcc void @free_reserved_page(%struct.page* noundef %6) #29
  %add.ptr = getelementptr i8, i8* %pos.030, i64 4096
  %inc = add nuw nsw i64 %pages.029, 1
  %cmp = icmp ult i8* %add.ptr, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end
  %tobool6.not = icmp eq i8* %s, null
  br i1 %tobool6.not, label %if.end10, label %do.end

do.end:                                           ; preds = %for.end
  %shl = shl i64 %inc, 2
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %s, i64 noundef %shl) #34
  br label %if.end10

if.end10:                                         ; preds = %entry, %do.end, %for.end
  %pages.0.lcssa35 = phi i64 [ %inc, %do.end ], [ %inc, %for.end ], [ 0, %entry ]
  ret i64 %pages.0.lcssa35
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_reserved_page(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 12, i64* noundef %flags.i) #28
  call fastcc void @init_page_count(%struct.page* noundef %page) #29
  call void @__free_pages(%struct.page* noundef %page, i32 noundef 0) #29
  call void @adjust_managed_page_count(%struct.page* noundef %page, i64 noundef 1) #29
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @mem_init_print_info() local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i64 @get_num_physpages() #29
  %call41 = call fastcc i64 @global_zone_page_state(i32 noundef 0) #29
  %shl = shl i64 %call41, 2
  %shl42 = shl i64 %call, 2
  %call47 = call fastcc i64 @totalram_pages() #29
  %0 = load i64, i64* @totalcma_pages, align 8
  %1 = add i64 %call47, %0
  %sub49 = sub i64 %call, %1
  %shl50 = shl i64 %sub49, 2
  %shl51 = shl i64 %0, 2
  %call52 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([131 x i8], [131 x i8]* @.str.32, i64 0, i64 0), i64 noundef %shl, i64 noundef %shl42, i64 noundef lshr (i64 select (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_stext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__start_rodata, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__start_rodata, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_etext, i64 0, i64 0))), i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_stext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_etext, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 select (i1 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_stext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_etext, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i1 icmp ugt (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @__end_rodata to i64), i64 ptrtoint ([0 x i8]* @__start_rodata to i64))), i1 icmp ugt (i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64))), i64 sub (i64 ptrtoint ([0 x i8]* @__end_rodata to i64), i64 ptrtoint ([0 x i8]* @__start_rodata to i64)))), i64 sub (i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_stext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_etext, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @__end_rodata to i64), i64 ptrtoint ([0 x i8]* @__start_rodata to i64))), i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_stext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_etext, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))))), i64 10), i64 noundef lshr (i64 select (i1 select (i1 xor (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sdata, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__start_rodata, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__start_rodata, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_edata, i64 0, i64 0))), i1 true), i1 icmp ugt (i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sdata, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_edata, i64 0, i64 0))), i1 xor (i1 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i1 icmp ult (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64))), i1 icmp ult (i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64))), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)))), i1 true)), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)), i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))))), i64 sub (i64 ptrtoint ([0 x i8]* @__end_rodata to i64), i64 ptrtoint ([0 x i8]* @__start_rodata to i64))), i1 false), i64 sub (i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sdata, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_edata, i64 0, i64 0))), i1 xor (i1 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i1 icmp ult (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64))), i1 icmp ult (i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64))), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)))), i1 true)), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)), i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))))), i64 sub (i64 ptrtoint ([0 x i8]* @__end_rodata to i64), i64 ptrtoint ([0 x i8]* @__start_rodata to i64))), i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sdata, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_edata, i64 0, i64 0))), i1 xor (i1 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i1 icmp ult (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64))), i1 icmp ult (i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64))), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)))), i1 true)), i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @_edata to i64), i64 ptrtoint ([0 x i8]* @_sdata to i64)), i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64))))))), i64 10), i64 noundef lshr (i64 sub (i64 ptrtoint ([0 x i8]* @__end_rodata to i64), i64 ptrtoint ([0 x i8]* @__start_rodata to i64)), i64 10), i64 noundef lshr (i64 add (i64 select (i1 or (i1 or (i1 icmp ugt (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0)), i1 icmp uge (i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_sinittext, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0))), i1 icmp ule (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 sub (i64 ptrtoint ([0 x i8]* @__init_end to i64), i64 ptrtoint ([0 x i8]* @__init_begin to i64)), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64)))), i64 sub (i64 ptrtoint ([0 x i8]* @_einittext to i64), i64 ptrtoint ([0 x i8]* @_sinittext to i64))), i64 10), i64 noundef lshr (i64 sub (i64 ptrtoint ([0 x i8]* @__bss_stop to i64), i64 ptrtoint ([0 x i8]* @__bss_start to i64)), i64 10), i64 noundef %shl50, i64 noundef %shl51) #34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @get_num_physpages() unnamed_addr #18 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 4), align 32
  ret i64 %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define dso_local void @set_dma_reserve(i64 noundef %new_dma_reserve) local_unnamed_addr #19 section ".init.text" {
entry:
  store i64 %new_dma_reserve, i64* @dma_reserve, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @page_alloc_init() local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i32 @cpuhp_setup_state_nocalls() #29
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 8274; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state_nocalls() unnamed_addr #1 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 33, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef nonnull @page_alloc_cpu_online, i32 (i32)* noundef nonnull @page_alloc_cpu_dead, i1 noundef false) #28
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @page_alloc_cpu_online(i32 noundef %cpu) #1 {
entry:
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not7 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not7, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %zone.08 = phi %struct.zone* [ %call2, %for.inc ], [ %arraydecay, %for.body.preheader ]
  %call1 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.08) #29
  br i1 %call1, label %if.else, label %for.inc

if.else:                                          ; preds = %for.body
  call void @zone_pcp_update(%struct.zone* noundef nonnull %zone.08, i32 noundef 1) #29
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body
  %call2 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.08) #28
  %tobool.not = icmp eq %struct.zone* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @page_alloc_cpu_dead(i32 noundef %cpu) #1 {
entry:
  call void @lru_add_drain_cpu(i32 noundef %cpu) #28
  call fastcc void @drain_pages(i32 noundef %cpu) #29
  call void @vm_events_fold_cpu(i32 noundef %cpu) #28
  call void @cpu_vm_stats_fold(i32 noundef %cpu) #28
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not10 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not10, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %zone.011 = phi %struct.zone* [ %call2, %for.inc ], [ %arraydecay, %for.body.preheader ]
  %call1 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.011) #29
  br i1 %call1, label %if.else, label %for.inc

if.else:                                          ; preds = %for.body
  call void @zone_pcp_update(%struct.zone* noundef nonnull %zone.011, i32 noundef 0) #29
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body
  %call2 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.011) #28
  %tobool.not = icmp eq %struct.zone* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @setup_per_zone_wmarks() local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @setup_per_zone_wmarks.lock, i64 0, i32 0, i32 0)) #28
  call fastcc void @__setup_per_zone_wmarks() #29
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @setup_per_zone_wmarks.lock, i64 0, i32 0, i32 0)) #28
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not5 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not5, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %zone.06 = phi %struct.zone* [ %call1, %for.body ], [ %arraydecay, %for.body.preheader ]
  call void @zone_pcp_update(%struct.zone* noundef nonnull %zone.06, i32 noundef 0) #29
  %call1 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.06) #28
  %tobool.not = icmp eq %struct.zone* %call1, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__setup_per_zone_wmarks() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @min_free_kbytes, align 4
  %shr = ashr i32 %0, 2
  %conv = sext i32 %shr to i64
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not133 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not133, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %lowmem_pages.0135 = phi i64 [ %add, %for.body ], [ 0, %for.body.preheader ]
  %zone.0134 = phi %struct.zone* [ %call4, %for.body ], [ %arraydecay, %for.body.preheader ]
  %call3 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef nonnull %zone.0134) #29
  %add = add i64 %call3, %lowmem_pages.0135
  %call4 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.0134) #28
  %tobool.not = icmp eq %struct.zone* %call4, null
  br i1 %tobool.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %phi.bo = and i64 %add, 4294967295
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %lowmem_pages.0.lcssa = phi i64 [ 0, %entry ], [ %phi.bo, %for.end.loopexit ]
  %call5 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool9.not136 = icmp eq %struct.pglist_data* %call5, null
  br i1 %tobool9.not136, label %for.end80, label %for.body10.lr.ph

for.body10.lr.ph:                                 ; preds = %for.end
  %arraydecay7 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call5, i64 0, i32 0, i64 0
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %zone.1137 = phi %struct.zone* [ %arraydecay7, %for.body10.lr.ph ], [ %call79, %for.body10 ]
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %zone.1137, i64 0, i32 19, i32 0, i32 0
  %call15 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #29
  %call18 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef nonnull %zone.1137) #29
  %mul = mul i64 %call18, %conv
  %div = udiv i64 %mul, %lowmem_pages.0.lcssa
  %arrayidx40 = getelementptr inbounds %struct.zone, %struct.zone* %zone.1137, i64 0, i32 0, i64 0
  store i64 %div, i64* %arrayidx40, align 64
  %shr42 = lshr i64 %div, 2
  %call43 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef nonnull %zone.1137) #29
  %div44 = udiv i64 %call43, 10000
  %call46 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef nonnull %zone.1137) #29
  %rem47 = urem i64 %call46, 10000
  %1 = load i32, i32* @watermark_scale_factor, align 4
  %conv49 = sext i32 %1 to i64
  %mul50 = mul i64 %div44, %conv49
  %mul52 = mul nsw i64 %rem47, %conv49
  %div53 = udiv i64 %mul52, 10000
  %add54 = add i64 %div53, %mul50
  %cmp56 = icmp ugt i64 %shr42, %add54
  %cond61 = select i1 %cmp56, i64 %shr42, i64 %add54
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.1137, i64 0, i32 1
  store i64 0, i64* %watermark_boost, align 8
  %2 = load i64, i64* %arrayidx40, align 64
  %add66 = add i64 %cond61, %2
  %arrayidx68 = getelementptr %struct.zone, %struct.zone* %zone.1137, i64 0, i32 0, i64 1
  store i64 %add66, i64* %arrayidx68, align 8
  %mul73 = shl i64 %cond61, 1
  %add74 = add i64 %mul73, %2
  %arrayidx76 = getelementptr %struct.zone, %struct.zone* %zone.1137, i64 0, i32 0, i64 2
  store i64 %add74, i64* %arrayidx76, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call15) #28
  %call79 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.1137) #28
  %tobool9.not = icmp eq %struct.zone* %call79, null
  br i1 %tobool9.not, label %for.end80, label %for.body10

for.end80:                                        ; preds = %for.body10, %for.end
  call fastcc void @calculate_totalreserve_pages() #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @zone_pcp_update(%struct.zone* noundef %zone, i32 noundef %cpu_online) local_unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @pcp_batch_high_lock) #28
  call fastcc void @zone_set_pageset_high_and_batch(%struct.zone* noundef %zone, i32 noundef %cpu_online) #29
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pcp_batch_high_lock) #28
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_per_zone_wmark_min() #0 section ".meminit.text" {
entry:
  %call = call i64 @nr_free_buffer_pages() #29
  %mul1 = shl i64 %call, 6
  %call2 = call i64 @int_sqrt(i64 noundef %mul1) #28
  %conv = trunc i64 %call2 to i32
  %0 = load i32, i32* @user_min_free_kbytes, align 4
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %1 = icmp sgt i32 %conv, 128
  %spec.store.select = select i1 %1, i32 %conv, i32 128
  %2 = icmp ult i32 %spec.store.select, 262144
  %spec.store.select13 = select i1 %2, i32 %spec.store.select, i32 262144
  store i32 %spec.store.select13, i32* @min_free_kbytes, align 4
  br label %if.end12

do.end:                                           ; preds = %entry
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv, i32 noundef %0) #34
  br label %if.end12

if.end12:                                         ; preds = %if.then, %do.end
  call void @setup_per_zone_wmarks() #29
  call void @refresh_zone_stat_thresholds() #28
  call fastcc void @setup_per_zone_lowmem_reserve() #29
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @int_sqrt(i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refresh_zone_stat_thresholds() local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setup_per_zone_lowmem_reserve() unnamed_addr #1 {
entry:
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not54 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not54, label %for.end27, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.loopexit.2
  %pgdat.055 = phi %struct.pglist_data* [ %call26, %for.cond1.loopexit.2 ], [ %call, %entry ]
  %0 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 0), align 4
  %tobool5.not = icmp eq i32 %0, 0
  br i1 %tobool5.not, label %for.body10.lr.ph.thread, label %for.body10.lr.ph

for.body10.lr.ph.thread:                          ; preds = %for.cond1.preheader
  %arrayidx13100 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 1
  %call14101 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13100) #29
  br label %if.end

for.cond1.loopexit:                               ; preds = %if.else.280, %if.then.282
  %div.278.sink = phi i64 [ 0, %if.then.282 ], [ %div.278, %if.else.280 ]
  %1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 0, i32 3, i64 3
  store i64 %div.278.sink, i64* %1, align 8
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 1), align 4
  %tobool5.not.1 = icmp eq i32 %2, 0
  br i1 %tobool5.not.1, label %for.body10.lr.ph.1.thread, label %for.body10.lr.ph.1

for.body10.lr.ph.1.thread:                        ; preds = %for.cond1.loopexit
  %arrayidx13.186 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 2
  %call14.187 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.186) #29
  br label %if.then.1.1

for.body10.lr.ph.1:                               ; preds = %for.cond1.loopexit
  %arrayidx.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 1
  %call6.1 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx.1) #29
  %tobool7.not.1 = icmp eq i64 %call6.1, 0
  %conv.1 = sext i32 %2 to i64
  %arrayidx13.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 2
  %call14.1 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.1) #29
  br i1 %tobool7.not.1, label %if.then.1.1, label %if.else.1.1

if.else.1.1:                                      ; preds = %for.body10.lr.ph.1
  %div.1 = udiv i64 %call14.1, %conv.1
  %3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 1, i32 3, i64 2
  store i64 %div.1, i64* %3, align 8
  %arrayidx13.1.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 3
  %call14.1.1 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.1.1) #29
  %add15.1.1 = add i64 %call14.1.1, %call14.1
  %div.1.1 = udiv i64 %add15.1.1, %conv.1
  br label %for.cond1.loopexit.1

if.then.1.1:                                      ; preds = %for.body10.lr.ph.1.thread, %for.body10.lr.ph.1
  %4 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 1, i32 3, i64 2
  store i64 0, i64* %4, align 8
  %arrayidx13.1.195 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 3
  %call14.1.196 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.1.195) #29
  br label %for.cond1.loopexit.1

for.cond1.loopexit.1:                             ; preds = %if.else.1.1, %if.then.1.1
  %div.1.1.sink = phi i64 [ 0, %if.then.1.1 ], [ %div.1.1, %if.else.1.1 ]
  %5 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 1, i32 3, i64 3
  store i64 %div.1.1.sink, i64* %5, align 8
  %6 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 2), align 4
  %tobool5.not.2 = icmp eq i32 %6, 0
  br i1 %tobool5.not.2, label %for.body10.lr.ph.2.thread, label %for.body10.lr.ph.2

for.body10.lr.ph.2.thread:                        ; preds = %for.cond1.loopexit.1
  %arrayidx13.297 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 3
  %call14.298 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.297) #29
  br label %for.cond1.loopexit.2

for.body10.lr.ph.2:                               ; preds = %for.cond1.loopexit.1
  %arrayidx.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 2
  %call6.2 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx.2) #29
  %tobool7.not.2 = icmp eq i64 %call6.2, 0
  %arrayidx13.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 3
  %call14.2 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.2) #29
  br i1 %tobool7.not.2, label %for.cond1.loopexit.2, label %if.else.2

if.else.2:                                        ; preds = %for.body10.lr.ph.2
  %conv.2 = sext i32 %6 to i64
  %div.2 = udiv i64 %call14.2, %conv.2
  br label %for.cond1.loopexit.2

for.cond1.loopexit.2:                             ; preds = %if.else.2, %for.body10.lr.ph.2.thread, %for.body10.lr.ph.2
  %div.2.sink = phi i64 [ %div.2, %if.else.2 ], [ 0, %for.body10.lr.ph.2.thread ], [ 0, %for.body10.lr.ph.2 ]
  %7 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 2, i32 3, i64 3
  store i64 %div.2.sink, i64* %7, align 8
  %call26 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.055) #28
  %tobool.not = icmp eq %struct.pglist_data* %call26, null
  br i1 %tobool.not, label %for.end27, label %for.cond1.preheader

for.body10.lr.ph:                                 ; preds = %for.cond1.preheader
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 0
  %call6 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx) #29
  %tobool7.not = icmp eq i64 %call6, 0
  %conv = sext i32 %0 to i64
  %arrayidx13 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 1
  %call14 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13) #29
  br i1 %tobool7.not, label %if.end, label %if.else

if.else:                                          ; preds = %for.body10.lr.ph
  %div = udiv i64 %call14, %conv
  br label %if.end

if.end:                                           ; preds = %for.body10.lr.ph, %for.body10.lr.ph.thread, %if.else
  %call14105 = phi i64 [ %call14, %if.else ], [ %call14101, %for.body10.lr.ph.thread ], [ %call14, %for.body10.lr.ph ]
  %conv102 = phi i64 [ %conv, %if.else ], [ 0, %for.body10.lr.ph.thread ], [ %conv, %for.body10.lr.ph ]
  %8 = phi i1 [ false, %if.else ], [ true, %for.body10.lr.ph.thread ], [ true, %for.body10.lr.ph ]
  %div.sink = phi i64 [ %div, %if.else ], [ 0, %for.body10.lr.ph.thread ], [ 0, %for.body10.lr.ph ]
  %9 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 0, i32 3, i64 1
  store i64 %div.sink, i64* %9, align 8
  %arrayidx13.163 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 2
  %call14.164 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.163) #29
  %add15.1 = add i64 %call14.164, %call14105
  br i1 %8, label %if.then.282, label %if.else.280

if.else.280:                                      ; preds = %if.end
  %div.166 = udiv i64 %add15.1, %conv102
  %10 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 0, i32 3, i64 2
  store i64 %div.166, i64* %10, align 8
  %arrayidx13.274 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 3
  %call14.275 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.274) #29
  %add15.276 = add i64 %call14.275, %add15.1
  %div.278 = udiv i64 %add15.276, %conv102
  br label %for.cond1.loopexit

if.then.282:                                      ; preds = %if.end
  %11 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 0, i32 3, i64 2
  store i64 0, i64* %11, align 8
  %arrayidx13.274109 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.055, i64 0, i32 0, i64 3
  %call14.275110 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %arrayidx13.274109) #29
  br label %for.cond1.loopexit

for.end27:                                        ; preds = %for.cond1.loopexit.2, %entry
  call fastcc void @calculate_totalreserve_pages() #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @min_free_kbytes_sysctl_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) local_unnamed_addr #1 {
entry:
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) #28
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = load i32, i32* @min_free_kbytes, align 4
  store i32 %0, i32* @user_min_free_kbytes, align 4
  call void @setup_per_zone_wmarks() #29
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @watermark_scale_factor_sysctl_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) local_unnamed_addr #1 {
entry:
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) #28
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  call void @setup_per_zone_wmarks() #29
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lowmem_reserve_ratio_sysctl_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) local_unnamed_addr #1 {
entry:
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) #28
  %0 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 0), align 4
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 0), align 4
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %1 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 1), align 4
  %cmp1.1 = icmp slt i32 %1, 1
  br i1 %cmp1.1, label %if.then.1, label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 2), align 4
  %cmp1.2 = icmp slt i32 %2, 1
  br i1 %cmp1.2, label %if.then.2, label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 2), align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %3 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 3), align 4
  %cmp1.3 = icmp slt i32 %3, 1
  br i1 %cmp1.3, label %if.then.3, label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sysctl_lowmem_reserve_ratio, i64 0, i64 3), align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  call fastcc void @setup_per_zone_lowmem_reserve() #29
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @percpu_pagelist_high_fraction_sysctl_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) local_unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @pcp_batch_high_lock) #28
  %0 = load i32, i32* @percpu_pagelist_high_fraction, align 4
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %length, i64* noundef %ppos) #28
  %tobool = icmp eq i32 %write, 0
  %cmp = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %out, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @percpu_pagelist_high_fraction, align 4
  %tobool1 = icmp ne i32 %1, 0
  %cmp2 = icmp slt i32 %1, 8
  %or.cond14 = and i1 %tobool1, %cmp2
  br i1 %or.cond14, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 %0, i32* @percpu_pagelist_high_fraction, align 4
  br label %out

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %1, %0
  br i1 %cmp5, label %out, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool9.not24 = icmp eq %struct.pglist_data* %call8, null
  br i1 %tobool9.not24, label %out, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end7
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %call8, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %zone.025 = phi %struct.zone* [ %call13, %for.inc ], [ %arraydecay, %for.body.preheader ]
  %call10 = call fastcc i1 @populated_zone(%struct.zone* noundef nonnull %zone.025) #29
  br i1 %call10, label %if.else, label %for.inc

if.else:                                          ; preds = %for.body
  call fastcc void @zone_set_pageset_high_and_batch(%struct.zone* noundef nonnull %zone.025, i32 noundef 0) #29
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body
  %call13 = call %struct.zone* @next_zone(%struct.zone* noundef nonnull %zone.025) #28
  %tobool9.not = icmp eq %struct.zone* %call13, null
  br i1 %tobool9.not, label %out, label %for.body

out:                                              ; preds = %for.inc, %if.end7, %if.end4, %entry, %if.then3
  %ret.0 = phi i32 [ %call, %entry ], [ -22, %if.then3 ], [ %call, %if.end4 ], [ %call, %if.end7 ], [ %call, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pcp_batch_high_lock) #28
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @alloc_large_system_hash(i8* noundef %tablename, i64 noundef %bucketsize, i64 noundef %numentries, i32 noundef %scale, i32 noundef %flags, i32* noundef %_hash_shift, i32* noundef writeonly %_hash_mask, i64 noundef %low_limit, i64 noundef %high_limit) local_unnamed_addr #0 section ".init.text" {
entry:
  %tobool.not = icmp eq i64 %numentries, 0
  br i1 %tobool.not, label %if.then, label %cond.false101

if.then:                                          ; preds = %entry
  %0 = load i64, i64* @nr_kernel_pages, align 8
  %sub1 = add i64 %0, -1
  %or = or i64 %sub1, 255
  %add = add i64 %or, 1
  %tobool2.not = icmp eq i64 %high_limit, 0
  %cmp308 = icmp ugt i64 %add, 16777216
  %or.cond311 = select i1 %tobool2.not, i1 %cmp308, i1 false
  br i1 %or.cond311, label %for.body, label %if.end

for.body:                                         ; preds = %if.then, %for.body
  %scale.addr.0310 = phi i32 [ %inc, %for.body ], [ %scale, %if.then ]
  %adapt.0309 = phi i64 [ %shl, %for.body ], [ 16777216, %if.then ]
  %inc = add i32 %scale.addr.0310, 1
  %shl = shl i64 %adapt.0309, 2
  %cmp = icmp ult i64 %shl, %add
  br i1 %cmp, label %for.body, label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %scale.addr.1 = phi i32 [ %scale, %if.then ], [ %inc, %for.body ]
  %cmp4 = icmp sgt i32 %scale.addr.1, 12
  %sub6 = add i32 %scale.addr.1, -12
  %sh_prom = zext i32 %sub6 to i64
  %shr = lshr i64 %add, %sh_prom
  %sub7 = sub i32 12, %scale.addr.1
  %sh_prom8 = zext i32 %sub7 to i64
  %shl9 = shl i64 %add, %sh_prom8
  %numentries.addr.0 = select i1 %cmp4, i64 %shr, i64 %shl9
  %and = and i32 %flags, 2
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else65, label %if.then14, !prof !12

if.then14:                                        ; preds = %if.end
  %and15 = and i32 %flags, 1
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then31, label %if.end32, !prof !9

if.then31:                                        ; preds = %if.then14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 8728; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !38
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then14
  %1 = load i32, i32* %_hash_shift, align 4
  %sh_prom40 = zext i32 %1 to i64
  %shr41 = lshr i64 %numentries.addr.0, %sh_prom40
  %tobool42.not = icmp eq i64 %shr41, 0
  %shl45 = shl nuw i64 1, %sh_prom40
  %spec.select = select i1 %tobool42.not, i64 %shl45, i64 %numentries.addr.0
  br label %cond.false101

if.else65:                                        ; preds = %if.end
  %mul = mul i64 %numentries.addr.0, %bucketsize
  %cmp66 = icmp ult i64 %mul, 4096
  br i1 %cmp66, label %if.then75, label %cond.false101, !prof !9

if.then75:                                        ; preds = %if.else65
  %div = udiv i64 4096, %bucketsize
  br label %cond.false101

cond.false101:                                    ; preds = %entry, %if.else65, %if.then75, %if.end32
  %numentries.addr.1 = phi i64 [ %numentries, %entry ], [ %div, %if.then75 ], [ %numentries.addr.0, %if.else65 ], [ %spec.select, %if.end32 ]
  %call102 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %numentries.addr.1) #36
  %cmp105 = icmp eq i64 %high_limit, 0
  br i1 %cmp105, label %if.then107, label %if.end116

if.then107:                                       ; preds = %cond.false101
  %2 = load i64, i64* @nr_all_pages, align 8
  %3 = shl i64 %2, 8
  %shr109 = and i64 %3, 1152921504606846720
  %conv111 = and i64 %bucketsize, 4294967295
  %div114 = udiv i64 %shr109, %conv111
  br label %if.end116

if.end116:                                        ; preds = %if.then107, %cond.false101
  %max.0 = phi i64 [ %div114, %if.then107 ], [ %high_limit, %cond.false101 ]
  %cmp118 = icmp ult i64 %max.0, 2147483648
  %cond123 = select i1 %cmp118, i64 %max.0, i64 2147483648
  %cmp124 = icmp ult i64 %call102, %low_limit
  %spec.select300 = select i1 %cmp124, i64 %low_limit, i64 %call102
  %cmp128 = icmp ugt i64 %spec.select300, %cond123
  %numentries.addr.3 = select i1 %cmp128, i64 %cond123, i64 %spec.select300
  %call142 = call fastcc i32 @__ilog2_u64(i64 noundef %numentries.addr.3) #36
  %conv145 = sext i32 %call142 to i64
  %and146 = and i32 %flags, 4
  %tobool147.not = icmp eq i32 %and146, 0
  %cond148 = select i1 %tobool147.not, i32 2592, i32 2848
  %and151 = and i32 %flags, 1
  %tobool152.not = icmp eq i32 %and151, 0
  br label %do.body149

do.body149:                                       ; preds = %land.rhs, %if.end116
  %log2qty.0 = phi i64 [ %conv145, %if.end116 ], [ %dec, %land.rhs ]
  %shl150 = shl i64 %bucketsize, %log2qty.0
  br i1 %tobool152.not, label %if.end14.i, label %if.then153

if.then153:                                       ; preds = %do.body149
  br i1 %tobool147.not, label %if.else158, label %if.then156

if.then156:                                       ; preds = %if.then153
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %shl150, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  br label %do.cond172

if.else158:                                       ; preds = %if.then153
  %call159 = call fastcc i8* @memblock_alloc_raw(i64 noundef %shl150) #29
  br label %do.cond172

if.end14.i:                                       ; preds = %do.body149
  %dec.i = add i64 %shl150, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  br i1 %cmp.i.i, label %if.else168, label %get_order.exit

get_order.exit:                                   ; preds = %if.end14.i
  %shr.i = lshr i64 %dec.i, 12
  %4 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #30, !range !29
  %5 = trunc i64 %4 to i32
  %cmp163 = icmp ult i32 %5, 54
  br i1 %cmp163, label %if.then165, label %if.else168

if.then165:                                       ; preds = %get_order.exit
  %call166 = call i8* @__vmalloc(i64 noundef %shl150, i32 noundef %cond148) #28
  br label %do.cond172

if.else168:                                       ; preds = %if.end14.i, %get_order.exit
  %call169 = call i8* @alloc_pages_exact(i64 noundef %shl150, i32 noundef %cond148) #29
  br label %do.cond172

do.cond172:                                       ; preds = %if.else158, %if.then156, %if.else168, %if.then165
  %virt.0.off0 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), %if.then156 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), %if.else158 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), %if.then165 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), %if.else168 ]
  %table.0 = phi i8* [ %call.i, %if.then156 ], [ %call159, %if.else158 ], [ %call166, %if.then165 ], [ %call169, %if.else168 ]
  %tobool173 = icmp eq i8* %table.0, null
  %cmp174 = icmp ugt i64 %shl150, 4096
  %or.cond = select i1 %tobool173, i1 %cmp174, i1 false
  br i1 %or.cond, label %land.rhs, label %do.end177

land.rhs:                                         ; preds = %do.cond172
  %dec = add i64 %log2qty.0, -1
  %tobool176.not = icmp eq i64 %dec, 0
  br i1 %tobool176.not, label %if.then179, label %do.body149

do.end177:                                        ; preds = %do.cond172
  br i1 %tobool173, label %if.then179, label %do.end183

if.then179:                                       ; preds = %land.rhs, %do.end177
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0), i8* noundef %tablename) #37
  unreachable

do.end183:                                        ; preds = %do.end177
  %shl185 = shl nuw i64 1, %log2qty.0
  %call196 = call fastcc i32 @__ilog2_u64(i64 noundef %shl150) #36
  %sub199 = add i32 %call196, -12
  %call209 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i64 0, i64 0), i8* noundef %tablename, i64 noundef %shl185, i32 noundef %sub199, i64 noundef %shl150, i8* noundef %virt.0.off0) #34
  %tobool210.not = icmp eq i32* %_hash_shift, null
  br i1 %tobool210.not, label %if.end213, label %if.then211

if.then211:                                       ; preds = %do.end183
  %conv212 = trunc i64 %log2qty.0 to i32
  store i32 %conv212, i32* %_hash_shift, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.then211, %do.end183
  %tobool214.not = icmp eq i32* %_hash_mask, null
  br i1 %tobool214.not, label %if.end219, label %if.then215

if.then215:                                       ; preds = %if.end213
  %sh_prom216 = trunc i64 %log2qty.0 to i32
  %notmask = shl nsw i32 -1, %sh_prom216
  %sub218 = xor i32 %notmask, -1
  store i32 %sub218, i32* %_hash_mask, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then215, %if.end213
  ret i8* %table.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #21 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #30, !range !29
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #21 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #29
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @memblock_alloc_raw(i64 noundef %size) unnamed_addr #1 {
entry:
  %call = call i8* @memblock_alloc_try_nid_raw(i64 noundef %size, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__vmalloc(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #22

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local %struct.page* @has_unmovable_pages(%struct.zone* noundef %zone, %struct.page* noundef %page, i32 noundef %migratetype, i32 noundef %flags) local_unnamed_addr #6 {
for.body.lr.ph:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %rem = and i64 %sub.ptr.div, 1023
  %sub = sub nuw nsw i64 1024, %rem
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  %sub.ptr.lhs.cast5 = ptrtoint %struct.zone* %zone to i64
  %and = and i32 %flags, 1
  %tobool55.not = icmp eq i32 %and, 0
  %shr1125 = ashr i64 %0, 12
  %idx.neg2126 = sub nsw i64 0, %shr1125
  %add.ptr3127 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg2126
  %add.ptr4128 = getelementptr %struct.page, %struct.page* %add.ptr3127, i64 %sub.ptr.div
  %flags.i129 = getelementptr inbounds %struct.page, %struct.page* %add.ptr4128, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i129, align 64
  %2 = and i64 %1, 4096
  %tobool.not130 = icmp eq i64 %2, 0
  br i1 %tobool.not130, label %if.end, label %cleanup75

if.end:                                           ; preds = %for.body.lr.ph, %for.inc.for.body_crit_edge
  %add.ptr4132 = phi %struct.page* [ %add.ptr4, %for.inc.for.body_crit_edge ], [ %add.ptr4128, %for.body.lr.ph ]
  %iter.0121131 = phi i64 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.lr.ph ]
  %3 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.rhs.cast6 = ptrtoint %struct.pglist_data* %3 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %4 = icmp eq i64 %sub.ptr.sub7, 3648
  br i1 %4, label %for.inc, label %if.end11

if.end11:                                         ; preds = %if.end
  %call43 = call fastcc i32 @page_ref_count(%struct.page* noundef %add.ptr4132) #29
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end54

if.then45:                                        ; preds = %if.end11
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr4132, i64 0, i32 2, i32 0, i32 0
  %5 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %5, -268435328
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %if.then48, label %for.inc

if.then48:                                        ; preds = %if.then45
  %call49 = call fastcc i32 @buddy_order(%struct.page* noundef %add.ptr4132) #29
  %notmask = shl nsw i32 -1, %call49
  %sub50 = xor i32 %notmask, -1
  %conv51 = sext i32 %sub50 to i64
  %add52 = add i64 %iter.0121131, %conv51
  br label %for.inc

if.end54:                                         ; preds = %if.end11
  br i1 %tobool55.not, label %if.end67, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end54
  %page_type.i111 = getelementptr inbounds %struct.page, %struct.page* %add.ptr4132, i64 0, i32 2, i32 0, i32 0
  %6 = load i32, i32* %page_type.i111, align 16
  %and.i112 = and i32 %6, -268435200
  %cmp.i113.not = icmp eq i32 %and.i112, -268435456
  br i1 %cmp.i113.not, label %for.inc, label %if.end67

if.end67:                                         ; preds = %if.end54, %land.lhs.true56
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr4132, i64 0, i32 1, i32 0, i32 1
  %7 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %8 = ptrtoint %struct.address_space* %7 to i64
  %and.i115 = and i64 %8, 3
  %cmp.i116.not = icmp eq i64 %and.i115, 2
  br i1 %cmp.i116.not, label %for.inc, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end67
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %add.ptr4132) #28
  %9 = inttoptr i64 %call.i to %struct.page*
  %flags.i118 = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i118, align 8
  %11 = and i64 %10, 16
  %tobool72.not = icmp eq i64 %11, 0
  br i1 %tobool72.not, label %cleanup75, label %for.inc

for.inc:                                          ; preds = %if.end67, %lor.lhs.false70, %land.lhs.true56, %if.then45, %if.then48, %if.end
  %iter.2 = phi i64 [ %iter.0121131, %if.end ], [ %iter.0121131, %land.lhs.true56 ], [ %iter.0121131, %if.end67 ], [ %iter.0121131, %lor.lhs.false70 ], [ %add52, %if.then48 ], [ %iter.0121131, %if.then45 ]
  %inc = add i64 %iter.2, 1
  %cmp = icmp ult i64 %inc, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %cleanup75

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i64, i64* @memstart_addr, align 8
  %shr1 = ashr i64 %.pre, 12
  %idx.neg2 = sub nsw i64 0, %shr1
  %add.ptr3 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg2
  %add = add i64 %inc, %sub.ptr.div
  %add.ptr4 = getelementptr %struct.page, %struct.page* %add.ptr3, i64 %add
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr4, i64 0, i32 0
  %12 = load volatile i64, i64* %flags.i, align 64
  %13 = and i64 %12, 4096
  %tobool.not = icmp eq i64 %13, 0
  br i1 %tobool.not, label %if.end, label %cleanup75

cleanup75:                                        ; preds = %for.inc, %lor.lhs.false70, %for.inc.for.body_crit_edge, %for.body.lr.ph
  %retval.3.ph = phi %struct.page* [ %add.ptr4128, %for.body.lr.ph ], [ null, %for.inc ], [ %add.ptr4132, %lor.lhs.false70 ], [ %add.ptr4, %for.inc.for.body_crit_edge ]
  ret %struct.page* %retval.3.ph
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_ref_count(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @buddy_order(%struct.page* nocapture noundef readonly %page) unnamed_addr #2 {
entry:
  %private = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = load i64, i64* %private, align 8
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_contig_range(i64 noundef %pfn, i64 noundef %nr_pages) local_unnamed_addr #1 {
entry:
  %tobool.not34 = icmp eq i64 %nr_pages, 0
  br i1 %tobool.not34, label %if.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %pfn.addr.037 = phi i64 [ %inc, %for.body ], [ %pfn, %entry ]
  %nr_pages.addr.036 = phi i64 [ %dec, %for.body ], [ %nr_pages, %entry ]
  %count.035 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %dec = add i64 %nr_pages.addr.036, -1
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr1 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %pfn.addr.037
  %call = call fastcc i32 @page_count(%struct.page* noundef %add.ptr1) #29
  %cmp = icmp ne i32 %call, 1
  %1 = zext i1 %cmp to i64
  %add = add i64 %count.035, %1
  call void @__free_pages(%struct.page* noundef %add.ptr1, i32 noundef 0) #29
  %inc = add i64 %pfn.addr.037, 1
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp3.not = icmp eq i64 %add, 0
  br i1 %cmp3.not, label %if.end, label %do.end, !prof !12

do.end:                                           ; preds = %for.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i64 noundef %add) #28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 9262; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %entry, %do.end, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_count(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #29
  %0 = inttoptr i64 %call to %struct.page*
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 3, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @zone_pcp_disable(%struct.zone* noundef %zone) local_unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @pcp_batch_high_lock) #28
  call fastcc void @__zone_set_pageset_high_and_batch(%struct.zone* noundef %zone, i64 noundef 0, i64 noundef 1) #29
  call fastcc void @__drain_all_pages(%struct.zone* noundef %zone, i1 noundef true) #29
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__zone_set_pageset_high_and_batch(%struct.zone* nocapture noundef readonly %zone, i64 noundef %high, i64 noundef %batch) unnamed_addr #11 {
entry:
  %call8 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #32
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp9 = icmp ult i32 %call8, %0
  br i1 %cmp9, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call10 = phi i32 [ %call8, %do.body.lr.ph ], [ %call, %do.body ]
  %1 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %2 = ptrtoint %struct.per_cpu_pages* %1 to i64
  %idxprom = sext i32 %call10 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.per_cpu_pages*
  call fastcc void @pageset_update(%struct.per_cpu_pages* noundef %4, i64 noundef %high, i64 noundef %batch) #29
  %call = call i32 @cpumask_next(i32 noundef %call10, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #32
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @zone_pcp_enable(%struct.zone* nocapture noundef readonly %zone) local_unnamed_addr #1 {
entry:
  %pageset_high = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 7
  %0 = load i32, i32* %pageset_high, align 32
  %conv = sext i32 %0 to i64
  %pageset_batch = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 8
  %1 = load i32, i32* %pageset_batch, align 4
  %conv1 = sext i32 %1 to i64
  call fastcc void @__zone_set_pageset_high_and_batch(%struct.zone* noundef %zone, i64 noundef %conv, i64 noundef %conv1) #29
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pcp_batch_high_lock) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @zone_pcp_reset(%struct.zone* noundef %zone) local_unnamed_addr #1 {
entry:
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 5
  %0 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %cmp.not = icmp eq %struct.per_cpu_pages* %0, @boot_pageset
  br i1 %cmp.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = bitcast %struct.per_cpu_pages* %0 to i8*
  %call19 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp120 = icmp ult i32 %call19, %2
  br i1 %cmp120, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call21 = phi i32 [ %call19, %do.body.lr.ph ], [ %call, %do.body ]
  %3 = load %struct.per_cpu_zonestat*, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %4 = ptrtoint %struct.per_cpu_zonestat* %3 to i64
  %idxprom = sext i32 %call21 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.per_cpu_zonestat*
  call void @drain_zonestat(%struct.zone* noundef %zone, %struct.per_cpu_zonestat* noundef %6) #28
  %call = call i32 @cpumask_next(i32 noundef %call21, %struct.cpumask* noundef nonnull @__cpu_online_mask) #32
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1 = icmp ult i32 %call, %7
  br i1 %cmp1, label %do.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %do.body
  %.phi.trans.insert = bitcast %struct.per_cpu_pages** %per_cpu_pageset to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 16
  br label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.end.loopexit
  %8 = phi i8* [ %.pre, %for.end.loopexit ], [ %1, %for.cond.preheader ]
  call void @free_percpu(i8* noundef %8) #28
  %per_cpu_zonestats4 = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  %9 = bitcast %struct.per_cpu_zonestat** %per_cpu_zonestats4 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @free_percpu(i8* noundef %10) #28
  store %struct.per_cpu_pages* @boot_pageset, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  store %struct.per_cpu_zonestat* @boot_zonestats, %struct.per_cpu_zonestat** %per_cpu_zonestats4, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_zonestat(%struct.zone* noundef, %struct.per_cpu_zonestat* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @is_free_buddy_page(%struct.page* noundef %page) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #29
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %1 = lshr exact i64 %sub.ptr.sub, 6
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %call, i64 0, i32 19, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #29
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %cmp640 = phi i1 [ true, %entry ], [ %cmp6, %for.inc ]
  %order.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %notmask = shl nsw i32 -1, %order.038
  %sub = xor i32 %notmask, -1
  %2 = zext i32 %sub to i64
  %and = and i64 %1, %2
  %idx.neg9 = sub nsw i64 0, %and
  %page_type.i = getelementptr %struct.page, %struct.page* %page, i64 %idx.neg9, i32 2, i32 0, i32 0
  %3 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %3, -268435328
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add.ptr10 = getelementptr %struct.page, %struct.page* %page, i64 %idx.neg9
  %call12 = call fastcc i32 @buddy_order(%struct.page* noundef %add.ptr10) #29
  %cmp13.not = icmp ult i32 %call12, %order.038
  br i1 %cmp13.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %order.038, 1
  %cmp6 = icmp ult i32 %order.038, 10
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %land.lhs.true, %for.inc
  %cmp6.lcssa = phi i1 [ %cmp640, %land.lhs.true ], [ %cmp6, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #28
  ret i1 %cmp6.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64* @section_to_usemap(%struct.mem_section* nocapture noundef readonly %ms) unnamed_addr #2 {
entry:
  %usage = getelementptr inbounds %struct.mem_section, %struct.mem_section* %ms, i64 0, i32 1
  %0 = load %struct.mem_section_usage*, %struct.mem_section_usage** %usage, align 8
  %arraydecay = getelementptr inbounds %struct.mem_section_usage, %struct.mem_section_usage* %0, i64 0, i32 1, i64 0
  ret i64* %arraydecay
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mem_section* @__pfn_to_section(i64 noundef %pfn) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @pfn_to_section_nr(i64 noundef %pfn) #29, !range !40
  %call1 = call fastcc %struct.mem_section* @__nr_to_section(i64 noundef %call) #29
  ret %struct.mem_section* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mem_section* @__nr_to_section(i64 noundef %nr) unnamed_addr #2 {
entry:
  %0 = load %struct.mem_section**, %struct.mem_section*** @mem_section, align 8
  %tobool.not = icmp eq %struct.mem_section** %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i64 %nr, 8
  %arrayidx = getelementptr %struct.mem_section*, %struct.mem_section** %0, i64 %div
  %1 = load %struct.mem_section*, %struct.mem_section** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.mem_section* %1, null
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %and = and i64 %nr, 255
  %arrayidx6 = getelementptr %struct.mem_section, %struct.mem_section* %1, i64 %and
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi %struct.mem_section* [ %arrayidx6, %if.end3 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.mem_section* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pfn_to_section_nr(i64 noundef %pfn) unnamed_addr #4 {
entry:
  %shr = lshr i64 %pfn, 15
  ret i64 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #29
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #30, !srcloc !41
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pcp_allowed_order(i32 noundef %order) unnamed_addr #4 {
entry:
  %cmp = icmp ult i32 %order, 4
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #30, !srcloc !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_zonenum(%struct.page* nocapture noundef readonly %page) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %shr = lshr i64 %0, 62
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @free_tail_pages_check(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  store %struct.address_space* null, %struct.address_space** %mapping, align 8
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i = bitcast %union.anon* %0 to i64*
  store volatile i64 0, i64* %compound_head.i, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_free_page(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @page_expected_state(%struct.page* noundef %page, i64 noundef 3207729) #29
  br i1 %call, label %return, label %if.end, !prof !12

if.end:                                           ; preds = %entry
  call fastcc void @check_free_page_bad(%struct.page* noundef %page) #29
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @page_expected_state(%struct.page* noundef %page, i64 noundef %check_flags) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %entry
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %call2 = call fastcc i32 @page_ref_count(%struct.page* noundef %page) #29
  %conv3 = sext i32 %call2 to i64
  %or = or i64 %conv3, %2
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %3 = load i64, i64* %flags, align 16
  %and = and i64 %3, %check_flags
  %or4 = or i64 %or, %and
  %tobool5.not = icmp eq i64 %or4, 0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %tobool5.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_free_page_bad(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @page_bad_reason(%struct.page* noundef %page, i64 noundef 3207729) #29
  call fastcc void @bad_page(%struct.page* noundef %page, i8* noundef %call) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bad_page(%struct.page* noundef %page, i8* noundef %reason) unnamed_addr #1 {
entry:
  %0 = load i64, i64* @bad_page.nr_shown, align 8
  %cmp = icmp eq i64 %0, 60
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load volatile i64, i64* @jiffies, align 64
  %2 = load i64, i64* @bad_page.resume, align 8
  %sub = sub i64 %1, %2
  %cmp1 = icmp slt i64 %sub, 0
  %3 = load i64, i64* @bad_page.nr_unshown, align 8
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %inc = add i64 %3, 1
  store i64 %inc, i64* @bad_page.nr_unshown, align 8
  br label %out

if.end:                                           ; preds = %if.then
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end5.thread, label %do.end

do.end:                                           ; preds = %if.end
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i64 0, i64 0), i64 noundef %3) #34
  store i64 0, i64* @bad_page.nr_unshown, align 8
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end, %do.end
  store i64 1, i64* @bad_page.nr_shown, align 8
  br label %if.then8

if.end5:                                          ; preds = %entry
  %inc6 = add i64 %0, 1
  store i64 %inc6, i64* @bad_page.nr_shown, align 8
  %cmp7 = icmp eq i64 %0, 0
  br i1 %cmp7, label %if.then8, label %do.end11

if.then8:                                         ; preds = %if.end5.thread, %if.end5
  %4 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %4, 15000
  store i64 %add, i64* @bad_page.resume, align 8
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %if.end5
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 81, i64 0
  %7 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %7, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i64 0, i64 0), i8* noundef %arraydecay, i64 noundef %sub.ptr.div) #34
  call void @dump_page(%struct.page* noundef %page, i8* noundef %reason) #28
  call void @dump_stack() #34
  br label %out

out:                                              ; preds = %do.end11, %if.then2
  call fastcc void @page_mapcount_reset(%struct.page* noundef %page) #29
  call void @add_taint(i32 noundef 5, i32 noundef 1) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @page_bad_reason(%struct.page* noundef %page, i64 noundef %flags) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bad_reason.0 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0), %if.then ], [ null, %entry ]
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %cmp2.not = icmp eq %struct.address_space* %1, null
  br i1 %cmp2.not, label %if.end12, label %if.then11, !prof !12

if.then11:                                        ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %bad_reason.1 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), %if.then11 ], [ %bad_reason.0, %if.end ]
  %call13 = call fastcc i32 @page_ref_count(%struct.page* noundef %page) #29
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end24, label %if.then23, !prof !12

if.then23:                                        ; preds = %if.end12
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end12
  %bad_reason.2 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), %if.then23 ], [ %bad_reason.1, %if.end12 ]
  %flags25 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %2 = load i64, i64* %flags25, align 16
  %and = and i64 %2, %flags
  %tobool26.not = icmp eq i64 %and, 0
  br i1 %tobool26.not, label %if.end39, label %if.then34, !prof !12

if.then34:                                        ; preds = %if.end24
  %cmp35 = icmp eq i64 %flags, 8388607
  %. = select i1 %cmp35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i64 0, i64 0)
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end24
  %bad_reason.3 = phi i8* [ %bad_reason.2, %if.end24 ], [ %., %if.then34 ]
  ret i8* %bad_reason.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(%struct.page* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @page_mapcount_reset(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  store volatile i32 -1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tag_clear_highpage(%struct.page* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_highpage(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #29
  call void @clear_page(i8* noundef %call) #28
  call fastcc void @__kunmap_atomic() #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !43
  call fastcc void @pagefault_disable() #29
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_page(i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #1 {
entry:
  call fastcc void @pagefault_enable() #29
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !46
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @move_to_free_list(%struct.page* noundef %page, %struct.zone* noundef %zone, i32 noundef %order, i32 noundef %migratetype) unnamed_addr #6 {
entry:
  %idxprom = zext i32 %order to i64
  %lru = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  %idxprom1 = sext i32 %migratetype to i64
  %arrayidx2 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %idxprom, i32 0, i64 %idxprom1
  call fastcc void @list_move_tail(%struct.list_head* noundef %lru, %struct.list_head* noundef %arrayidx2) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #29
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #29
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #23

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_pcppages_bulk(%struct.zone* noundef %zone, i32 noundef %count, %struct.per_cpu_pages* noundef %pcp) unnamed_addr #1 {
entry:
  %head = alloca %struct.list_head, align 8
  %batch = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 2
  %0 = load volatile i32, i32* %batch, align 8
  %1 = bitcast %struct.list_head* %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #30
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  store %struct.list_head* %head, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  store %struct.list_head* %head, %struct.list_head** %prev, align 8
  %count2 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 0
  %2 = load i32, i32* %count2, align 8
  %cmp = icmp slt i32 %2, %count
  %cond = select i1 %cmp, i32 %2, i32 %count
  %cmp4150 = icmp sgt i32 %cond, 0
  br i1 %cmp4150, label %do.body5.preheader, label %while.end

do.body5.preheader:                               ; preds = %entry, %do.end40
  %count.addr.0155 = phi i32 [ %sub.lcssa, %do.end40 ], [ %cond, %entry ]
  %pindex.0154 = phi i32 [ %spec.store.select, %do.end40 ], [ 0, %entry ]
  %batch_free.0153 = phi i32 [ %dec36, %do.end40 ], [ 0, %entry ]
  %nr_freed.0152 = phi i32 [ %add.lcssa, %do.end40 ], [ 0, %entry ]
  %prefetch_nr.0151 = phi i32 [ %prefetch_nr.2, %do.end40 ], [ %0, %entry ]
  br label %do.body5

do.body5:                                         ; preds = %do.body5.preheader, %do.body5
  %batch_free.1 = phi i32 [ %inc, %do.body5 ], [ %batch_free.0153, %do.body5.preheader ]
  %pindex.1 = phi i32 [ %spec.store.select, %do.body5 ], [ %pindex.0154, %do.body5.preheader ]
  %inc = add i32 %batch_free.1, 1
  %inc6 = add i32 %pindex.1, 1
  %cmp7 = icmp eq i32 %inc6, 12
  %spec.store.select = select i1 %cmp7, i32 0, i32 %inc6
  %idxprom = sext i32 %spec.store.select to i64
  %arrayidx = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 %idxprom
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx) #29
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end9, label %do.body5

do.end9:                                          ; preds = %do.body5
  %cmp10 = icmp eq i32 %inc, 12
  %spec.select = select i1 %cmp10, i32 %count.addr.0155, i32 %inc
  %call13 = call fastcc i32 @pindex_to_order(i32 noundef %spec.store.select) #29
  %prev18 = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 4, i64 %idxprom, i32 1
  %3 = bitcast %struct.list_head** %prev18 to i8**
  %shl = shl nuw i32 1, %call13
  %conv = zext i32 %call13 to i64
  %4 = shl i32 %spec.select, %call13
  %5 = add i32 %nr_freed.0152, %4
  %6 = sub i32 %count.addr.0155, %4
  br label %do.body17

do.body17:                                        ; preds = %land.rhs, %do.end9
  %prefetch_nr.1 = phi i32 [ %prefetch_nr.0151, %do.end9 ], [ %prefetch_nr.2, %land.rhs ]
  %nr_freed.1 = phi i32 [ %nr_freed.0152, %do.end9 ], [ %add, %land.rhs ]
  %batch_free.3 = phi i32 [ %spec.select, %do.end9 ], [ %dec36, %land.rhs ]
  %count.addr.1 = phi i32 [ %count.addr.0155, %do.end9 ], [ %sub, %land.rhs ]
  %7 = load i8*, i8** %3, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 -8
  %8 = bitcast i8* %add.ptr to %struct.page*
  %lru = bitcast i8* %7 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru) #29
  %add = add i32 %nr_freed.1, %shl
  %sub = sub i32 %count.addr.1, %shl
  %call24 = call fastcc i1 @bulkfree_pcp_prepare(%struct.page* noundef %8) #29
  br i1 %call24, label %do.cond33, label %if.end26

if.end26:                                         ; preds = %do.body17
  %index = getelementptr inbounds i8, i8* %7, i64 24
  %9 = bitcast i8* %index to i64*
  %10 = load i64, i64* %9, align 8
  %shl27 = shl i64 %10, 8
  %or = or i64 %shl27, %conv
  store i64 %or, i64* %9, align 8
  call fastcc void @list_add_tail(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %head) #29
  %tobool30.not = icmp eq i32 %prefetch_nr.1, 0
  br i1 %tobool30.not, label %do.cond33, label %if.then31

if.then31:                                        ; preds = %if.end26
  call fastcc void @prefetch_buddy(%struct.page* noundef %8) #29
  %dec = add i32 %prefetch_nr.1, -1
  br label %do.cond33

do.cond33:                                        ; preds = %if.end26, %if.then31, %do.body17
  %prefetch_nr.2 = phi i32 [ %prefetch_nr.1, %do.body17 ], [ %dec, %if.then31 ], [ 0, %if.end26 ]
  %cmp34 = icmp sgt i32 %sub, 0
  br i1 %cmp34, label %land.lhs.true, label %while.end.loopexit

land.lhs.true:                                    ; preds = %do.cond33
  %dec36 = add i32 %batch_free.3, -1
  %tobool37.not = icmp eq i32 %dec36, 0
  br i1 %tobool37.not, label %do.end40, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call38 = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx) #29
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.body17, label %do.end40

do.end40:                                         ; preds = %land.lhs.true, %land.rhs
  %add.lcssa = phi i32 [ %5, %land.lhs.true ], [ %add, %land.rhs ]
  %sub.lcssa = phi i32 [ %6, %land.lhs.true ], [ %sub, %land.rhs ]
  %cmp4 = icmp sgt i32 %sub.lcssa, 0
  br i1 %cmp4, label %do.body5.preheader, label %while.end.loopexit

while.end.loopexit:                               ; preds = %do.end40, %do.cond33
  %add.lcssa166 = phi i32 [ %add, %do.cond33 ], [ %add.lcssa, %do.end40 ]
  %.pre = load i32, i32* %count2, align 8
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %11 = phi i32 [ %2, %entry ], [ %.pre, %while.end.loopexit ]
  %nr_freed.0.lcssa = phi i32 [ 0, %entry ], [ %add.lcssa166, %while.end.loopexit ]
  %sub42 = sub i32 %11, %nr_freed.0.lcssa
  store i32 %sub42, i32* %count2, align 8
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 19, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #28
  %12 = bitcast %struct.list_head* %head to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.list_head*
  %cmp60.not158 = icmp eq %struct.list_head* %head, %14
  br i1 %cmp60.not158, label %for.end, label %for.body

for.body:                                         ; preds = %while.end, %for.body
  %.pn.in.in159 = phi i8* [ %.pn, %for.body ], [ %13, %while.end ]
  %page.0.in160 = getelementptr i8, i8* %.pn.in.in159, i64 -8
  %page.0161 = bitcast i8* %page.0.in160 to %struct.page*
  %.pn.in = bitcast i8* %.pn.in.in159 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %call63 = call fastcc i32 @get_pcppage_migratetype(%struct.page* noundef %page.0161) #29
  %shr = ashr i32 %call63, 8
  %and = and i32 %call63, 255
  %15 = load i64, i64* @memstart_addr, align 8
  %shr75 = ashr i64 %15, 12
  %idx.neg76 = sub nsw i64 0, %shr75
  %add.ptr77 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg76
  %sub.ptr.lhs.cast78 = ptrtoint i8* %page.0.in160 to i64
  %sub.ptr.rhs.cast79 = ptrtoint %struct.page* %add.ptr77 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %sub.ptr.div81 = ashr exact i64 %sub.ptr.sub80, 6
  call fastcc void @__free_one_page(%struct.page* noundef %page.0161, i64 noundef %sub.ptr.div81, %struct.zone* noundef %zone, i32 noundef %and, i32 noundef %shr, i32 noundef 0) #29
  %16 = bitcast i8* %.pn to %struct.list_head*
  %cmp60.not = icmp eq %struct.list_head* %head, %16
  br i1 %cmp60.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %while.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #28
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pindex_to_order(i32 noundef %pindex) unnamed_addr #4 {
entry:
  %div = udiv i32 %pindex, 3
  ret i32 %div
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bulkfree_pcp_prepare(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @check_free_page(%struct.page* noundef %page) #29
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch_buddy(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call = call fastcc i64 @__find_buddy_pfn(i64 noundef %sub.ptr.div, i32 noundef 0) #29
  %sub = sub i64 %call, %sub.ptr.div
  %add.ptr1 = getelementptr %struct.page, %struct.page* %page, i64 %sub
  %1 = bitcast %struct.page* %add.ptr1 to i8*
  call fastcc void @prefetch(i8* noundef %1) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__find_buddy_pfn(i64 noundef %page_pfn, i32 noundef %order) unnamed_addr #4 {
entry:
  %shl = shl nuw i32 1, %order
  %0 = zext i32 %shl to i64
  %xor = xor i64 %0, %page_pfn
  ret i64 %xor
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch(i8* noundef %ptr) unnamed_addr #1 {
entry:
  call void asm sideeffect "prfm pldl1keep, ${0:a}\0A", "r"(i8* %ptr) #30, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__drain_all_pages.cpus_with_pcps, i64 0, i32 0, i64 0)) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__drain_all_pages.cpus_with_pcps, i64 0, i32 0, i64 0)) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @drain_local_pages_wq(%struct.work_struct* nocapture noundef readonly %work) #1 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -1, i32 2
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !48
  %zone = bitcast void (%struct.work_struct*)** %add.ptr to %struct.zone**
  %0 = load %struct.zone*, %struct.zone** %zone, align 8
  call void @drain_local_pages(%struct.zone* noundef %0) #29
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_work(%struct.work_struct* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #30, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #30, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @free_pcp_prepare(%struct.page* noundef %page, i32 noundef %order) unnamed_addr #1 {
entry:
  %tobool13.not.i = icmp eq i32 %order, 0
  br i1 %tobool13.not.i, label %if.end49.i, label %if.then21.i, !prof !12

if.then21.i:                                      ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.end27.i

PageCompound.exit.i:                              ; preds = %if.then21.i
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i.i = bitcast %union.anon* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i.i, align 8
  %4 = and i64 %3, 1
  %tobool23.not.i = icmp eq i64 %4, 0
  br label %if.end27.i

if.end27.i:                                       ; preds = %PageCompound.exit.i, %if.then21.i
  %tobool23.not159.i = phi i1 [ %tobool23.not.i, %PageCompound.exit.i ], [ false, %if.then21.i ]
  %shl.i = shl nuw i32 1, %order
  %cmp160.i = icmp sgt i32 %shl.i, 1
  br i1 %cmp160.i, label %for.body.preheader.i, label %if.end49.i

for.body.preheader.i:                             ; preds = %if.end27.i
  %wide.trip.count.i = zext i32 %shl.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %bad.0161.i = phi i32 [ 0, %for.body.preheader.i ], [ %bad.2.i, %for.inc.i ]
  br i1 %tobool23.not159.i, label %if.end32.i, label %if.then30.i

if.then30.i:                                      ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv.i
  call fastcc void @free_tail_pages_check(%struct.page* noundef %add.ptr.i) #28
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %for.body.i
  %add.ptr34.i = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv.i
  %call35.i = call fastcc i32 @check_free_page(%struct.page* noundef %add.ptr34.i) #28
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end45.i, label %if.then44.i, !prof !12

if.then44.i:                                      ; preds = %if.end32.i
  %inc.i = add i32 %bad.0161.i, 1
  br label %for.inc.i

if.end45.i:                                       ; preds = %if.end32.i
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr34.i, i64 0, i32 0
  %5 = load i64, i64* %flags.i, align 16
  %and.i = and i64 %5, -8388608
  store i64 %and.i, i64* %flags.i, align 16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end45.i, %if.then44.i
  %bad.2.i = phi i32 [ %inc.i, %if.then44.i ], [ %bad.0161.i, %if.end45.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %if.end49.i, label %for.body.i

if.end49.i:                                       ; preds = %for.inc.i, %if.end27.i, %entry
  %bad.3.i = phi i32 [ 0, %entry ], [ 0, %if.end27.i ], [ %bad.2.i, %for.inc.i ]
  %mapping.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %6 = load %struct.address_space*, %struct.address_space** %mapping.i.i, align 8
  %7 = ptrtoint %struct.address_space* %6 to i64
  %and.i.i = and i64 %7, 3
  %cmp.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.end53.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end49.i
  store %struct.address_space* null, %struct.address_space** %mapping.i.i, align 8
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %if.end49.i
  %tobool66.not.i = icmp eq i32 %bad.3.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %free_pages_prepare.exit

if.end68.i:                                       ; preds = %if.end53.i
  %flags69.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %8 = load i64, i64* %flags69.i, align 16
  %and70.i = and i64 %8, -8388608
  store i64 %and70.i, i64* %flags69.i, align 16
  %call86.i = call fastcc i1 @want_init_on_free() #28
  br i1 %call86.i, label %if.then89.i, label %free_pages_prepare.exit

if.then89.i:                                      ; preds = %if.end68.i
  %shl80.i = shl nuw i32 1, %order
  call fastcc void @kernel_init_free_pages(%struct.page* noundef %page, i32 noundef %shl80.i, i1 noundef false) #28
  br label %free_pages_prepare.exit

free_pages_prepare.exit:                          ; preds = %if.end53.i, %if.end68.i, %if.then89.i
  ret i1 %tobool66.not.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_pcppage_migratetype(%struct.page* nocapture noundef writeonly %page, i32 noundef %migratetype) unnamed_addr #7 {
entry:
  %conv = sext i32 %migratetype to i64
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  store i64 %conv, i64* %index, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #30, !srcloc !52
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #30, !srcloc !53
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #29
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #30, !srcloc !54
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__count_vm_event() unnamed_addr #11 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #29
  %add = add i64 %call, ptrtoint (i64* getelementptr inbounds (%struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 16) to i64)
  %0 = inttoptr i64 %add to i64*
  %1 = load i64, i64* %0, align 8
  %add7 = add i64 %1, 1
  store i64 %add7, i64* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @nr_pcp_high(%struct.per_cpu_pages* noundef %pcp, %struct.zone* noundef %zone) unnamed_addr #5 {
entry:
  %high1 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 1
  %0 = load volatile i32, i32* %high1, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 18
  %1 = load volatile i64, i64* %flags, align 8
  %2 = and i64 %1, 2
  %tobool5.not = icmp eq i64 %2, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %batch = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 2
  %3 = load volatile i32, i32* %batch, align 8
  %shl = shl i32 %3, 2
  %cmp = icmp slt i32 %shl, %0
  %cond = select i1 %cmp, i32 %shl, i32 %0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %cond, %if.end7 ], [ 0, %entry ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @nr_pcp_free(%struct.per_cpu_pages* nocapture noundef %pcp, i32 noundef %high, i32 noundef %batch) unnamed_addr #24 {
entry:
  %cmp = icmp slt i32 %high, %batch
  br i1 %cmp, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %sub = sub i32 %high, %batch
  %free_factor = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 3
  %0 = load i16, i16* %free_factor, align 4
  %conv237 = zext i16 %0 to i32
  %shl = shl i32 %batch, %conv237
  %cmp3 = icmp slt i32 %shl, %sub
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %inc = add i16 %0, 1
  store i16 %inc, i16* %free_factor, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %cmp8 = icmp sgt i32 %shl, %batch
  %cond = select i1 %cmp8, i32 %shl, i32 %batch
  %cmp11 = icmp slt i32 %cond, %sub
  %cond16 = select i1 %cmp11, i32 %cond, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  %retval.0 = phi i32 [ %cond16, %if.end7 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(%struct.zone* noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @page_is_buddy(%struct.page* nocapture noundef readonly %page, %struct.page* nocapture noundef readonly %buddy, i32 noundef %order) unnamed_addr #2 {
entry:
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %buddy, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %0, -268435328
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @buddy_order(%struct.page* noundef %buddy) #29
  %cmp.not = icmp eq i32 %call2, %order
  br i1 %cmp.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @page_zone_id(%struct.page* noundef %page) #29
  %call6 = call fastcc i32 @page_zone_id(%struct.page* noundef %buddy) #29
  %cmp7.not = icmp eq i32 %call5, %call6
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ %cmp7.not, %if.end4 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_buddy_order(%struct.page* nocapture noundef %page, i32 noundef %order) unnamed_addr #24 {
entry:
  %conv = zext i32 %order to i64
  call fastcc void @set_page_private(%struct.page* noundef %page, i64 noundef %conv) #29
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %0, -129
  store i32 %and.i, i32* %page_type.i, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @buddy_merge_likely(i64 noundef %pfn, i64 noundef %buddy_pfn, %struct.page* nocapture noundef readonly %page, i32 noundef %order) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i32 %order, 8
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %buddy_pfn, %pfn
  %sub = sub i64 %and, %pfn
  %add.ptr = getelementptr %struct.page, %struct.page* %page, i64 %sub
  %add = add nuw nsw i32 %order, 1
  %call = call fastcc i64 @__find_buddy_pfn(i64 noundef %and, i32 noundef %add) #29
  %sub1 = sub i64 %call, %and
  %add.ptr2 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %sub1
  %call4 = call fastcc i1 @page_is_buddy(%struct.page* noundef %add.ptr, %struct.page* noundef %add.ptr2, i32 noundef %add) #29
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call4, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @add_to_free_list_tail(%struct.page* noundef %page, %struct.zone* noundef %zone, i32 noundef %order, i32 noundef %migratetype) unnamed_addr #6 {
entry:
  %idxprom = zext i32 %order to i64
  %lru = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  %idxprom1 = sext i32 %migratetype to i64
  %arrayidx2 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %idxprom, i32 0, i64 %idxprom1
  call fastcc void @list_add_tail(%struct.list_head* noundef %lru, %struct.list_head* noundef %arrayidx2) #29
  %nr_free = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %idxprom, i32 1
  %0 = load i64, i64* %nr_free, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %nr_free, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @add_to_free_list(%struct.page* noundef %page, %struct.zone* noundef %zone, i32 noundef %order, i32 noundef %migratetype) unnamed_addr #6 {
entry:
  %idxprom = zext i32 %order to i64
  %lru = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  %idxprom1 = sext i32 %migratetype to i64
  %arrayidx2 = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %idxprom, i32 0, i64 %idxprom1
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef %arrayidx2) #29
  %nr_free = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %idxprom, i32 1
  %0 = load i64, i64* %nr_free, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %nr_free, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @tsk_is_oom_victim(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_mm = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 53
  %1 = load %struct.mm_struct*, %struct.mm_struct** %oom_mm, align 8
  %tobool = icmp ne %struct.mm_struct* %1, null
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.18* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @oom_reserves_allowed(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @tsk_is_oom_victim(%struct.task_struct* noundef %tsk) #29
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @gfp_migratetype(i32 noundef %gfp_flags) unnamed_addr #2 {
entry:
  %0 = load i32, i32* @page_group_by_mobility_disabled, align 4
  %tobool.not = icmp eq i32 %0, 0
  %and = lshr i32 %gfp_flags, 3
  %shr = and i32 %and, 3
  %retval.0 = select i1 %tobool.not, i32 %shr, i32 0, !prof !12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rmqueue_bulk(%struct.zone* noundef %zone, i32 noundef %order, i64 noundef %count, %struct.list_head* noundef %list, i32 noundef %migratetype, i32 noundef %alloc_flags) unnamed_addr #1 {
entry:
  %can_steal.i.i = alloca i8, align 4
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 19, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #28
  %cmp55.not = icmp eq i64 %count, 0
  br i1 %cmp55.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp20.i.i = icmp ult i32 %order, 11
  %0 = zext i32 %order to i64
  %and.i.i = and i32 %alloc_flags, 256
  %tobool.not.i29.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i29.i, i32 %order, i32 10
  %cmp.not64.i.i = icmp sgt i32 %spec.select.i.i, 10
  %cmp5.i.i = icmp eq i32 %migratetype, 1
  %cmp1167.i.i = icmp slt i32 %order, 11
  %1 = sext i32 %order to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %allocated.057 = phi i32 [ 0, %for.body.lr.ph ], [ %allocated.1.ph, %for.inc ]
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.inc ]
  br label %retry.i

retry.i:                                          ; preds = %__rmqueue_fallback.exit.i, %for.body
  br i1 %cmp20.i.i, label %for.body.i.i, label %land.lhs.true.i

for.body.i.i:                                     ; preds = %retry.i, %for.inc.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc.i.i ], [ %0, %retry.i ]
  %arrayidx.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv.i.i
  %call.i.i = call fastcc %struct.page* @get_page_from_free_area(%struct.free_area* noundef %arrayidx.i.i, i32 noundef %migratetype) #28
  %tobool.not.i.i = icmp eq %struct.page* %call.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 11
  br i1 %exitcond.not.i.i, label %land.lhs.true.i, label %for.body.i.i

land.lhs.true.i:                                  ; preds = %for.inc.i.i, %retry.i
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %can_steal.i.i) #30
  store i8 0, i8* %can_steal.i.i, align 4, !annotation !21
  br i1 %cmp.not64.i.i, label %cleanup, label %for.body.i32.i

for.body.i32.i:                                   ; preds = %land.lhs.true.i, %for.inc.i33.i
  %current_order.065.i.i = phi i32 [ %dec.i.i, %for.inc.i33.i ], [ 10, %land.lhs.true.i ]
  %idxprom.i.i = sext i32 %current_order.065.i.i to i64
  %arrayidx.i30.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %idxprom.i.i
  %call.i31.i = call i32 @find_suitable_fallback(%struct.free_area* noundef %arrayidx.i30.i, i32 noundef %current_order.065.i.i, i32 noundef %migratetype, i1 noundef false, i8* noundef nonnull %can_steal.i.i) #28
  %cmp1.i.i = icmp eq i32 %call.i31.i, -1
  br i1 %cmp1.i.i, label %for.inc.i33.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %for.body.i32.i
  %2 = load i8, i8* %can_steal.i.i, align 4, !range !10
  %tobool4.not59.i.i = icmp eq i8 %2, 0
  %or.cond.i.i = and i1 %cmp5.i.i, %tobool4.not59.i.i
  %cmp7.i.i = icmp sgt i32 %current_order.065.i.i, %order
  %or.cond60.i.i = and i1 %cmp7.i.i, %or.cond.i.i
  %or.cond73.i.i = and i1 %cmp1167.i.i, %or.cond60.i.i
  br i1 %or.cond73.i.i, label %for.body12.i.i, label %__rmqueue_fallback.exit.i

for.inc.i33.i:                                    ; preds = %for.body.i32.i
  %dec.i.i = add i32 %current_order.065.i.i, -1
  %cmp.not.i.i = icmp slt i32 %dec.i.i, %spec.select.i.i
  br i1 %cmp.not.i.i, label %cleanup, label %for.body.i32.i

for.body12.i.i:                                   ; preds = %if.end3.i.i, %for.body12.i.i
  %indvars.iv.i34.i = phi i64 [ %indvars.iv.next.i35.i, %for.body12.i.i ], [ %1, %if.end3.i.i ]
  %arrayidx15.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv.i34.i
  %3 = trunc i64 %indvars.iv.i34.i to i32
  %call16.i.i = call i32 @find_suitable_fallback(%struct.free_area* noundef %arrayidx15.i.i, i32 noundef %3, i32 noundef 1, i1 noundef false, i8* noundef nonnull %can_steal.i.i) #28
  %cmp17.not.i.i = icmp ne i32 %call16.i.i, -1
  %indvars.iv.next.i35.i = add nsw i64 %indvars.iv.i34.i, 1
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i35.i to i32
  %exitcond.not.i36.i = icmp eq i32 %lftr.wideiv.i.i, 11
  %or.cond82.i.i = select i1 %cmp17.not.i.i, i1 true, i1 %exitcond.not.i36.i
  br i1 %or.cond82.i.i, label %do_steal.loopexit.i.i, label %for.body12.i.i

do_steal.loopexit.i.i:                            ; preds = %for.body12.i.i
  %.pre.i.i = load i8, i8* %can_steal.i.i, align 4, !range !10
  br label %__rmqueue_fallback.exit.i

__rmqueue_fallback.exit.i:                        ; preds = %do_steal.loopexit.i.i, %if.end3.i.i
  %4 = phi i8 [ %2, %if.end3.i.i ], [ %.pre.i.i, %do_steal.loopexit.i.i ]
  %area.1.i.i = phi %struct.free_area* [ %arrayidx.i30.i, %if.end3.i.i ], [ %arrayidx15.i.i, %do_steal.loopexit.i.i ]
  %fallback_mt.1.i.i = phi i32 [ %call.i31.i, %if.end3.i.i ], [ %call16.i.i, %do_steal.loopexit.i.i ]
  %call22.i.i = call fastcc %struct.page* @get_page_from_free_area(%struct.free_area* noundef %area.1.i.i, i32 noundef %fallback_mt.1.i.i) #28
  %tobool23.i.i = icmp ne i8 %4, 0
  call fastcc void @steal_suitable_fallback(%struct.zone* noundef %zone, %struct.page* noundef %call22.i.i, i32 noundef %alloc_flags, i32 noundef %migratetype, i1 noundef %tobool23.i.i) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %can_steal.i.i) #30
  br label %retry.i

if.end:                                           ; preds = %for.body.i.i
  %5 = trunc i64 %indvars.iv.i.i to i32
  call fastcc void @del_page_from_free_list(%struct.page* noundef nonnull %call.i.i, %struct.zone* noundef %zone, i32 noundef %5) #28
  call fastcc void @expand(%struct.zone* noundef %zone, %struct.page* noundef nonnull %call.i.i, i32 noundef %order, i32 noundef %5, i32 noundef %migratetype) #28
  call fastcc void @set_pcppage_migratetype(%struct.page* noundef nonnull %call.i.i, i32 noundef %migratetype) #28
  %call6 = call fastcc i1 @check_pcp_refill(%struct.page* noundef nonnull %call.i.i) #29
  br i1 %call6, label %for.inc, label %if.end15, !prof !9

if.end15:                                         ; preds = %if.end
  %lru = getelementptr inbounds %struct.page, %struct.page* %call.i.i, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %lru, %struct.list_head* noundef %list) #29
  %inc = add i32 %allocated.057, 1
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true.i, %for.inc.i33.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %can_steal.i.i) #30
  br label %for.end

for.inc:                                          ; preds = %if.end15, %if.end
  %allocated.1.ph = phi i32 [ %allocated.057, %if.end ], [ %inc, %if.end15 ]
  %inc16 = add i32 %i.056, 1
  %conv = sext i32 %inc16 to i64
  %cmp = icmp ult i64 %conv, %count
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry, %cleanup
  %i.053 = phi i32 [ %i.056, %cleanup ], [ 0, %entry ], [ %inc16, %for.inc ]
  %allocated.049 = phi i32 [ %allocated.057, %cleanup ], [ 0, %entry ], [ %allocated.1.ph, %for.inc ]
  %shl = shl i32 %i.053, %order
  %sub = sub i32 0, %shl
  %conv17 = sext i32 %sub to i64
  call void @__mod_zone_page_state(%struct.zone* noundef %zone, i32 noundef 0, i64 noundef %conv17) #28
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #28
  ret i32 %allocated.049
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @check_pcp_refill(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @check_new_page(%struct.page* noundef %page) #29
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.page* @get_page_from_free_area(%struct.free_area* noundef %area, i32 noundef %migratetype) unnamed_addr #5 {
entry:
  %idxprom = sext i32 %migratetype to i64
  %arrayidx = getelementptr %struct.free_area, %struct.free_area* %area, i64 0, i32 0, i64 %idxprom
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %arrayidx, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %0, %arrayidx
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -1, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.page*
  %cond = select i1 %cmp.not, %struct.page* null, %struct.page* %1
  ret %struct.page* %cond
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @expand(%struct.zone* noundef %zone, %struct.page* noundef %page, i32 noundef %low, i32 noundef %high, i32 noundef %migratetype) unnamed_addr #6 {
entry:
  %cmp17 = icmp sgt i32 %high, %low
  br i1 %cmp17, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %shl = shl nuw i32 1, %high
  %0 = zext i32 %shl to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %size.019 = phi i64 [ %shr, %while.body ], [ %0, %while.body.preheader ]
  %high.addr.018 = phi i32 [ %dec, %while.body ], [ %high, %while.body.preheader ]
  %dec = add nsw i32 %high.addr.018, -1
  %shr = lshr i64 %size.019, 1
  %arrayidx = getelementptr %struct.page, %struct.page* %page, i64 %shr
  call fastcc void @add_to_free_list(%struct.page* noundef %arrayidx, %struct.zone* noundef %zone, i32 noundef %dec, i32 noundef %migratetype) #29
  call fastcc void @set_buddy_order(%struct.page* noundef %arrayidx, i32 noundef %dec) #29
  %cmp = icmp sgt i32 %dec, %low
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @steal_suitable_fallback(%struct.zone* noundef %zone, %struct.page* noundef %page, i32 noundef %alloc_flags, i32 noundef %start_type, i1 noundef %whole_block) unnamed_addr #1 {
entry:
  %movable_pages = alloca i32, align 4
  %call = call fastcc i32 @buddy_order(%struct.page* noundef %page) #29
  %0 = bitcast i32* %movable_pages to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #30
  store i32 0, i32* %movable_pages, align 4, !annotation !21
  %1 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %1, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call1 = call i64 @get_pfnblock_flags_mask(%struct.page* undef, i64 noundef %sub.ptr.div, i64 noundef 7) #29
  %conv = trunc i64 %call1 to i32
  %call2 = call fastcc i1 @is_migrate_highatomic(i32 noundef %conv) #29
  br i1 %call2, label %single_page, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ugt i32 %call, 9
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call fastcc void @change_pageblock_range(%struct.page* noundef %page, i32 noundef %call, i32 noundef %start_type) #29
  br label %single_page

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i1 @boost_watermark(%struct.zone* noundef %zone) #29
  %and = and i32 %alloc_flags, 2048
  %tobool.not = icmp ne i32 %and, 0
  %2 = and i1 %tobool.not, %call6
  br i1 %2, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %flags = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 18
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %flags) #29
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  br i1 %whole_block, label %if.end12, label %single_page

if.end12:                                         ; preds = %if.end9
  %call13 = call i32 @move_freepages_block(%struct.zone* noundef %zone, %struct.page* noundef %page, i32 noundef %start_type, i32* noundef nonnull %movable_pages) #29
  %cmp14 = icmp eq i32 %start_type, 1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %3 = load i32, i32* %movable_pages, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end12
  %cmp17 = icmp eq i32 %conv, 1
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.else
  %4 = load i32, i32* %movable_pages, align 4
  %5 = add i32 %call13, %4
  %sub = sub i32 1024, %5
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19, %if.then16
  %alike_pages.0 = phi i32 [ %3, %if.then16 ], [ %sub, %if.then19 ], [ 0, %if.else ]
  %tobool25.not = icmp eq i32 %call13, 0
  br i1 %tobool25.not, label %single_page, label %if.end27

if.end27:                                         ; preds = %if.end24
  %add28 = add i32 %alike_pages.0, %call13
  %cmp29 = icmp sgt i32 %add28, 511
  %6 = load i32, i32* @page_group_by_mobility_disabled, align 4
  %tobool31 = icmp ne i32 %6, 0
  %or.cond = select i1 %cmp29, i1 true, i1 %tobool31
  br i1 %or.cond, label %if.then32, label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @set_pageblock_migratetype(%struct.page* noundef %page, i32 noundef %start_type) #29
  br label %cleanup

single_page:                                      ; preds = %if.end24, %if.end9, %entry, %if.then4
  call fastcc void @move_to_free_list(%struct.page* noundef %page, %struct.zone* noundef %zone, i32 noundef %call, i32 noundef %start_type) #29
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end27, %single_page
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @change_pageblock_range(%struct.page* noundef %pageblock_page, i32 noundef %start_order, i32 noundef %migratetype) unnamed_addr #1 {
entry:
  %sub = add i32 %start_order, -10
  %shl = shl nuw i32 1, %sub
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %nr_pageblocks.04 = phi i32 [ %shl, %entry ], [ %dec, %while.body ]
  %pageblock_page.addr.03 = phi %struct.page* [ %pageblock_page, %entry ], [ %add.ptr, %while.body ]
  %dec = add i32 %nr_pageblocks.04, -1
  call void @set_pageblock_migratetype(%struct.page* noundef %pageblock_page.addr.03, i32 noundef %migratetype) #29
  %add.ptr = getelementptr %struct.page, %struct.page* %pageblock_page.addr.03, i64 1024
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @boost_watermark(%struct.zone* noundef %zone) unnamed_addr #5 {
entry:
  %0 = load i32, i32* @watermark_boost_factor, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) #29
  %cmp = icmp ult i64 %call, 4096
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 0, i64 2
  %1 = load i64, i64* %arrayidx, align 16
  %.frozen = freeze i64 %1
  %div = udiv i64 %.frozen, 10000
  %2 = mul i64 %div, 10000
  %rem5.decomposed = sub i64 %.frozen, %2
  %3 = load i32, i32* @watermark_boost_factor, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %div, %conv
  %mul7 = mul nsw i64 %rem5.decomposed, %conv
  %div8 = udiv i64 %mul7, 10000
  %add = add i64 %div8, %mul
  %tobool9.not = icmp eq i64 %add, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end2
  %4 = icmp ugt i64 %add, 1024
  %cond = select i1 %4, i64 %add, i64 1024
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 1
  %5 = load i64, i64* %watermark_boost, align 8
  %add15 = add i64 %5, 1024
  %cmp17 = icmp ult i64 %add15, %cond
  %cond22 = select i1 %cmp17, i64 %add15, i64 %cond
  store i64 %cond22, i64* %watermark_boost, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.end11
  %retval.0 = phi i1 [ true, %if.end11 ], [ false, %entry ], [ false, %if.end ], [ false, %if.end2 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_new_page(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @page_expected_state(%struct.page* noundef %page, i64 noundef 8388607) #29
  br i1 %call, label %return, label %if.end, !prof !12

if.end:                                           ; preds = %entry
  call fastcc void @check_new_page_bad(%struct.page* noundef %page) #29
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_new_page_bad(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @page_bad_reason(%struct.page* noundef %page, i64 noundef 8388607) #29
  call fastcc void @bad_page(%struct.page* noundef %page, i8* noundef %call) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_page_pfmemalloc(%struct.page* nocapture noundef writeonly %page) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0, i32 0
  store %struct.list_head* inttoptr (i64 2 to %struct.list_head*), %struct.list_head** %next, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @clear_page_pfmemalloc(%struct.page* nocapture noundef writeonly %page) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0, i32 0
  store %struct.list_head* null, %struct.list_head** %next, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @node_dirty_ok(%struct.pglist_data* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @rmqueue(%struct.zone* noundef %zone, i32 noundef %order, i32 noundef %gfp_flags, i32 noundef %alloc_flags, i32 noundef %migratetype) unnamed_addr #1 {
entry:
  %can_steal.i.i = alloca i8, align 4
  %call = call fastcc i1 @pcp_allowed_order(i32 noundef %order) #29
  br i1 %call, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %entry
  %call2 = call fastcc %struct.page* @rmqueue_pcplist(%struct.zone* noundef %zone, i32 noundef %order, i32 noundef %migratetype, i32 noundef %alloc_flags) #29
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %gfp_flags, 32768
  %tobool3 = icmp ne i32 %and, 0
  %cmp = icmp ugt i32 %order, 1
  %0 = and i1 %cmp, %tobool3
  br i1 %0, label %if.then17, label %if.end18, !prof !9

if.then17:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 3700; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !55
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 19, i32 0, i32 0
  %call31 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #29
  %and37 = and i32 %alloc_flags, 16
  %tobool38.not = icmp ne i32 %and37, 0
  %1 = add i32 %order, -1
  %2 = icmp ult i32 %1, 10
  %3 = and i1 %2, %tobool38.not
  %4 = zext i32 %order to i64
  %cmp20.i.i = icmp ult i32 %order, 11
  %and.i.i = and i32 %alloc_flags, 256
  %tobool.not.i29.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i29.i, i32 %order, i32 10
  %cmp.not64.i.i = icmp sgt i32 %spec.select.i.i, 10
  %cmp5.i.i = icmp eq i32 %migratetype, 1
  %cmp1167.i.i = icmp slt i32 %order, 11
  %5 = sext i32 %order to i64
  br label %do.body34

do.body34:                                        ; preds = %land.rhs51, %if.end18
  br i1 %3, label %for.body.i, label %retry.i.preheader

retry.i.preheader:                                ; preds = %for.inc.i, %do.body34
  br label %retry.i

for.body.i:                                       ; preds = %do.body34, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ %4, %do.body34 ]
  %arrayidx.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv.i
  %call.i = call fastcc %struct.page* @get_page_from_free_area(%struct.free_area* noundef %arrayidx.i, i32 noundef 3) #28
  %tobool.not.i = icmp eq %struct.page* %call.i, null
  br i1 %tobool.not.i, label %for.inc.i, label %if.end44

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 11
  br i1 %exitcond.not.i, label %retry.i.preheader, label %for.body.i

if.end44:                                         ; preds = %for.body.i
  %6 = trunc i64 %indvars.iv.i to i32
  call fastcc void @del_page_from_free_list(%struct.page* noundef nonnull %call.i, %struct.zone* noundef %zone, i32 noundef %6) #28
  call fastcc void @expand(%struct.zone* noundef %zone, %struct.page* noundef nonnull %call.i, i32 noundef %order, i32 noundef %6, i32 noundef 3) #28
  call fastcc void @set_pcppage_migratetype(%struct.page* noundef nonnull %call.i, i32 noundef 3) #28
  br label %land.rhs51

retry.i:                                          ; preds = %retry.i.preheader, %__rmqueue_fallback.exit.i
  br i1 %cmp20.i.i, label %for.body.i.i, label %land.lhs.true.i

for.body.i.i:                                     ; preds = %retry.i, %for.inc.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc.i.i ], [ %4, %retry.i ]
  %arrayidx.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv.i.i
  %call.i.i = call fastcc %struct.page* @get_page_from_free_area(%struct.free_area* noundef %arrayidx.i.i, i32 noundef %migratetype) #28
  %tobool.not.i.i = icmp eq %struct.page* %call.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then14.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 11
  br i1 %exitcond.not.i.i, label %land.lhs.true.i, label %for.body.i.i

land.lhs.true.i:                                  ; preds = %for.inc.i.i, %retry.i
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %can_steal.i.i) #30
  store i8 0, i8* %can_steal.i.i, align 4, !annotation !21
  br i1 %cmp.not64.i.i, label %failed, label %for.body.i32.i

for.body.i32.i:                                   ; preds = %land.lhs.true.i, %for.inc.i33.i
  %current_order.065.i.i = phi i32 [ %dec.i.i, %for.inc.i33.i ], [ 10, %land.lhs.true.i ]
  %idxprom.i.i = sext i32 %current_order.065.i.i to i64
  %arrayidx.i30.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %idxprom.i.i
  %call.i31.i = call i32 @find_suitable_fallback(%struct.free_area* noundef %arrayidx.i30.i, i32 noundef %current_order.065.i.i, i32 noundef %migratetype, i1 noundef false, i8* noundef nonnull %can_steal.i.i) #28
  %cmp1.i.i = icmp eq i32 %call.i31.i, -1
  br i1 %cmp1.i.i, label %for.inc.i33.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %for.body.i32.i
  %7 = load i8, i8* %can_steal.i.i, align 4, !range !10
  %tobool4.not59.i.i = icmp eq i8 %7, 0
  %or.cond.i.i = and i1 %cmp5.i.i, %tobool4.not59.i.i
  %cmp7.i.i = icmp sgt i32 %current_order.065.i.i, %order
  %or.cond60.i.i = and i1 %cmp7.i.i, %or.cond.i.i
  %or.cond73.i.i = and i1 %cmp1167.i.i, %or.cond60.i.i
  br i1 %or.cond73.i.i, label %for.body12.i.i, label %__rmqueue_fallback.exit.i

for.inc.i33.i:                                    ; preds = %for.body.i32.i
  %dec.i.i = add i32 %current_order.065.i.i, -1
  %cmp.not.i.i = icmp slt i32 %dec.i.i, %spec.select.i.i
  br i1 %cmp.not.i.i, label %failed, label %for.body.i32.i

for.body12.i.i:                                   ; preds = %if.end3.i.i, %for.body12.i.i
  %indvars.iv.i34.i = phi i64 [ %indvars.iv.next.i35.i, %for.body12.i.i ], [ %5, %if.end3.i.i ]
  %arrayidx15.i.i = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 17, i64 %indvars.iv.i34.i
  %8 = trunc i64 %indvars.iv.i34.i to i32
  %call16.i.i = call i32 @find_suitable_fallback(%struct.free_area* noundef %arrayidx15.i.i, i32 noundef %8, i32 noundef 1, i1 noundef false, i8* noundef nonnull %can_steal.i.i) #28
  %cmp17.not.i.i = icmp ne i32 %call16.i.i, -1
  %indvars.iv.next.i35.i = add nsw i64 %indvars.iv.i34.i, 1
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i35.i to i32
  %exitcond.not.i36.i = icmp eq i32 %lftr.wideiv.i.i, 11
  %or.cond82.i.i = select i1 %cmp17.not.i.i, i1 true, i1 %exitcond.not.i36.i
  br i1 %or.cond82.i.i, label %do_steal.loopexit.i.i, label %for.body12.i.i

do_steal.loopexit.i.i:                            ; preds = %for.body12.i.i
  %.pre.i.i = load i8, i8* %can_steal.i.i, align 4, !range !10
  br label %__rmqueue_fallback.exit.i

__rmqueue_fallback.exit.i:                        ; preds = %do_steal.loopexit.i.i, %if.end3.i.i
  %9 = phi i8 [ %7, %if.end3.i.i ], [ %.pre.i.i, %do_steal.loopexit.i.i ]
  %area.1.i.i = phi %struct.free_area* [ %arrayidx.i30.i, %if.end3.i.i ], [ %arrayidx15.i.i, %do_steal.loopexit.i.i ]
  %fallback_mt.1.i.i = phi i32 [ %call.i31.i, %if.end3.i.i ], [ %call16.i.i, %do_steal.loopexit.i.i ]
  %call22.i.i = call fastcc %struct.page* @get_page_from_free_area(%struct.free_area* noundef %area.1.i.i, i32 noundef %fallback_mt.1.i.i) #28
  %tobool23.i.i = icmp ne i8 %9, 0
  call fastcc void @steal_suitable_fallback(%struct.zone* noundef %zone, %struct.page* noundef %call22.i.i, i32 noundef %alloc_flags, i32 noundef %migratetype, i1 noundef %tobool23.i.i) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %can_steal.i.i) #30
  br label %retry.i

if.then14.i:                                      ; preds = %for.body.i.i
  %10 = trunc i64 %indvars.iv.i.i to i32
  call fastcc void @del_page_from_free_list(%struct.page* noundef nonnull %call.i.i, %struct.zone* noundef %zone, i32 noundef %10) #28
  call fastcc void @expand(%struct.zone* noundef %zone, %struct.page* noundef nonnull %call.i.i, i32 noundef %order, i32 noundef %10, i32 noundef %migratetype) #28
  call fastcc void @set_pcppage_migratetype(%struct.page* noundef nonnull %call.i.i, i32 noundef %migratetype) #28
  br label %land.rhs51

land.rhs51:                                       ; preds = %if.end44, %if.then14.i
  %page.1.ph = phi %struct.page* [ %call.i.i, %if.then14.i ], [ %call.i, %if.end44 ]
  %call52 = call fastcc i1 @check_new_pages(%struct.page* noundef nonnull %page.1.ph, i32 noundef %order) #29
  br i1 %call52, label %do.body34, label %if.end58

if.end58:                                         ; preds = %land.rhs51
  %shl = shl nuw i32 1, %order
  %sub = sub i32 0, %shl
  call fastcc void @__mod_zone_freepage_state(%struct.zone* noundef %zone, i32 noundef %sub) #29
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call31) #28
  %call61 = call fastcc i32 @page_zonenum(%struct.page* noundef nonnull %page.1.ph) #29
  %add = add i32 %call61, 4
  %11 = zext i32 %shl to i64
  call fastcc void @__count_vm_events(i32 noundef %add, i64 noundef %11) #29
  br label %out

out:                                              ; preds = %if.end58, %if.then
  %page.2 = phi %struct.page* [ %call2, %if.then ], [ %page.1.ph, %if.end58 ]
  %flags64 = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 18
  %12 = load volatile i64, i64* %flags64, align 8
  %conv.i11 = and i64 %12, 1
  %tobool66.not = icmp eq i64 %conv.i11, 0
  br i1 %tobool66.not, label %cleanup, label %if.then67

if.then67:                                        ; preds = %out
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %flags64) #29
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  %13 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.zone* %zone to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.pglist_data* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1216
  %conv69 = trunc i64 %sub.ptr.div to i32
  call void @wakeup_kswapd(%struct.zone* noundef %zone, i32 noundef 0, i32 noundef 0, i32 noundef %conv69) #28
  br label %cleanup

failed:                                           ; preds = %land.lhs.true.i, %for.inc.i33.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %can_steal.i.i) #30
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call31) #28
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then67, %failed
  %retval.0 = phi %struct.page* [ null, %failed ], [ %page.2, %if.then67 ], [ %page.2, %out ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @reserve_highatomic_pageblock(%struct.page* noundef %page, %struct.zone* noundef %zone) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) #29
  %div = udiv i64 %call, 100
  %add = add nuw nsw i64 %div, 1024
  %nr_reserved_highatomic = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 2
  %0 = load i64, i64* %nr_reserved_highatomic, align 32
  %cmp.not = icmp ult i64 %0, %add
  br i1 %cmp.not, label %do.body1, label %cleanup

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 19, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #29
  %1 = load i64, i64* %nr_reserved_highatomic, align 32
  %cmp8.not = icmp ult i64 %1, %add
  br i1 %cmp8.not, label %if.end11, label %out_unlock

if.end11:                                         ; preds = %do.body1
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call12 = call i64 @get_pfnblock_flags_mask(%struct.page* undef, i64 noundef %sub.ptr.div, i64 noundef 7) #29
  %conv13 = trunc i64 %call12 to i32
  %call14 = call fastcc i1 @is_migrate_highatomic(i32 noundef %conv13) #29
  br i1 %call14, label %out_unlock, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %add18 = add i64 %1, 1024
  store i64 %add18, i64* %nr_reserved_highatomic, align 32
  call void @set_pageblock_migratetype(%struct.page* noundef %page, i32 noundef 3) #29
  %call19 = call i32 @move_freepages_block(%struct.zone* noundef %zone, %struct.page* noundef %page, i32 noundef 3, i32* noundef null) #29
  br label %out_unlock

out_unlock:                                       ; preds = %if.end11, %land.lhs.true, %do.body1
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #28
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @rmqueue_pcplist(%struct.zone* noundef %zone, i32 noundef %order, i32 noundef %migratetype, i32 noundef %alloc_flags) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #29
  %call10 = call fastcc i64 @__kern_my_cpu_offset() #29
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 5
  %0 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %1 = ptrtoint %struct.per_cpu_pages* %0 to i64
  %add21 = add i64 %call10, %1
  %2 = inttoptr i64 %add21 to %struct.per_cpu_pages*
  %free_factor = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %2, i64 0, i32 3
  %3 = load i16, i16* %free_factor, align 4
  %4 = ashr i16 %3, 1
  store i16 %4, i16* %free_factor, align 4
  %call24 = call fastcc i32 @order_to_pindex(i32 noundef %migratetype, i32 noundef %order) #29
  %idxprom = zext i32 %call24 to i64
  %arrayidx = getelementptr %struct.per_cpu_pages, %struct.per_cpu_pages* %2, i64 0, i32 4, i64 %idxprom
  %call25 = call fastcc %struct.page* @__rmqueue_pcplist(%struct.zone* noundef %zone, i32 noundef %order, i32 noundef %migratetype, i32 noundef %alloc_flags, %struct.per_cpu_pages* noundef %2, %struct.list_head* noundef %arrayidx) #29
  %call34 = call fastcc i64 @__kern_my_cpu_offset() #29
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #29
  %tobool.not = icmp eq %struct.page* %call25, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call52 = call fastcc i32 @page_zonenum(%struct.page* noundef nonnull %call25) #29
  %add53 = add i32 %call52, 4
  call fastcc void @__count_vm_events(i32 noundef %add53, i64 noundef 1) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.page* %call25
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @check_new_pages(%struct.page* noundef %page, i32 noundef %order) unnamed_addr #1 {
entry:
  %shl = shl nuw i32 1, %order
  %cmp8.not = icmp eq i32 %order, 31
  br i1 %cmp8.not, label %cleanup3, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = sext i32 %shl to i64
  %smax = call i32 @llvm.smax.i32(i32 %shl, i32 1)
  %wide.trip.count = zext i32 %smax to i64
  %call12 = call fastcc i32 @check_new_page(%struct.page* noundef %page) #29
  %tobool.not13 = icmp eq i32 %call12, 0
  br i1 %tobool.not13, label %for.cond, label %cleanup3

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv.next14 = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %for.body.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv.next14, %wide.trip.count
  br i1 %exitcond.not, label %cleanup3.loopexit, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr %struct.page, %struct.page* %page, i64 %indvars.iv.next14
  %call = call fastcc i32 @check_new_page(%struct.page* noundef %add.ptr) #29
  %tobool.not = icmp eq i32 %call, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next14, 1
  br i1 %tobool.not, label %for.cond, label %cleanup3.loopexit

cleanup3.loopexit:                                ; preds = %for.body, %for.cond
  %cmp.le = icmp slt i64 %indvars.iv.next14, %0
  br label %cleanup3

cleanup3:                                         ; preds = %cleanup3.loopexit, %for.body.preheader, %entry
  %cmp.lcssa = phi i1 [ false, %entry ], [ true, %for.body.preheader ], [ %cmp.le, %cleanup3.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_kswapd(%struct.zone* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gfp_to_alloc_flags(i32 noundef %gfp_mask) unnamed_addr #1 {
entry:
  %and = and i32 %gfp_mask, 2080
  %or = or i32 %and, 64
  %and4 = and i32 %gfp_mask, 512
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and5 = lshr i32 %gfp_mask, 15
  %0 = and i32 %and5, 16
  %1 = or i32 %0, %and
  %2 = xor i32 %1, 16
  br label %if.end30

if.else:                                          ; preds = %entry
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call10 = call fastcc i32 @rt_task(%struct.task_struct* noundef %4) #29
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end30, label %land.lhs.true, !prof !12

land.lhs.true:                                    ; preds = %if.else
  %call14 = call fastcc i32 @preempt_count() #29
  %5 = and i32 %call14, 15728640
  %call17 = call fastcc i32 @preempt_count() #29
  %6 = and i32 %call17, 983040
  %or2043 = or i32 %6, %5
  %call21 = call fastcc i32 @preempt_count() #29
  %7 = and i32 %call21, 256
  %or2545 = or i32 %or2043, %7
  %tobool26.not = icmp eq i32 %or2545, 0
  %or28 = or i32 %and, 80
  %spec.select46 = select i1 %tobool26.not, i32 %or28, i32 %or
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true, %if.else, %if.then
  %alloc_flags.1 = phi i32 [ %2, %if.then ], [ %or, %if.else ], [ %spec.select46, %land.lhs.true ]
  ret i32 %alloc_flags.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wake_all_kswapds(i32 noundef %order, i32 noundef %gfp_mask, %struct.alloc_context* nocapture noundef readonly %ac) unnamed_addr #1 {
entry:
  %highest_zoneidx1 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  %0 = load i32, i32* %highest_zoneidx1, align 4
  %zonelist = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  %1 = load %struct.zonelist*, %struct.zonelist** %zonelist, align 8
  %nodemask = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %2 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %1, i32 noundef %0, %struct.nodemask_t* noundef %2) #29
  %call2 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call) #29
  %tobool.not21 = icmp eq %struct.zone* %call2, null
  br i1 %tobool.not21, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %next_zones_zonelist.exit
  %last_pgdat.024 = phi %struct.pglist_data* [ %4, %next_zones_zonelist.exit ], [ null, %entry ]
  %zone.023 = phi %struct.zone* [ %call6, %next_zones_zonelist.exit ], [ %call2, %entry ]
  %z.022 = phi %struct.zoneref* [ %retval.0.i, %next_zones_zonelist.exit ], [ %call, %entry ]
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone.023, i64 0, i32 4
  %3 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %cmp.not = icmp eq %struct.pglist_data* %last_pgdat.024, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @wakeup_kswapd(%struct.zone* noundef nonnull %zone.023, i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %0) #28
  %.pre = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = phi %struct.pglist_data* [ %.pre, %if.then ], [ %last_pgdat.024, %for.body ]
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.022, i64 1
  %5 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %tobool.not.i = icmp eq %struct.nodemask_t* %5, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !12

land.rhs.i:                                       ; preds = %if.end
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #28
  %cmp.not.i = icmp ugt i32 %call.i, %0
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %if.end
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %0, %struct.nodemask_t* noundef %5) #28
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call6 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #29
  %tobool.not = icmp eq %struct.zone* %call6, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %next_zones_zonelist.exit, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__alloc_pages_direct_compact(i32* nocapture noundef writeonly %compact_result) unnamed_addr #7 {
entry:
  store i32 1, i32* %compact_result, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_direct_reclaim(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %alloc_flags, %struct.alloc_context* nocapture noundef readonly %ac, i64* nocapture noundef writeonly %did_some_progress) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__perform_reclaim(i32 noundef %gfp_mask, i32 noundef %order, %struct.alloc_context* noundef %ac) #29
  store i64 %call, i64* %did_some_progress, align 8
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %retry.preheader, !prof !9

retry.preheader:                                  ; preds = %entry
  %call418 = call fastcc %struct.page* @get_page_from_freelist(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %alloc_flags, %struct.alloc_context* noundef %ac) #29
  %tobool5.not19.not = icmp eq %struct.page* %call418, null
  br i1 %tobool5.not19.not, label %if.then7.preheader, label %cleanup

if.then7.preheader:                               ; preds = %retry.preheader
  %call8 = call fastcc i1 @unreserve_highatomic_pageblock(%struct.alloc_context* noundef %ac, i1 noundef false) #29
  call void @drain_all_pages(%struct.zone* noundef null) #29
  %call4 = call fastcc %struct.page* @get_page_from_freelist(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %alloc_flags, %struct.alloc_context* noundef %ac) #29
  br label %cleanup

cleanup:                                          ; preds = %if.then7.preheader, %retry.preheader, %entry
  %retval.0 = phi %struct.page* [ null, %entry ], [ %call418, %retry.preheader ], [ %call4, %if.then7.preheader ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @should_reclaim_retry(i32 noundef %order, %struct.alloc_context* nocapture noundef readonly %ac, i32 noundef %alloc_flags, i1 noundef %did_some_progress, i32* nocapture noundef %no_progress_loops) unnamed_addr #1 {
entry:
  %cmp = icmp ult i32 %order, 4
  %or.cond = and i1 %cmp, %did_some_progress
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  store i32 0, i32* %no_progress_loops, align 4
  br label %if.end3

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %no_progress_loops, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %no_progress_loops, align 4
  %cmp1 = icmp sgt i32 %inc, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = call fastcc i1 @unreserve_highatomic_pageblock(%struct.alloc_context* noundef %ac, i1 noundef true) #29
  br label %cleanup43

if.end3:                                          ; preds = %if.end.thread, %if.end
  %zonelist = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  %1 = load %struct.zonelist*, %struct.zonelist** %zonelist, align 8
  %highest_zoneidx = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  %2 = load i32, i32* %highest_zoneidx, align 4
  %nodemask = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %3 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call4 = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %1, i32 noundef %2, %struct.nodemask_t* noundef %3) #29
  %call5 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call4) #29
  %tobool6.not13 = icmp eq %struct.zone* %call5, null
  br i1 %tobool6.not13, label %out, label %for.body

for.body:                                         ; preds = %if.end3, %next_zones_zonelist.exit
  %zone.016 = phi %struct.zone* [ %call34, %next_zones_zonelist.exit ], [ %call5, %if.end3 ]
  %z.015 = phi %struct.zoneref* [ %retval.0.i, %next_zones_zonelist.exit ], [ %call4, %if.end3 ]
  %arrayidx = getelementptr inbounds %struct.zone, %struct.zone* %zone.016, i64 0, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 64
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.016, i64 0, i32 1
  %5 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %5, %4
  %call7 = call i64 @zone_reclaimable_pages(%struct.zone* noundef nonnull %zone.016) #28
  %call8 = call fastcc i64 @zone_page_state_snapshot(%struct.zone* noundef nonnull %zone.016, i32 noundef 0) #29
  %add9 = add i64 %call8, %call7
  %6 = load i32, i32* %highest_zoneidx, align 4
  %call11 = call i1 @__zone_watermark_ok(%struct.zone* noundef nonnull %zone.016, i32 noundef %order, i64 noundef %add, i32 noundef %6, i32 noundef %alloc_flags, i64 noundef %add9) #29
  %call11.not = xor i1 %call11, true
  %brmerge = or i1 %call11.not, %did_some_progress
  br i1 %brmerge, label %cleanup25, label %if.then17

if.then17:                                        ; preds = %for.body
  %call18 = call fastcc i64 @zone_page_state_snapshot(%struct.zone* noundef nonnull %zone.016, i32 noundef 6) #29
  %mul = shl i64 %call18, 1
  %cmp19 = icmp ugt i64 %mul, %call7
  br i1 %cmp19, label %cleanup25.thread, label %out

cleanup25.thread:                                 ; preds = %if.then17
  %call21 = call i64 @congestion_wait(i32 noundef 0, i64 noundef 25) #28
  br label %cleanup43

cleanup25:                                        ; preds = %for.body
  br i1 %call11, label %out, label %for.inc

for.inc:                                          ; preds = %cleanup25
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.015, i64 1
  %7 = load i32, i32* %highest_zoneidx, align 4
  %8 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %tobool.not.i = icmp eq %struct.nodemask_t* %8, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !12

land.rhs.i:                                       ; preds = %for.inc
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #28
  %cmp.not.i = icmp ugt i32 %call.i, %7
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %for.inc
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %7, %struct.nodemask_t* noundef %8) #28
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call34 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #29
  %tobool6.not = icmp eq %struct.zone* %call34, null
  br i1 %tobool6.not, label %out, label %for.body

out:                                              ; preds = %next_zones_zonelist.exit, %cleanup25, %if.end3, %if.then17
  %ret.2.off0 = phi i1 [ true, %if.then17 ], [ false, %if.end3 ], [ %call11, %cleanup25 ], [ %call11, %next_zones_zonelist.exit ]
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i64 0, i32 4
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 32
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %out
  %call38 = call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #28
  br label %cleanup43

if.else39:                                        ; preds = %out
  call fastcc void @_cond_resched() #29
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup25.thread, %if.then37, %if.else39, %if.then2
  %retval.4 = phi i1 [ %call, %if.then2 ], [ %ret.2.off0, %if.else39 ], [ %ret.2.off0, %if.then37 ], [ true, %cleanup25.thread ]
  ret i1 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @should_compact_retry(%struct.alloc_context* nocapture noundef readonly %ac, i32 noundef %order, i32 noundef %alloc_flags) unnamed_addr #1 {
entry:
  %0 = add i32 %order, -4
  %1 = icmp ult i32 %0, -3
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %zonelist = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  %2 = load %struct.zonelist*, %struct.zonelist** %zonelist, align 8
  %highest_zoneidx = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  %3 = load i32, i32* %highest_zoneidx, align 4
  %nodemask = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %4 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %2, i32 noundef %3, %struct.nodemask_t* noundef %4) #29
  %call1 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call) #29
  %tobool2.not1 = icmp eq %struct.zone* %call1, null
  br i1 %tobool2.not1, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %next_zones_zonelist.exit
  %z.03 = phi %struct.zoneref* [ %retval.0.i, %next_zones_zonelist.exit ], [ %call, %if.end ]
  %zone.02 = phi %struct.zone* [ %call10, %next_zones_zonelist.exit ], [ %call1, %if.end ]
  %arrayidx = getelementptr inbounds %struct.zone, %struct.zone* %zone.02, i64 0, i32 0, i64 0
  %5 = load i64, i64* %arrayidx, align 64
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone.02, i64 0, i32 1
  %6 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %6, %5
  %7 = load i32, i32* %highest_zoneidx, align 4
  %call4 = call i1 @zone_watermark_ok(%struct.zone* noundef nonnull %zone.02, i32 noundef 0, i64 noundef %add, i32 noundef %7, i32 noundef %alloc_flags) #29
  br i1 %call4, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.03, i64 1
  %8 = load i32, i32* %highest_zoneidx, align 4
  %9 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %tobool.not.i = icmp eq %struct.nodemask_t* %9, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !12

land.rhs.i:                                       ; preds = %for.inc
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #28
  %cmp.not.i = icmp ugt i32 %call.i, %8
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %for.inc
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %8, %struct.nodemask_t* noundef %9) #28
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call10 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #29
  %tobool2.not = icmp eq %struct.zone* %call10, null
  br i1 %tobool2.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %next_zones_zonelist.exit, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ %call4, %next_zones_zonelist.exit ], [ %call4, %for.body ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_may_oom(i32 noundef %gfp_mask, i32 noundef %order, %struct.alloc_context* nocapture noundef readonly %ac, i64* nocapture noundef writeonly %did_some_progress) unnamed_addr #1 {
entry:
  %oc = alloca %struct.oom_control, align 8
  %0 = bitcast %struct.oom_control* %oc to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #30
  %1 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 8
  %2 = bitcast i32* %1 to i64*, !annotation !21
  store i64 0, i64* %2, align 8, !annotation !21
  %zonelist = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 0
  %zonelist1 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  %3 = load %struct.zonelist*, %struct.zonelist** %zonelist1, align 8
  store %struct.zonelist* %3, %struct.zonelist** %zonelist, align 8
  %nodemask = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 1
  %nodemask2 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %4 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask2, align 8
  store %struct.nodemask_t* %4, %struct.nodemask_t** %nodemask, align 8
  %memcg = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 2
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %memcg, align 8
  %gfp_mask3 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 3
  store i32 %gfp_mask, i32* %gfp_mask3, align 8
  %order4 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 4
  store i32 %order, i32* %order4, align 4
  %totalpages = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 5
  store i64 0, i64* %totalpages, align 8
  %chosen = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 6
  store %struct.task_struct* null, %struct.task_struct** %chosen, align 8
  %chosen_points = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 7
  store i64 0, i64* %chosen_points, align 8
  store i64 0, i64* %did_some_progress, align 8
  %call = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @oom_lock) #28
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %did_some_progress, align 8
  %call5 = call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #28
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = and i32 %gfp_mask, -1049601
  %and = or i32 %or, 1048576
  %call6 = call fastcc %struct.page* @get_page_from_freelist(i32 noundef %and, i32 noundef %order, i32 noundef 66, %struct.alloc_context* noundef %ac) #29
  %tobool7.not = icmp eq %struct.page* %call6, null
  br i1 %tobool7.not, label %if.end9, label %out

if.end9:                                          ; preds = %if.end
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 4
  %7 = load i32, i32* %flags, align 4
  %and11 = and i32 %7, 512
  %cmp = icmp ult i32 %order, 4
  %and17 = and i32 %gfp_mask, 2113536
  %8 = or i32 %and11, %and17
  %9 = icmp eq i32 %8, 0
  %10 = and i1 %cmp, %9
  br i1 %10, label %if.end20, label %out

if.end20:                                         ; preds = %if.end9
  %highest_zoneidx = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  %11 = load i32, i32* %highest_zoneidx, align 4
  %cmp21 = icmp ult i32 %11, 2
  br i1 %cmp21, label %out, label %if.end23

if.end23:                                         ; preds = %if.end20
  %call27 = call i1 @out_of_memory(%struct.oom_control* noundef nonnull %oc) #28
  %.pre = and i32 %gfp_mask, 32768
  %phi.cmp = icmp eq i32 %.pre, 0
  br i1 %call27, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end23
  br i1 %phi.cmp, label %out, label %if.then47.thread, !prof !12

if.then47.thread:                                 ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 4320; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !56
  store i64 1, i64* %did_some_progress, align 8
  br label %if.then50

if.then47:                                        ; preds = %if.end23
  store i64 1, i64* %did_some_progress, align 8
  br i1 %phi.cmp, label %out, label %if.then50

if.then50:                                        ; preds = %if.then47.thread, %if.then47
  %call51 = call fastcc %struct.page* @__alloc_pages_cpuset_fallback(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef 4, %struct.alloc_context* noundef %ac) #29
  br label %out

out:                                              ; preds = %lor.lhs.false, %if.then50, %if.then47, %if.end20, %if.end9, %if.end
  %page.0 = phi %struct.page* [ %call6, %if.end ], [ null, %if.end9 ], [ null, %if.end20 ], [ %call51, %if.then50 ], [ null, %if.then47 ], [ null, %lor.lhs.false ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @oom_lock) #28
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi %struct.page* [ %page.0, %out ], [ null, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #30
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_cpuset_fallback(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %alloc_flags, %struct.alloc_context* nocapture noundef readonly %ac) unnamed_addr #1 {
entry:
  %or = or i32 %alloc_flags, 64
  %call = call fastcc %struct.page* @get_page_from_freelist(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %or, %struct.alloc_context* noundef %ac) #29
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.page* @get_page_from_freelist(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %alloc_flags, %struct.alloc_context* noundef %ac) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %page.0 = phi %struct.page* [ %call, %entry ], [ %call1, %if.then ]
  ret %struct.page* %page.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @rt_prio(i32 noundef %0) #29
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rt_prio(i32 noundef %prio) unnamed_addr #4 {
entry:
  %cmp = icmp slt i32 %prio, 100
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__perform_reclaim(i32 noundef %gfp_mask, i32 noundef %order, %struct.alloc_context* nocapture noundef readonly %ac) unnamed_addr #1 {
entry:
  call fastcc void @_cond_resched() #29
  %call1 = call fastcc i32 @memalloc_noreclaim_save() #29
  %zonelist = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  %0 = load %struct.zonelist*, %struct.zonelist** %zonelist, align 8
  %nodemask = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %1 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call2 = call i64 @try_to_free_pages(%struct.zonelist* noundef %0, i32 noundef %order, i32 noundef %gfp_mask, %struct.nodemask_t* noundef %1) #28
  call fastcc void @memalloc_noreclaim_restore(i32 noundef %call1) #29
  call fastcc void @_cond_resched() #29
  ret i64 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @unreserve_highatomic_pageblock(%struct.alloc_context* nocapture noundef readonly %ac, i1 noundef %force) unnamed_addr #1 {
entry:
  %zonelist1 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 0
  %0 = load %struct.zonelist*, %struct.zonelist** %zonelist1, align 8
  %highest_zoneidx = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 4
  %1 = load i32, i32* %highest_zoneidx, align 4
  %nodemask = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 1
  %2 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call = call fastcc %struct.zoneref* @first_zones_zonelist(%struct.zonelist* noundef %0, i32 noundef %1, %struct.nodemask_t* noundef %2) #29
  %call2 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %call) #29
  %tobool.not89 = icmp eq %struct.zone* %call2, null
  br i1 %tobool.not89, label %cleanup42, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %migratetype = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %ac, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %next_zones_zonelist.exit
  %z.091 = phi %struct.zoneref* [ %call, %for.body.lr.ph ], [ %retval.0.i, %next_zones_zonelist.exit ]
  %zone.090 = phi %struct.zone* [ %call2, %for.body.lr.ph ], [ %call40, %next_zones_zonelist.exit ]
  br i1 %force, label %do.body4, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %nr_reserved_highatomic = getelementptr inbounds %struct.zone, %struct.zone* %zone.090, i64 0, i32 2
  %3 = load i64, i64* %nr_reserved_highatomic, align 32
  %cmp = icmp ult i64 %3, 1025
  br i1 %cmp, label %for.inc36, label %do.body4

do.body4:                                         ; preds = %land.lhs.true, %for.body
  %rlock.i = getelementptr inbounds %struct.zone, %struct.zone* %zone.090, i64 0, i32 19, i32 0, i32 0
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #29
  %nr_reserved_highatomic20 = getelementptr inbounds %struct.zone, %struct.zone* %zone.090, i64 0, i32 2
  br label %for.body13

for.body13:                                       ; preds = %do.body4, %for.inc
  %indvars.iv = phi i64 [ 0, %do.body4 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.zone, %struct.zone* %zone.090, i64 0, i32 17, i64 %indvars.iv
  %call14 = call fastcc %struct.page* @get_page_from_free_area(%struct.free_area* noundef %arrayidx, i32 noundef 3) #29
  %tobool15.not = icmp eq %struct.page* %call14, null
  br i1 %tobool15.not, label %for.inc, label %if.end17

if.end17:                                         ; preds = %for.body13
  %call18 = call fastcc i1 @is_migrate_highatomic_page(%struct.page* noundef nonnull %call14) #29
  br i1 %call18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end17
  %4 = load i64, i64* %nr_reserved_highatomic20, align 32
  %5 = call i64 @llvm.usub.sat.i64(i64 %4, i64 1024)
  store i64 %5, i64* %nr_reserved_highatomic20, align 32
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end17
  %6 = load i32, i32* %migratetype, align 8
  call void @set_pageblock_migratetype(%struct.page* noundef nonnull %call14, i32 noundef %6) #29
  %7 = load i32, i32* %migratetype, align 8
  %call27 = call i32 @move_freepages_block(%struct.zone* noundef nonnull %zone.090, %struct.page* noundef nonnull %call14, i32 noundef %7, i32* noundef null) #29
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end25
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call7) #28
  br label %cleanup42

for.inc:                                          ; preds = %for.body13, %if.end25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %for.end, label %for.body13

for.end:                                          ; preds = %for.inc
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call7) #28
  br label %for.inc36

for.inc36:                                        ; preds = %land.lhs.true, %for.end
  %incdec.ptr = getelementptr %struct.zoneref, %struct.zoneref* %z.091, i64 1
  %8 = load i32, i32* %highest_zoneidx, align 4
  %9 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %tobool.not.i = icmp eq %struct.nodemask_t* %9, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i, !prof !12

land.rhs.i:                                       ; preds = %for.inc36
  %call.i = call fastcc i32 @zonelist_zone_idx(%struct.zoneref* noundef %incdec.ptr) #28
  %cmp.not.i = icmp ugt i32 %call.i, %8
  br i1 %cmp.not.i, label %if.end.i, label %next_zones_zonelist.exit, !prof !9

if.end.i:                                         ; preds = %land.rhs.i, %for.inc36
  %call3.i = call %struct.zoneref* @__next_zones_zonelist(%struct.zoneref* noundef %incdec.ptr, i32 noundef %8, %struct.nodemask_t* noundef %9) #28
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %land.rhs.i, %if.end.i
  %retval.0.i = phi %struct.zoneref* [ %call3.i, %if.end.i ], [ %incdec.ptr, %land.rhs.i ]
  %call40 = call fastcc %struct.zone* @zonelist_zone(%struct.zoneref* noundef %retval.0.i) #29
  %tobool.not = icmp eq %struct.zone* %call40, null
  br i1 %tobool.not, label %cleanup42, label %for.body

cleanup42:                                        ; preds = %next_zones_zonelist.exit, %entry, %cleanup
  %tobool.not87 = phi i1 [ true, %cleanup ], [ false, %entry ], [ false, %next_zones_zonelist.exit ]
  ret i1 %tobool.not87
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memalloc_noreclaim_save() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, 2048
  %or = or i32 %2, 2048
  store i32 %or, i32* %flags1, align 4
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @try_to_free_pages(%struct.zonelist* noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memalloc_noreclaim_restore(i32 noundef %flags) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #33, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, -2049
  %or = or i32 %and, %flags
  store i32 %or, i32* %flags1, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_migrate_highatomic_page(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call = call i64 @get_pfnblock_flags_mask(%struct.page* undef, i64 noundef %sub.ptr.div, i64 noundef 7) #29
  %cmp = icmp eq i64 %call, 3
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @zone_reclaimable_pages(%struct.zone* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @congestion_wait(i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @out_of_memory(%struct.oom_control* noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #10 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef 1, %struct.atomic_t* noundef %_refcount) #28
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #30, !srcloc !57
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 32768, i32* elementtype(i32) %counter) #30, !srcloc !58
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_mem_id() unnamed_addr #10 {
entry:
  call fastcc void @numa_node_id() #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef %order, i32 undef, %struct.nodemask_t* noundef null) #29
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #28
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #28
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #29
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #30, !srcloc !59
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #29
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #29
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !60
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #30, !srcloc !61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mminit_verify_zonelist() local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @node_state(i32 noundef %node) unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %node, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @build_zonelists(%struct.pglist_data* noundef %pgdat) unnamed_addr #6 {
entry:
  %node_id = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 6
  %0 = load i32, i32* %node_id, align 16
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 1, i64 0, i32 0, i64 0
  %call = call fastcc i32 @build_zonerefs_node(%struct.pglist_data* noundef %pgdat, %struct.zoneref* noundef %arraydecay) #29
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 1, i64 0, i32 0, i64 %idx.ext
  %cmp44 = icmp ugt i32 %0, 2147483646
  br i1 %cmp44, label %for.body, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc, %entry
  %zonerefs.0.lcssa = phi %struct.zoneref* [ %add.ptr, %entry ], [ %zonerefs.1, %for.inc ]
  %cmp747 = icmp sgt i32 %0, 0
  br i1 %cmp747, label %for.body8, label %for.end19

for.body:                                         ; preds = %entry, %for.inc
  %node.046.in = phi i32 [ %node.046, %for.inc ], [ %0, %entry ]
  %zonerefs.045 = phi %struct.zoneref* [ %zonerefs.1, %for.inc ], [ %add.ptr, %entry ]
  %node.046 = add i32 %node.046.in, 1
  %call1 = call fastcc i32 @node_state(i32 noundef %node.046) #29
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i32 @build_zonerefs_node(%struct.pglist_data* noundef nonnull @contig_page_data, %struct.zoneref* noundef %zonerefs.045) #29
  %idx.ext4 = sext i32 %call3 to i64
  %add.ptr5 = getelementptr %struct.zoneref, %struct.zoneref* %zonerefs.045, i64 %idx.ext4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %zonerefs.1 = phi %struct.zoneref* [ %add.ptr5, %if.end ], [ %zonerefs.045, %for.body ]
  %cmp = icmp ugt i32 %node.046, 2147483646
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.body8:                                        ; preds = %for.cond6.preheader, %for.inc17
  %zonerefs.249 = phi %struct.zoneref* [ %zonerefs.3, %for.inc17 ], [ %zonerefs.0.lcssa, %for.cond6.preheader ]
  %node.148 = phi i32 [ %inc18, %for.inc17 ], [ 0, %for.cond6.preheader ]
  %call9 = call fastcc i32 @node_state(i32 noundef %node.148) #29
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.inc17, label %if.end12

if.end12:                                         ; preds = %for.body8
  %call14 = call fastcc i32 @build_zonerefs_node(%struct.pglist_data* noundef nonnull @contig_page_data, %struct.zoneref* noundef %zonerefs.249) #29
  %idx.ext15 = sext i32 %call14 to i64
  %add.ptr16 = getelementptr %struct.zoneref, %struct.zoneref* %zonerefs.249, i64 %idx.ext15
  br label %for.inc17

for.inc17:                                        ; preds = %for.body8, %if.end12
  %zonerefs.3 = phi %struct.zoneref* [ %add.ptr16, %if.end12 ], [ %zonerefs.249, %for.body8 ]
  %inc18 = add nuw nsw i32 %node.148, 1
  %exitcond.not = icmp eq i32 %inc18, %0
  br i1 %exitcond.not, label %for.end19, label %for.body8

for.end19:                                        ; preds = %for.inc17, %for.cond6.preheader
  %zonerefs.2.lcssa = phi %struct.zoneref* [ %zonerefs.0.lcssa, %for.cond6.preheader ], [ %zonerefs.3, %for.inc17 ]
  %zone = getelementptr inbounds %struct.zoneref, %struct.zoneref* %zonerefs.2.lcssa, i64 0, i32 0
  store %struct.zone* null, %struct.zone** %zone, align 8
  %zone_idx = getelementptr inbounds %struct.zoneref, %struct.zoneref* %zonerefs.2.lcssa, i64 0, i32 1
  store i32 0, i32* %zone_idx, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i32 @build_zonerefs_node(%struct.pglist_data* noundef %pgdat, %struct.zoneref* nocapture noundef writeonly %zonerefs) unnamed_addr #6 {
entry:
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 3
  %call = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr) #29
  br i1 %call, label %if.then, label %do.cond

if.then:                                          ; preds = %entry
  call fastcc void @zoneref_set_zone(%struct.zone* noundef %add.ptr, %struct.zoneref* noundef %zonerefs) #29
  br label %do.cond

do.cond:                                          ; preds = %entry, %if.then
  %nr_zones.1 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  %add.ptr.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 2
  %call.1 = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr.1) #29
  br i1 %call.1, label %if.then.1, label %do.cond.1

if.then.1:                                        ; preds = %do.cond
  %inc.1 = add nuw nsw i32 %nr_zones.1, 1
  %0 = zext i32 %nr_zones.1 to i64
  %arrayidx.1 = getelementptr %struct.zoneref, %struct.zoneref* %zonerefs, i64 %0
  call fastcc void @zoneref_set_zone(%struct.zone* noundef %add.ptr.1, %struct.zoneref* noundef %arrayidx.1) #29
  br label %do.cond.1

do.cond.1:                                        ; preds = %if.then.1, %do.cond
  %nr_zones.1.1 = phi i32 [ %inc.1, %if.then.1 ], [ %nr_zones.1, %do.cond ]
  %add.ptr.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 1
  %call.2 = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr.2) #29
  br i1 %call.2, label %if.then.2, label %do.cond.2

if.then.2:                                        ; preds = %do.cond.1
  %inc.2 = add nuw nsw i32 %nr_zones.1.1, 1
  %1 = zext i32 %nr_zones.1.1 to i64
  %arrayidx.2 = getelementptr %struct.zoneref, %struct.zoneref* %zonerefs, i64 %1
  call fastcc void @zoneref_set_zone(%struct.zone* noundef %add.ptr.2, %struct.zoneref* noundef %arrayidx.2) #29
  br label %do.cond.2

do.cond.2:                                        ; preds = %if.then.2, %do.cond.1
  %nr_zones.1.2 = phi i32 [ %inc.2, %if.then.2 ], [ %nr_zones.1.1, %do.cond.1 ]
  %add.ptr.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0
  %call.3 = call fastcc i1 @managed_zone(%struct.zone* noundef %add.ptr.3) #29
  br i1 %call.3, label %if.then.3, label %do.cond.3

if.then.3:                                        ; preds = %do.cond.2
  %inc.3 = add nuw nsw i32 %nr_zones.1.2, 1
  %idxprom.310 = zext i32 %nr_zones.1.2 to i64
  %arrayidx.3 = getelementptr %struct.zoneref, %struct.zoneref* %zonerefs, i64 %idxprom.310
  call fastcc void @zoneref_set_zone(%struct.zone* noundef %add.ptr.3, %struct.zoneref* noundef %arrayidx.3) #29
  br label %do.cond.3

do.cond.3:                                        ; preds = %if.then.3, %do.cond.2
  %nr_zones.1.3 = phi i32 [ %inc.3, %if.then.3 ], [ %nr_zones.1.2, %do.cond.2 ]
  ret i32 %nr_zones.1.3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @managed_zone(%struct.zone* noundef %zone) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) #29
  %tobool = icmp ne i64 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @zoneref_set_zone(%struct.zone* noundef %zone, %struct.zoneref* nocapture noundef writeonly %zoneref) unnamed_addr #24 {
entry:
  %zone1 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %zoneref, i64 0, i32 0
  store %struct.zone* %zone, %struct.zone** %zone1, align 8
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  %0 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.zone* %zone to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.pglist_data* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1216
  %conv = trunc i64 %sub.ptr.div to i32
  %zone_idx = getelementptr inbounds %struct.zoneref, %struct.zoneref* %zoneref, i64 0, i32 1
  store i32 %conv, i32* %zone_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @memblock_region_memory_end_pfn(%struct.memblock_region* nocapture noundef readonly %reg) unnamed_addr #2 {
entry:
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %reg, i64 0, i32 0
  %0 = load i64, i64* %base, align 8
  %size = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %reg, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %add = add i64 %1, %0
  %shr = lshr i64 %add, 12
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @memblock_region_memory_base_pfn(%struct.memblock_region* nocapture noundef readonly %reg) unnamed_addr #2 {
entry:
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %reg, i64 0, i32 0
  %0 = load i64, i64* %base, align 8
  %sub = add i64 %0, 4095
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @memblock_is_mirror(%struct.memblock_region* nocapture noundef readonly %m) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %m, i64 0, i32 2
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__mm_zero_struct_page(%struct.page* nocapture noundef writeonly %page) unnamed_addr #7 {
entry:
  %0 = getelementptr %struct.page, %struct.page* %page, i64 0, i32 0
  %arrayidx = getelementptr i64, i64* %0, i64 7
  store i64 0, i64* %arrayidx, align 8
  %arrayidx7 = getelementptr i64, i64* %0, i64 6
  store i64 0, i64* %arrayidx7, align 8
  %arrayidx8 = getelementptr i64, i64* %0, i64 5
  store i64 0, i64* %arrayidx8, align 8
  %arrayidx9 = getelementptr i64, i64* %0, i64 4
  store i64 0, i64* %arrayidx9, align 8
  %arrayidx10 = getelementptr i64, i64* %0, i64 3
  store i64 0, i64* %arrayidx10, align 8
  %arrayidx11 = getelementptr i64, i64* %0, i64 2
  store i64 0, i64* %arrayidx11, align 8
  %arrayidx12 = getelementptr i64, i64* %0, i64 1
  store i64 0, i64* %arrayidx12, align 8
  store i64 0, i64* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_page_links(%struct.page* nocapture noundef %page, i32 noundef %zone) unnamed_addr #24 {
entry:
  call fastcc void @set_page_zone(%struct.page* noundef %page, i32 noundef %zone) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @init_page_count(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  call fastcc void @set_page_count(%struct.page* noundef %page, i32 noundef 1) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_page_zone(%struct.page* nocapture noundef %page, i32 noundef %zone) unnamed_addr #24 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %and = and i64 %0, 4611686018427387903
  %and1 = zext i32 %zone to i64
  %shl = shl i64 %and1, 62
  %or = or i64 %and, %shl
  store i64 %or, i64* %flags, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @zone_batchsize(%struct.zone* noundef %zone) unnamed_addr #25 {
entry:
  %call = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) #29
  %shr = lshr i64 %call, 10
  %cmp = icmp ult i64 %shr, 256
  %cond = select i1 %cmp, i64 %shr, i64 256
  %conv = trunc i64 %cond to i32
  %div = lshr i32 %conv, 2
  %cmp1 = icmp ult i32 %conv, 4
  %spec.store.select = select i1 %cmp1, i32 1, i32 %div
  %div3 = lshr i32 %spec.store.select, 1
  %add = add nuw nsw i32 %div3, %spec.store.select
  %conv28 = zext i32 %add to i64
  %call29 = call fastcc i64 @__rounddown_pow_of_two(i64 noundef %conv28) #36
  %0 = trunc i64 %call29 to i32
  %conv33 = add i32 %0, -1
  ret i32 %conv33
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @zone_highsize(%struct.zone* noundef %zone, i32 noundef %batch, i32 noundef %cpu_online) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @percpu_pagelist_high_fraction, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.zone, %struct.zone* %zone, i64 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx, align 8
  %watermark_boost = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 1
  %2 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %2, %1
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %zone) #29
  %3 = load i32, i32* @percpu_pagelist_high_fraction, align 4
  %conv = sext i32 %3 to i64
  %div = udiv i64 %call, %conv
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %total_pages.0 = phi i64 [ %div, %if.else ], [ %add, %if.then ]
  %call2 = call fastcc i32 @cpumask_weight() #29
  %add3 = add i32 %call2, %cpu_online
  %tobool4.not = icmp eq i32 %add3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i32 @num_online_cpus() #29
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %nr_split_cpus.0 = phi i32 [ %add3, %if.end ], [ %call6, %if.then5 ]
  %conv8 = sext i32 %nr_split_cpus.0 to i64
  %div9 = udiv i64 %total_pages.0, %conv8
  %conv10 = trunc i64 %div9 to i32
  %shl = shl i32 %batch, 2
  %cmp = icmp slt i32 %shl, %conv10
  %cond = select i1 %cmp, i32 %conv10, i32 %shl
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__rounddown_pow_of_two(i64 noundef %n) unnamed_addr #21 {
entry:
  %call = call fastcc i32 @fls_long(i64 noundef %n) #29
  %sub = add i32 %call, -1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #21 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #30, !range !29
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #1 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i32 noundef 256) #28
  ret i32 %call4.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__arch_hweight64(i64 noundef %w) unnamed_addr #1 {
entry:
  %call = call i64 @__sw_hweight64(i64 noundef %w) #28
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__sw_hweight64(i64 noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @calculate_node_totalpages(i64 noundef %node_start_pfn, i64 noundef %node_end_pfn) unnamed_addr #0 section ".init.text" {
entry:
  %zone_start_pfn = alloca i64, align 8
  %zone_end_pfn = alloca i64, align 8
  %0 = bitcast i64* %zone_start_pfn to i8*
  %1 = bitcast i64* %zone_end_pfn to i8*
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %realtotalpages.03 = phi i64 [ 0, %entry ], [ %add6, %for.body ]
  %totalpages.02 = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i64 0, i64* %zone_start_pfn, align 8, !annotation !21
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #30
  store i64 0, i64* %zone_end_pfn, align 8, !annotation !21
  %2 = load i32, i32* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 6), align 16
  %call = call fastcc i64 @zone_spanned_pages_in_node(i32 noundef %2, i64 noundef %indvars.iv, i64 noundef %node_start_pfn, i64 noundef %node_end_pfn, i64* noundef nonnull %zone_start_pfn, i64* noundef nonnull %zone_end_pfn) #35
  %3 = load i32, i32* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 6), align 16
  %call3 = call fastcc i64 @zone_absent_pages_in_node(i32 noundef %3, i64 noundef %indvars.iv, i64 noundef %node_start_pfn, i64 noundef %node_end_pfn) #35
  %sub = sub i64 %call, %call3
  %tobool.not = icmp eq i64 %call, 0
  %4 = load i64, i64* %zone_start_pfn, align 8
  %spec.select = select i1 %tobool.not, i64 0, i64 %4
  %5 = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %indvars.iv, i32 9
  store i64 %spec.select, i64* %5, align 8
  %spanned_pages = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %indvars.iv, i32 11
  store i64 %call, i64* %spanned_pages, align 8
  %present_pages = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %indvars.iv, i32 12
  store i64 %sub, i64* %present_pages, align 64
  %add = add i64 %call, %totalpages.02
  %add6 = add i64 %sub, %realtotalpages.03
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store i64 %add, i64* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 5), align 8
  store i64 %add6, i64* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 4), align 32
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @free_area_init_core() unnamed_addr #0 section ".init.text" {
entry:
  call fastcc void @pgdat_init_internals() #35
  store %struct.per_cpu_nodestat* @boot_nodestats, %struct.per_cpu_nodestat** getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 20), align 64
  br label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cleanup ]
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %indvars.iv
  %spanned_pages = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %indvars.iv, i32 11
  %0 = load i64, i64* %spanned_pages, align 8
  %present_pages = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %indvars.iv, i32 12
  %1 = load i64, i64* %present_pages, align 64
  %call = call fastcc i64 @calc_memmap_size(i64 noundef %0, i64 noundef %1) #35
  %cmp2.not = icmp ult i64 %1, %call
  br i1 %cmp2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %for.body
  %sub = sub i64 %1, %call
  br label %if.end9

do.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @zone_names, i64 0, i64 %indvars.iv
  %2 = load i8*, i8** %arrayidx, align 8
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.52, i64 0, i64 0), i8* noundef %2, i64 noundef %call, i64 noundef %1) #34
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %do.end
  %freesize.0 = phi i64 [ %1, %do.end ], [ %sub, %if.then3 ]
  %cmp10 = icmp eq i64 %indvars.iv, 0
  %3 = load i64, i64* @dma_reserve, align 8
  %cmp11 = icmp ugt i64 %freesize.0, %3
  %4 = select i1 %cmp10, i1 %cmp11, i1 false
  %spec.select = select i1 %4, i64 %3, i64 0
  %freesize.1 = sub i64 %freesize.0, %spec.select
  %5 = load i64, i64* @nr_kernel_pages, align 8
  %add = add i64 %freesize.1, %5
  store i64 %add, i64* @nr_kernel_pages, align 8
  %6 = load i64, i64* @nr_all_pages, align 8
  %add25 = add i64 %freesize.1, %6
  store i64 %add25, i64* @nr_all_pages, align 8
  %7 = trunc i64 %indvars.iv to i32
  call fastcc void @zone_init_internals(%struct.zone* noundef %add.ptr, i32 noundef %7, i64 noundef %freesize.1) #35
  %tobool26.not = icmp eq i64 %0, 0
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end9
  %zone_start_pfn = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %indvars.iv, i32 9
  %8 = load i64, i64* %zone_start_pfn, align 8
  call void @init_currently_empty_zone(%struct.zone* noundef %add.ptr, i64 noundef %8, i64 noundef %0) #35
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn
define internal fastcc i64 @zone_spanned_pages_in_node(i32 noundef %nid, i64 noundef %zone_type, i64 noundef %node_start_pfn, i64 noundef %node_end_pfn, i64* nocapture noundef %zone_start_pfn, i64* nocapture noundef %zone_end_pfn) unnamed_addr #26 section ".init.text" {
entry:
  %arrayidx = getelementptr [4 x i64], [4 x i64]* @arch_zone_lowest_possible_pfn, i64 0, i64 %zone_type
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx1 = getelementptr [4 x i64], [4 x i64]* @arch_zone_highest_possible_pfn, i64 0, i64 %zone_type
  %1 = load i64, i64* %arrayidx1, align 8
  %2 = or i64 %node_end_pfn, %node_start_pfn
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i64 %0, %node_start_pfn
  %cond = select i1 %cmp, i64 %node_start_pfn, i64 %0
  %cmp4 = icmp ult i64 %cond, %1
  %cond8 = select i1 %cmp4, i64 %cond, i64 %1
  store i64 %cond8, i64* %zone_start_pfn, align 8
  %cmp10 = icmp ult i64 %0, %node_end_pfn
  %cond14 = select i1 %cmp10, i64 %node_end_pfn, i64 %0
  %cmp16 = icmp ult i64 %cond14, %1
  %cond20 = select i1 %cmp16, i64 %cond14, i64 %1
  store i64 %cond20, i64* %zone_end_pfn, align 8
  call fastcc void @adjust_zone_range_for_zone_movable(i32 noundef %nid, i64 noundef %zone_type, i64 noundef %node_end_pfn, i64* noundef %zone_start_pfn, i64* noundef %zone_end_pfn) #35
  %3 = load i64, i64* %zone_end_pfn, align 8
  %cmp21 = icmp ult i64 %3, %node_start_pfn
  br i1 %cmp21, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %zone_start_pfn, align 8
  %cmp22 = icmp ugt i64 %4, %node_end_pfn
  br i1 %cmp22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false
  %cmp26 = icmp ult i64 %3, %node_end_pfn
  %cond30 = select i1 %cmp26, i64 %3, i64 %node_end_pfn
  store i64 %cond30, i64* %zone_end_pfn, align 8
  %5 = load i64, i64* %zone_start_pfn, align 8
  %cmp32 = icmp ugt i64 %5, %node_start_pfn
  %cond36 = select i1 %cmp32, i64 %5, i64 %node_start_pfn
  store i64 %cond36, i64* %zone_start_pfn, align 8
  %6 = load i64, i64* %zone_end_pfn, align 8
  %sub = sub i64 %6, %cond36
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end24
  %retval.0 = phi i64 [ %sub, %if.end24 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i64 @zone_absent_pages_in_node(i32 noundef %nid, i64 noundef %zone_type, i64 noundef %node_start_pfn, i64 noundef %node_end_pfn) unnamed_addr #0 section ".init.text" {
entry:
  %zone_start_pfn = alloca i64, align 8
  %zone_end_pfn = alloca i64, align 8
  %arrayidx = getelementptr [4 x i64], [4 x i64]* @arch_zone_lowest_possible_pfn, i64 0, i64 %zone_type
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx1 = getelementptr [4 x i64], [4 x i64]* @arch_zone_highest_possible_pfn, i64 0, i64 %zone_type
  %1 = load i64, i64* %arrayidx1, align 8
  %2 = bitcast i64* %zone_start_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #30
  %3 = bitcast i64* %zone_end_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #30
  %4 = or i64 %node_end_pfn, %node_start_pfn
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i64 %0, %node_start_pfn
  %cond = select i1 %cmp, i64 %node_start_pfn, i64 %0
  %cmp4 = icmp ult i64 %cond, %1
  %cond8 = select i1 %cmp4, i64 %cond, i64 %1
  store i64 %cond8, i64* %zone_start_pfn, align 8
  %cmp10 = icmp ult i64 %0, %node_end_pfn
  %cond14 = select i1 %cmp10, i64 %node_end_pfn, i64 %0
  %cmp16 = icmp ult i64 %cond14, %1
  %cond20 = select i1 %cmp16, i64 %cond14, i64 %1
  store i64 %cond20, i64* %zone_end_pfn, align 8
  call fastcc void @adjust_zone_range_for_zone_movable(i32 noundef %nid, i64 noundef %zone_type, i64 noundef %node_end_pfn, i64* noundef nonnull %zone_start_pfn, i64* noundef nonnull %zone_end_pfn) #35
  %5 = load i64, i64* %zone_start_pfn, align 8
  %6 = load i64, i64* %zone_end_pfn, align 8
  %call = call i64 @__absent_pages_in_range(i32 noundef %nid, i64 noundef %5, i64 noundef %6) #35
  %.b129 = load i1, i1* @mirrored_kernelcore, align 1
  br i1 %.b129, label %land.lhs.true22, label %cleanup

land.lhs.true22:                                  ; preds = %if.end
  %idxprom = sext i32 %nid to i64
  %arrayidx23 = getelementptr [1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx23, align 8
  %tobool24.not = icmp eq i64 %7, 0
  br i1 %tobool24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %8 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %8, i64 %9
  %cmp26132 = icmp ult %struct.memblock_region* %8, %add.ptr
  br i1 %cmp26132, label %for.body, label %cleanup

for.body:                                         ; preds = %if.then25, %for.inc
  %nr_absent.0135 = phi i64 [ %nr_absent.2, %for.inc ], [ %call, %if.then25 ]
  %r.0133 = phi %struct.memblock_region* [ %incdec.ptr, %for.inc ], [ %8, %if.then25 ]
  %call27 = call fastcc i64 @memblock_region_memory_base_pfn(%struct.memblock_region* noundef %r.0133) #29
  %cmp29 = icmp ugt i64 %call27, %5
  %cond33 = select i1 %cmp29, i64 %call27, i64 %5
  %cmp35 = icmp ult i64 %cond33, %6
  %cond39 = select i1 %cmp35, i64 %cond33, i64 %6
  %call40 = call fastcc i64 @memblock_region_memory_end_pfn(%struct.memblock_region* noundef %r.0133) #29
  %cmp42 = icmp ugt i64 %call40, %5
  %cond46 = select i1 %cmp42, i64 %call40, i64 %5
  %cmp48 = icmp ult i64 %cond46, %6
  %cond52 = select i1 %cmp48, i64 %cond46, i64 %6
  switch i64 %zone_type, label %for.inc [
    i64 3, label %land.lhs.true54
    i64 2, label %land.lhs.true59
  ]

land.lhs.true54:                                  ; preds = %for.body
  %call55 = call fastcc i1 @memblock_is_mirror(%struct.memblock_region* noundef %r.0133) #29
  br i1 %call55, label %if.then56, label %for.inc

if.then56:                                        ; preds = %land.lhs.true54
  %sub = sub i64 %nr_absent.0135, %cond39
  %add = add i64 %sub, %cond52
  br label %for.inc

land.lhs.true59:                                  ; preds = %for.body
  %call60 = call fastcc i1 @memblock_is_mirror(%struct.memblock_region* noundef %r.0133) #29
  br i1 %call60, label %for.inc, label %if.then61

if.then61:                                        ; preds = %land.lhs.true59
  %sub62 = sub i64 %nr_absent.0135, %cond39
  %add63 = add i64 %sub62, %cond52
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true54, %if.then56, %land.lhs.true59, %if.then61
  %nr_absent.2 = phi i64 [ %nr_absent.0135, %land.lhs.true59 ], [ %add63, %if.then61 ], [ %nr_absent.0135, %land.lhs.true54 ], [ %add, %if.then56 ], [ %nr_absent.0135, %for.body ]
  %incdec.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %r.0133, i64 1
  %cmp26 = icmp ult %struct.memblock_region* %incdec.ptr, %add.ptr
  br i1 %cmp26, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %if.then25, %if.end, %land.lhs.true22, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %call, %land.lhs.true22 ], [ %call, %if.end ], [ %call, %if.then25 ], [ %nr_absent.2, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #30
  ret i64 %retval.0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn
define internal fastcc void @adjust_zone_range_for_zone_movable(i32 noundef %nid, i64 noundef %zone_type, i64 noundef %node_end_pfn, i64* nocapture noundef %zone_start_pfn, i64* nocapture noundef %zone_end_pfn) unnamed_addr #26 section ".init.text" {
entry:
  %idxprom = sext i32 %nid to i64
  %arrayidx = getelementptr [1 x i64], [1 x i64]* @zone_movable_pfn, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end25, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i64 %zone_type, 3
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  store i64 %0, i64* %zone_start_pfn, align 8
  %1 = load i32, i32* @movable_zone, align 4
  %idxprom4 = sext i32 %1 to i64
  %arrayidx5 = getelementptr [4 x i64], [4 x i64]* @arch_zone_highest_possible_pfn, i64 0, i64 %idxprom4
  %2 = load i64, i64* %arrayidx5, align 8
  %cmp6 = icmp ugt i64 %2, %node_end_pfn
  %cond = select i1 %cmp6, i64 %node_end_pfn, i64 %2
  store i64 %cond, i64* %zone_end_pfn, align 8
  br label %if.end25

if.else:                                          ; preds = %if.then
  %.b1 = load i1, i1* @mirrored_kernelcore, align 1
  %.pre = load i64, i64* %zone_start_pfn, align 8
  %.b1.not = xor i1 %.b1, true
  %cmp10 = icmp ult i64 %.pre, %0
  %or.cond = select i1 %.b1.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %land.lhs.true11, label %if.else18

land.lhs.true11:                                  ; preds = %if.else
  %3 = load i64, i64* %zone_end_pfn, align 8
  %cmp14 = icmp ugt i64 %3, %0
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %land.lhs.true11
  store i64 %0, i64* %zone_end_pfn, align 8
  br label %if.end25

if.else18:                                        ; preds = %if.else, %land.lhs.true11
  %cmp21.not = icmp ult i64 %.pre, %0
  br i1 %cmp21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.else18
  %4 = load i64, i64* %zone_end_pfn, align 8
  store i64 %4, i64* %zone_start_pfn, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then1, %if.else18, %if.then22, %if.then15, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @pgdat_init_internals() unnamed_addr #0 section ".meminit.text" {
entry:
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 7), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @pgdat_init_internals.__key) #28
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 8), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @pgdat_init_internals.__key.54) #28
  call void @lruvec_init(%struct.lruvec* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16)) #28
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define internal fastcc i64 @calc_memmap_size(i64 noundef %spanned_pages, i64 noundef %present_pages) unnamed_addr #17 section ".init.text" {
entry:
  %shr = lshr i64 %present_pages, 4
  %add = add i64 %shr, %present_pages
  %cmp = icmp ult i64 %add, %spanned_pages
  %spec.select = select i1 %cmp, i64 %present_pages, i64 %spanned_pages
  %mul = shl i64 %spec.select, 6
  %add1 = add i64 %mul, 4095
  %shr2 = lshr i64 %add1, 12
  ret i64 %shr2
}

; Function Attrs: cold nofree noinline norecurse nounwind null_pointer_is_valid optsize
define internal fastcc void @zone_init_internals(%struct.zone* noundef %zone, i32 noundef %idx, i64 noundef %remaining_pages) unnamed_addr #16 section ".meminit.text" {
entry:
  %counter.i.i = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 10, i32 0
  store volatile i64 %remaining_pages, i64* %counter.i.i, align 8
  %idxprom = zext i32 %idx to i64
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @zone_names, i64 0, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  %name = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 13
  store i8* %0, i8** %name, align 8
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  store %struct.pglist_data* @contig_page_data, %struct.pglist_data** %zone_pgdat, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 32
  call fastcc void @zone_pcp_init(%struct.zone* noundef %zone) #35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lruvec_init(%struct.lruvec* noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn
define internal fastcc void @zone_pcp_init(%struct.zone* nocapture noundef %zone) unnamed_addr #26 section ".meminit.text" {
entry:
  %per_cpu_pageset = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 5
  store %struct.per_cpu_pages* @boot_pageset, %struct.per_cpu_pages** %per_cpu_pageset, align 16
  %per_cpu_zonestats = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 6
  store %struct.per_cpu_zonestat* @boot_zonestats, %struct.per_cpu_zonestat** %per_cpu_zonestats, align 8
  %pageset_high = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 7
  store i32 0, i32* %pageset_high, align 32
  %pageset_batch = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 8
  store i32 1, i32* %pageset_batch, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i64 @early_calculate_totalpages() unnamed_addr #0 section ".init.text" {
entry:
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %i = alloca i32, align 4
  %nid = alloca i32, align 4
  %0 = bitcast i64* %start_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i64 0, i64* %start_pfn, align 8, !annotation !21
  %1 = bitcast i64* %end_pfn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #30
  store i64 0, i64* %end_pfn, align 8, !annotation !21
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #30
  %3 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #30
  store i32 0, i32* %nid, align 4, !annotation !21
  store i32 -1, i32* %i, align 4
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 1, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef nonnull %nid) #28
  %4 = load i32, i32* %i, align 4
  %cmp5 = icmp sgt i32 %4, -1
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %totalpages.06 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %5 = load i64, i64* %end_pfn, align 8
  %6 = load i64, i64* %start_pfn, align 8
  %sub = add i64 %5, %totalpages.06
  %add = sub i64 %sub, %6
  call void @__next_mem_pfn_range(i32* noundef nonnull %i, i32 noundef 1, i64* noundef nonnull %start_pfn, i64* noundef nonnull %end_pfn, i32* noundef nonnull %nid) #28
  %7 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %totalpages.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret i64 %totalpages.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__nodes_weight() unnamed_addr #1 {
entry:
  %0 = load i64, i64* getelementptr inbounds ([6 x %struct.nodemask_t], [6 x %struct.nodemask_t]* @node_states, i64 0, i64 3, i32 0, i64 0), align 8
  %and3.i = and i64 %0, 1
  %call.i.i = call fastcc i64 @__arch_hweight64(i64 noundef %and3.i) #28
  %conv.i = trunc i64 %call.i.i to i32
  ret i32 %conv.i
}

; Function Attrs: cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize
define internal fastcc void @find_usable_zone_for_movable() unnamed_addr #15 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 3, %entry ], [ %indvars.iv.next, %for.inc ]
  %cmp1 = icmp eq i64 %indvars.iv, 3
  br i1 %cmp1, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [4 x i64], [4 x i64]* @arch_zone_highest_possible_pfn, i64 0, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr [4 x i64], [4 x i64]* @arch_zone_lowest_possible_pfn, i64 0, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx3, align 8
  %cmp4 = icmp ugt i64 %0, %1
  br i1 %cmp4, label %for.end.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.end.split.loop.exit:                          ; preds = %if.end
  %2 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.split.loop.exit
  %zone_index.0.lcssa = phi i32 [ %2, %for.end.split.loop.exit ], [ -1, %for.inc ]
  store i32 %zone_index.0.lcssa, i32* @movable_zone, align 4
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @memmap_init_zone_range(%struct.zone* noundef %zone, i64 noundef %start_pfn, i64 noundef %end_pfn, i64* nocapture noundef %hole_pfn) unnamed_addr #0 section ".init.text" {
entry:
  %zone_start_pfn1 = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 9
  %0 = load i64, i64* %zone_start_pfn1, align 8
  %spanned_pages = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 11
  %1 = load i64, i64* %spanned_pages, align 8
  %add = add i64 %1, %0
  %zone_pgdat = getelementptr inbounds %struct.zone, %struct.zone* %zone, i64 0, i32 4
  %2 = load %struct.pglist_data*, %struct.pglist_data** %zone_pgdat, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.zone* %zone to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.pglist_data* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1216
  %conv = trunc i64 %sub.ptr.div to i32
  %cmp = icmp ult i64 %0, %start_pfn
  %cond = select i1 %cmp, i64 %start_pfn, i64 %0
  %cmp4 = icmp ult i64 %cond, %add
  %cond9 = select i1 %cmp4, i64 %cond, i64 %add
  %cmp11 = icmp ult i64 %0, %end_pfn
  %cond16 = select i1 %cmp11, i64 %end_pfn, i64 %0
  %cmp18 = icmp ult i64 %cond16, %add
  %cond23 = select i1 %cmp18, i64 %cond16, i64 %add
  %cmp24.not = icmp ugt i64 %cond23, %cond9
  br i1 %cmp24.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i64 %cond23, %cond9
  %sext = shl i64 %sub.ptr.div, 32
  %conv26 = ashr exact i64 %sext, 32
  call void @memmap_init_range(i64 noundef %sub, i32 noundef 0, i64 noundef %conv26, i64 noundef %cond9, i64 undef, i32 noundef 0, %struct.vmem_altmap* undef, i32 noundef 1) #35
  %3 = load i64, i64* %hole_pfn, align 8
  %cmp27 = icmp ult i64 %3, %cond9
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end
  call fastcc void @init_unavailable_range(i64 noundef %3, i64 noundef %cond9, i32 noundef %conv, i32 noundef 0) #35
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end
  store i64 %cond23, i64* %hole_pfn, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end30
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_unavailable_range(i64 noundef %spfn, i64 noundef %epfn, i32 noundef %zone, i32 noundef %node) unnamed_addr #0 section ".init.text" {
entry:
  %cmp28 = icmp ult i64 %spfn, %epfn
  br i1 %cmp28, label %for.body.lr.ph, label %if.end15

for.body.lr.ph:                                   ; preds = %entry
  %conv = sext i32 %zone to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %pfn.030 = phi i64 [ %spfn, %for.body.lr.ph ], [ %inc11, %for.inc ]
  %pgcnt.029 = phi i64 [ 0, %for.body.lr.ph ], [ %pgcnt.1, %for.inc ]
  %and = and i64 %pfn.030, -1024
  %call = call i32 @pfn_valid(i64 noundef %and) #28
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %sub5 = or i64 %pfn.030, 1023
  br label %for.inc

if.end:                                           ; preds = %for.body
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr6 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %pfn.030
  call fastcc void @__init_single_page(%struct.page* noundef %add.ptr6, i64 noundef %conv, i32 noundef %node) #35
  %1 = load i64, i64* @memstart_addr, align 8
  %shr7 = ashr i64 %1, 12
  %idx.neg8 = sub nsw i64 0, %shr7
  %add.ptr9 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg8
  %add.ptr10 = getelementptr %struct.page, %struct.page* %add.ptr9, i64 %pfn.030
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %add.ptr10, i64 0, i32 0
  %2 = load i64, i64* %flags.i, align 64
  %or.i.i = or i64 %2, 4096
  store i64 %or.i.i, i64* %flags.i, align 64
  %inc = add i64 %pgcnt.029, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %pgcnt.1 = phi i64 [ %inc, %if.end ], [ %pgcnt.029, %if.then ]
  %pfn.1 = phi i64 [ %pfn.030, %if.end ], [ %sub5, %if.then ]
  %inc11 = add i64 %pfn.1, 1
  %cmp = icmp ult i64 %inc11, %epfn
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %tobool12.not = icmp eq i64 %pgcnt.1, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %for.end
  %idxprom = sext i32 %zone to i64
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @zone_names, i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i32 noundef %node, i8* noundef %3, i64 noundef %pgcnt.1) #34
  br label %if.end15

if.end15:                                         ; preds = %entry, %do.end, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @parse_option_str(i8* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @cmdline_parse_core(i8* noundef %p, i64* nocapture noundef writeonly %core, i64* nocapture noundef writeonly %percent) unnamed_addr #0 section ".init.text" {
entry:
  %p.addr = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #30
  store i8* null, i8** %endptr, align 8, !annotation !21
  %tobool.not = icmp eq i8* %p, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @simple_strtoull(i8* noundef nonnull %p, i8** noundef nonnull %endptr, i32 noundef 0) #28
  %1 = load i8*, i8** %endptr, align 8
  %2 = load i8, i8* %1, align 1
  %cmp = icmp eq i8 %2, 37
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp ugt i64 %call, 100
  br i1 %cmp3, label %if.then13, label %if.end49, !prof !9

if.then13:                                        ; preds = %if.then2
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/page_alloc.c\22; .popsection; .long 14472b - 14470b; .short 8050; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #30, !srcloc !62
  br label %if.end49

if.else:                                          ; preds = %if.end
  %call22 = call i64 @memparse(i8* noundef nonnull %p, i8** noundef nonnull %p.addr) #28
  %shr = lshr i64 %call22, 12
  store i64 %shr, i64* %core, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then2, %if.then13, %if.else
  %storemerge = phi i64 [ 0, %if.else ], [ %call, %if.then13 ], [ %call, %if.then2 ]
  store i64 %storemerge, i64* %percent, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end49
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #30
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(i8* noundef, i8** noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_cpu(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_events_fold_cpu(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_vm_stats_fold(i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !63
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #28
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #28
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @calculate_totalreserve_pages() unnamed_addr #1 {
entry:
  %call = call %struct.pglist_data* @first_online_pgdat() #28
  %tobool.not59 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool.not59, label %for.end24, label %for.end.3

for.end.3:                                        ; preds = %entry, %for.end.3
  %reserve_pages.061 = phi i64 [ %add18.3, %for.end.3 ], [ 0, %entry ]
  %pgdat.060 = phi %struct.pglist_data* [ %call23, %for.end.3 ], [ %call, %entry ]
  %totalreserve_pages = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 13
  store i64 0, i64* %totalreserve_pages, align 64
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 0
  %call3 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %add.ptr) #29
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 0, i32 3, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %cmp7 = icmp sgt i64 %0, 0
  %spec.select = select i1 %cmp7, i64 %0, i64 0
  %arrayidx.168 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 0, i32 3, i64 1
  %1 = load i64, i64* %arrayidx.168, align 8
  %cmp7.169 = icmp sgt i64 %1, %spec.select
  %spec.select.170 = select i1 %cmp7.169, i64 %1, i64 %spec.select
  %arrayidx.272 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 0, i32 3, i64 2
  %2 = load i64, i64* %arrayidx.272, align 8
  %cmp7.273 = icmp sgt i64 %2, %spec.select.170
  %spec.select.274 = select i1 %cmp7.273, i64 %2, i64 %spec.select.170
  %arrayidx.378 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 0, i32 3, i64 3
  %3 = load i64, i64* %arrayidx.378, align 8
  %cmp7.379 = icmp sgt i64 %3, %spec.select.274
  %spec.select.380 = select i1 %cmp7.379, i64 %3, i64 %spec.select.274
  %arrayidx11 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 0, i32 0, i64 2
  %4 = load i64, i64* %arrayidx11, align 16
  %watermark_boost = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 0, i32 1
  %5 = load i64, i64* %watermark_boost, align 8
  %add = add i64 %4, %spec.select.380
  %add12 = add i64 %add, %5
  %cmp13 = icmp ugt i64 %add12, %call3
  %spec.select52 = select i1 %cmp13, i64 %call3, i64 %add12
  %6 = load i64, i64* %totalreserve_pages, align 64
  %add17 = add i64 %spec.select52, %6
  store i64 %add17, i64* %totalreserve_pages, align 64
  %add18 = add i64 %spec.select52, %reserve_pages.061
  %add.ptr.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 1
  %call3.1 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %add.ptr.1) #29
  %arrayidx.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 1, i32 3, i64 1
  %7 = load i64, i64* %arrayidx.1, align 8
  %cmp7.1 = icmp sgt i64 %7, 0
  %spec.select.1 = select i1 %cmp7.1, i64 %7, i64 0
  %arrayidx.1.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 1, i32 3, i64 2
  %8 = load i64, i64* %arrayidx.1.1, align 8
  %cmp7.1.1 = icmp sgt i64 %8, %spec.select.1
  %spec.select.1.1 = select i1 %cmp7.1.1, i64 %8, i64 %spec.select.1
  %arrayidx.1.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 1, i32 3, i64 3
  %9 = load i64, i64* %arrayidx.1.2, align 8
  %cmp7.1.2 = icmp sgt i64 %9, %spec.select.1.1
  %spec.select.1.2 = select i1 %cmp7.1.2, i64 %9, i64 %spec.select.1.1
  %arrayidx11.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 1, i32 0, i64 2
  %10 = load i64, i64* %arrayidx11.1, align 16
  %watermark_boost.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 1, i32 1
  %11 = load i64, i64* %watermark_boost.1, align 8
  %add.1 = add i64 %10, %spec.select.1.2
  %add12.1 = add i64 %add.1, %11
  %cmp13.1 = icmp ugt i64 %add12.1, %call3.1
  %spec.select52.1 = select i1 %cmp13.1, i64 %call3.1, i64 %add12.1
  %12 = load i64, i64* %totalreserve_pages, align 64
  %add17.1 = add i64 %spec.select52.1, %12
  store i64 %add17.1, i64* %totalreserve_pages, align 64
  %add18.1 = add i64 %spec.select52.1, %add18
  %add.ptr.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 2
  %call3.2 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %add.ptr.2) #29
  %arrayidx.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 2, i32 3, i64 2
  %13 = load i64, i64* %arrayidx.2, align 8
  %cmp7.2 = icmp sgt i64 %13, 0
  %spec.select.2 = select i1 %cmp7.2, i64 %13, i64 0
  %arrayidx.2.1 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 2, i32 3, i64 3
  %14 = load i64, i64* %arrayidx.2.1, align 8
  %cmp7.2.1 = icmp sgt i64 %14, %spec.select.2
  %spec.select.2.1 = select i1 %cmp7.2.1, i64 %14, i64 %spec.select.2
  %arrayidx11.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 2, i32 0, i64 2
  %15 = load i64, i64* %arrayidx11.2, align 16
  %watermark_boost.2 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 2, i32 1
  %16 = load i64, i64* %watermark_boost.2, align 8
  %add.2 = add i64 %15, %spec.select.2.1
  %add12.2 = add i64 %add.2, %16
  %cmp13.2 = icmp ugt i64 %add12.2, %call3.2
  %spec.select52.2 = select i1 %cmp13.2, i64 %call3.2, i64 %add12.2
  %17 = load i64, i64* %totalreserve_pages, align 64
  %add17.2 = add i64 %spec.select52.2, %17
  store i64 %add17.2, i64* %totalreserve_pages, align 64
  %add18.2 = add i64 %spec.select52.2, %add18.1
  %add.ptr.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 3
  %call3.3 = call fastcc i64 @zone_managed_pages(%struct.zone* noundef %add.ptr.3) #29
  %arrayidx.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 3, i32 3, i64 3
  %18 = load i64, i64* %arrayidx.3, align 8
  %cmp7.3 = icmp sgt i64 %18, 0
  %spec.select.3 = select i1 %cmp7.3, i64 %18, i64 0
  %arrayidx11.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 3, i32 0, i64 2
  %19 = load i64, i64* %arrayidx11.3, align 16
  %watermark_boost.3 = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat.060, i64 0, i32 0, i64 3, i32 1
  %20 = load i64, i64* %watermark_boost.3, align 8
  %add.3 = add i64 %19, %spec.select.3
  %add12.3 = add i64 %add.3, %20
  %cmp13.3 = icmp ugt i64 %add12.3, %call3.3
  %spec.select52.3 = select i1 %cmp13.3, i64 %call3.3, i64 %add12.3
  %21 = load i64, i64* %totalreserve_pages, align 64
  %add17.3 = add i64 %spec.select52.3, %21
  store i64 %add17.3, i64* %totalreserve_pages, align 64
  %add18.3 = add i64 %spec.select52.3, %add18.2
  %call23 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.060) #28
  %tobool.not = icmp eq %struct.pglist_data* %call23, null
  br i1 %tobool.not, label %for.end24, label %for.end.3

for.end24:                                        ; preds = %for.end.3, %entry
  %reserve_pages.0.lcssa = phi i64 [ 0, %entry ], [ %add18.3, %for.end.3 ]
  store i64 %reserve_pages.0.lcssa, i64* @totalreserve_pages, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #29
  call void asm sideeffect "", "~{memory}"() #30, !srcloc !64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @pageset_update(%struct.per_cpu_pages* noundef %pcp, i64 noundef %high, i64 noundef %batch) unnamed_addr #6 {
entry:
  %conv = trunc i64 %batch to i32
  %batch3 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 2
  store volatile i32 %conv, i32* %batch3, align 8
  %conv10 = trunc i64 %high to i32
  %high11 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %pcp, i64 0, i32 1
  store volatile i32 %conv10, i32* %high11, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #27

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #27

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #13 = { mustprogress nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #15 = { cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { cold nofree noinline norecurse nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #22 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #23 = { nofree nounwind readonly }
attributes #24 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #25 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #26 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #27 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #28 = { nobuiltin nounwind "no-builtins" }
attributes #29 = { nobuiltin "no-builtins" }
attributes #30 = { nounwind }
attributes #31 = { nounwind readonly }
attributes #32 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #33 = { nounwind readnone }
attributes #34 = { cold nobuiltin nounwind "no-builtins" }
attributes #35 = { cold nobuiltin "no-builtins" }
attributes #36 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #37 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{i32 0, i32 256}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149273746}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149275492}
!14 = !{i64 2149277877}
!15 = !{i64 2149279623}
!16 = !{i64 2135875}
!17 = !{i64 2149377567, i64 2149377614, i64 2149377620, i64 2149377657, i64 2149377675, i64 2149378602, i64 2149378650, i64 2149378698, i64 2149378761, i64 2149378810, i64 2149377753, i64 2149377778, i64 2149377804, i64 2149377810, i64 2149377847, i64 2149377853, i64 2149377903, i64 2149377949, i64 2149377982}
!18 = !{i64 2156097077}
!19 = !{i64 2149361261, i64 2149361308, i64 2149361314, i64 2149361351, i64 2149361369, i64 2149362680, i64 2149362728, i64 2149362776, i64 2149362839, i64 2149362888, i64 2149361447, i64 2149361472, i64 2149361498, i64 2149361504, i64 2149362346, i64 2149362386, i64 2149362404, i64 2149362436, i64 2149362464, i64 2149362518, i64 2149362538, i64 2149362635, i64 2149361527, i64 2149361541, i64 2149361547, i64 2149361597, i64 2149361643, i64 2149361676}
!20 = !{i64 2156163203}
!21 = !{!"auto-init"}
!22 = !{i64 1617996}
!23 = !{!"branch_weights", i32 1, i32 4001}
!24 = !{i64 2156212224}
!25 = !{i64 2156198364}
!26 = !{i64 2156200354}
!27 = !{i64 2156202062}
!28 = !{i64 2156203722}
!29 = !{i64 0, i64 65}
!30 = !{i64 2156227071}
!31 = !{i64 2156233181}
!32 = !{i32 0, i32 4}
!33 = !{i64 2156262972}
!34 = !{i64 2156263614}
!35 = !{i64 2149789421}
!36 = !{i64 2156426884}
!37 = !{i64 2156469466}
!38 = !{i64 2156495001}
!39 = !{i64 2156505513}
!40 = !{i64 0, i64 562949953421312}
!41 = !{i64 2148329496, i64 2148329529, i64 2148329580, i64 2148329636, i64 2148329669, i64 2148329724, i64 2148329753, i64 2148329780}
!42 = !{i64 2148255462, i64 2148255976, i64 2148256006, i64 2148256032, i64 2148256064, i64 2148256093}
!43 = !{i64 2153892964}
!44 = !{i64 2153895222}
!45 = !{i64 2152374196}
!46 = !{i64 2152374403}
!47 = !{i64 2135743}
!48 = !{i64 2156095668}
!49 = !{i64 2156095716}
!50 = !{i64 2148283856, i64 2148284367, i64 2148284397, i64 2148284423, i64 2148284455, i64 2148284484}
!51 = !{i64 2148294426, i64 2148294947, i64 2148294977, i64 2148295003, i64 2148295035, i64 2148295064}
!52 = !{i64 2149355248, i64 2149355295, i64 2149355301, i64 2149355338, i64 2149355356, i64 2149356667, i64 2149356715, i64 2149356763, i64 2149356826, i64 2149356875, i64 2149355434, i64 2149355459, i64 2149355485, i64 2149355491, i64 2149356333, i64 2149356373, i64 2149356391, i64 2149356423, i64 2149356451, i64 2149356505, i64 2149356525, i64 2149356622, i64 2149355514, i64 2149355528, i64 2149355534, i64 2149355584, i64 2149355630, i64 2149355663}
!53 = !{i64 2149357427, i64 2149357474, i64 2149357480, i64 2149357517, i64 2149357535, i64 2149358478, i64 2149358526, i64 2149358574, i64 2149358637, i64 2149358686, i64 2149357613, i64 2149357638, i64 2149357664, i64 2149357670, i64 2149357707, i64 2149357713, i64 2149357763, i64 2149357809, i64 2149357842}
!54 = !{i64 2149349545, i64 2149349592, i64 2149349598, i64 2149349635, i64 2149349653, i64 2149350994, i64 2149351042, i64 2149351090, i64 2149351153, i64 2149351202, i64 2149349731, i64 2149349756, i64 2149349782, i64 2149349788, i64 2149350660, i64 2149350700, i64 2149350718, i64 2149350750, i64 2149350778, i64 2149350832, i64 2149350852, i64 2149350949, i64 2149349811, i64 2149349825, i64 2149349831, i64 2149349881, i64 2149349927, i64 2149349960}
!55 = !{i64 2156179042}
!56 = !{i64 2156188438}
!57 = !{i64 2148225349, i64 2148225997, i64 2148226027, i64 2148226059, i64 2148226093, i64 2148226129, i64 2148226154}
!58 = !{i64 2148214776, i64 2148215292, i64 2148215322, i64 2148215349, i64 2148215383, i64 2148215413}
!59 = !{i64 2148314699, i64 2148314732, i64 2148314785, i64 2148314844, i64 2148314878, i64 2148314933, i64 2148314962, i64 2148314982}
!60 = !{i64 2149815264}
!61 = !{i64 2149603933}
!62 = !{i64 2156457744}
!63 = !{i64 2149804422}
!64 = !{i64 2149811703}
