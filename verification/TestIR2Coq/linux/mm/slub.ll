; ModuleID = 'mm/slub.c'
source_filename = "mm/slub.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_slub__492_6032_slab_sysfs_init6:\09\09\09"
module asm ".long\09slab_sysfs_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.kmem_cache = type { %struct.kmem_cache_cpu*, i32, i64, i32, i32, %struct.reciprocal_value, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, void (i8*)*, i32, i32, i32, i8*, %struct.list_head, %struct.kobject, i32, i32, [1 x %struct.kmem_cache_node*] }
%struct.kmem_cache_cpu = type { i8**, i64, %struct.page*, %struct.local_lock_t }
%struct.page = type { i64, %union.anon, %union.anon.69, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
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
%struct.kref = type { %struct.refcount_struct }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.69 = type { %struct.atomic_t }
%struct.local_lock_t = type {}
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.45, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.45 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kmem_cache_node = type { %struct.spinlock, i64, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t, %struct.list_head }
%struct.nodemask_t = type { [1 x i64] }
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
%struct.slub_flush_work = type { %struct.work_struct, %struct.kmem_cache*, i8 }
%struct.slab_attribute = type { %struct.attribute, i64 (%struct.kmem_cache*, i8*)*, i64 (%struct.kmem_cache*, i8*, i64)* }
%struct.saved_alias = type { %struct.kmem_cache*, i8*, %struct.saved_alias* }
%struct.track = type { i64, i32, i32, i64 }
%struct.va_format = type { i8*, %"struct.std::__va_list"* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.detached_freelist = type { %struct.page*, i8*, i8*, i32, %struct.kmem_cache* }
%struct.kmem_obj_info = type { i8*, %struct.page*, i8*, i64, %struct.kmem_cache*, i8*, [16 x i8*], [16 x i8*] }
%struct.slabinfo = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.anon.63 = type { i64, i8, i8, %struct.atomic_t, i32 }

@slub_debug_enabled = dso_local global %struct.static_key_false zeroinitializer, align 4
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Freed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__setup_str_setup_slub_debug = internal constant [11 x i8] c"slub_debug\00", section ".init.rodata", align 1
@__setup_setup_slub_debug = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_setup_slub_debug, i32 0, i32 0), i32 (i8*)* @setup_slub_debug, i32 0 }, section ".init.setup", align 8
@slub_debug = internal unnamed_addr global i32 0, align 4
@slub_debug_string = internal unnamed_addr global i8* null, align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@__setup_str_setup_slub_min_order = internal constant [16 x i8] c"slub_min_order=\00", section ".init.rodata", align 1
@__setup_setup_slub_min_order = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__setup_str_setup_slub_min_order, i32 0, i32 0), i32 (i8*)* @setup_slub_min_order, i32 0 }, section ".init.setup", align 8
@__setup_str_setup_slub_max_order = internal constant [16 x i8] c"slub_max_order=\00", section ".init.rodata", align 1
@__setup_setup_slub_max_order = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__setup_str_setup_slub_max_order, i32 0, i32 0), i32 (i8*)* @setup_slub_max_order, i32 0 }, section ".init.setup", align 8
@__setup_str_setup_slub_min_objects = internal constant [18 x i8] c"slub_min_objects=\00", section ".init.rodata", align 1
@__setup_setup_slub_min_objects = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__setup_str_setup_slub_min_objects, i32 0, i32 0), i32 (i8*)* @setup_slub_min_objects, i32 0 }, section ".init.setup", align 8
@kmem_cache_init.boot_kmem_cache = internal global %struct.kmem_cache zeroinitializer, section ".init.data", align 8
@kmem_cache_init.boot_kmem_cache_node = internal global %struct.kmem_cache zeroinitializer, section ".init.data", align 8
@slub_max_order = internal global i32 3, align 4
@kmem_cache_node = internal unnamed_addr global %struct.kmem_cache* null, align 8
@kmem_cache = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@slab_nodes = internal global %struct.nodemask_t zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"kmem_cache_node\00", align 1
@slab_state = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"kmem_cache\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"slub:dead\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"\016SLUB: HWalign=%d, Order=%u-%u, MinObjects=%u, CPUs=%u, Nodes=%u\0A\00", align 1
@slub_min_order = internal global i32 0, align 4
@slub_min_objects = internal global i32 0, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__UNIQUE_ID___addressable_slab_sysfs_init493 = internal global i8* bitcast (i32 ()* @slab_sysfs_init to i8*), section ".discard.addressable", align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"\013%s in %pS age=%lu cpu=%u pid=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"\013=============================================================================\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"\013BUG %s (%s): %pV\0A\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"\013-----------------------------------------------------------------------------\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\013Object 0x%p @offset=%tu fp=0x%p\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Redzone  \00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Bytes b4 \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Object   \00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Padding  \00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"\013Slab 0x%p objects=%u used=%u fp=0x%p flags=%#lx(%pGp)\0A\00", align 1
@init_on_alloc = external dso_local global %struct.static_key_false, align 4
@init_on_free = external dso_local global %struct.static_key_false, align 4
@.str.18 = private unnamed_addr constant [83 x i8] c"\016mem auto-init: SLAB_POISON will take precedence over init_on_alloc/init_on_free\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\013slub_debug option '%c' unknown. skipped\0A\00", align 1
@disable_higher_order_debug = internal unnamed_addr global i1 false, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"%s: Wrong slab cache. %s but object is from %s\0A\00", align 1
@__func__.cache_from_obj = private unnamed_addr constant [15 x i8] c"cache_from_obj\00", align 1
@virt_to_cache.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"%s: Object is not a Slab page!\0A\00", align 1
@__func__.virt_to_cache = private unnamed_addr constant [14 x i8] c"virt_to_cache\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Bulk freelist count(%d) invalid(%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Object at 0x%p not freed\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Not a valid slab page\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"objects %u > max %u\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"inuse %u > max %u\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"Padding overwritten. 0x%p-0x%p @offset=%tu\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Padding \00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"slab padding\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"Restoring %s 0x%p-0x%p=0x%x\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Invalid object pointer 0x%p\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Object already free\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Attempt to free object(0x%p) outside of slab\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"\013SLUB <none>: no slab for object 0x%p.\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"page slab pointer corrupt.\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Freechain corrupt\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"Freepointer corrupt\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Freelist cleared\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"Wrong number of objects. Found %d but should be %d\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Number of objects adjusted\00", align 1
@.str.45 = private unnamed_addr constant [54 x i8] c"Wrong object count. Counter is %d but counted were %d\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Object count adjusted\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Left Redzone\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Right Redzone\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"Alignment padding\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"Poison\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"End Poison\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"%s overwritten\00", align 1
@.str.53 = private unnamed_addr constant [58 x i8] c"\0130x%p-0x%p @offset=%tu. First byte 0x%x instead of 0x%x\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Object padding\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.55 = private unnamed_addr constant [37 x i8] c"\016TRACE %s %s 0x%p inuse=%d fp=0x%p\0A\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"Object \00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"\013FIX %s: %pV\0A\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@gfp_allowed_mask = external dso_local local_unnamed_addr global i32, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.63 = private unnamed_addr constant [28 x i8] c"Isolate corrupted freechain\00", align 1
@slab_out_of_memory.slub_oom_rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.slab_out_of_memory = private unnamed_addr constant [19 x i8] c"slab_out_of_memory\00", align 1
@.str.65 = private unnamed_addr constant [61 x i8] c"\014SLUB: Unable to allocate memory on node %d, gfp=%#x(%pGg)\0A\00", align 1
@.str.66 = private unnamed_addr constant [83 x i8] c"\014  cache: %s, object size: %u, buffer size: %u, default order: %u, min order: %u\0A\00", align 1
@.str.67 = private unnamed_addr constant [68 x i8] c"\014  %s debugging increased min order, use slub_debug=O to disable.\0A\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"\014  node %d: slabs: %ld, objs: %ld, free: %ld\0A\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"Marking all objects used\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"Freelist Pointer check fails\00", align 1
@flush_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @flush_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @flush_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@slub_flush = internal global %struct.slub_flush_work zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.71 = private unnamed_addr constant [51 x i8] c"Objects remaining in %s on __kmem_cache_shutdown()\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"\013Object 0x%p @offset=%tu\0A\00", align 1
@object_map_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@object_map = internal global [512 x i64] zeroinitializer, align 8
@slab_mutex = external dso_local global %struct.mutex, align 8
@slab_caches = external dso_local global %struct.list_head, align 8
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.76 = private unnamed_addr constant [54 x i8] c"\013SLUB %s: %ld partial slabs counted but counter=%ld\0A\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"\013SLUB: %s %ld slabs counted but counter=%ld\0A\00", align 1
@slab_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @kmem_cache_release, %struct.sysfs_ops* @slab_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@slab_kset = internal unnamed_addr global %struct.kset* null, align 8
@slab_attr_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([29 x %struct.attribute*], [29 x %struct.attribute*]* @slab_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@slab_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @slab_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @slab_attr_store }, align 8
@.str.78 = private unnamed_addr constant [5 x i8] c"%07u\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@slab_attrs = internal global [29 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @slab_size_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @object_size_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @objs_per_slab_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @order_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @min_partial_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @cpu_partial_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @objects_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @objects_partial_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @partial_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @cpu_slabs_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @ctor_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @aliases_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @align_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @hwcache_align_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @reclaim_account_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @destroy_by_rcu_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @shrink_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @slabs_cpu_partial_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @total_objects_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @slabs_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @sanity_checks_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @trace_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @red_zone_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @poison_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @store_user_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @validate_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @cache_dma_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.slab_attribute, %struct.slab_attribute* @usersize_attr, i32 0, i32 0), %struct.attribute* null], align 8
@slab_size_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @slab_size_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@object_size_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @object_size_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@objs_per_slab_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @objs_per_slab_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@order_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @order_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@min_partial_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i16 384 }, i64 (%struct.kmem_cache*, i8*)* @min_partial_show, i64 (%struct.kmem_cache*, i8*, i64)* @min_partial_store }, align 8
@cpu_partial_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i16 384 }, i64 (%struct.kmem_cache*, i8*)* @cpu_partial_show, i64 (%struct.kmem_cache*, i8*, i64)* @cpu_partial_store }, align 8
@objects_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @objects_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@objects_partial_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @objects_partial_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@partial_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @partial_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@cpu_slabs_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @cpu_slabs_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@ctor_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @ctor_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@aliases_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @aliases_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@align_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @align_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@hwcache_align_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @hwcache_align_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@reclaim_account_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @reclaim_account_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@destroy_by_rcu_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @destroy_by_rcu_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@shrink_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i16 384 }, i64 (%struct.kmem_cache*, i8*)* @shrink_show, i64 (%struct.kmem_cache*, i8*, i64)* @shrink_store }, align 8
@slabs_cpu_partial_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @slabs_cpu_partial_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@total_objects_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.105, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @total_objects_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@slabs_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @slabs_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@sanity_checks_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @sanity_checks_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@trace_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @trace_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@red_zone_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @red_zone_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@poison_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @poison_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@store_user_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @store_user_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@validate_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i16 384 }, i64 (%struct.kmem_cache*, i8*)* @validate_show, i64 (%struct.kmem_cache*, i8*, i64)* @validate_store }, align 8
@cache_dma_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @cache_dma_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@usersize_attr = internal global %struct.slab_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i16 256 }, i64 (%struct.kmem_cache*, i8*)* @usersize_show, i64 (%struct.kmem_cache*, i8*, i64)* null }, align 8
@.str.79 = private unnamed_addr constant [10 x i8] c"slab_size\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"object_size\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"objs_per_slab\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"min_partial\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"cpu_partial\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"objects_partial\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"cpu_slabs\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"ctor\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"%pS\0A\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"hwcache_align\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"reclaim_account\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"destroy_by_rcu\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"slabs_cpu_partial\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"%d(%d)\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"total_objects\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"slabs\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"sanity_checks\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"red_zone\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"poison\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"store_user\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"validate\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"cache_dma\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"usersize\00", align 1
@alias_list = internal unnamed_addr global %struct.saved_alias* null, align 8
@.str.115 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global %struct.kobject*, align 8
@.str.116 = private unnamed_addr constant [35 x i8] c"\013Cannot register slab subsystem.\0A\00", align 1
@.str.117 = private unnamed_addr constant [45 x i8] c"\013SLUB: Unable to add boot slab %s to sysfs\0A\00", align 1
@.str.118 = private unnamed_addr constant [51 x i8] c"\013SLUB: Unable to add boot slab alias %s to sysfs\0A\00", align 1
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_slab_sysfs_init493 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_setup_slub_debug to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_setup_slub_max_order to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_setup_slub_min_objects to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_setup_slub_min_order to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i8* @fixup_red_left(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef readnone %p) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @kmem_cache_debug_flags(%struct.kmem_cache* noundef %s, i32 noundef 1024) #23
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %red_left_pad = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 15
  %0 = load i32, i32* %red_left_pad, align 8
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr i8, i8* %p, i64 %idx.ext
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %p.addr.0 = phi i8* [ %add.ptr, %if.then ], [ %p, %entry ]
  ret i8* %p.addr.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @kmem_cache_debug_flags(%struct.kmem_cache* nocapture noundef readonly %s, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__slub_debug_enabled() #23
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags1, align 8
  %and = and i32 %0, %flags
  %tobool = icmp ne i32 %and, 0
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i1 [ %tobool, %if.then ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @print_tracking(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef readonly %object) local_unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.track* @get_track(%struct.kmem_cache* noundef %s, i8* noundef %object, i32 noundef 0) #23
  call fastcc void @print_track(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.track* noundef %call, i64 noundef %0) #23
  %call1 = call fastcc %struct.track* @get_track(%struct.kmem_cache* noundef %s, i8* noundef %object, i32 noundef 1) #23
  call fastcc void @print_track(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.track* noundef %call1, i64 noundef %0) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_track(i8* noundef %s, %struct.track* nocapture noundef readonly %t, i64 noundef %pr_time) unnamed_addr #1 {
entry:
  %addr = getelementptr inbounds %struct.track, %struct.track* %t, i64 0, i32 0
  %0 = load i64, i64* %addr, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %return, label %do.end

do.end:                                           ; preds = %entry
  %1 = inttoptr i64 %0 to i8*
  %when = getelementptr inbounds %struct.track, %struct.track* %t, i64 0, i32 3
  %2 = load i64, i64* %when, align 8
  %sub = sub i64 %pr_time, %2
  %cpu = getelementptr inbounds %struct.track, %struct.track* %t, i64 0, i32 1
  %3 = load i32, i32* %cpu, align 8
  %pid = getelementptr inbounds %struct.track, %struct.track* %t, i64 0, i32 2
  %4 = load i32, i32* %pid, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef %s, i8* noundef nonnull %1, i64 noundef %sub, i32 noundef %3, i32 noundef %4) #24
  br label %return

return:                                           ; preds = %entry, %do.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.track* @get_track(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef readnone %object, i32 noundef %alloc) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @get_info_end(%struct.kmem_cache* noundef %s) #23
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %object, i64 %idx.ext
  %0 = bitcast i8* %add.ptr to %struct.track*
  %idx.ext1 = zext i32 %alloc to i64
  %add.ptr2 = getelementptr %struct.track, %struct.track* %0, i64 %idx.ext1
  ret %struct.track* %add.ptr2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @object_err(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef %reason) local_unnamed_addr #1 {
entry:
  call void (%struct.kmem_cache*, i8*, ...) @slab_bug(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %reason) #23
  call fastcc void @print_trailer(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object) #23
  call void @add_taint(i32 noundef 5, i32 noundef 1) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @slab_bug(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %fmt, ...) unnamed_addr #1 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #26
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !8
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0)) #24
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %2 = load i8*, i8** %name, align 8
  %call7 = call i8* @print_tainted() #25
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* noundef %2, i8* noundef %call7, %struct.va_format* noundef nonnull %vaf) #24
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0)) #24
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #26
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_trailer(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %p) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  call void @print_tracking(%struct.kmem_cache* noundef %s, i8* noundef %p) #23
  call fastcc void @print_page_info(%struct.page* noundef %page) #23
  %sub.ptr.lhs.cast = ptrtoint i8* %p to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %add.i
  %call1 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %p) #23
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* noundef %p, i64 noundef %sub.ptr.sub, i8* noundef %call1) #24
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %red_left_pad = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 15
  %2 = load i32, i32* %red_left_pad, align 8
  %idx.ext = zext i32 %2 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr i8, i8* %p, i64 %idx.neg
  call fastcc void @print_section(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef %add.ptr, i32 noundef %2) #23
  br label %if.end7

if.else:                                          ; preds = %entry
  %3 = inttoptr i64 %add.i to i8*
  %add.ptr4 = getelementptr i8, i8* %3, i64 16
  %cmp = icmp ult i8* %add.ptr4, %p
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.else
  %add.ptr6 = getelementptr i8, i8* %p, i64 -16
  call fastcc void @print_section(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef %add.ptr6, i32 noundef 16) #23
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5, %if.then
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %4 = load i32, i32* %object_size, align 4
  %cmp9 = icmp ult i32 %4, 4096
  %cond = select i1 %cmp9, i32 %4, i32 4096
  call fastcc void @print_section(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* noundef %p, i32 noundef %cond) #23
  %5 = load i32, i32* %flags, align 8
  %and11 = and i32 %5, 1024
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end7
  %6 = load i32, i32* %object_size, align 4
  %idx.ext15 = zext i32 %6 to i64
  %add.ptr16 = getelementptr i8, i8* %p, i64 %idx.ext15
  %inuse = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  %7 = load i32, i32* %inuse, align 8
  %sub = sub i32 %7, %6
  call fastcc void @print_section(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef %add.ptr16, i32 noundef %sub) #23
  %.pre = load i32, i32* %flags, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end7
  %8 = phi i32 [ %.pre, %if.then13 ], [ %5, %if.end7 ]
  %call19 = call fastcc i32 @get_info_end(%struct.kmem_cache* noundef %s) #23
  %and21 = and i32 %8, 65536
  %tobool22.not = icmp eq i32 %and21, 0
  %add = add i32 %call19, 48
  %spec.select = select i1 %tobool22.not, i32 %call19, i32 %add
  %call30 = call fastcc i32 @size_from_object(%struct.kmem_cache* noundef %s) #23
  %cmp31.not = icmp eq i32 %call30, %spec.select
  br i1 %cmp31.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end18
  %idx.ext34 = zext i32 %spec.select to i64
  %add.ptr35 = getelementptr i8, i8* %p, i64 %idx.ext34
  %sub37 = sub i32 %call30, %spec.select
  call fastcc void @print_section(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* noundef %add.ptr35, i32 noundef %sub37) #23
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end18
  call void @dump_stack() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_slub_debug(i8* noundef %str) #5 section ".init.text" {
entry:
  %flags = alloca i32, align 4
  %slab_list = alloca i8*, align 8
  %0 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #26
  store i32 0, i32* %flags, align 4, !annotation !8
  %1 = bitcast i8** %slab_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #26
  store i8* null, i8** %slab_list, align 8, !annotation !8
  %incdec.ptr = getelementptr i8, i8* %str, i64 1
  %2 = load i8, i8* %str, align 1
  %cmp.not = icmp eq i8 %2, 61
  br i1 %cmp.not, label %lor.lhs.false, label %out.thread

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %out.thread, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false
  %tobool2.not56 = icmp eq i8* %incdec.ptr, null
  br i1 %tobool2.not56, label %while.end.out_crit_edge, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %str.addr.060 = phi i8* [ %call, %while.body ], [ %incdec.ptr, %while.cond.preheader ]
  %global_flags.059 = phi i32 [ %global_flags.1, %while.body ], [ 68864, %while.cond.preheader ]
  %slab_list_specified.0.off058 = phi i1 [ %slab_list_specified.1.off0, %while.body ], [ false, %while.cond.preheader ]
  %global_slub_debug_changed.0.off057 = phi i1 [ %global_slub_debug_changed.1.off0, %while.body ], [ false, %while.cond.preheader ]
  %call = call fastcc i8* @parse_slub_debug_flags(i8* noundef nonnull %str.addr.060, i32* noundef nonnull %flags, i8** noundef nonnull %slab_list, i1 noundef true) #23
  %4 = load i8*, i8** %slab_list, align 8
  %tobool3.not = icmp eq i8* %4, null
  %5 = load i32, i32* %flags, align 4
  %global_slub_debug_changed.1.off0 = select i1 %tobool3.not, i1 true, i1 %global_slub_debug_changed.0.off057
  %not.tobool3.not = xor i1 %tobool3.not, true
  %slab_list_specified.1.off0 = select i1 %not.tobool3.not, i1 true, i1 %slab_list_specified.0.off058
  %global_flags.1 = select i1 %tobool3.not, i32 %5, i32 %global_flags.059
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  br i1 %slab_list_specified.1.off0, label %if.then7, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.cond.preheader, %while.end
  %global_flags.0.lcssa66 = phi i32 [ %global_flags.1, %while.end ], [ 68864, %while.cond.preheader ]
  %.pre = load i8*, i8** @slub_debug_string, align 8
  br label %out

if.then7:                                         ; preds = %while.end
  %6 = load i32, i32* @slub_debug, align 4
  %spec.select = select i1 %global_slub_debug_changed.1.off0, i32 %global_flags.1, i32 %6
  store i8* %incdec.ptr, i8** @slub_debug_string, align 8
  br label %out

out.thread:                                       ; preds = %entry, %lor.lhs.false
  store i32 68864, i32* @slub_debug, align 4
  br label %if.then16

out:                                              ; preds = %while.end.out_crit_edge, %if.then7
  %7 = phi i8* [ %incdec.ptr, %if.then7 ], [ %.pre, %while.end.out_crit_edge ]
  %global_flags.3 = phi i32 [ %spec.select, %if.then7 ], [ %global_flags.0.lcssa66, %while.end.out_crit_edge ]
  store i32 %global_flags.3, i32* @slub_debug, align 4
  %cmp12 = icmp ne i32 %global_flags.3, 0
  %tobool15 = icmp ne i8* %7, null
  %or.cond = select i1 %cmp12, i1 true, i1 %tobool15
  br i1 %or.cond, label %if.then16, label %if.else17

if.then16:                                        ; preds = %out.thread, %out
  call fastcc void @static_key_enable() #23
  br label %if.end18

if.else17:                                        ; preds = %out
  call fastcc void @static_key_disable() #23
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %call19 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_alloc, i64 0, i32 0)) #23
  %cmp20 = icmp sgt i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false26, !prof !9

lor.lhs.false26:                                  ; preds = %if.end18
  %call28 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_free, i64 0, i32 0)) #23
  %cmp29 = icmp sgt i32 %call28, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end43, !prof !9

land.lhs.true:                                    ; preds = %lor.lhs.false26, %if.end18
  %8 = load i32, i32* @slub_debug, align 4
  %and = and i32 %8, 2048
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end43, label %do.end

do.end:                                           ; preds = %land.lhs.true
  %call42 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.18, i64 0, i64 0)) #24
  br label %if.end43

if.end43:                                         ; preds = %do.end, %land.lhs.true, %lor.lhs.false26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #26
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kmem_cache_flags(i32 %object_size, i32 noundef %flags, i8* noundef %name) local_unnamed_addr #1 {
entry:
  %iter = alloca i8*, align 8
  %block_flags = alloca i32, align 4
  %0 = bitcast i8** %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  store i8* null, i8** %iter, align 8, !annotation !8
  %1 = bitcast i32* %block_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #26
  store i32 0, i32* %block_flags, align 4, !annotation !8
  %2 = load i32, i32* @slub_debug, align 4
  %and = and i32 %flags, 8388608
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %2, -65537
  %spec.select = select i1 %tobool.not, i32 %2, i32 %and1
  %call = call i64 @strlen(i8* noundef %name) #25
  %3 = load i8*, i8** @slub_debug_string, align 8
  %tobool2.not83 = icmp eq i8* %3, null
  br i1 %tobool2.not83, label %cleanup39, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %next_block.084 = phi i8* [ %call3, %while.cond.backedge ], [ %3, %entry ]
  %call3 = call fastcc i8* @parse_slub_debug_flags(i8* noundef nonnull %next_block.084, i32* noundef nonnull %block_flags, i8** noundef nonnull %iter, i1 noundef false) #23
  %4 = load i8*, i8** %iter, align 8
  %tobool4.not = icmp eq i8* %4, null
  br i1 %tobool4.not, label %while.cond.backedge, label %while.cond7.preheader

while.cond7.preheader:                            ; preds = %while.body
  %5 = load i8, i8* %4, align 1
  %tobool8.not78 = icmp eq i8 %5, 0
  br i1 %tobool8.not78, label %while.end, label %while.body9.lr.ph

while.body9.lr.ph:                                ; preds = %while.cond7.preheader
  %tobool11.not = icmp ne i8* %call3, null
  %add.ptr = getelementptr i8, i8* %call3, i64 -1
  br label %while.body9

while.body9:                                      ; preds = %while.body9.lr.ph, %cleanup
  %add.ptr347679 = phi i8* [ %4, %while.body9.lr.ph ], [ %add.ptr34, %cleanup ]
  %call10 = call i8* @strchrnul(i8* noundef %add.ptr347679, i32 noundef 44) #25
  %cmp = icmp ult i8* %call3, %call10
  %or.cond = select i1 %tobool11.not, i1 %cmp, i1 false
  %end.0 = select i1 %or.cond, i8* %add.ptr, i8* %call10
  %sub.ptr.lhs.cast = ptrtoint i8* %end.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr347679 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call14 = call i8* @strnchr(i8* noundef %add.ptr347679, i64 noundef %sub.ptr.sub, i32 noundef 42) #25
  %tobool15.not = icmp eq i8* %call14, null
  %sub.ptr.lhs.cast17 = ptrtoint i8* %call14 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast
  %cmp23 = icmp ugt i64 %call, %sub.ptr.sub
  %cond = select i1 %cmp23, i64 %call, i64 %sub.ptr.sub
  %cmplen.0 = select i1 %tobool15.not, i64 %cond, i64 %sub.ptr.sub19
  %call25 = call i32 @strncmp(i8* noundef %name, i8* noundef %add.ptr347679, i64 noundef %cmplen.0) #25
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup.thread, label %if.end28

cleanup.thread:                                   ; preds = %while.body9
  %6 = load i32, i32* %block_flags, align 4
  br label %cleanup39

if.end28:                                         ; preds = %while.body9
  %7 = load i8, i8* %end.0, align 1
  switch i8 %7, label %cleanup [
    i8 0, label %while.end
    i8 59, label %while.end
  ]

cleanup:                                          ; preds = %if.end28
  %add.ptr34 = getelementptr i8, i8* %end.0, i64 1
  %8 = load i8, i8* %add.ptr34, align 1
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %while.end, label %while.body9

while.end:                                        ; preds = %cleanup, %if.end28, %if.end28, %while.cond7.preheader
  %add.ptr3476.lcssa = phi i8* [ %4, %while.cond7.preheader ], [ %add.ptr347679, %if.end28 ], [ %add.ptr347679, %if.end28 ], [ %add.ptr34, %cleanup ]
  store i8* %add.ptr3476.lcssa, i8** %iter, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.end, %while.body
  %tobool2.not = icmp eq i8* %call3, null
  br i1 %tobool2.not, label %cleanup39, label %while.body

cleanup39:                                        ; preds = %while.cond.backedge, %entry, %cleanup.thread
  %spec.select.pn = phi i32 [ %6, %cleanup.thread ], [ %spec.select, %entry ], [ %spec.select, %while.cond.backedge ]
  %retval.4 = or i32 %spec.select.pn, %flags
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @parse_slub_debug_flags(i8* noundef %str, i32* nocapture noundef %flags, i8** nocapture noundef writeonly %slabs, i1 noundef %init) unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %while.body ]
  %0 = load i8, i8* %str.addr.0, align 1
  switch i8 %0, label %if.end [
    i8 59, label %while.body
    i8 44, label %if.then
  ]

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i8, i8* %str.addr.0, i64 1
  br label %while.cond

if.then:                                          ; preds = %while.cond
  store i32 68864, i32* %flags, align 4
  %.pre = load i8, i8* %str.addr.0, align 1
  br label %check_slabs

if.end:                                           ; preds = %while.cond
  store i32 0, i32* %flags, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %str.addr.1 = phi i8* [ %str.addr.0, %if.end ], [ %incdec.ptr34, %for.inc ]
  %higher_order_disable.0.off0 = phi i1 [ false, %if.end ], [ %higher_order_disable.1.off0, %for.inc ]
  %1 = load i8, i8* %str.addr.1, align 1
  switch i8 %1, label %for.body [
    i8 0, label %check_slabs
    i8 44, label %check_slabs
    i8 59, label %check_slabs
  ]

for.body:                                         ; preds = %for.cond
  %call = call fastcc i8 @__tolower(i8 noundef %1) #23
  switch i8 %call, label %sw.default [
    i8 45, label %sw.bb
    i8 102, label %sw.bb17
    i8 122, label %sw.bb18
    i8 112, label %sw.bb20
    i8 117, label %sw.bb22
    i8 116, label %sw.bb24
    i8 97, label %for.inc
    i8 111, label %sw.bb28
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, i32* %flags, align 4
  br label %for.inc

sw.bb17:                                          ; preds = %for.body
  %2 = load i32, i32* %flags, align 4
  %or = or i32 %2, 256
  store i32 %or, i32* %flags, align 4
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  %3 = load i32, i32* %flags, align 4
  %or19 = or i32 %3, 1024
  store i32 %or19, i32* %flags, align 4
  br label %for.inc

sw.bb20:                                          ; preds = %for.body
  %4 = load i32, i32* %flags, align 4
  %or21 = or i32 %4, 2048
  store i32 %or21, i32* %flags, align 4
  br label %for.inc

sw.bb22:                                          ; preds = %for.body
  %5 = load i32, i32* %flags, align 4
  %or23 = or i32 %5, 65536
  store i32 %or23, i32* %flags, align 4
  br label %for.inc

sw.bb24:                                          ; preds = %for.body
  %6 = load i32, i32* %flags, align 4
  %or25 = or i32 %6, 2097152
  store i32 %or25, i32* %flags, align 4
  br label %for.inc

sw.bb28:                                          ; preds = %for.body
  br label %for.inc

sw.default:                                       ; preds = %for.body
  br i1 %init, label %do.end, label %for.inc

do.end:                                           ; preds = %sw.default
  %conv31 = zext i8 %1 to i32
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv31) #24
  br label %for.inc

for.inc:                                          ; preds = %for.body, %sw.bb, %sw.bb17, %sw.bb18, %sw.bb20, %sw.bb22, %sw.bb24, %sw.bb28, %do.end, %sw.default
  %higher_order_disable.1.off0 = phi i1 [ %higher_order_disable.0.off0, %do.end ], [ %higher_order_disable.0.off0, %sw.default ], [ true, %sw.bb28 ], [ %higher_order_disable.0.off0, %sw.bb24 ], [ %higher_order_disable.0.off0, %sw.bb22 ], [ %higher_order_disable.0.off0, %sw.bb20 ], [ %higher_order_disable.0.off0, %sw.bb18 ], [ %higher_order_disable.0.off0, %sw.bb17 ], [ %higher_order_disable.0.off0, %sw.bb ], [ %higher_order_disable.0.off0, %for.body ]
  %incdec.ptr34 = getelementptr i8, i8* %str.addr.1, i64 1
  br label %for.cond

check_slabs:                                      ; preds = %for.cond, %for.cond, %for.cond, %if.then
  %7 = phi i8 [ %.pre, %if.then ], [ %1, %for.cond ], [ %1, %for.cond ], [ %1, %for.cond ]
  %str.addr.2 = phi i8* [ %str.addr.0, %if.then ], [ %str.addr.1, %for.cond ], [ %str.addr.1, %for.cond ], [ %str.addr.1, %for.cond ]
  %higher_order_disable.2.off0 = phi i1 [ false, %if.then ], [ %higher_order_disable.0.off0, %for.cond ], [ %higher_order_disable.0.off0, %for.cond ], [ %higher_order_disable.0.off0, %for.cond ]
  %cmp36 = icmp eq i8 %7, 44
  %incdec.ptr39 = getelementptr i8, i8* %str.addr.2, i64 1
  %storemerge = select i1 %cmp36, i8* %incdec.ptr39, i8* null
  %str.addr.3 = select i1 %cmp36, i8* %incdec.ptr39, i8* %str.addr.2
  store i8* %storemerge, i8** %slabs, align 8
  br label %while.cond41

while.cond41:                                     ; preds = %while.body49, %check_slabs
  %str.addr.4 = phi i8* [ %str.addr.3, %check_slabs ], [ %incdec.ptr50, %while.body49 ]
  %8 = load i8, i8* %str.addr.4, align 1
  switch i8 %8, label %while.body49 [
    i8 59, label %while.cond52.while.cond52_crit_edge
    i8 0, label %while.end62
  ]

while.body49:                                     ; preds = %while.cond41
  %incdec.ptr50 = getelementptr i8, i8* %str.addr.4, i64 1
  br label %while.cond41

while.cond52.while.cond52_crit_edge:              ; preds = %while.cond41, %while.cond52.while.cond52_crit_edge
  %str.addr.4.pn = phi i8* [ %incdec.ptr61127, %while.cond52.while.cond52_crit_edge ], [ %str.addr.4, %while.cond41 ]
  %incdec.ptr61127 = getelementptr i8, i8* %str.addr.4.pn, i64 1
  %.pre118 = load i8, i8* %incdec.ptr61127, align 1
  %cond115 = icmp eq i8 %.pre118, 59
  br i1 %cond115, label %while.cond52.while.cond52_crit_edge, label %while.end62

while.end62:                                      ; preds = %while.cond41, %while.cond52.while.cond52_crit_edge
  %.lcssa = phi i8 [ %.pre118, %while.cond52.while.cond52_crit_edge ], [ %8, %while.cond41 ]
  %str.addr.5.lcssa = phi i8* [ %incdec.ptr61127, %while.cond52.while.cond52_crit_edge ], [ %str.addr.4, %while.cond41 ]
  %9 = select i1 %init, i1 %higher_order_disable.2.off0, i1 false
  br i1 %9, label %if.then68, label %if.end69

if.then68:                                        ; preds = %while.end62
  store i1 true, i1* @disable_higher_order_debug, align 4
  br label %if.end69

if.end69:                                         ; preds = %while.end62, %if.then68
  %tobool70.not = icmp eq i8 %.lcssa, 0
  %.str.addr.5 = select i1 %tobool70.not, i8* null, i8* %str.addr.5.lcssa
  ret i8* %.str.addr.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchrnul(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strnchr(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %s, i32 noundef %gfpflags) local_unnamed_addr #1 {
entry:
  %object.i.i = alloca i8*, align 8
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = bitcast i8** %object.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #26
  %call.i.i = call fastcc %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache* noundef %s, i32 noundef %gfpflags) #25
  %tobool.not.i.i = icmp eq %struct.kmem_cache* %call.i.i, null
  br i1 %tobool.not.i.i, label %slab_alloc.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %cpu_slab.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call.i.i, i64 0, i32 0
  br label %redo.i.i

redo.i.i:                                         ; preds = %lor.rhs.i.i, %if.end.i.i
  %4 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %5 = ptrtoint %struct.kmem_cache_cpu* %4 to i64
  %call8.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add.i.i = add i64 %call8.i.i, %5
  %6 = inttoptr i64 %add.i.i to %struct.kmem_cache_cpu*
  %tid13.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %6, i64 0, i32 1
  %7 = load volatile i64, i64* %tid13.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !10
  %8 = inttoptr i64 %add.i.i to i8**
  %9 = load i8*, i8** %8, align 8
  %page14.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %6, i64 0, i32 2
  %10 = load %struct.page*, %struct.page** %page14.i.i, align 8
  %tobool15.i.i = icmp ne i8* %9, null
  %tobool16.i.i = icmp ne %struct.page* %10, null
  %or.cond.i.i = select i1 %tobool15.i.i, i1 %tobool16.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then28.i.i, !prof !11

lor.rhs.i.i:                                      ; preds = %redo.i.i
  %call30.i.i = call fastcc i8* @get_freepointer_safe(%struct.kmem_cache* noundef nonnull %call.i.i, i8* noundef nonnull %9) #25
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !12
  %11 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %12 = ptrtoint %struct.kmem_cache_cpu* %11 to i64
  %call47.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add48.i.i = add i64 %call47.i.i, %12
  %13 = inttoptr i64 %add48.i.i to i8*
  %14 = ptrtoint i8* %9 to i64
  %15 = ptrtoint i8* %call30.i.i to i64
  %call51.i.i = call fastcc i64 @next_tid(i64 noundef %7) #25
  %call52.i.i = call fastcc i64 @__cmpxchg_double(i64 noundef %14, i64 noundef %7, i64 noundef %15, i64 noundef %call51.i.i, i8* noundef %13) #25
  %tobool53.not.i.i = icmp eq i64 %call52.i.i, 0
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  br i1 %tobool53.not.i.i, label %cleanup.thread.i.i, label %redo.i.i, !prof !14

if.then28.i.i:                                    ; preds = %redo.i.i
  %16 = inttoptr i64 %add.i.i to %struct.kmem_cache_cpu*
  %call29.i.i = call fastcc i8* @__slab_alloc(%struct.kmem_cache* noundef nonnull %call.i.i, i32 noundef %gfpflags, i64 noundef %cond, %struct.kmem_cache_cpu* noundef %16) #25
  store i8* %call29.i.i, i8** %object.i.i, align 8
  br label %if.end74.i.i

cleanup.thread.i.i:                               ; preds = %lor.rhs.i.i
  store i8* %9, i8** %object.i.i, align 8
  call fastcc void @prefetch_freepointer(%struct.kmem_cache* noundef nonnull %call.i.i, i8* noundef %call30.i.i) #25
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %cleanup.thread.i.i, %if.then28.i.i
  %17 = phi i8* [ %9, %cleanup.thread.i.i ], [ %call29.i.i, %if.then28.i.i ]
  %call.i.i.i = call fastcc i1 @slab_want_init_on_free(%struct.kmem_cache* noundef nonnull %call.i.i) #25
  br i1 %call.i.i.i, label %land.lhs.true.i.i.i, label %maybe_wipe_obj_freeptr.exit.i.i, !prof !9

land.lhs.true.i.i.i:                              ; preds = %if.end74.i.i
  %tobool2.not.i.i.i = icmp eq i8* %17, null
  br i1 %tobool2.not.i.i.i, label %maybe_wipe_obj_freeptr.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %offset.i.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call.i.i, i64 0, i32 6
  %18 = load i32, i32* %offset.i.i.i, align 8
  %idx.ext.i.i.i = zext i32 %18 to i64
  %add.ptr.i.i.i = getelementptr i8, i8* %17, i64 %idx.ext.i.i.i
  %call4.i.i.i = call i8* @memset(i8* noundef %add.ptr.i.i.i, i32 noundef 0, i64 noundef 8) #25
  br label %maybe_wipe_obj_freeptr.exit.i.i

maybe_wipe_obj_freeptr.exit.i.i:                  ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i, %if.end74.i.i
  %call75.i.i = call fastcc i1 @slab_want_init_on_alloc(i32 noundef %gfpflags, %struct.kmem_cache* noundef nonnull %call.i.i) #25
  call fastcc void @slab_post_alloc_hook(%struct.kmem_cache* noundef nonnull %call.i.i, i32 noundef %gfpflags, i64 noundef 1, i8** noundef nonnull %object.i.i, i1 noundef %call75.i.i) #25
  %19 = load i8*, i8** %object.i.i, align 8
  br label %slab_alloc.exit

slab_alloc.exit:                                  ; preds = %entry, %maybe_wipe_obj_freeptr.exit.i.i
  %retval.0.i.i = phi i8* [ %19, %maybe_wipe_obj_freeptr.exit.i.i ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #26
  ret i8* %retval.0.i.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kmem_cache_free(%struct.kmem_cache* noundef %s, i8* noundef %x) local_unnamed_addr #1 {
entry:
  %head.addr.i = alloca i8*, align 8
  %tail.addr.i = alloca i8*, align 8
  %call = call fastcc %struct.kmem_cache* @cache_from_obj(%struct.kmem_cache* noundef %s, i8* noundef %x) #23
  %tobool.not = icmp eq %struct.kmem_cache* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.page* @virt_to_head_page(i8* noundef %x) #23
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %2
  %or = or i64 %shl5.neg, %1
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %1
  %cond = select i1 %tobool2.not, i64 %and10, i64 %or
  %3 = bitcast i8** %head.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3)
  %4 = bitcast i8** %tail.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4)
  store i8* %x, i8** %head.addr.i, align 8
  store i8* null, i8** %tail.addr.i, align 8
  %call.i = call fastcc i1 @slab_free_freelist_hook(%struct.kmem_cache* noundef nonnull %call, i8** noundef nonnull %head.addr.i, i8** noundef nonnull %tail.addr.i) #25
  br i1 %call.i, label %if.then.i, label %slab_free.exit

if.then.i:                                        ; preds = %if.end
  %5 = load i8*, i8** %head.addr.i, align 8
  %6 = load i8*, i8** %tail.addr.i, align 8
  %tobool.not.i.i = icmp eq i8* %6, null
  %cond.i.i = select i1 %tobool.not.i.i, i8* %5, i8* %6
  %cpu_slab.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call, i64 0, i32 0
  %7 = ptrtoint i8* %5 to i64
  br label %redo.i.i

redo.i.i:                                         ; preds = %if.then11.i.i, %if.then.i
  %8 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %9 = ptrtoint %struct.kmem_cache_cpu* %8 to i64
  %call.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add.i.i = add i64 %call.i.i, %9
  %10 = inttoptr i64 %add.i.i to %struct.kmem_cache_cpu*
  %tid7.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %10, i64 0, i32 1
  %11 = load volatile i64, i64* %tid7.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !15
  %page8.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %10, i64 0, i32 2
  %12 = load %struct.page*, %struct.page** %page8.i.i, align 8
  %cmp.i.i = icmp eq %struct.page* %12, %call1
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.else.i.i, !prof !14

if.then11.i.i:                                    ; preds = %redo.i.i
  %freelist16.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %10, i64 0, i32 0
  %13 = load volatile i8**, i8*** %freelist16.i.i, align 8
  %14 = bitcast i8** %13 to i8*
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef nonnull %call, i8* noundef %cond.i.i, i8* noundef %14) #25
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !16
  %15 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %16 = ptrtoint %struct.kmem_cache_cpu* %15 to i64
  %call33.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add34.i.i = add i64 %call33.i.i, %16
  %17 = inttoptr i64 %add34.i.i to i8*
  %18 = ptrtoint i8** %13 to i64
  %call37.i.i = call fastcc i64 @next_tid(i64 noundef %11) #25
  %call38.i.i = call fastcc i64 @__cmpxchg_double(i64 noundef %18, i64 noundef %11, i64 noundef %7, i64 noundef %call37.i.i, i8* noundef %17) #25
  %tobool39.not.i.i = icmp eq i64 %call38.i.i, 0
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !17
  br i1 %tobool39.not.i.i, label %slab_free.exit, label %redo.i.i, !prof !14

if.else.i.i:                                      ; preds = %redo.i.i
  call fastcc void @__slab_free(%struct.kmem_cache* noundef nonnull %call, %struct.page* noundef %call1, i8* noundef %5, i8* noundef %cond.i.i, i32 noundef 1, i64 noundef %cond) #25
  br label %slab_free.exit

slab_free.exit:                                   ; preds = %if.then11.i.i, %if.end, %if.else.i.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4)
  br label %return

return:                                           ; preds = %entry, %slab_free.exit
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kmem_cache* @cache_from_obj(%struct.kmem_cache* noundef readonly %s, i8* noundef %x) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @kmem_cache_debug_flags(%struct.kmem_cache* noundef %s, i32 noundef 256) #23
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.kmem_cache* @virt_to_cache(i8* noundef %x) #23
  %tobool = icmp ne %struct.kmem_cache* %call1, null
  %cmp = icmp ne %struct.kmem_cache* %call1, %s
  %0 = and i1 %tobool, %cmp
  br i1 %0, label %do.end, label %cleanup, !prof !9

do.end:                                           ; preds = %if.end
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %1 = load i8*, i8** %name, align 8
  %name11 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call1, i64 0, i32 16
  %2 = load i8*, i8** %name11, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cache_from_obj, i64 0, i64 0), i8* noundef %1, i8* noundef %2) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slab.h\22; .popsection; .long 14472b - 14470b; .short 451; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !18
  call void @print_tracking(%struct.kmem_cache* noundef nonnull %call1, i8* noundef %x) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end, %entry
  %retval.0 = phi %struct.kmem_cache* [ %s, %entry ], [ %call1, %if.end ], [ %call1, %do.end ]
  ret %struct.kmem_cache* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.page* @virt_to_head_page(i8* noundef %x) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %2) #23
  %3 = inttoptr i64 %call to %struct.page*
  ret %struct.page* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kmem_cache_free_bulk(%struct.kmem_cache* noundef %s, i64 noundef %size, i8** nocapture noundef %p) local_unnamed_addr #1 {
entry:
  %head.addr.i = alloca i8*, align 8
  %tail.addr.i = alloca i8*, align 8
  %df = alloca %struct.detached_freelist, align 8
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.then, label %do.body.preheader, !prof !9

do.body.preheader:                                ; preds = %entry
  %0 = bitcast %struct.detached_freelist* %df to i8*
  %page = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 0
  %s24 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 4
  %freelist = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 2
  %tail = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 1
  %cnt = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 3
  %1 = bitcast i8** %head.addr.i to i8*
  %2 = bitcast i8** %tail.addr.i to i8*
  br label %do.body

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 3622; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !19
  br label %do.end

do.body:                                          ; preds = %do.body.preheader, %cleanup
  %size.addr.0 = phi i64 [ %conv20, %cleanup ], [ %size, %do.body.preheader ]
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !8
  %call = call fastcc i32 @build_detached_freelist(%struct.kmem_cache* noundef %s, i64 noundef %size.addr.0, i8** noundef %p, %struct.detached_freelist* noundef nonnull %df) #23
  %conv20 = sext i32 %call to i64
  %3 = load %struct.page*, %struct.page** %page, align 8
  %tobool21.not = icmp eq %struct.page* %3, null
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %do.body
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** %s24, align 8
  %5 = load i8*, i8** %freelist, align 8
  %6 = load i8*, i8** %tail, align 8
  %7 = load i32, i32* %cnt, align 8
  %8 = call i8* @llvm.returnaddress(i32 0)
  %9 = ptrtoint i8* %8 to i64
  %and = and i64 %9, 36028797018963968
  %tobool26.not = icmp eq i64 %and, 0
  %10 = load i64, i64* @vabits_actual, align 8
  %shl29.neg = shl nsw i64 -1, %10
  %or = or i64 %shl29.neg, %9
  %and32 = and i64 %shl29.neg, 36028797018963967
  %neg = xor i64 %and32, -1
  %and34 = and i64 %neg, %9
  %cond = select i1 %tobool26.not, i64 %and34, i64 %or
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2)
  store i8* %5, i8** %head.addr.i, align 8
  store i8* %6, i8** %tail.addr.i, align 8
  %call.i = call fastcc i1 @slab_free_freelist_hook(%struct.kmem_cache* noundef %4, i8** noundef nonnull %head.addr.i, i8** noundef nonnull %tail.addr.i) #25
  br i1 %call.i, label %if.then.i, label %slab_free.exit

if.then.i:                                        ; preds = %if.end23
  %11 = load i8*, i8** %head.addr.i, align 8
  %12 = load i8*, i8** %tail.addr.i, align 8
  %tobool.not.i.i = icmp eq i8* %12, null
  %cond.i.i = select i1 %tobool.not.i.i, i8* %11, i8* %12
  %cpu_slab.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %4, i64 0, i32 0
  %13 = ptrtoint i8* %11 to i64
  br label %redo.i.i

redo.i.i:                                         ; preds = %if.then11.i.i, %if.then.i
  %14 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %15 = ptrtoint %struct.kmem_cache_cpu* %14 to i64
  %call.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add.i.i = add i64 %call.i.i, %15
  %16 = inttoptr i64 %add.i.i to %struct.kmem_cache_cpu*
  %tid7.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %16, i64 0, i32 1
  %17 = load volatile i64, i64* %tid7.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !15
  %page8.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %16, i64 0, i32 2
  %18 = load %struct.page*, %struct.page** %page8.i.i, align 8
  %cmp.i.i = icmp eq %struct.page* %18, %3
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.else.i.i, !prof !14

if.then11.i.i:                                    ; preds = %redo.i.i
  %freelist16.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %16, i64 0, i32 0
  %19 = load volatile i8**, i8*** %freelist16.i.i, align 8
  %20 = bitcast i8** %19 to i8*
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %4, i8* noundef %cond.i.i, i8* noundef %20) #25
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !16
  %21 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %22 = ptrtoint %struct.kmem_cache_cpu* %21 to i64
  %call33.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add34.i.i = add i64 %call33.i.i, %22
  %23 = inttoptr i64 %add34.i.i to i8*
  %24 = ptrtoint i8** %19 to i64
  %call37.i.i = call fastcc i64 @next_tid(i64 noundef %17) #25
  %call38.i.i = call fastcc i64 @__cmpxchg_double(i64 noundef %24, i64 noundef %17, i64 noundef %13, i64 noundef %call37.i.i, i8* noundef %23) #25
  %tobool39.not.i.i = icmp eq i64 %call38.i.i, 0
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !17
  br i1 %tobool39.not.i.i, label %slab_free.exit, label %redo.i.i, !prof !14

if.else.i.i:                                      ; preds = %redo.i.i
  call fastcc void @__slab_free(%struct.kmem_cache* noundef %4, %struct.page* noundef nonnull %3, i8* noundef %11, i8* noundef %cond.i.i, i32 noundef %7, i64 noundef %cond) #25
  br label %slab_free.exit

slab_free.exit:                                   ; preds = %if.then11.i.i, %if.end23, %if.else.i.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %slab_free.exit
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #26
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %do.end, label %do.body, !prof !9

do.end:                                           ; preds = %cleanup, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @build_detached_freelist(%struct.kmem_cache* noundef %s, i64 noundef %size, i8** nocapture noundef %p, %struct.detached_freelist* nocapture noundef %df) unnamed_addr #1 {
entry:
  %page1 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 0
  store %struct.page* null, %struct.page** %page1, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %size.addr.0 = phi i64 [ %size, %entry ], [ %dec, %do.body ]
  %dec = add i64 %size.addr.0, -1
  %arrayidx = getelementptr i8*, i8** %p, i64 %dec
  %0 = load i8*, i8** %arrayidx, align 8
  %tobool.not = icmp eq i8* %0, null
  %tobool2 = icmp ne i64 %dec, 0
  %1 = select i1 %tobool.not, i1 %tobool2, i1 false
  br i1 %1, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %arrayidx.le = getelementptr i8*, i8** %p, i64 %dec
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %do.end
  %call = call fastcc %struct.page* @virt_to_head_page(i8* noundef nonnull %0) #23
  %tobool4.not = icmp eq %struct.kmem_cache* %s, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call) #25
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 512
  %tobool7.not = icmp eq i64 %4, 0
  br i1 %tobool7.not, label %if.then11, label %if.end14, !prof !9

if.then11:                                        ; preds = %if.then5
  call fastcc void @free_nonslab_page(%struct.page* noundef %call) #23
  store i8* null, i8** %arrayidx.le, align 8
  %conv13 = trunc i64 %dec to i32
  br label %cleanup

if.end14:                                         ; preds = %if.then5
  %slab_cache = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 1
  %5 = bitcast %struct.address_space** %slab_cache to %struct.kmem_cache**
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end
  %call16 = call fastcc %struct.kmem_cache* @cache_from_obj(%struct.kmem_cache* noundef nonnull %s, i8* noundef nonnull %0) #23
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end14
  %call16.sink = phi %struct.kmem_cache* [ %call16, %if.else ], [ %6, %if.end14 ]
  %s17 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 4
  store %struct.kmem_cache* %call16.sink, %struct.kmem_cache** %s17, align 8
  store %struct.page* %call, %struct.page** %page1, align 8
  %s27 = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 4
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %call16.sink, i8* noundef nonnull %0, i8* noundef null) #23
  %tail = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 1
  store i8* %0, i8** %tail, align 8
  %freelist = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 2
  store i8* %0, i8** %freelist, align 8
  store i8* null, i8** %arrayidx.le, align 8
  %cnt = getelementptr inbounds %struct.detached_freelist, %struct.detached_freelist* %df, i64 0, i32 3
  store i32 1, i32* %cnt, align 8
  %tobool29.not113116 = icmp eq i64 %dec, 0
  br i1 %tobool29.not113116, label %while.end, label %while.body

while.body:                                       ; preds = %if.end18, %while.cond.backedge
  %size.addr.1114 = phi i64 [ %dec30, %while.cond.backedge ], [ %dec, %if.end18 ]
  %dec30 = add i64 %size.addr.1114, -1
  %arrayidx31 = getelementptr i8*, i8** %p, i64 %dec30
  %7 = load i8*, i8** %arrayidx31, align 8
  %tobool32.not = icmp eq i8* %7, null
  br i1 %tobool32.not, label %while.cond.backedge, label %if.end34

if.end34:                                         ; preds = %while.body
  %8 = load %struct.page*, %struct.page** %page1, align 8
  %call36 = call fastcc %struct.page* @virt_to_head_page(i8* noundef nonnull %7) #23
  %cmp = icmp eq %struct.page* %8, %call36
  br i1 %cmp, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end34
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %s27, align 8
  %10 = load i8*, i8** %freelist, align 8
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %9, i8* noundef nonnull %7, i8* noundef %10) #23
  store i8* %7, i8** %freelist, align 8
  %11 = load i32, i32* %cnt, align 8
  %inc = add i32 %11, 1
  store i32 %inc, i32* %cnt, align 8
  store i8* null, i8** %arrayidx31, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then38, %while.body
  %tobool29.not = icmp eq i64 %dec30, 0
  br i1 %tobool29.not, label %while.end, label %while.body

if.end44:                                         ; preds = %if.end34
  %tobool29.not113 = icmp eq i64 %dec30, 0
  br i1 %tobool29.not113, label %while.end, label %while.body.1

while.body.1:                                     ; preds = %if.end44, %while.cond.backedge.1
  %size.addr.1114.1 = phi i64 [ %dec30.1, %while.cond.backedge.1 ], [ %dec30, %if.end44 ]
  %dec30.1 = add i64 %size.addr.1114.1, -1
  %arrayidx31.1 = getelementptr i8*, i8** %p, i64 %dec30.1
  %12 = load i8*, i8** %arrayidx31.1, align 8
  %tobool32.not.1 = icmp eq i8* %12, null
  br i1 %tobool32.not.1, label %while.cond.backedge.1, label %if.end34.1

if.end34.1:                                       ; preds = %while.body.1
  %13 = load %struct.page*, %struct.page** %page1, align 8
  %call36.1 = call fastcc %struct.page* @virt_to_head_page(i8* noundef nonnull %12) #23
  %cmp.1 = icmp eq %struct.page* %13, %call36.1
  br i1 %cmp.1, label %if.then38.1, label %if.end44.1

if.end44.1:                                       ; preds = %if.end34.1
  %tobool49.not.1 = icmp eq i64 %size.addr.1114, 0
  %spec.select.1 = select i1 %tobool49.not.1, i64 %size.addr.1114.1, i64 %size.addr.1114
  %tobool29.not113.1 = icmp eq i64 %dec30.1, 0
  br i1 %tobool29.not113.1, label %while.end, label %while.body.2

if.then38.1:                                      ; preds = %if.end34.1
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %s27, align 8
  %15 = load i8*, i8** %freelist, align 8
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %14, i8* noundef nonnull %12, i8* noundef %15) #23
  store i8* %12, i8** %freelist, align 8
  %16 = load i32, i32* %cnt, align 8
  %inc.1 = add i32 %16, 1
  store i32 %inc.1, i32* %cnt, align 8
  store i8* null, i8** %arrayidx31.1, align 8
  br label %while.cond.backedge.1

while.cond.backedge.1:                            ; preds = %if.then38.1, %while.body.1
  %tobool29.not.1 = icmp eq i64 %dec30.1, 0
  br i1 %tobool29.not.1, label %while.end, label %while.body.1

while.body.2:                                     ; preds = %if.end44.1, %while.cond.backedge.2
  %size.addr.1114.2 = phi i64 [ %dec30.2, %while.cond.backedge.2 ], [ %dec30.1, %if.end44.1 ]
  %dec30.2 = add i64 %size.addr.1114.2, -1
  %arrayidx31.2 = getelementptr i8*, i8** %p, i64 %dec30.2
  %17 = load i8*, i8** %arrayidx31.2, align 8
  %tobool32.not.2 = icmp eq i8* %17, null
  br i1 %tobool32.not.2, label %while.cond.backedge.2, label %if.end34.2

if.end34.2:                                       ; preds = %while.body.2
  %18 = load %struct.page*, %struct.page** %page1, align 8
  %call36.2 = call fastcc %struct.page* @virt_to_head_page(i8* noundef nonnull %17) #23
  %cmp.2 = icmp eq %struct.page* %18, %call36.2
  br i1 %cmp.2, label %if.then38.2, label %while.end

if.then38.2:                                      ; preds = %if.end34.2
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %s27, align 8
  %20 = load i8*, i8** %freelist, align 8
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %19, i8* noundef nonnull %17, i8* noundef %20) #23
  store i8* %17, i8** %freelist, align 8
  %21 = load i32, i32* %cnt, align 8
  %inc.2 = add i32 %21, 1
  store i32 %inc.2, i32* %cnt, align 8
  store i8* null, i8** %arrayidx31.2, align 8
  br label %while.cond.backedge.2

while.cond.backedge.2:                            ; preds = %if.then38.2, %while.body.2
  %tobool29.not.2 = icmp eq i64 %dec30.2, 0
  br i1 %tobool29.not.2, label %while.end, label %while.body.2

while.end:                                        ; preds = %while.cond.backedge, %while.cond.backedge.1, %if.end34.2, %while.cond.backedge.2, %if.end44, %if.end44.1, %if.end18
  %first_skipped_index.0.ph111 = phi i64 [ 0, %if.end18 ], [ 1, %if.end44 ], [ %spec.select.1, %if.end44.1 ], [ %spec.select.1, %while.cond.backedge.2 ], [ %spec.select.1, %if.end34.2 ], [ %size.addr.1114, %while.cond.backedge.1 ], [ 0, %while.cond.backedge ]
  %conv52 = trunc i64 %first_skipped_index.0.ph111 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end, %if.then11
  %retval.0 = phi i32 [ %conv52, %while.end ], [ %conv13, %if.then11 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kmem_cache_alloc_bulk(%struct.kmem_cache* noundef %s, i32 noundef %flags, i64 noundef %size, i8** noundef %p) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache* noundef %s, i32 noundef %flags) #23
  %tobool.not = icmp eq %struct.kmem_cache* %call, null
  br i1 %tobool.not, label %cleanup161, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !20
  %cpu_slab = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call, i64 0, i32 0
  %0 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab, align 8
  %1 = ptrtoint %struct.kmem_cache_cpu* %0 to i64
  %call6 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call6, %1
  %2 = inttoptr i64 %add to %struct.kmem_cache_cpu*
  call fastcc void @arch_local_irq_disable() #23
  %call19 = call fastcc i64 @__kern_my_cpu_offset() #23
  %cmp248.not = icmp eq i64 %size, 0
  br i1 %cmp248.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %offset.i236 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %conv23251 = phi i64 [ 0, %for.body.lr.ph ], [ %conv23, %for.inc ]
  %c.0250 = phi %struct.kmem_cache_cpu* [ %2, %for.body.lr.ph ], [ %c.1.ph, %for.inc ]
  %indvars = trunc i64 %conv23251 to i32
  %3 = bitcast %struct.kmem_cache_cpu* %c.0250 to i8**
  %4 = load i8*, i8** %3, align 8
  %tobool37.not = icmp eq i8* %4, null
  br i1 %tobool37.not, label %if.then47, label %if.end123, !prof !9

if.then47:                                        ; preds = %for.body
  %tid = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c.0250, i64 0, i32 1
  %5 = load i64, i64* %tid, align 8
  %call48 = call fastcc i64 @next_tid(i64 noundef %5) #23
  store i64 %call48, i64* %tid, align 8
  %call60 = call fastcc i64 @__kern_my_cpu_offset() #23
  call fastcc void @arch_local_irq_enable() #23
  %6 = call i8* @llvm.returnaddress(i32 0)
  %7 = ptrtoint i8* %6 to i64
  %and = and i64 %7, 36028797018963968
  %tobool67.not = icmp eq i64 %and, 0
  %8 = load i64, i64* @vabits_actual, align 8
  %shl71.neg = shl nsw i64 -1, %8
  %or = or i64 %shl71.neg, %7
  %and74 = and i64 %shl71.neg, 36028797018963967
  %neg = xor i64 %and74, -1
  %and76 = and i64 %neg, %7
  %cond = select i1 %tobool67.not, i64 %and76, i64 %or
  %call77 = call fastcc i8* @___slab_alloc(%struct.kmem_cache* noundef nonnull %call, i32 noundef %flags, i64 noundef %cond, %struct.kmem_cache_cpu* noundef %c.0250) #23
  %arrayidx79 = getelementptr i8*, i8** %p, i64 %conv23251
  store i8* %call77, i8** %arrayidx79, align 8
  %tobool82.not = icmp eq i8* %call77, null
  br i1 %tobool82.not, label %do.body155, label %do.body94, !prof !9

do.body94:                                        ; preds = %if.then47
  %9 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab, align 8
  %10 = ptrtoint %struct.kmem_cache_cpu* %9 to i64
  %call102 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add103 = add i64 %call102, %10
  %11 = inttoptr i64 %add103 to %struct.kmem_cache_cpu*
  %call.i = call fastcc i1 @slab_want_init_on_free(%struct.kmem_cache* noundef nonnull %call) #25
  br i1 %call.i, label %if.then.i, label %maybe_wipe_obj_freeptr.exit, !prof !9

if.then.i:                                        ; preds = %do.body94
  %12 = load i32, i32* %offset.i236, align 8
  %idx.ext.i = zext i32 %12 to i64
  %add.ptr.i = getelementptr i8, i8* %call77, i64 %idx.ext.i
  %call4.i = call i8* @memset(i8* noundef %add.ptr.i, i32 noundef 0, i64 noundef 8) #25
  br label %maybe_wipe_obj_freeptr.exit

maybe_wipe_obj_freeptr.exit:                      ; preds = %do.body94, %if.then.i
  call fastcc void @arch_local_irq_disable() #23
  %call119 = call fastcc i64 @__kern_my_cpu_offset() #23
  br label %for.inc

if.end123:                                        ; preds = %for.body
  %call124 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef nonnull %call, i8* noundef nonnull %4) #23
  store i8* %call124, i8** %3, align 8
  %arrayidx127 = getelementptr i8*, i8** %p, i64 %conv23251
  store i8* %4, i8** %arrayidx127, align 8
  %call.i233 = call fastcc i1 @slab_want_init_on_free(%struct.kmem_cache* noundef nonnull %call) #25
  br i1 %call.i233, label %if.then.i240, label %for.inc, !prof !9

if.then.i240:                                     ; preds = %if.end123
  %13 = load i32, i32* %offset.i236, align 8
  %idx.ext.i237 = zext i32 %13 to i64
  %add.ptr.i238 = getelementptr i8, i8* %4, i64 %idx.ext.i237
  %call4.i239 = call i8* @memset(i8* noundef %add.ptr.i238, i32 noundef 0, i64 noundef 8) #25
  br label %for.inc

for.inc:                                          ; preds = %maybe_wipe_obj_freeptr.exit, %if.end123, %if.then.i240
  %c.1.ph = phi %struct.kmem_cache_cpu* [ %c.0250, %if.then.i240 ], [ %c.0250, %if.end123 ], [ %11, %maybe_wipe_obj_freeptr.exit ]
  %inc = add i32 %indvars, 1
  %conv23 = sext i32 %inc to i64
  %cmp = icmp ult i64 %conv23, %size
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %i.0.lcssa = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  %c.0.lcssa = phi %struct.kmem_cache_cpu* [ %2, %if.end ], [ %c.1.ph, %for.inc ]
  %tid130 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c.0.lcssa, i64 0, i32 1
  %14 = load i64, i64* %tid130, align 8
  %call131 = call fastcc i64 @next_tid(i64 noundef %14) #23
  store i64 %call131, i64* %tid130, align 8
  %call143 = call fastcc i64 @__kern_my_cpu_offset() #23
  call fastcc void @arch_local_irq_enable() #23
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !21
  %call154 = call fastcc i1 @slab_want_init_on_alloc(i32 noundef %flags, %struct.kmem_cache* noundef nonnull %call) #23
  call fastcc void @slab_post_alloc_hook(%struct.kmem_cache* noundef nonnull %call, i32 noundef %flags, i64 noundef %size, i8** noundef %p, i1 noundef %call154) #23
  br label %cleanup161

do.body155:                                       ; preds = %if.then47
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !22
  call fastcc void @slab_post_alloc_hook(%struct.kmem_cache* noundef nonnull %call, i32 noundef %flags, i64 noundef %conv23251, i8** noundef %p, i1 noundef false) #23
  call void @__kmem_cache_free_bulk(%struct.kmem_cache* noundef nonnull %call, i64 noundef %conv23251, i8** noundef %p) #25
  br label %cleanup161

cleanup161:                                       ; preds = %entry, %do.body155, %for.end
  %retval.0 = phi i32 [ 0, %do.body155 ], [ %i.0.lcssa, %for.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache* noundef %s, i32 noundef %flags) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @gfp_allowed_mask, align 4
  %and = and i32 %0, %flags
  %call = call i32 @should_failslab(%struct.kmem_cache* noundef %s, i32 noundef %and) #25
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, %struct.kmem_cache* %s, %struct.kmem_cache* null
  ret %struct.kmem_cache* %spec.select
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #8 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #27, !srcloc !23
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #23
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #26, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @next_tid(i64 noundef %tid) unnamed_addr #9 {
entry:
  %add = add i64 %tid, 1
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #26, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @___slab_alloc(%struct.kmem_cache* noundef %s, i32 noundef %gfpflags, i64 noundef %addr, %struct.kmem_cache_cpu* noundef %c) unnamed_addr #1 {
entry:
  %page = alloca %struct.page*, align 8
  %0 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  %page1 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c, i64 0, i32 2
  %1 = load volatile %struct.page*, %struct.page** %page1, align 8
  %tobool.not10 = icmp eq %struct.page* %1, null
  br i1 %tobool.not10, label %new_slab.preheader.loopexit, label %redo

redo:                                             ; preds = %entry, %reread_page.backedge
  %2 = phi %struct.page* [ %4, %reread_page.backedge ], [ %1, %entry ]
  %call24 = call fastcc i1 @pfmemalloc_match_unsafe(%struct.page* noundef nonnull %2, i32 noundef %gfpflags) #23
  %call42 = call fastcc i64 @arch_local_irq_save() #23
  %call52 = call fastcc i64 @__kern_my_cpu_offset() #23
  %3 = load %struct.page*, %struct.page** %page1, align 8
  %cmp56.not = icmp eq %struct.page* %2, %3
  br i1 %call24, label %do.body38, label %do.body180, !prof !14

do.body38:                                        ; preds = %redo
  br i1 %cmp56.not, label %if.end94, label %reread_page.backedge, !prof !14

reread_page.backedge:                             ; preds = %do.body38, %do.body180
  call fastcc void @arch_local_irq_restore(i64 noundef %call42) #23
  %4 = load volatile %struct.page*, %struct.page** %page1, align 8
  %tobool.not = icmp eq %struct.page* %4, null
  br i1 %tobool.not, label %new_slab.preheader.loopexit, label %redo

if.end94:                                         ; preds = %do.body38
  store %struct.page* %2, %struct.page** %page, align 8
  %5 = bitcast %struct.kmem_cache_cpu* %c to i8**
  %6 = load i8*, i8** %5, align 8
  %tobool96.not = icmp eq i8* %6, null
  br i1 %tobool96.not, label %if.end98, label %do.body133

if.end98:                                         ; preds = %if.end94
  %call99 = call fastcc i8* @get_freelist(%struct.kmem_cache* noundef %s, %struct.page* noundef nonnull %2) #23
  %tobool100.not = icmp eq i8* %call99, null
  br i1 %tobool100.not, label %if.then101, label %do.body133

if.then101:                                       ; preds = %if.end98
  store %struct.page* null, %struct.page** %page1, align 8
  %call113 = call fastcc i64 @__kern_my_cpu_offset() #23
  call fastcc void @arch_local_irq_restore(i64 noundef %call42) #23
  br label %new_slab.preheader

do.body133:                                       ; preds = %if.end98, %if.end94, %if.end487
  %.pre-phi = phi i8** [ %5, %if.end98 ], [ %5, %if.end94 ], [ %.pre26.pre-phi, %if.end487 ]
  %flags.0 = phi i64 [ %call42, %if.end98 ], [ %call42, %if.end94 ], [ %call424.lcssa, %if.end487 ]
  %freelist.0 = phi i8* [ %call99, %if.end98 ], [ %6, %if.end94 ], [ %freelist.1, %if.end487 ]
  %c.addr.0 = phi %struct.kmem_cache_cpu* [ %c, %if.end98 ], [ %c, %if.end94 ], [ %c.addr.2, %if.end487 ]
  %call142 = call fastcc i64 @__kern_my_cpu_offset() #23
  %call146 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %freelist.0) #23
  store i8* %call146, i8** %.pre-phi, align 8
  %tid = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c.addr.0, i64 0, i32 1
  %7 = load i64, i64* %tid, align 8
  %call148 = call fastcc i64 @next_tid(i64 noundef %7) #23
  store i64 %call148, i64* %tid, align 8
  %call160 = call fastcc i64 @__kern_my_cpu_offset() #23
  call fastcc void @arch_local_irq_restore(i64 noundef %flags.0) #23
  br label %cleanup

do.body180:                                       ; preds = %redo
  br i1 %cmp56.not, label %if.end236, label %reread_page.backedge

if.end236:                                        ; preds = %do.body180
  store %struct.page* %2, %struct.page** %page, align 8
  %freelist237 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c, i64 0, i32 0
  %8 = bitcast %struct.kmem_cache_cpu* %c to i8**
  %9 = load i8*, i8** %8, align 8
  store %struct.page* null, %struct.page** %page1, align 8
  store i8** null, i8*** %freelist237, align 8
  %call250 = call fastcc i64 @__kern_my_cpu_offset() #23
  call fastcc void @arch_local_irq_restore(i64 noundef %call42) #23
  call fastcc void @deactivate_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef nonnull %2, i8* noundef %9) #23
  br label %new_slab.preheader

new_slab.preheader.loopexit:                      ; preds = %reread_page.backedge, %entry
  store %struct.page* null, %struct.page** %page, align 8
  br label %new_slab.preheader

new_slab.preheader:                               ; preds = %new_slab.preheader.loopexit, %if.then101, %if.end236
  %cpu_slab368 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 0
  br label %new_slab

new_slab:                                         ; preds = %new_slab.preheader, %if.then398
  %c.addr.1 = phi %struct.kmem_cache_cpu* [ %c.addr.2, %if.then398 ], [ %c, %new_slab.preheader ]
  %call363 = call fastcc i8* @get_partial(%struct.kmem_cache* noundef %s, i32 noundef %gfpflags, %struct.page** noundef nonnull %page) #23
  %tobool364.not = icmp eq i8* %call363, null
  br i1 %tobool364.not, label %do.body367, label %check_new_page

do.body367:                                       ; preds = %new_slab
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  %call371 = call fastcc %struct.page* @new_slab(%struct.kmem_cache* noundef %s, i32 noundef %gfpflags, i32 noundef -1) #23
  store %struct.page* %call371, %struct.page** %page, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !27
  %call381 = call fastcc i64 @__kern_my_cpu_offset() #23
  %tobool383.not = icmp eq %struct.page* %call371, null
  br i1 %tobool383.not, label %if.then393, label %if.end394, !prof !9

if.then393:                                       ; preds = %do.body367
  call fastcc void @slab_out_of_memory(%struct.kmem_cache* noundef %s, i32 noundef %gfpflags) #23
  br label %cleanup

if.end394:                                        ; preds = %do.body367
  %10 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab368, align 8
  %11 = ptrtoint %struct.kmem_cache_cpu* %10 to i64
  %add382 = add i64 %call381, %11
  %12 = inttoptr i64 %add382 to %struct.kmem_cache_cpu*
  %freelist395 = getelementptr inbounds %struct.page, %struct.page* %call371, i64 0, i32 1, i32 0, i32 2
  %13 = bitcast i64* %freelist395 to i8**
  %14 = load i8*, i8** %13, align 8
  store i8* null, i8** %13, align 8
  br label %check_new_page

check_new_page:                                   ; preds = %new_slab, %if.end394
  %freelist.1 = phi i8* [ %call363, %new_slab ], [ %14, %if.end394 ]
  %c.addr.2 = phi %struct.kmem_cache_cpu* [ %c.addr.1, %new_slab ], [ %12, %if.end394 ]
  %call397 = call fastcc i1 @kmem_cache_debug(%struct.kmem_cache* noundef %s) #23
  %15 = load %struct.page*, %struct.page** %page, align 8
  br i1 %call397, label %if.then398, label %if.end403

if.then398:                                       ; preds = %check_new_page
  %call399 = call fastcc i32 @alloc_debug_processing(%struct.kmem_cache* noundef %s, %struct.page* noundef %15, i8* noundef %freelist.1, i64 noundef %addr) #23
  %tobool400.not = icmp eq i32 %call399, 0
  br i1 %tobool400.not, label %new_slab, label %return_single

if.end403:                                        ; preds = %check_new_page
  %call404 = call fastcc i1 @pfmemalloc_match(%struct.page* noundef %15, i32 noundef %gfpflags) #23
  br i1 %call404, label %retry_load_page.preheader, label %return_single, !prof !14

retry_load_page.preheader:                        ; preds = %if.end403
  %call42411 = call fastcc i64 @arch_local_irq_save() #23
  %call43812 = call fastcc i64 @__kern_my_cpu_offset() #23
  %page442 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c.addr.2, i64 0, i32 2
  %16 = load %struct.page*, %struct.page** %page442, align 8
  %tobool443.not13 = icmp eq %struct.page* %16, null
  br i1 %tobool443.not13, label %if.end487, label %if.then451.lr.ph, !prof !14

if.then451.lr.ph:                                 ; preds = %retry_load_page.preheader
  %freelist452 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c.addr.2, i64 0, i32 0
  %17 = bitcast %struct.kmem_cache_cpu* %c.addr.2 to i8**
  %tid456 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c.addr.2, i64 0, i32 1
  br label %if.then451

if.then451:                                       ; preds = %if.then451.lr.ph, %if.then451
  %18 = phi %struct.page* [ %16, %if.then451.lr.ph ], [ %21, %if.then451 ]
  %call42414 = phi i64 [ %call42411, %if.then451.lr.ph ], [ %call424, %if.then451 ]
  %19 = load i8*, i8** %17, align 8
  store %struct.page* null, %struct.page** %page442, align 8
  store i8** null, i8*** %freelist452, align 8
  %20 = load i64, i64* %tid456, align 8
  %call457 = call fastcc i64 @next_tid(i64 noundef %20) #23
  store i64 %call457, i64* %tid456, align 8
  %call469 = call fastcc i64 @__kern_my_cpu_offset() #23
  call fastcc void @arch_local_irq_restore(i64 noundef %call42414) #23
  call fastcc void @deactivate_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef nonnull %18, i8* noundef %19) #23
  %call424 = call fastcc i64 @arch_local_irq_save() #23
  %call438 = call fastcc i64 @__kern_my_cpu_offset() #23
  %21 = load %struct.page*, %struct.page** %page442, align 8
  %tobool443.not = icmp eq %struct.page* %21, null
  br i1 %tobool443.not, label %if.end487.loopexit, label %if.then451, !prof !14

if.end487.loopexit:                               ; preds = %if.then451
  %.pre = load %struct.page*, %struct.page** %page, align 8
  br label %if.end487

if.end487:                                        ; preds = %retry_load_page.preheader, %if.end487.loopexit
  %22 = phi %struct.page* [ %.pre, %if.end487.loopexit ], [ %15, %retry_load_page.preheader ]
  %call424.lcssa = phi i64 [ %call424, %if.end487.loopexit ], [ %call42411, %retry_load_page.preheader ]
  %.pre26.pre-phi = bitcast %struct.kmem_cache_cpu* %c.addr.2 to i8**
  store %struct.page* %22, %struct.page** %page442, align 8
  br label %do.body133

return_single:                                    ; preds = %if.then398, %if.end403
  %call489 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %freelist.1) #23
  call fastcc void @deactivate_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %15, i8* noundef %call489) #23
  br label %cleanup

cleanup:                                          ; preds = %return_single, %if.then393, %do.body133
  %retval.0 = phi i8* [ %freelist.1, %return_single ], [ %freelist.0, %do.body133 ], [ null, %if.then393 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @get_freepointer(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef readonly %object) unnamed_addr #3 {
entry:
  %offset = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  %0 = load i32, i32* %offset, align 8
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr i8, i8* %object, i64 %idx.ext
  %call1 = call fastcc i8* @freelist_dereference(i8* noundef %add.ptr) #23
  ret i8* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @slab_post_alloc_hook(%struct.kmem_cache* nocapture noundef readonly %s, i32 noundef %flags, i64 noundef %size, i8** nocapture noundef %p, i1 noundef %init) unnamed_addr #1 {
entry:
  %cmp1.not = icmp eq i64 %size, 0
  br i1 %cmp1.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %i.02 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %arrayidx = getelementptr i8*, i8** %p, i64 %i.02
  %0 = load i8*, i8** %arrayidx, align 8
  %tobool3.not = icmp ne i8* %0, null
  %1 = and i1 %tobool3.not, %init
  br i1 %1, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %for.body
  %2 = load i32, i32* %object_size, align 4
  %conv = zext i32 %2 to i64
  %call8 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef %conv) #25
  br label %if.end

if.end:                                           ; preds = %for.body, %land.lhs.true5
  %inc = add nuw i64 %i.02, 1
  %exitcond.not = icmp eq i64 %inc, %size
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @slab_want_init_on_alloc(i32 noundef %flags, %struct.kmem_cache* nocapture noundef readonly %c) unnamed_addr #0 {
entry:
  %call5 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_alloc, i64 0, i32 0)) #23
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end24, !prof !9

if.then:                                          ; preds = %entry
  %ctor = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %c, i64 0, i32 12
  %0 = load void (i8*)*, void (i8*)** %ctor, align 8
  %tobool16.not = icmp eq void (i8*)* %0, null
  br i1 %tobool16.not, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %flags18 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %c, i64 0, i32 1
  %1 = load i32, i32* %flags18, align 8
  %and = and i32 %1, 526336
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %return, label %if.then20

if.then20:                                        ; preds = %if.end
  %and21 = and i32 %flags, 256
  %tobool22 = icmp ne i32 %and21, 0
  br label %return

if.end24:                                         ; preds = %entry
  %and25 = and i32 %flags, 256
  %tobool26 = icmp ne i32 %and25, 0
  br label %return

return:                                           ; preds = %if.end, %if.then, %if.end24, %if.then20
  %retval.0 = phi i1 [ %tobool22, %if.then20 ], [ %tobool26, %if.end24 ], [ false, %if.then ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kmem_cache_free_bulk(%struct.kmem_cache* noundef, i64 noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__kmem_cache_release(%struct.kmem_cache* nocapture noundef %s) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.kmem_cache* %s to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #25
  call fastcc void @free_kmem_cache_nodes(%struct.kmem_cache* noundef %s) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_kmem_cache_nodes(%struct.kmem_cache* nocapture noundef %s) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool.not = icmp eq %struct.kmem_cache_node* %call, null
  br i1 %tobool.not, label %for.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 21, i64 0
  store %struct.kmem_cache_node* null, %struct.kmem_cache_node** %arrayidx, align 8
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache_node, align 8
  %1 = bitcast %struct.kmem_cache_node* %call to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef nonnull %1) #23
  br label %for.end

for.end:                                          ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i1 @__kmem_cache_empty(%struct.kmem_cache* nocapture noundef readonly %s) local_unnamed_addr #10 {
entry:
  %call = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool.not = icmp eq %struct.kmem_cache_node* %call, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 1
  %0 = load i64, i64* %nr_partial, align 8
  %tobool1.not = icmp eq i64 %0, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %call2 = call fastcc i64 @slabs_node(%struct.kmem_cache* noundef %s) #23
  %tobool3.not = icmp eq i64 %call2, 0
  br i1 %tobool3.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %entry, %lor.lhs.false
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.then, %lor.lhs.false
  %cmp.lcssa = phi i1 [ true, %for.inc ], [ false, %if.then ], [ false, %lor.lhs.false ]
  ret i1 %cmp.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* nocapture noundef readonly %s, i32 noundef %node) unnamed_addr #3 {
entry:
  %idxprom = sext i32 %node to i64
  %arrayidx = getelementptr %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 21, i64 %idxprom
  %0 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %arrayidx, align 8
  ret %struct.kmem_cache_node* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @slabs_node(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %counter.i.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 3, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kmem_cache_shutdown(%struct.kmem_cache* noundef %s) local_unnamed_addr #1 {
entry:
  call fastcc void @flush_all_cpus_locked(%struct.kmem_cache* noundef %s) #23
  %call = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool.not = icmp eq %struct.kmem_cache_node* %call, null
  br i1 %tobool.not, label %for.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @free_partial(%struct.kmem_cache* noundef %s, %struct.kmem_cache_node* noundef nonnull %call) #23
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 1
  %0 = load i64, i64* %nr_partial, align 8
  %tobool1.not = icmp eq i64 %0, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %call2 = call fastcc i64 @slabs_node(%struct.kmem_cache* noundef %s) #23
  %tobool3.not = icmp eq i64 %call2, 0
  br i1 %tobool3.not, label %for.end, label %cleanup

for.end:                                          ; preds = %entry, %lor.lhs.false
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %lor.lhs.false ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_all_cpus_locked(%struct.kmem_cache* noundef %s) unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @flush_lock) #25
  %call57 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #28
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp58 = icmp ult i32 %call57, %0
  br i1 %cmp58, label %do.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond.backedge, %entry
  %1 = phi i32 [ %0, %entry ], [ %5, %for.cond.backedge ]
  %call1560 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #28
  %cmp1661 = icmp ult i32 %call1560, %1
  br i1 %cmp1661, label %do.body18, label %for.end33

do.body:                                          ; preds = %entry, %for.cond.backedge
  %2 = phi i32 [ %5, %for.cond.backedge ], [ %0, %entry ]
  %call59 = phi i32 [ %call, %for.cond.backedge ], [ %call57, %entry ]
  %idxprom = zext i32 %call59 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.slub_flush_work* @slub_flush to i64)
  %4 = inttoptr i64 %add to %struct.slub_flush_work*
  %call2 = call fastcc i1 @has_cpu_slab(i32 noundef %call59, %struct.kmem_cache* noundef %s) #23
  br i1 %call2, label %do.body3, label %if.then

if.then:                                          ; preds = %do.body
  %skip = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %4, i64 0, i32 2
  store i8 1, i8* %skip, align 8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then, %do.body3
  %5 = phi i32 [ %2, %if.then ], [ %.pre, %do.body3 ]
  %call = call i32 @cpumask_next(i32 noundef %call59, %struct.cpumask* noundef nonnull @__cpu_online_mask) #28
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body, label %for.cond14.preheader

do.body3:                                         ; preds = %do.body
  %work = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %4, i64 0, i32 0
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %4, i64 0, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry6 = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %4, i64 0, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry6) #23
  %func = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %4, i64 0, i32 0, i32 2
  store void (%struct.work_struct*)* @flush_cpu_slab, void (%struct.work_struct*)** %func, align 8
  %skip10 = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %4, i64 0, i32 2
  store i8 0, i8* %skip10, align 8
  %s11 = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %4, i64 0, i32 1
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s11, align 8
  call fastcc void @schedule_work_on(i32 noundef %call59, %struct.work_struct* noundef %work) #23
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond.backedge

do.body18:                                        ; preds = %for.cond14.preheader, %for.cond14.backedge
  %6 = phi i32 [ %10, %for.cond14.backedge ], [ %1, %for.cond14.preheader ]
  %call1562 = phi i32 [ %call15, %for.cond14.backedge ], [ %call1560, %for.cond14.preheader ]
  %idxprom25 = zext i32 %call1562 to i64
  %arrayidx26 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom25
  %7 = load i64, i64* %arrayidx26, align 8
  %add27 = add i64 %7, ptrtoint (%struct.slub_flush_work* @slub_flush to i64)
  %8 = inttoptr i64 %add27 to %struct.slub_flush_work*
  %skip28 = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %8, i64 0, i32 2
  %9 = load i8, i8* %skip28, align 8, !range !28
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end30, label %for.cond14.backedge

if.end30:                                         ; preds = %do.body18
  %work31 = getelementptr inbounds %struct.slub_flush_work, %struct.slub_flush_work* %8, i64 0, i32 0
  %call32 = call i1 @flush_work(%struct.work_struct* noundef %work31) #25
  %.pre63 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond14.backedge

for.cond14.backedge:                              ; preds = %if.end30, %do.body18
  %10 = phi i32 [ %.pre63, %if.end30 ], [ %6, %do.body18 ]
  %call15 = call i32 @cpumask_next(i32 noundef %call1562, %struct.cpumask* noundef nonnull @__cpu_online_mask) #28
  %cmp16 = icmp ult i32 %call15, %10
  br i1 %cmp16, label %do.body18, label %for.end33

for.end33:                                        ; preds = %for.cond14.backedge, %for.cond14.preheader
  call void @mutex_unlock(%struct.mutex* noundef nonnull @flush_lock) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_partial(%struct.kmem_cache* nocapture noundef readonly %s, %struct.kmem_cache_node* noundef %n) unnamed_addr #1 {
entry:
  %discard = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %discard to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #26
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %discard, i64 0, i32 0
  store %struct.list_head* %discard, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %discard, i64 0, i32 1
  store %struct.list_head* %discard, %struct.list_head** %prev, align 8
  %call = call fastcc i64 @arch_local_save_flags() #23
  %call9 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #23
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.end20, label %do.body13, !prof !14

do.body13:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 4255; .short 0; .popsection; 14471: brk 0x800", ""() #26, !srcloc !29
  unreachable

do.end20:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #25
  %partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 2
  %1 = bitcast %struct.list_head* %partial to i8**
  %2 = load i8*, i8** %1, align 8
  %slab_list33117 = bitcast i8* %2 to %struct.list_head*
  %cmp35.not118 = icmp eq %struct.list_head* %partial, %slab_list33117
  br i1 %cmp35.not118, label %for.end, label %for.body

for.body:                                         ; preds = %do.end20, %for.inc
  %slab_list33122 = phi %struct.list_head* [ %slab_list33, %for.inc ], [ %slab_list33117, %do.end20 ]
  %.pn.in.in119 = phi i8* [ %.pn121, %for.inc ], [ %2, %do.end20 ]
  %page.0120.in = getelementptr i8, i8* %.pn.in.in119, i64 -8
  %page.0120 = bitcast i8* %page.0120.in to %struct.page*
  %.pn121.in = bitcast i8* %.pn.in.in119 to i8**
  %.pn121 = load i8*, i8** %.pn121.in, align 8
  %3 = getelementptr i8, i8* %.pn.in.in119, i64 32
  %4 = bitcast i8* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %tobool39.not = icmp eq i32 %bf.clear, 0
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %for.body
  call fastcc void @remove_partial(%struct.kmem_cache_node* noundef %n, %struct.page* noundef %page.0120) #23
  call fastcc void @list_add(%struct.list_head* noundef %slab_list33122, %struct.list_head* noundef nonnull %discard) #23
  br label %for.inc

if.else:                                          ; preds = %for.body
  call fastcc void @list_slab_objects(%struct.kmem_cache* noundef %s, %struct.page* noundef %page.0120) #23
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %if.else
  %slab_list33 = bitcast i8* %.pn121 to %struct.list_head*
  %cmp35.not = icmp eq %struct.list_head* %partial, %slab_list33
  br i1 %cmp35.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %do.end20
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #25
  %5 = bitcast %struct.list_head* %discard to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.list_head*
  %cmp69.not123 = icmp eq %struct.list_head* %discard, %7
  br i1 %cmp69.not123, label %for.end83, label %for.body73

for.body73:                                       ; preds = %for.end, %for.body73
  %.pn109.in.in124 = phi i8* [ %.pn109, %for.body73 ], [ %6, %for.end ]
  %page.1.in = getelementptr i8, i8* %.pn109.in.in124, i64 -8
  %page.1 = bitcast i8* %page.1.in to %struct.page*
  %.pn109.in = bitcast i8* %.pn109.in.in124 to i8**
  %.pn109 = load i8*, i8** %.pn109.in, align 8
  call fastcc void @discard_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page.1) #23
  %8 = bitcast i8* %.pn109 to %struct.list_head*
  %cmp69.not = icmp eq %struct.list_head* %discard, %8
  br i1 %cmp69.not, label %for.end83, label %for.body73

for.end83:                                        ; preds = %for.body73, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kmem_obj_info(%struct.kmem_obj_info* nocapture noundef writeonly %kpp, i8* noundef %object, %struct.page* noundef %page) local_unnamed_addr #1 {
entry:
  %slab_cache = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = bitcast %struct.address_space** %slab_cache to %struct.kmem_cache**
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %0, align 8
  %kp_ptr = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kpp, i64 0, i32 0
  store i8* %object, i8** %kp_ptr, align 8
  %kp_page = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kpp, i64 0, i32 1
  store %struct.page* %page, %struct.page** %kp_page, align 8
  %kp_slab_cache = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kpp, i64 0, i32 4
  store %struct.kmem_cache* %1, %struct.kmem_cache** %kp_slab_cache, align 8
  %2 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %2, 6
  %add.i = and i64 %sub.i, -4096
  %3 = inttoptr i64 %add.i to i8*
  %call2 = call fastcc i8* @restore_red_left(%struct.kmem_cache* noundef %1, i8* noundef %object) #23
  %call3 = call fastcc i32 @obj_to_index(%struct.kmem_cache* noundef %1, %struct.page* noundef %page, i8* noundef %call2) #23
  %sub.ptr.lhs.cast = ptrtoint i8* %object to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %kp_data_offset = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kpp, i64 0, i32 3
  store i64 %sub.ptr.sub, i64* %kp_data_offset, align 8
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %1, i64 0, i32 3
  %4 = load i32, i32* %size, align 8
  %mul = mul i32 %4, %call3
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext
  %kp_objp = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kpp, i64 0, i32 2
  store i8* %add.ptr, i8** %kp_objp, align 8
  %cmp = icmp ult i8* %add.ptr, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %6 = bitcast i64* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %7 = load i32, i32* %size, align 8
  %mul5 = mul i32 %bf.clear, %7
  %idx.ext6 = zext i32 %mul5 to i64
  %add.ptr7 = getelementptr i8, i8* %3, i64 %idx.ext6
  %cmp8.not = icmp ult i8* %add.ptr, %add.ptr7
  br i1 %cmp8.not, label %lor.rhs, label %if.then

lor.rhs:                                          ; preds = %lor.lhs.false
  %8 = urem i32 %mul, %7
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false29, label %if.then, !prof !14

if.then:                                          ; preds = %entry, %lor.lhs.false, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 4326; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !30
  br label %cleanup

lor.lhs.false29:                                  ; preds = %lor.rhs
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %1, i64 0, i32 1
  %9 = load i32, i32* %flags, align 8
  %and = and i32 %9, 65536
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %cleanup, label %if.end32

if.end32:                                         ; preds = %lor.lhs.false29
  %call33 = call i8* @fixup_red_left(%struct.kmem_cache* noundef %1, i8* noundef %add.ptr) #23
  %call34 = call fastcc %struct.track* @get_track(%struct.kmem_cache* noundef %1, i8* noundef %call33, i32 noundef 0) #23
  %addr = getelementptr inbounds %struct.track, %struct.track* %call34, i64 0, i32 0
  %10 = load i64, i64* %addr, align 8
  %11 = inttoptr i64 %10 to i8*
  %kp_ret = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kpp, i64 0, i32 5
  store i8* %11, i8** %kp_ret, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false29, %if.end32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @restore_red_left(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef readnone %p) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %red_left_pad = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 15
  %1 = load i32, i32* %red_left_pad, align 8
  %idx.ext = zext i32 %1 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr i8, i8* %p, i64 %idx.neg
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %p.addr.0 = phi i8* [ %add.ptr, %if.then ], [ %p, %entry ]
  ret i8* %p.addr.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @obj_to_index(%struct.kmem_cache* nocapture noundef readonly %cache, %struct.page* noundef %page, i8* noundef readonly %obj) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %call2 = call fastcc i32 @__obj_to_index(%struct.kmem_cache* noundef %cache, i8* noundef %1, i8* noundef %obj) #23
  ret i32 %call2
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_slub_min_order(i8* noundef %str) #5 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull @slub_min_order) #25
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_slub_max_order(i8* noundef %str) #5 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull @slub_max_order) #25
  %0 = load i32, i32* @slub_max_order, align 4
  %cmp = icmp ult i32 %0, 10
  %cond = select i1 %cmp, i32 %0, i32 10
  store i32 %cond, i32* @slub_max_order, align 4
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_slub_min_objects(i8* noundef %str) #5 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull @slub_min_objects) #25
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @__kmalloc(i64 noundef %size, i32 noundef %flags) local_unnamed_addr #1 {
entry:
  %object.i.i = alloca i8*, align 8
  %cmp = icmp ugt i64 %size, 8192
  br i1 %cmp, label %kmalloc_large.exit, label %if.end, !prof !9

kmalloc_large.exit:                               ; preds = %entry
  %sub.i.i = add i64 %size, -1
  %shr.i.i = lshr i64 %sub.i.i, 12
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i.i, i1 false) #26, !range !31
  %1 = trunc i64 %0 to i32
  %conv.i.i.i = sub nuw nsw i32 64, %1
  %call.i4.i = call noalias align 4096 i8* @kmalloc_order(i64 noundef %size, i32 noundef %flags, i32 noundef %conv.i.i.i) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.kmem_cache* @kmalloc_slab(i64 noundef %size, i32 noundef %flags) #25
  %cmp3 = icmp ult %struct.kmem_cache* %call2, inttoptr (i64 17 to %struct.kmem_cache*)
  br i1 %cmp3, label %if.then12, label %if.end13, !prof !9

if.then12:                                        ; preds = %if.end
  %2 = bitcast %struct.kmem_cache* %call2 to i8*
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %3 = call i8* @llvm.returnaddress(i32 0)
  %4 = ptrtoint i8* %3 to i64
  %and = and i64 %4, 36028797018963968
  %tobool14.not = icmp eq i64 %and, 0
  %5 = load i64, i64* @vabits_actual, align 8
  %shl17.neg = shl nsw i64 -1, %5
  %or = or i64 %shl17.neg, %4
  %and20 = and i64 %shl17.neg, 36028797018963967
  %neg = xor i64 %and20, -1
  %and22 = and i64 %neg, %4
  %cond = select i1 %tobool14.not, i64 %and22, i64 %or
  %6 = bitcast i8** %object.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #26
  %call.i.i64 = call fastcc %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache* noundef %call2, i32 noundef %flags) #25
  %tobool.not.i.i65 = icmp eq %struct.kmem_cache* %call.i.i64, null
  br i1 %tobool.not.i.i65, label %slab_alloc.exit, label %if.end.i.i66

if.end.i.i66:                                     ; preds = %if.end13
  %cpu_slab.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call.i.i64, i64 0, i32 0
  br label %redo.i.i

redo.i.i:                                         ; preds = %lor.rhs.i.i, %if.end.i.i66
  %7 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %8 = ptrtoint %struct.kmem_cache_cpu* %7 to i64
  %call8.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add.i.i67 = add i64 %call8.i.i, %8
  %9 = inttoptr i64 %add.i.i67 to %struct.kmem_cache_cpu*
  %tid13.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %9, i64 0, i32 1
  %10 = load volatile i64, i64* %tid13.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !10
  %11 = inttoptr i64 %add.i.i67 to i8**
  %12 = load i8*, i8** %11, align 8
  %page14.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %9, i64 0, i32 2
  %13 = load %struct.page*, %struct.page** %page14.i.i, align 8
  %tobool15.i.i = icmp ne i8* %12, null
  %tobool16.i.i = icmp ne %struct.page* %13, null
  %or.cond.i.i = select i1 %tobool15.i.i, i1 %tobool16.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then28.i.i, !prof !11

lor.rhs.i.i:                                      ; preds = %redo.i.i
  %call30.i.i = call fastcc i8* @get_freepointer_safe(%struct.kmem_cache* noundef nonnull %call.i.i64, i8* noundef nonnull %12) #25
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !12
  %14 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %15 = ptrtoint %struct.kmem_cache_cpu* %14 to i64
  %call47.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add48.i.i = add i64 %call47.i.i, %15
  %16 = inttoptr i64 %add48.i.i to i8*
  %17 = ptrtoint i8* %12 to i64
  %18 = ptrtoint i8* %call30.i.i to i64
  %call51.i.i = call fastcc i64 @next_tid(i64 noundef %10) #25
  %call52.i.i = call fastcc i64 @__cmpxchg_double(i64 noundef %17, i64 noundef %10, i64 noundef %18, i64 noundef %call51.i.i, i8* noundef %16) #25
  %tobool53.not.i.i = icmp eq i64 %call52.i.i, 0
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  br i1 %tobool53.not.i.i, label %cleanup.thread.i.i, label %redo.i.i, !prof !14

if.then28.i.i:                                    ; preds = %redo.i.i
  %19 = inttoptr i64 %add.i.i67 to %struct.kmem_cache_cpu*
  %call29.i.i = call fastcc i8* @__slab_alloc(%struct.kmem_cache* noundef nonnull %call.i.i64, i32 noundef %flags, i64 noundef %cond, %struct.kmem_cache_cpu* noundef %19) #25
  store i8* %call29.i.i, i8** %object.i.i, align 8
  br label %if.end74.i.i

cleanup.thread.i.i:                               ; preds = %lor.rhs.i.i
  store i8* %12, i8** %object.i.i, align 8
  call fastcc void @prefetch_freepointer(%struct.kmem_cache* noundef nonnull %call.i.i64, i8* noundef %call30.i.i) #25
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %cleanup.thread.i.i, %if.then28.i.i
  %20 = phi i8* [ %12, %cleanup.thread.i.i ], [ %call29.i.i, %if.then28.i.i ]
  %call.i.i.i = call fastcc i1 @slab_want_init_on_free(%struct.kmem_cache* noundef nonnull %call.i.i64) #25
  br i1 %call.i.i.i, label %land.lhs.true.i.i.i, label %maybe_wipe_obj_freeptr.exit.i.i, !prof !9

land.lhs.true.i.i.i:                              ; preds = %if.end74.i.i
  %tobool2.not.i.i.i = icmp eq i8* %20, null
  br i1 %tobool2.not.i.i.i, label %maybe_wipe_obj_freeptr.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %offset.i.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call.i.i64, i64 0, i32 6
  %21 = load i32, i32* %offset.i.i.i, align 8
  %idx.ext.i.i.i = zext i32 %21 to i64
  %add.ptr.i.i.i = getelementptr i8, i8* %20, i64 %idx.ext.i.i.i
  %call4.i.i.i = call i8* @memset(i8* noundef %add.ptr.i.i.i, i32 noundef 0, i64 noundef 8) #25
  br label %maybe_wipe_obj_freeptr.exit.i.i

maybe_wipe_obj_freeptr.exit.i.i:                  ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i, %if.end74.i.i
  %call75.i.i = call fastcc i1 @slab_want_init_on_alloc(i32 noundef %flags, %struct.kmem_cache* noundef nonnull %call.i.i64) #25
  call fastcc void @slab_post_alloc_hook(%struct.kmem_cache* noundef nonnull %call.i.i64, i32 noundef %flags, i64 noundef 1, i8** noundef nonnull %object.i.i, i1 noundef %call75.i.i) #25
  %22 = load i8*, i8** %object.i.i, align 8
  br label %slab_alloc.exit

slab_alloc.exit:                                  ; preds = %if.end13, %maybe_wipe_obj_freeptr.exit.i.i
  %retval.0.i.i68 = phi i8* [ %22, %maybe_wipe_obj_freeptr.exit.i.i ], [ null, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #26
  br label %cleanup

cleanup:                                          ; preds = %slab_alloc.exit, %if.then12, %kmalloc_large.exit
  %retval.0 = phi i8* [ %call.i4.i, %kmalloc_large.exit ], [ %2, %if.then12 ], [ %retval.0.i.i68, %slab_alloc.exit ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmalloc_slab(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__ksize(i8* noundef %object) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %object, inttoptr (i64 16 to i8*)
  br i1 %cmp, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.page* @virt_to_head_page(i8* noundef %object) #23
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call) #25
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 512
  %tobool3.not = icmp eq i64 %2, 0
  br i1 %tobool3.not, label %if.then13, label %if.end40, !prof !9

if.then13:                                        ; preds = %if.end
  %flags.i49 = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i49, align 8
  %4 = and i64 %3, 65536
  %tobool.not.i = icmp eq i64 %4, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.end31

PageCompound.exit:                                ; preds = %if.then13
  %5 = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %5 to i64*
  %6 = load volatile i64, i64* %compound_head.i.i, align 8
  %7 = and i64 %6, 1
  %tobool15.not = icmp eq i64 %7, 0
  br i1 %tobool15.not, label %if.then30, label %if.end31, !prof !9

if.then30:                                        ; preds = %PageCompound.exit
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 4529; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !32
  br label %if.end31

if.end31:                                         ; preds = %if.then13, %if.then30, %PageCompound.exit
  %call39 = call fastcc i64 @page_size(%struct.page* noundef %call) #23
  br label %cleanup

if.end40:                                         ; preds = %if.end
  %slab_cache = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 1
  %8 = bitcast %struct.address_space** %slab_cache to %struct.kmem_cache**
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %call41 = call fastcc i64 @slab_ksize(%struct.kmem_cache* noundef %9) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end40, %if.end31
  %retval.0 = phi i64 [ %call39, %if.end31 ], [ %call41, %if.end40 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #23
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @slab_ksize(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 3072
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  br label %return

if.end7:                                          ; preds = %entry
  %and9 = and i32 %0, 589824
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end7
  %inuse = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  br label %return

if.end13:                                         ; preds = %if.end7
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then
  %retval.0.in.in = phi i32* [ %object_size, %if.then ], [ %inuse, %if.then11 ], [ %size, %if.end13 ]
  %retval.0.in = load i32, i32* %retval.0.in.in, align 4
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kfree(i8* noundef %x) local_unnamed_addr #1 {
entry:
  %head.addr.i = alloca i8*, align 8
  %tail.addr.i = alloca i8*, align 8
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %cmp = icmp ult i8* %x, inttoptr (i64 17 to i8*)
  br i1 %cmp, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.page* @virt_to_head_page(i8* noundef %x) #23
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call) #25
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 512
  %tobool12.not = icmp eq i64 %4, 0
  br i1 %tobool12.not, label %if.then22, label %if.end23, !prof !9

if.then22:                                        ; preds = %if.end
  call fastcc void @free_nonslab_page(%struct.page* noundef %call) #23
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %slab_cache = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 1
  %5 = bitcast %struct.address_space** %slab_cache to %struct.kmem_cache**
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %7 = load i64, i64* @vabits_actual, align 8
  %shl34.neg = shl nsw i64 -1, %7
  %or32 = or i64 %shl34.neg, %1
  %and37 = and i64 %shl34.neg, 36028797018963967
  %neg39 = xor i64 %and37, -1
  %and40 = and i64 %neg39, %1
  %cond42 = select i1 %tobool.not, i64 %and40, i64 %or32
  %8 = bitcast i8** %head.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8)
  %9 = bitcast i8** %tail.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9)
  store i8* %x, i8** %head.addr.i, align 8
  store i8* null, i8** %tail.addr.i, align 8
  %call.i53 = call fastcc i1 @slab_free_freelist_hook(%struct.kmem_cache* noundef %6, i8** noundef nonnull %head.addr.i, i8** noundef nonnull %tail.addr.i) #25
  br i1 %call.i53, label %if.then.i, label %slab_free.exit

if.then.i:                                        ; preds = %if.end23
  %10 = load i8*, i8** %head.addr.i, align 8
  %11 = load i8*, i8** %tail.addr.i, align 8
  %tobool.not.i.i = icmp eq i8* %11, null
  %cond.i.i = select i1 %tobool.not.i.i, i8* %10, i8* %11
  %cpu_slab.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %6, i64 0, i32 0
  %12 = ptrtoint i8* %10 to i64
  br label %redo.i.i

redo.i.i:                                         ; preds = %if.then11.i.i, %if.then.i
  %13 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %14 = ptrtoint %struct.kmem_cache_cpu* %13 to i64
  %call.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add.i.i = add i64 %call.i.i, %14
  %15 = inttoptr i64 %add.i.i to %struct.kmem_cache_cpu*
  %tid7.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %15, i64 0, i32 1
  %16 = load volatile i64, i64* %tid7.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !15
  %page8.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %15, i64 0, i32 2
  %17 = load %struct.page*, %struct.page** %page8.i.i, align 8
  %cmp.i.i = icmp eq %struct.page* %17, %call
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.else.i.i, !prof !14

if.then11.i.i:                                    ; preds = %redo.i.i
  %freelist16.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %15, i64 0, i32 0
  %18 = load volatile i8**, i8*** %freelist16.i.i, align 8
  %19 = bitcast i8** %18 to i8*
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %6, i8* noundef %cond.i.i, i8* noundef %19) #25
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !16
  %20 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %21 = ptrtoint %struct.kmem_cache_cpu* %20 to i64
  %call33.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add34.i.i = add i64 %call33.i.i, %21
  %22 = inttoptr i64 %add34.i.i to i8*
  %23 = ptrtoint i8** %18 to i64
  %call37.i.i = call fastcc i64 @next_tid(i64 noundef %16) #25
  %call38.i.i = call fastcc i64 @__cmpxchg_double(i64 noundef %23, i64 noundef %16, i64 noundef %12, i64 noundef %call37.i.i, i8* noundef %22) #25
  %tobool39.not.i.i = icmp eq i64 %call38.i.i, 0
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !17
  br i1 %tobool39.not.i.i, label %slab_free.exit, label %redo.i.i, !prof !14

if.else.i.i:                                      ; preds = %redo.i.i
  call fastcc void @__slab_free(%struct.kmem_cache* noundef %6, %struct.page* noundef %call, i8* noundef %10, i8* noundef %cond.i.i, i32 noundef 1, i64 noundef %cond42) #25
  br label %slab_free.exit

slab_free.exit:                                   ; preds = %if.then11.i.i, %if.end23, %if.else.i.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9)
  br label %cleanup

cleanup:                                          ; preds = %entry, %slab_free.exit, %if.then22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_nonslab_page(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #23
  %sh_prom = zext i32 %call to i64
  %shl.neg = shl i64 -4096, %sh_prom
  %conv = trunc i64 %shl.neg to i32
  call fastcc void @mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef %conv) #23
  call void @__free_pages(%struct.page* noundef %page, i32 noundef %call) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kmem_cache_shrink(%struct.kmem_cache* noundef %s) local_unnamed_addr #1 {
entry:
  call fastcc void @flush_all(%struct.kmem_cache* noundef %s) #23
  %call = call fastcc i32 @__kmem_cache_do_shrink(%struct.kmem_cache* noundef %s) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_all(%struct.kmem_cache* noundef %s) unnamed_addr #1 {
entry:
  call fastcc void @flush_all_cpus_locked(%struct.kmem_cache* noundef %s) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__kmem_cache_do_shrink(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #1 {
entry:
  %discard = alloca %struct.list_head, align 8
  %promote = alloca [32 x %struct.list_head], align 8
  %0 = bitcast %struct.list_head* %discard to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %1 = bitcast [32 x %struct.list_head]* %promote to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %1) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(512) %1, i8 0, i64 512, i1 false), !annotation !8
  %2 = bitcast %struct.list_head* %discard to i8**
  %call = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool.not = icmp eq %struct.kmem_cache_node* %call, null
  br i1 %tobool.not, label %for.end124, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %discard) #23
  %add.ptr = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %add.ptr) #23
  %add.ptr.1 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.1) #23
  %add.ptr.2 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.2) #23
  %add.ptr.3 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.3) #23
  %add.ptr.4 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.4) #23
  %add.ptr.5 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 5
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.5) #23
  %add.ptr.6 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 6
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.6) #23
  %add.ptr.7 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 7
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.7) #23
  %add.ptr.8 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.8) #23
  %add.ptr.9 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 9
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.9) #23
  %add.ptr.10 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.10) #23
  %add.ptr.11 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 11
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.11) #23
  %add.ptr.12 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.12) #23
  %add.ptr.13 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 13
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.13) #23
  %add.ptr.14 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 14
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.14) #23
  %add.ptr.15 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 15
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.15) #23
  %add.ptr.16 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.16) #23
  %add.ptr.17 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.17) #23
  %add.ptr.18 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 18
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.18) #23
  %add.ptr.19 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 19
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.19) #23
  %add.ptr.20 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 20
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.20) #23
  %add.ptr.21 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 21
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.21) #23
  %add.ptr.22 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 22
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.22) #23
  %add.ptr.23 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 23
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.23) #23
  %add.ptr.24 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 24
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.24) #23
  %add.ptr.25 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 25
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.25) #23
  %add.ptr.26 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 26
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.26) #23
  %add.ptr.27 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 27
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.27) #23
  %add.ptr.28 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 28
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.28) #23
  %add.ptr.29 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 29
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.29) #23
  %add.ptr.30 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 30
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.30) #23
  %add.ptr.31 = getelementptr inbounds [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 31
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr.31) #23
  %rlock.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 0, i32 0, i32 0
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #23
  %partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 2
  %3 = bitcast %struct.list_head* %partial to i8**
  %4 = load i8*, i8** %3, align 8
  %slab_list23179 = bitcast i8* %4 to %struct.list_head*
  %cmp25.not180 = icmp eq %struct.list_head* %partial, %slab_list23179
  br i1 %cmp25.not180, label %for.cond73.preheader, label %for.body27.lr.ph

for.body27.lr.ph:                                 ; preds = %if.then
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 1
  br label %for.body27

for.cond73.preheader:                             ; preds = %if.end62, %if.then
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.31, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.30, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.29, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.28, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.27, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.26, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.25, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.24, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.23, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.22, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.21, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.20, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.19, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.18, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.17, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.16, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.15, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.14, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.13, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.12, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.11, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.10, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.9, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.8, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.7, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.6, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.5, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.4, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.3, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.2, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef %add.ptr.1, %struct.list_head* noundef %partial) #23
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %add.ptr, %struct.list_head* noundef %partial) #23
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call7) #25
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.list_head*
  %cmp102.not185 = icmp eq %struct.list_head* %discard, %6
  br i1 %cmp102.not185, label %for.end116, label %for.body106

for.body27:                                       ; preds = %for.body27.lr.ph, %if.end62
  %slab_list23183 = phi %struct.list_head* [ %slab_list23179, %for.body27.lr.ph ], [ %slab_list23, %if.end62 ]
  %.pn.in.in181 = phi i8* [ %4, %for.body27.lr.ph ], [ %.pn182, %if.end62 ]
  %.pn182.in = bitcast i8* %.pn.in.in181 to i8**
  %.pn182 = load i8*, i8** %.pn182.in, align 8
  %7 = getelementptr i8, i8* %.pn.in.in181, i64 32
  %8 = bitcast i8* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %bf.clear29 = and i32 %bf.load, 65535
  %sub = sub nsw i32 %bf.clear, %bf.clear29
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  %cmp31 = icmp slt i32 %sub, 1
  br i1 %cmp31, label %do.body38, label %do.end45, !prof !9

do.body38:                                        ; preds = %for.body27
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 4599; .short 0; .popsection; 14471: brk 0x800", ""() #26, !srcloc !34
  unreachable

do.end45:                                         ; preds = %for.body27
  %bf.load46 = load i32, i32* %8, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 32767
  %cmp49 = icmp eq i32 %sub, %bf.clear48
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %do.end45
  call fastcc void @list_move(%struct.list_head* noundef %slab_list23183, %struct.list_head* noundef nonnull %discard) #23
  %9 = load i64, i64* %nr_partial, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %nr_partial, align 8
  br label %if.end62

if.else:                                          ; preds = %do.end45
  %cmp53 = icmp ult i32 %sub, 33
  br i1 %cmp53, label %if.then55, label %if.end62

if.then55:                                        ; preds = %if.else
  %idx.ext58174 = zext i32 %sub to i64
  %add.ptr59 = getelementptr [32 x %struct.list_head], [32 x %struct.list_head]* %promote, i64 0, i64 %idx.ext58174
  %add.ptr60 = getelementptr %struct.list_head, %struct.list_head* %add.ptr59, i64 -1
  call fastcc void @list_move(%struct.list_head* noundef %slab_list23183, %struct.list_head* noundef %add.ptr60) #23
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then55, %if.then51
  %slab_list23 = bitcast i8* %.pn182 to %struct.list_head*
  %cmp25.not = icmp eq %struct.list_head* %partial, %slab_list23
  br i1 %cmp25.not, label %for.cond73.preheader, label %for.body27

for.body106:                                      ; preds = %for.cond73.preheader, %for.body106
  %.pn169.in.in186 = phi i8* [ %.pn169, %for.body106 ], [ %5, %for.cond73.preheader ]
  %page.1.in = getelementptr i8, i8* %.pn169.in.in186, i64 -8
  %page.1 = bitcast i8* %page.1.in to %struct.page*
  %.pn169.in = bitcast i8* %.pn169.in.in186 to i8**
  %.pn169 = load i8*, i8** %.pn169.in, align 8
  call fastcc void @discard_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page.1) #23
  %10 = bitcast i8* %.pn169 to %struct.list_head*
  %cmp102.not = icmp eq %struct.list_head* %discard, %10
  br i1 %cmp102.not, label %for.end116, label %for.body106

for.end116:                                       ; preds = %for.body106, %for.cond73.preheader
  %call117 = call fastcc i64 @slabs_node(%struct.kmem_cache* noundef %s) #23
  %tobool118.not = icmp ne i64 %call117, 0
  %spec.select = zext i1 %tobool118.not to i32
  br label %for.end124

for.end124:                                       ; preds = %entry, %for.end116
  %ret.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select, %for.end116 ]
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %1) #26
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #26
  ret i32 %ret.0.lcssa
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @kmem_cache_init() local_unnamed_addr #5 section ".init.text" {
entry:
  %call1 = call fastcc i1 @__slub_debug_enabled() #23
  br i1 %call1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  %call3 = call i32 @no_hash_pointers_enable(i8* noundef null) #25
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry
  store %struct.kmem_cache* @kmem_cache_init.boot_kmem_cache_node, %struct.kmem_cache** @kmem_cache_node, align 8
  store %struct.kmem_cache* @kmem_cache_init.boot_kmem_cache, %struct.kmem_cache** @kmem_cache, align 8
  call fastcc void @set_bit(i64 noundef 0, i64* noundef getelementptr inbounds (%struct.nodemask_t, %struct.nodemask_t* @slab_nodes, i64 0, i32 0, i64 0)) #25
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache_node, align 8
  call void @create_boot_cache(%struct.kmem_cache* noundef %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 64, i32 noundef 8192, i32 noundef 0, i32 noundef 0) #25
  store i32 1, i32* @slab_state, align 4
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache, align 8
  call void @create_boot_cache(%struct.kmem_cache* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef 192, i32 noundef 8192, i32 noundef 0, i32 noundef 0) #25
  %call5 = call fastcc %struct.kmem_cache* @bootstrap(%struct.kmem_cache* noundef nonnull @kmem_cache_init.boot_kmem_cache) #29
  store %struct.kmem_cache* %call5, %struct.kmem_cache** @kmem_cache, align 8
  %call6 = call fastcc %struct.kmem_cache* @bootstrap(%struct.kmem_cache* noundef nonnull @kmem_cache_init.boot_kmem_cache_node) #29
  store %struct.kmem_cache* %call6, %struct.kmem_cache** @kmem_cache_node, align 8
  call void @setup_kmalloc_cache_index_table() #25
  call void @create_kmalloc_caches(i32 noundef 0) #25
  call fastcc void @cpuhp_setup_state_nocalls() #23
  %call9 = call i32 @cache_line_size() #25
  %2 = load i32, i32* @slub_min_order, align 4
  %3 = load i32, i32* @slub_max_order, align 4
  %4 = load i32, i32* @slub_min_objects, align 4
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call9, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__slub_debug_enabled() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0)) #23
  %cmp = icmp sgt i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @no_hash_pointers_enable(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_boot_cache(%struct.kmem_cache* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc %struct.kmem_cache* @bootstrap(%struct.kmem_cache* noundef %static_cache) unnamed_addr #5 section ".init.text" {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #23
  %1 = bitcast i8* %call to %struct.kmem_cache*
  %2 = bitcast %struct.kmem_cache* %static_cache to i8*
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache, align 8
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %3, i64 0, i32 4
  %4 = load i32, i32* %object_size, align 4
  %conv = zext i32 %4 to i64
  %call1 = call i8* @memcpy(i8* noundef %call, i8* noundef %2, i64 noundef %conv) #25
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call3, ptrtoint (i32* @cpu_number to i64)
  %5 = inttoptr i64 %add to i32*
  %6 = load i32, i32* %5, align 4
  call fastcc void @__flush_cpu_slab(%struct.kmem_cache* noundef %1, i32 noundef %6) #23
  %call5 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %1, i32 noundef 0) #23
  %tobool.not = icmp eq %struct.kmem_cache_node* %call5, null
  br i1 %tobool.not, label %for.end49, label %if.then

if.then:                                          ; preds = %entry
  %partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call5, i64 0, i32 2
  %7 = bitcast %struct.list_head* %partial to i8**
  %.pn77 = load i8*, i8** %7, align 8
  %slab_list78 = bitcast i8* %.pn77 to %struct.list_head*
  %cmp12.not79 = icmp eq %struct.list_head* %partial, %slab_list78
  br i1 %cmp12.not79, label %for.end, label %for.body14

for.body14:                                       ; preds = %if.then, %for.body14
  %.pn80 = phi i8* [ %.pn, %for.body14 ], [ %.pn77, %if.then ]
  %slab_cache = getelementptr inbounds i8, i8* %.pn80, i64 16
  %8 = bitcast i8* %slab_cache to i8**
  store i8* %call, i8** %8, align 8
  %9 = bitcast i8* %.pn80 to i8**
  %.pn = load i8*, i8** %9, align 8
  %slab_list = bitcast i8* %.pn to %struct.list_head*
  %cmp12.not = icmp eq %struct.list_head* %partial, %slab_list
  br i1 %cmp12.not, label %for.end, label %for.body14

for.end:                                          ; preds = %for.body14, %if.then
  %full = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call5, i64 0, i32 5
  %10 = bitcast %struct.list_head* %full to i8**
  %.pn7681 = load i8*, i8** %10, align 8
  %slab_list3182 = bitcast i8* %.pn7681 to %struct.list_head*
  %cmp33.not83 = icmp eq %struct.list_head* %full, %slab_list3182
  br i1 %cmp33.not83, label %for.end49, label %for.body36

for.body36:                                       ; preds = %for.end, %for.body36
  %.pn7684 = phi i8* [ %.pn76, %for.body36 ], [ %.pn7681, %for.end ]
  %slab_cache37 = getelementptr inbounds i8, i8* %.pn7684, i64 16
  %11 = bitcast i8* %slab_cache37 to i8**
  store i8* %call, i8** %11, align 8
  %12 = bitcast i8* %.pn7684 to i8**
  %.pn76 = load i8*, i8** %12, align 8
  %slab_list31 = bitcast i8* %.pn76 to %struct.list_head*
  %cmp33.not = icmp eq %struct.list_head* %full, %slab_list31
  br i1 %cmp33.not, label %for.end49, label %for.body36

for.end49:                                        ; preds = %for.body36, %for.end, %entry
  %list = getelementptr inbounds i8, i8* %call, i64 96
  %13 = bitcast i8* %list to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %13, %struct.list_head* noundef nonnull @slab_caches) #23
  ret %struct.kmem_cache* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_kmalloc_cache_index_table() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_kmalloc_caches(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_setup_state_nocalls() unnamed_addr #1 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef null, i32 (i32)* noundef nonnull @slub_cpu_dead, i1 noundef false) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @slub_cpu_dead(i32 noundef %cpu) #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @slab_mutex) #25
  %.pn13 = load i8*, i8** bitcast (%struct.list_head* @slab_caches to i8**), align 8
  %cmp.not14 = icmp eq i8* %.pn13, bitcast (%struct.list_head* @slab_caches to i8*)
  br i1 %cmp.not14, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn15 = phi i8* [ %.pn, %for.body ], [ %.pn13, %entry ]
  %s.0.in = getelementptr i8, i8* %.pn15, i64 -96
  %s.0 = bitcast i8* %s.0.in to %struct.kmem_cache*
  call fastcc void @__flush_cpu_slab(%struct.kmem_cache* noundef %s.0, i32 noundef %cpu) #23
  %0 = bitcast i8* %.pn15 to i8**
  %.pn = load i8*, i8** %0, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @slab_caches to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #25
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_line_size() local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define dso_local void @kmem_cache_init_late() local_unnamed_addr #12 section ".init.text" {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kmem_cache* @__kmem_cache_alias(i8* noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %flags, void (i8*)* noundef %ctor) local_unnamed_addr #1 {
entry:
  %call = call %struct.kmem_cache* @find_mergeable(i32 noundef %size, i32 noundef %align, i32 noundef %flags, i8* noundef %name, void (i8*)* noundef %ctor) #25
  %tobool.not = icmp eq %struct.kmem_cache* %call, null
  br i1 %tobool.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call, i64 0, i32 11
  %0 = load i32, i32* %refcount, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %refcount, align 4
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call, i64 0, i32 4
  %1 = load i32, i32* %object_size, align 4
  %cmp = icmp ugt i32 %1, %size
  %cond = select i1 %cmp, i32 %1, i32 %size
  store i32 %cond, i32* %object_size, align 4
  %inuse = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call, i64 0, i32 13
  %2 = load i32, i32* %inuse, align 8
  %add = add i32 %size, 7
  %and = and i32 %add, -8
  %cmp3 = icmp ugt i32 %2, %and
  %cond7 = select i1 %cmp3, i32 %2, i32 %and
  store i32 %cond7, i32* %inuse, align 8
  %call9 = call fastcc i32 @sysfs_slab_alias(%struct.kmem_cache* noundef nonnull %call, i8* noundef %name) #23
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then
  %3 = load i32, i32* %refcount, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %refcount, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then, %if.then11, %entry
  %s.0 = phi %struct.kmem_cache* [ null, %if.then11 ], [ %call, %if.then ], [ null, %entry ]
  ret %struct.kmem_cache* %s.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @find_mergeable(i32 noundef, i32 noundef, i32 noundef, i8* noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_slab_alias(%struct.kmem_cache* noundef %s, i8* noundef %name) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @slab_state, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.kset*, %struct.kset** @slab_kset, align 8
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 2
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef %name) #25
  %2 = load %struct.kset*, %struct.kset** @slab_kset, align 8
  %kobj1 = getelementptr inbounds %struct.kset, %struct.kset* %2, i64 0, i32 2
  %kobj2 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 18
  %call = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj1, %struct.kobject* noundef %kobj2, i8* noundef %name) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %3, i32 noundef 3264) #25
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %s6 = bitcast i8* %call.i.i to %struct.kmem_cache**
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s6, align 8
  %name7 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %4 = bitcast i8* %name7 to i8**
  store i8* %name, i8** %4, align 8
  %5 = load %struct.saved_alias*, %struct.saved_alias** @alias_list, align 8
  %next = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %6 = bitcast i8* %next to %struct.saved_alias**
  store %struct.saved_alias* %5, %struct.saved_alias** %6, align 8
  store i8* %call.i.i, i8** bitcast (%struct.saved_alias** @alias_list to i8**), align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end5 ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kmem_cache_create(%struct.kmem_cache* noundef %s, i32 noundef %flags) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @kmem_cache_open(%struct.kmem_cache* noundef %s, i32 noundef %flags) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @slab_state, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @sysfs_slab_add(%struct.kmem_cache* noundef %s) #23
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__kmem_cache_release(%struct.kmem_cache* noundef %s) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.then5
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call, %entry ], [ 0, %if.end ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kmem_cache_open(%struct.kmem_cache* nocapture noundef %s, i32 noundef %flags) unnamed_addr #1 {
entry:
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %0 = load i8*, i8** %name, align 8
  %call = call i32 @kmem_cache_flags(i32 undef, i32 noundef %flags, i8* noundef %0) #23
  %flags1 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  store i32 %call, i32* %flags1, align 8
  %call2 = call fastcc i32 @calculate_sizes(%struct.kmem_cache* noundef %s) #23
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %error, label %if.end

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @disable_higher_order_debug, align 4
  br i1 %.b, label %if.end14.i, label %if.end17

if.end14.i:                                       ; preds = %if.end
  %1 = load i32, i32* %size, align 8
  %conv = zext i32 %1 to i64
  %dec.i = add nsw i64 %conv, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %2 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #26, !range !31
  %3 = trunc i64 %2 to i32
  %conv.i.i = sub nuw nsw i32 64, %3
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %4 = load i32, i32* %object_size, align 4
  %conv7 = zext i32 %4 to i64
  %dec.i88 = add nsw i64 %conv7, -1
  %cmp.i.i90 = icmp ult i64 %dec.i88, 4096
  %shr.i89 = lshr i64 %dec.i88, 12
  %5 = call i64 @llvm.ctlz.i64(i64 %shr.i89, i1 false) #26, !range !31
  %6 = trunc i64 %5 to i32
  %conv.i.i91 = sub nuw nsw i32 64, %6
  %retval.0.i.i92 = select i1 %cmp.i.i90, i32 0, i32 %conv.i.i91
  %cmp = icmp sgt i32 %retval.0.i.i, %retval.0.i.i92
  br i1 %cmp, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end14.i
  %7 = load i32, i32* %flags1, align 8
  %and = and i32 %7, -68609
  store i32 %and, i32* %flags1, align 8
  %offset = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  store i32 0, i32* %offset, align 8
  %call12 = call fastcc i32 @calculate_sizes(%struct.kmem_cache* noundef %s) #23
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %error, label %if.end17

if.end17:                                         ; preds = %if.end14.i, %if.then10, %if.end
  %8 = load i32, i32* %flags1, align 8
  %and19 = and i32 %8, 2162944
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %if.then22, label %cond.end35

if.then22:                                        ; preds = %if.end17
  %or = or i32 %8, 1073741824
  store i32 %or, i32* %flags1, align 8
  br label %cond.end35

cond.end35:                                       ; preds = %if.then22, %if.end17
  %9 = load i32, i32* %size, align 8
  %call34 = call fastcc i32 @__ilog2_u32(i32 noundef %9) #30
  %div = sdiv i32 %call34, 2
  %conv37 = sext i32 %div to i64
  call fastcc void @set_min_partial(%struct.kmem_cache* noundef %s, i64 noundef %conv37) #23
  %call46 = call fastcc i32 @init_kmem_cache_nodes(%struct.kmem_cache* noundef %s) #23
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %error, label %if.end49

if.end49:                                         ; preds = %cond.end35
  %call50 = call fastcc i32 @alloc_kmem_cache_cpus(%struct.kmem_cache* noundef %s) #23
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %error, label %return

error:                                            ; preds = %if.end49, %cond.end35, %if.then10, %entry
  call void @__kmem_cache_release(%struct.kmem_cache* noundef %s) #23
  br label %return

return:                                           ; preds = %if.end49, %error
  %retval.0 = phi i32 [ -22, %error ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_slab_add(%struct.kmem_cache* noundef %s) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.kset* @cache_kset() #23
  %call1 = call i32 @slab_unmergeable(%struct.kmem_cache* noundef %s) #25
  %tobool.not = icmp eq %struct.kset* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 18
  call void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef nonnull @slab_ktype) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2 = icmp eq i32 %call1, 0
  %.b = load i1, i1* @disable_higher_order_debug, align 4
  %or.cond = select i1 %tobool2, i1 %.b, i1 false
  %0 = load i32, i32* @slub_debug, align 4
  %and = and i32 %0, 68608
  %tobool5.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %tobool5.not to i32
  %unmergeable.0 = select i1 %or.cond, i32 %spec.select, i32 %call1
  %tobool8.not = icmp eq i32 %unmergeable.0, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %1 = load %struct.kset*, %struct.kset** @slab_kset, align 8
  %kobj10 = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 2
  %name11 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %2 = load i8*, i8** %name11, align 8
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj10, i8* noundef %2) #25
  %3 = load i8*, i8** %name11, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call13 = call fastcc i8* @create_unique_id(%struct.kmem_cache* noundef %s) #23
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %name.0 = phi i8* [ %3, %if.then9 ], [ %call13, %if.else ]
  %kobj15 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 18
  %kset16 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 18, i32 3
  store %struct.kset* %call, %struct.kset** %kset16, align 8
  %call18 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* noundef %kobj15, %struct.kobj_type* noundef nonnull @slab_ktype, %struct.kobject* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %name.0) #25
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %out

if.end21:                                         ; preds = %if.end14
  %call23 = call i32 @sysfs_create_group(%struct.kobject* noundef %kobj15, %struct.attribute_group* noundef nonnull @slab_attr_group) #25
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %out_del_kobj

if.end26:                                         ; preds = %if.end21
  br i1 %tobool8.not, label %out.thread, label %cleanup

out.thread:                                       ; preds = %if.end26
  %name29 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %4 = load i8*, i8** %name29, align 8
  %call30 = call fastcc i32 @sysfs_slab_alias(%struct.kmem_cache* noundef %s, i8* noundef %4) #23
  br label %if.then33

out:                                              ; preds = %if.end14, %out_del_kobj
  %err.0 = phi i32 [ %call18, %if.end14 ], [ %call23, %out_del_kobj ]
  br i1 %tobool8.not, label %if.then33, label %cleanup

if.then33:                                        ; preds = %out.thread, %out
  %err.062 = phi i32 [ 0, %out.thread ], [ %err.0, %out ]
  call void @kfree(i8* noundef %name.0) #23
  br label %cleanup

out_del_kobj:                                     ; preds = %if.end21
  call void @kobject_del(%struct.kobject* noundef %kobj15) #25
  br label %out

cleanup:                                          ; preds = %if.end26, %out, %if.then33, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.062, %if.then33 ], [ %err.0, %out ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__kmalloc_track_caller(i64 noundef %size, i32 noundef %gfpflags, i64 noundef %caller) local_unnamed_addr #1 {
entry:
  %object.i.i = alloca i8*, align 8
  %cmp = icmp ugt i64 %size, 8192
  br i1 %cmp, label %kmalloc_large.exit, label %if.end, !prof !9

kmalloc_large.exit:                               ; preds = %entry
  %sub.i.i = add i64 %size, -1
  %shr.i.i = lshr i64 %sub.i.i, 12
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i.i, i1 false) #26, !range !31
  %1 = trunc i64 %0 to i32
  %conv.i.i.i = sub nuw nsw i32 64, %1
  %call.i4.i = call noalias align 4096 i8* @kmalloc_order(i64 noundef %size, i32 noundef %gfpflags, i32 noundef %conv.i.i.i) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.kmem_cache* @kmalloc_slab(i64 noundef %size, i32 noundef %gfpflags) #25
  %cmp3 = icmp ult %struct.kmem_cache* %call2, inttoptr (i64 17 to %struct.kmem_cache*)
  br i1 %cmp3, label %if.then12, label %if.end13, !prof !9

if.then12:                                        ; preds = %if.end
  %2 = bitcast %struct.kmem_cache* %call2 to i8*
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %3 = bitcast i8** %object.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #26
  %call.i.i32 = call fastcc %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache* noundef %call2, i32 noundef %gfpflags) #25
  %tobool.not.i.i33 = icmp eq %struct.kmem_cache* %call.i.i32, null
  br i1 %tobool.not.i.i33, label %slab_alloc.exit, label %if.end.i.i34

if.end.i.i34:                                     ; preds = %if.end13
  %cpu_slab.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call.i.i32, i64 0, i32 0
  br label %redo.i.i

redo.i.i:                                         ; preds = %lor.rhs.i.i, %if.end.i.i34
  %4 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %5 = ptrtoint %struct.kmem_cache_cpu* %4 to i64
  %call8.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add.i.i35 = add i64 %call8.i.i, %5
  %6 = inttoptr i64 %add.i.i35 to %struct.kmem_cache_cpu*
  %tid13.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %6, i64 0, i32 1
  %7 = load volatile i64, i64* %tid13.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !10
  %8 = inttoptr i64 %add.i.i35 to i8**
  %9 = load i8*, i8** %8, align 8
  %page14.i.i = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %6, i64 0, i32 2
  %10 = load %struct.page*, %struct.page** %page14.i.i, align 8
  %tobool15.i.i = icmp ne i8* %9, null
  %tobool16.i.i = icmp ne %struct.page* %10, null
  %or.cond.i.i = select i1 %tobool15.i.i, i1 %tobool16.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then28.i.i, !prof !11

lor.rhs.i.i:                                      ; preds = %redo.i.i
  %call30.i.i = call fastcc i8* @get_freepointer_safe(%struct.kmem_cache* noundef nonnull %call.i.i32, i8* noundef nonnull %9) #25
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !12
  %11 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab.i.i, align 8
  %12 = ptrtoint %struct.kmem_cache_cpu* %11 to i64
  %call47.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add48.i.i = add i64 %call47.i.i, %12
  %13 = inttoptr i64 %add48.i.i to i8*
  %14 = ptrtoint i8* %9 to i64
  %15 = ptrtoint i8* %call30.i.i to i64
  %call51.i.i = call fastcc i64 @next_tid(i64 noundef %7) #25
  %call52.i.i = call fastcc i64 @__cmpxchg_double(i64 noundef %14, i64 noundef %7, i64 noundef %15, i64 noundef %call51.i.i, i8* noundef %13) #25
  %tobool53.not.i.i = icmp eq i64 %call52.i.i, 0
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  br i1 %tobool53.not.i.i, label %cleanup.thread.i.i, label %redo.i.i, !prof !14

if.then28.i.i:                                    ; preds = %redo.i.i
  %16 = inttoptr i64 %add.i.i35 to %struct.kmem_cache_cpu*
  %call29.i.i = call fastcc i8* @__slab_alloc(%struct.kmem_cache* noundef nonnull %call.i.i32, i32 noundef %gfpflags, i64 noundef %caller, %struct.kmem_cache_cpu* noundef %16) #25
  store i8* %call29.i.i, i8** %object.i.i, align 8
  br label %if.end74.i.i

cleanup.thread.i.i:                               ; preds = %lor.rhs.i.i
  store i8* %9, i8** %object.i.i, align 8
  call fastcc void @prefetch_freepointer(%struct.kmem_cache* noundef nonnull %call.i.i32, i8* noundef %call30.i.i) #25
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %cleanup.thread.i.i, %if.then28.i.i
  %17 = phi i8* [ %9, %cleanup.thread.i.i ], [ %call29.i.i, %if.then28.i.i ]
  %call.i.i.i = call fastcc i1 @slab_want_init_on_free(%struct.kmem_cache* noundef nonnull %call.i.i32) #25
  br i1 %call.i.i.i, label %land.lhs.true.i.i.i, label %maybe_wipe_obj_freeptr.exit.i.i, !prof !9

land.lhs.true.i.i.i:                              ; preds = %if.end74.i.i
  %tobool2.not.i.i.i = icmp eq i8* %17, null
  br i1 %tobool2.not.i.i.i, label %maybe_wipe_obj_freeptr.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %offset.i.i.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %call.i.i32, i64 0, i32 6
  %18 = load i32, i32* %offset.i.i.i, align 8
  %idx.ext.i.i.i = zext i32 %18 to i64
  %add.ptr.i.i.i = getelementptr i8, i8* %17, i64 %idx.ext.i.i.i
  %call4.i.i.i = call i8* @memset(i8* noundef %add.ptr.i.i.i, i32 noundef 0, i64 noundef 8) #25
  br label %maybe_wipe_obj_freeptr.exit.i.i

maybe_wipe_obj_freeptr.exit.i.i:                  ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i, %if.end74.i.i
  %call75.i.i = call fastcc i1 @slab_want_init_on_alloc(i32 noundef %gfpflags, %struct.kmem_cache* noundef nonnull %call.i.i32) #25
  call fastcc void @slab_post_alloc_hook(%struct.kmem_cache* noundef nonnull %call.i.i32, i32 noundef %gfpflags, i64 noundef 1, i8** noundef nonnull %object.i.i, i1 noundef %call75.i.i) #25
  %19 = load i8*, i8** %object.i.i, align 8
  br label %slab_alloc.exit

slab_alloc.exit:                                  ; preds = %if.end13, %maybe_wipe_obj_freeptr.exit.i.i
  %retval.0.i.i36 = phi i8* [ %19, %maybe_wipe_obj_freeptr.exit.i.i ], [ null, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #26
  br label %cleanup

cleanup:                                          ; preds = %slab_alloc.exit, %if.then12, %kmalloc_large.exit
  %retval.0 = phi i8* [ %call.i4.i, %kmalloc_large.exit ], [ %2, %if.then12 ], [ %retval.0.i.i36, %slab_alloc.exit ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @validate_slab_cache(%struct.kmem_cache* noundef %s) local_unnamed_addr #1 {
entry:
  %coerce.dive = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 7, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @oo_objects(i64 %coerce.val.ii) #23, !range !35
  %call1 = call i64* @bitmap_alloc(i32 noundef %call, i32 noundef 3264) #25
  %tobool.not = icmp eq i64* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @flush_all(%struct.kmem_cache* noundef %s) #23
  %call2 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool3.not = icmp eq %struct.kmem_cache_node* %call2, null
  br i1 %tobool3.not, label %for.end, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i32 @validate_slab_node(%struct.kmem_cache* noundef %s, %struct.kmem_cache_node* noundef nonnull %call2, i64* noundef nonnull %call1) #23
  %conv = sext i32 %call5 to i64
  br label %for.end

for.end:                                          ; preds = %if.then4, %if.end
  %count.0.lcssa = phi i64 [ %conv, %if.then4 ], [ 0, %if.end ]
  call void @bitmap_free(i64* noundef nonnull %call1) #25
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i64 [ %count.0.lcssa, %for.end ], [ -12, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64* @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @oo_objects(i64 %x.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii = trunc i64 %x.coerce to i32
  %and = and i32 %coerce.val.ii, 65535
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @validate_slab_node(%struct.kmem_cache* nocapture noundef readonly %s, %struct.kmem_cache_node* noundef %n, i64* noundef %obj_map) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #23
  %partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 2
  %0 = bitcast %struct.list_head* %partial to i8**
  %.pn108 = load i8*, i8** %0, align 8
  %slab_list109 = bitcast i8* %.pn108 to %struct.list_head*
  %cmp10.not110 = icmp eq %struct.list_head* %partial, %slab_list109
  br i1 %cmp10.not110, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn112 = phi i8* [ %.pn, %for.body ], [ %.pn108, %entry ]
  %count.0111 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %page.0.in = getelementptr i8, i8* %.pn112, i64 -8
  %page.0 = bitcast i8* %page.0.in to %struct.page*
  call fastcc void @validate_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page.0, i64* noundef %obj_map) #23
  %inc = add i64 %count.0111, 1
  %1 = bitcast i8* %.pn112 to i8**
  %.pn = load i8*, i8** %1, align 8
  %slab_list = bitcast i8* %.pn to %struct.list_head*
  %cmp10.not = icmp eq %struct.list_head* %partial, %slab_list
  br i1 %cmp10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 1
  %2 = load i64, i64* %nr_partial, align 8
  %cmp20.not = icmp eq i64 %count.0.lcssa, %2
  br i1 %cmp20.not, label %if.end, label %do.end24

do.end24:                                         ; preds = %for.end
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %3 = load i8*, i8** %name, align 8
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i64 0, i64 0), i8* noundef %3, i64 noundef %count.0.lcssa, i64 noundef %2) #24
  br label %if.end

if.end:                                           ; preds = %do.end24, %for.end
  %flags29 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %4 = load i32, i32* %flags29, align 8
  %and = and i32 %4, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %out, label %if.end31

if.end31:                                         ; preds = %if.end
  %full = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 5
  %5 = bitcast %struct.list_head* %full to i8**
  %.pn105113 = load i8*, i8** %5, align 8
  %slab_list40114 = bitcast i8* %.pn105113 to %struct.list_head*
  %cmp42.not115 = icmp eq %struct.list_head* %full, %slab_list40114
  br i1 %cmp42.not115, label %for.end56, label %for.body45

for.body45:                                       ; preds = %if.end31, %for.body45
  %.pn105117 = phi i8* [ %.pn105, %for.body45 ], [ %.pn105113, %if.end31 ]
  %count.1116 = phi i64 [ %inc46, %for.body45 ], [ %count.0.lcssa, %if.end31 ]
  %page.1.in = getelementptr i8, i8* %.pn105117, i64 -8
  %page.1 = bitcast i8* %page.1.in to %struct.page*
  call fastcc void @validate_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page.1, i64* noundef %obj_map) #23
  %inc46 = add i64 %count.1116, 1
  %6 = bitcast i8* %.pn105117 to i8**
  %.pn105 = load i8*, i8** %6, align 8
  %slab_list40 = bitcast i8* %.pn105 to %struct.list_head*
  %cmp42.not = icmp eq %struct.list_head* %full, %slab_list40
  br i1 %cmp42.not, label %for.end56, label %for.body45

for.end56:                                        ; preds = %for.body45, %if.end31
  %count.1.lcssa = phi i64 [ %count.0.lcssa, %if.end31 ], [ %inc46, %for.body45 ]
  %counter.i.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 3, i32 0
  %7 = load volatile i64, i64* %counter.i.i, align 8
  %cmp58.not = icmp eq i64 %count.1.lcssa, %7
  br i1 %cmp58.not, label %out, label %do.end63

do.end63:                                         ; preds = %for.end56
  %name65 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %8 = load i8*, i8** %name65, align 8
  %9 = load volatile i64, i64* %counter.i.i, align 8
  %call68 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.77, i64 0, i64 0), i8* noundef %8, i64 noundef %count.1.lcssa, i64 noundef %9) #24
  br label %out

out:                                              ; preds = %for.end56, %do.end63, %if.end
  %count.2 = phi i64 [ %count.1.lcssa, %do.end63 ], [ %count.1.lcssa, %for.end56 ], [ %count.0.lcssa, %if.end ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #25
  %conv72 = trunc i64 %count.2 to i32
  ret i32 %conv72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_slab_unlink(%struct.kmem_cache* noundef %s) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @slab_state, align 4
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 18
  call void @kobject_del(%struct.kobject* noundef %kobj) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(%struct.kobject* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sysfs_slab_release(%struct.kmem_cache* noundef %s) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @slab_state, align 4
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 18
  call void @kobject_put(%struct.kobject* noundef %kobj) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @slab_sysfs_init() #5 section ".init.text" {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @slab_mutex) #25
  %0 = load %struct.kobject*, %struct.kobject** @kernel_kobj, align 8
  %call = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0), %struct.kset_uevent_ops* noundef null, %struct.kobject* noundef %0) #25
  store %struct.kset* %call, %struct.kset** @slab_kset, align 8
  %tobool.not = icmp eq %struct.kset* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #25
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.116, i64 0, i64 0)) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 4, i32* @slab_state, align 4
  %.pn49 = load i8*, i8** bitcast (%struct.list_head* @slab_caches to i8**), align 8
  %cmp.not50 = icmp eq i8* %.pn49, bitcast (%struct.list_head* @slab_caches to i8*)
  br i1 %cmp.not50, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.inc, %if.end
  %1 = load %struct.saved_alias*, %struct.saved_alias** @alias_list, align 8
  %tobool22.not53 = icmp eq %struct.saved_alias* %1, null
  br i1 %tobool22.not53, label %while.end, label %while.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn51 = phi i8* [ %.pn, %for.inc ], [ %.pn49, %if.end ]
  %s.0.in = getelementptr i8, i8* %.pn51, i64 -96
  %s.0 = bitcast i8* %s.0.in to %struct.kmem_cache*
  %call6 = call fastcc i32 @sysfs_slab_add(%struct.kmem_cache* noundef %s.0) #23
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %do.end11

do.end11:                                         ; preds = %for.body
  %name = getelementptr i8, i8* %.pn51, i64 -8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.117, i64 0, i64 0), i8* noundef %3) #24
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.end11
  %4 = bitcast i8* %.pn51 to i8**
  %.pn = load i8*, i8** %4, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @slab_caches to i8*)
  br i1 %cmp.not, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.cond.preheader, %if.end35
  %5 = phi %struct.saved_alias* [ %11, %if.end35 ], [ %1, %while.cond.preheader ]
  %next23 = getelementptr inbounds %struct.saved_alias, %struct.saved_alias* %5, i64 0, i32 2
  %6 = load %struct.saved_alias*, %struct.saved_alias** %next23, align 8
  store %struct.saved_alias* %6, %struct.saved_alias** @alias_list, align 8
  %s24 = getelementptr inbounds %struct.saved_alias, %struct.saved_alias* %5, i64 0, i32 0
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** %s24, align 8
  %name25 = getelementptr inbounds %struct.saved_alias, %struct.saved_alias* %5, i64 0, i32 1
  %8 = load i8*, i8** %name25, align 8
  %call26 = call fastcc i32 @sysfs_slab_alias(%struct.kmem_cache* noundef %7, i8* noundef %8) #23
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end35, label %do.end31

do.end31:                                         ; preds = %while.body
  %9 = load i8*, i8** %name25, align 8
  %call34 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.118, i64 0, i64 0), i8* noundef %9) #24
  br label %if.end35

if.end35:                                         ; preds = %do.end31, %while.body
  %10 = bitcast %struct.saved_alias* %5 to i8*
  call void @kfree(i8* noundef nonnull %10) #23
  %11 = load %struct.saved_alias*, %struct.saved_alias** @alias_list, align 8
  %tobool22.not = icmp eq %struct.saved_alias* %11, null
  br i1 %tobool22.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end35, %while.cond.preheader
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #25
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %while.end ], [ -38, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @get_slabinfo(%struct.kmem_cache* nocapture noundef readonly %s, %struct.slabinfo* nocapture noundef writeonly %sinfo) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool.not = icmp eq %struct.kmem_cache_node* %call, null
  br i1 %tobool.not, label %for.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @node_nr_slabs(%struct.kmem_cache_node* noundef nonnull %call) #23
  %call2 = call fastcc i64 @node_nr_objs(%struct.kmem_cache_node* noundef nonnull %call) #23
  %call4 = call fastcc i64 @count_partial(%struct.kmem_cache_node* noundef nonnull %call, i32 (%struct.page*)* noundef nonnull @count_free) #23
  br label %for.end

for.end:                                          ; preds = %if.then, %entry
  %nr_slabs.0.lcssa = phi i64 [ %call1, %if.then ], [ 0, %entry ]
  %nr_objs.0.lcssa = phi i64 [ %call2, %if.then ], [ 0, %entry ]
  %nr_free.0.lcssa = phi i64 [ %call4, %if.then ], [ 0, %entry ]
  %sub = sub i64 %nr_objs.0.lcssa, %nr_free.0.lcssa
  %active_objs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 0
  store i64 %sub, i64* %active_objs, align 8
  %num_objs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 1
  store i64 %nr_objs.0.lcssa, i64* %num_objs, align 8
  %active_slabs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 2
  store i64 %nr_slabs.0.lcssa, i64* %active_slabs, align 8
  %num_slabs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 3
  store i64 %nr_slabs.0.lcssa, i64* %num_slabs, align 8
  %coerce.dive = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 7, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call6 = call fastcc i32 @oo_objects(i64 %coerce.val.ii) #23
  %objects_per_slab = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 8
  store i32 %call6, i32* %objects_per_slab, align 4
  %1 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii9 = zext i32 %1 to i64
  %call10 = call fastcc i32 @oo_order(i64 %coerce.val.ii9) #23
  %cache_order = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 9
  store i32 %call10, i32* %cache_order, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @node_nr_slabs(%struct.kmem_cache_node* noundef %n) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 3, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @node_nr_objs(%struct.kmem_cache_node* noundef %n) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 4, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @count_partial(%struct.kmem_cache_node* noundef %n, i32 (%struct.page*)* nocapture noundef readonly %get_count) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #23
  %partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 2
  %0 = bitcast %struct.list_head* %partial to i8**
  %.pn35 = load i8*, i8** %0, align 8
  %slab_list36 = bitcast i8* %.pn35 to %struct.list_head*
  %cmp10.not37 = icmp eq %struct.list_head* %partial, %slab_list36
  br i1 %cmp10.not37, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn39 = phi i8* [ %.pn, %for.body ], [ %.pn35, %entry ]
  %x.038 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %page.0.in = getelementptr i8, i8* %.pn39, i64 -8
  %page.0 = bitcast i8* %page.0.in to %struct.page*
  %call12 = call i32 %get_count(%struct.page* noundef %page.0) #25, !callees !36
  %conv13 = sext i32 %call12 to i64
  %add = add i64 %x.038, %conv13
  %1 = bitcast i8* %.pn39 to i8**
  %.pn = load i8*, i8** %1, align 8
  %slab_list = bitcast i8* %.pn to %struct.list_head*
  %cmp10.not = icmp eq %struct.list_head* %partial, %slab_list
  br i1 %cmp10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %x.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #25
  ret i64 %x.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @count_free(%struct.page* nocapture noundef readonly %page) #3 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %1 = bitcast i64* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %bf.clear2 = and i32 %bf.load, 65535
  %sub = sub nsw i32 %bf.clear, %bf.clear2
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @oo_order(i64 %x.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii = trunc i64 %x.coerce to i32
  %shr = lshr i32 %coerce.val.ii, 16
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @slabinfo_show_stats(%struct.seq_file* nocapture noundef %m, %struct.kmem_cache* nocapture noundef %s) local_unnamed_addr #9 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @slabinfo_write(%struct.file* nocapture noundef readnone %file, i8* nocapture noundef readnone %buffer, i64 noundef %count, i64* nocapture noundef readnone %ppos) local_unnamed_addr #9 {
entry:
  ret i64 -5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_info_end(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @freeptr_outside_object(%struct.kmem_cache* noundef %s) #23
  %inuse = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  %0 = load i32, i32* %inuse, align 8
  %add = add i32 %0, 8
  %retval.0 = select i1 %call, i32 %add, i32 %0
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @freeptr_outside_object(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #3 {
entry:
  %offset = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  %0 = load i32, i32* %offset, align 8
  %inuse = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  %1 = load i32, i32* %inuse, align 8
  %cmp = icmp uge i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @print_tainted() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_page_info(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %1 = bitcast i64* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %bf.clear2 = and i32 %bf.load, 65535
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %2 = bitcast i64* %freelist to i8**
  %3 = load i8*, i8** %2, align 8
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %4 = load i64, i64* %flags, align 16
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0), %struct.page* noundef %page, i32 noundef %bf.clear, i32 noundef %bf.clear2, i8* noundef %3, i64 noundef %4, i64* noundef %flags) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_section(i8* noundef %level, i8* noundef %text, i8* noundef %addr, i32 noundef %length) unnamed_addr #1 {
entry:
  %conv = zext i32 %length to i64
  call void @print_hex_dump(i8* noundef %level, i8* noundef %text, i32 noundef 1, i32 noundef 16, i32 noundef 1, i8* noundef %addr, i64 noundef %conv, i1 noundef true) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @size_from_object(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  %size1 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %1 = load i32, i32* %size1, align 8
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %red_left_pad = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 15
  %2 = load i32, i32* %red_left_pad, align 8
  %sub = sub i32 %1, %2
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_enable() unnamed_addr #1 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !28
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !9

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.static_key_enable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0)) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 318; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 1
  br i1 %cmp27.not, label %return, label %if.then41, !prof !14

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 321; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !38
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 1, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_disable() unnamed_addr #1 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !28
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !9

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.static_key_disable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0)) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 329; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %return, label %if.then41, !prof !14

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !40
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 0, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @__tolower(i8 noundef %c) unnamed_addr #9 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 1
  %cmp.not = icmp eq i8 %2, 0
  %sub = add i8 %c, 32
  %spec.select = select i1 %cmp.not, i8 %c, i8 %sub
  ret i8 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__slab_alloc(%struct.kmem_cache* noundef %s, i32 noundef %gfpflags, i64 noundef %addr, %struct.kmem_cache_cpu* noundef %c) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @___slab_alloc(%struct.kmem_cache* noundef %s, i32 noundef %gfpflags, i64 noundef %addr, %struct.kmem_cache_cpu* noundef %c) #23
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @get_freepointer_safe(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef readonly %object) unnamed_addr #3 {
entry:
  %call1 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %object) #23
  ret i8* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_double(i64 noundef %old1, i64 noundef %old2, i64 noundef %new1, i64 noundef %new2, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_double(i64 noundef %old1, i64 noundef %old2, i64 noundef %new1, i64 noundef %new2, i8* noundef %ptr) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch_freepointer(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %object) unnamed_addr #1 {
entry:
  %offset = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  %0 = load i32, i32* %offset, align 8
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr i8, i8* %object, i64 %idx.ext
  call fastcc void @prefetch(i8* noundef %add.ptr) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_double(i64 noundef %old1, i64 noundef %old2, i64 noundef %new1, i64 noundef %new2, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "// __cmpxchg_double\0A\09prfm\09pstl1strm, $2\0A1:\09ldxp\09$0, $1, $2\0A\09eor\09$0, $0, $3\0A\09eor\09$1, $1, $4\0A\09orr\09$1, $0, $1\0A\09cbnz\09$1, 2f\0A\09stxp\09${0:w}, $5, $6, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,r,r,r,r,*Q"(i64* elementtype(i64) %0, i64 %old1, i64 %old2, i64 %new1, i64 %new2, i64* elementtype(i64) %0) #26, !srcloc !41
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch(i8* noundef %ptr) unnamed_addr #1 {
entry:
  call void asm sideeffect "prfm pldl1keep, ${0:a}\0A", "r"(i8* %ptr) #26, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kmem_cache* @virt_to_cache(i8* noundef %obj) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.page* @virt_to_head_page(i8* noundef %obj) #23
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call) #25
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 512
  %tobool.not = icmp eq i64 %2, 0
  %.b49 = load i1, i1* @virt_to_cache.__already_done, align 1
  %lnot6 = xor i1 %.b49, true
  %3 = select i1 %tobool.not, i1 %lnot6, i1 false
  br i1 %3, label %if.then, label %if.end32, !prof !9

if.then:                                          ; preds = %entry
  store i1 true, i1* @virt_to_cache.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.virt_to_cache, i64 0, i64 0)) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slab.h\22; .popsection; .long 14472b - 14470b; .short 414; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !43
  br label %if.end32

if.end32:                                         ; preds = %if.then, %entry
  br i1 %tobool.not, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.end32
  %slab_cache = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 1
  %4 = bitcast %struct.address_space** %slab_cache to %struct.kmem_cache**
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end43
  %retval.0 = phi %struct.kmem_cache* [ %5, %if.end43 ], [ null, %if.end32 ]
  ret %struct.kmem_cache* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @slab_free_freelist_hook(%struct.kmem_cache* nocapture noundef readonly %s, i8** nocapture noundef %head, i8** nocapture noundef %tail) unnamed_addr #1 {
entry:
  %0 = load i8*, i8** %head, align 8
  %1 = load i8*, i8** %tail, align 8
  %tobool.not = icmp eq i8* %1, null
  %. = select i1 %tobool.not, i8* %0, i8* %1
  store i8* null, i8** %head, align 8
  store i8* null, i8** %tail, align 8
  %object_size.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %flags.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %red_left_pad.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 15
  %inuse.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  %size.i = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %next.0 = phi i8* [ %0, %entry ], [ %call2, %do.cond ]
  %call2 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %next.0) #23
  %call3 = call fastcc i1 @slab_want_init_on_free(%struct.kmem_cache* noundef %s) #23
  br i1 %call3, label %if.then12.i, label %slab_free_hook.exit

if.then12.i:                                      ; preds = %do.body
  %2 = load i32, i32* %object_size.i, align 4
  %conv16.i = zext i32 %2 to i64
  %call17.i = call i8* @memset(i8* noundef %next.0, i32 noundef 0, i64 noundef %conv16.i) #25
  %3 = load i32, i32* %flags.i, align 8
  %and20.i = and i32 %3, 1024
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then12.i
  %4 = load i32, i32* %red_left_pad.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then12.i
  %cond.i = phi i32 [ %4, %cond.true.i ], [ 0, %if.then12.i ]
  %5 = load i32, i32* %inuse.i, align 8
  %idx.ext.i = zext i32 %5 to i64
  %add.ptr.i = getelementptr i8, i8* %next.0, i64 %idx.ext.i
  %6 = load i32, i32* %size.i, align 8
  %7 = add i32 %5, %cond.i
  %sub24.i = sub i32 %6, %7
  %conv25.i = zext i32 %sub24.i to i64
  %call26.i = call i8* @memset(i8* noundef %add.ptr.i, i32 noundef 0, i64 noundef %conv25.i) #25
  br label %slab_free_hook.exit

slab_free_hook.exit:                              ; preds = %do.body, %cond.end.i
  %8 = load i8*, i8** %head, align 8
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %next.0, i8* noundef %8) #23
  store i8* %next.0, i8** %head, align 8
  %9 = load i8*, i8** %tail, align 8
  %tobool6.not = icmp eq i8* %9, null
  br i1 %tobool6.not, label %if.then7, label %do.cond

if.then7:                                         ; preds = %slab_free_hook.exit
  store i8* %next.0, i8** %tail, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.then7, %slab_free_hook.exit
  %10 = phi i8* [ %next.0, %if.then7 ], [ %9, %slab_free_hook.exit ]
  %cmp.not = icmp eq i8* %next.0, %.
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  %11 = load i8*, i8** %head, align 8
  %cmp10 = icmp eq i8* %11, %10
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %do.end
  store i8* null, i8** %tail, align 8
  %.pre = load i8*, i8** %head, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11
  %12 = phi i8* [ %11, %do.end ], [ %.pre, %if.then11 ]
  %cmp13 = icmp ne i8* %12, null
  ret i1 %cmp13
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @slab_want_init_on_free(%struct.kmem_cache* nocapture noundef readonly %c) unnamed_addr #0 {
entry:
  %call5 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_free, i64 0, i32 0)) #23
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %return, !prof !9

if.then:                                          ; preds = %entry
  %ctor = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %c, i64 0, i32 12
  %0 = load void (i8*)*, void (i8*)** %ctor, align 8
  %tobool16.not = icmp eq void (i8*)* %0, null
  br i1 %tobool16.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.then
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %c, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 526336
  %tobool17 = icmp eq i32 %and, 0
  br label %return

return:                                           ; preds = %entry, %if.then, %lor.rhs
  %retval.0 = phi i1 [ false, %if.then ], [ %tobool17, %lor.rhs ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_freepointer(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %object, i8* noundef %fp) unnamed_addr #14 {
entry:
  %0 = ptrtoint i8* %object to i64
  %offset = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  %1 = load i32, i32* %offset, align 8
  %conv = zext i32 %1 to i64
  %add = add i64 %conv, %0
  %2 = inttoptr i64 %add to i8**
  store i8* %fp, i8** %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__slab_free(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %head, i8* noundef %tail, i32 noundef %cnt, i64 noundef %addr) unnamed_addr #1 {
entry:
  %call1 = call fastcc i1 @kmem_cache_debug(%struct.kmem_cache* noundef %s) #23
  br i1 %call1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %entry
  %call2 = call fastcc i32 @free_debug_processing(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %head, i8* noundef %tail, i32 noundef %cnt, i64 noundef %addr) #23
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %entry
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = bitcast i64* %freelist to i8**
  %1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  br label %do.body.outer

do.body.outer:                                    ; preds = %do.cond42, %if.end4
  %n.0.ph = phi %struct.kmem_cache_node* [ %call31, %do.cond42 ], [ null, %if.end4 ]
  %flags.0.ph = phi i64 [ %call37, %do.cond42 ], [ 0, %if.end4 ]
  br label %do.body

do.body:                                          ; preds = %do.body.outer, %do.cond42.thread
  %n.0 = phi %struct.kmem_cache_node* [ null, %do.cond42.thread ], [ %n.0.ph, %do.body.outer ]
  %tobool5.not = icmp eq %struct.kmem_cache_node* %n.0, null
  br i1 %tobool5.not, label %if.end9, label %if.then8, !prof !14

if.then8:                                         ; preds = %do.body
  %rlock.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n.0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags.0.ph) #25
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body
  %2 = load i8*, i8** %0, align 8
  %3 = load i64, i64* %1, align 8
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %tail, i8* noundef %2) #23
  %new.sroa.3.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %new.sroa.3.sroa.14.0.extract.shift = and i64 %3, -4294967296
  %sub = sub i32 %new.sroa.3.sroa.0.0.extract.trunc, %cnt
  %bf.value = and i32 %sub, 65535
  %bf.clear14 = and i32 %new.sroa.3.sroa.0.0.extract.trunc, -65536
  %bf.set = or i32 %bf.value, %bf.clear14
  %tobool17 = icmp ne i32 %bf.value, 0
  %tobool18 = icmp ne i8* %2, null
  %or.cond = and i1 %tobool18, %tobool17
  %tobool20 = icmp slt i32 %new.sroa.3.sroa.0.0.extract.trunc, 0
  %or.cond115 = select i1 %or.cond, i1 true, i1 %tobool20
  br i1 %or.cond115, label %do.cond42.thread, label %do.cond42

do.cond42:                                        ; preds = %if.end9
  %call31 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %rlock.i207 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call31, i64 0, i32 0, i32 0, i32 0
  %call37 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i207) #23
  %new.sroa.3.sroa.0.0.insert.ext = zext i32 %bf.set to i64
  %new.sroa.3.sroa.0.0.insert.insert = or i64 %new.sroa.3.sroa.14.0.extract.shift, %new.sroa.3.sroa.0.0.insert.ext
  %call44 = call fastcc i1 @cmpxchg_double_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %2, i64 noundef %3, i8* noundef %head, i64 noundef %new.sroa.3.sroa.0.0.insert.insert) #23
  br i1 %call44, label %do.end47, label %do.body.outer

do.cond42.thread:                                 ; preds = %if.end9
  %new.sroa.3.sroa.0.0.insert.ext212 = zext i32 %bf.set to i64
  %new.sroa.3.sroa.0.0.insert.insert213 = or i64 %new.sroa.3.sroa.14.0.extract.shift, %new.sroa.3.sroa.0.0.insert.ext212
  %call44214 = call fastcc i1 @cmpxchg_double_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %2, i64 noundef %3, i8* noundef %head, i64 noundef %new.sroa.3.sroa.0.0.insert.insert213) #23
  br i1 %call44214, label %cleanup, label %do.body

do.end47:                                         ; preds = %do.cond42
  %tobool48.not = icmp eq %struct.kmem_cache_node* %call31, null
  br i1 %tobool48.not, label %cleanup, label %if.end75, !prof !14

if.end75:                                         ; preds = %do.end47
  %tobool78.not = icmp eq i32 %bf.value, 0
  br i1 %tobool78.not, label %land.rhs, label %if.end89

land.rhs:                                         ; preds = %if.end75
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call31, i64 0, i32 1
  %4 = load i64, i64* %nr_partial, align 8
  %min_partial = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 2
  %5 = load i64, i64* %min_partial, align 8
  %cmp79.not = icmp ult i64 %4, %5
  br i1 %cmp79.not, label %if.end89, label %slab_empty, !prof !14

if.end89:                                         ; preds = %if.end75, %land.rhs
  br i1 %tobool18, label %if.end103, label %if.then102, !prof !14

if.then102:                                       ; preds = %if.end89
  call fastcc void @remove_full(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  call fastcc void @add_partial(%struct.kmem_cache_node* noundef nonnull %call31, %struct.page* noundef %page, i32 noundef 16) #23
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end89
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i207, i64 noundef %call37) #25
  br label %cleanup

slab_empty:                                       ; preds = %land.rhs
  br i1 %tobool18, label %if.then106, label %if.else107

if.then106:                                       ; preds = %slab_empty
  call fastcc void @remove_partial(%struct.kmem_cache_node* noundef nonnull %call31, %struct.page* noundef %page) #23
  br label %if.end108

if.else107:                                       ; preds = %slab_empty
  call fastcc void @remove_full(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  br label %if.end108

if.end108:                                        ; preds = %if.else107, %if.then106
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i207, i64 noundef %call37) #25
  call fastcc void @discard_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  br label %cleanup

cleanup:                                          ; preds = %do.cond42.thread, %do.end47, %land.lhs.true, %if.end108, %if.end103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @kmem_cache_debug(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @kmem_cache_debug_flags(%struct.kmem_cache* noundef %s, i32 noundef 2166016) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @free_debug_processing(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %head, i8* noundef readnone %tail, i32 noundef %bulk_cnt, i64 noundef %addr) unnamed_addr #1 {
entry:
  %call1 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %rlock.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call1, i64 0, i32 0, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #23
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @bit_spin_lock(i64* noundef %flags.i.i) #25
  %flags7 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags7, align 8
  %and = and i32 %0, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %next_object.preheader, label %if.then

if.then:                                          ; preds = %entry
  %call8 = call fastcc i32 @check_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %out, label %next_object.preheader

next_object.preheader:                            ; preds = %if.then, %entry
  br label %next_object

next_object:                                      ; preds = %next_object.preheader, %if.then28
  %object.0 = phi i8* [ %call29, %if.then28 ], [ %head, %next_object.preheader ]
  %cnt.0 = phi i32 [ %inc, %if.then28 ], [ 0, %next_object.preheader ]
  %inc = add i32 %cnt.0, 1
  %1 = load i32, i32* %flags7, align 8
  %and13 = and i32 %1, 256
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end20, label %if.then15

if.then15:                                        ; preds = %next_object
  %call16 = call fastcc i32 @free_consistency_checks(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object.0) #23
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %out, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  %.pre = load i32, i32* %flags7, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %next_object
  %2 = phi i32 [ %.pre, %if.then15.if.end20_crit_edge ], [ %1, %next_object ]
  %and22 = and i32 %2, 65536
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  call fastcc void @set_track(%struct.kmem_cache* noundef %s, i8* noundef %object.0, i32 noundef 1, i64 noundef %addr) #23
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  call fastcc void @trace(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object.0, i32 noundef 0) #23
  call fastcc void @init_object(%struct.kmem_cache* noundef %s, i8* noundef %object.0, i8 noundef -69) #23
  %cmp26.not = icmp eq i8* %object.0, %tail
  br i1 %cmp26.not, label %out, label %if.then28

if.then28:                                        ; preds = %if.end25
  %call29 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %object.0) #23
  br label %next_object

out:                                              ; preds = %if.end25, %if.then15, %if.then
  %object.1 = phi i8* [ %head, %if.then ], [ %tail, %if.end25 ], [ %object.0, %if.then15 ]
  %cnt.1 = phi i32 [ 0, %if.then ], [ %inc, %if.then15 ], [ %inc, %if.end25 ]
  %tobool36.not = phi i1 [ true, %if.then ], [ false, %if.end25 ], [ true, %if.then15 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 1, %if.end25 ], [ 0, %if.then15 ]
  %cmp31.not = icmp eq i32 %cnt.1, %bulk_cnt
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %out
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0), i32 noundef %bulk_cnt, i32 noundef %cnt.1) #23
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %out
  call fastcc void @__bit_spin_unlock(i64* noundef %flags.i.i) #25
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #25
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  call void (%struct.kmem_cache*, i8*, ...) @slab_fix(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i8* noundef %object.1) #23
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !44
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cmpxchg_double_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %freelist_old, i64 noundef %counters_old, i8* noundef %freelist_new, i64 noundef %counters_new) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1073741824
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %1 = bitcast i64* %freelist to i8*
  %2 = ptrtoint i8* %freelist_old to i64
  %3 = ptrtoint i8* %freelist_new to i64
  %call = call fastcc i64 @__cmpxchg_double_mb(i64 noundef %2, i64 noundef %counters_old, i64 noundef %3, i64 noundef %counters_new, i8* noundef %1) #23
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %return, label %if.end48

if.else:                                          ; preds = %entry
  %call8 = call fastcc i64 @arch_local_irq_save() #23
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @bit_spin_lock(i64* noundef %flags.i) #25
  %freelist11 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %4 = bitcast i64* %freelist11 to i8**
  %5 = load i8*, i8** %4, align 8
  %cmp12 = icmp eq i8* %5, %freelist_old
  br i1 %cmp12, label %land.lhs.true, label %cleanup.thread

land.lhs.true:                                    ; preds = %if.else
  %6 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %cmp14 = icmp eq i64 %7, %counters_old
  br i1 %cmp14, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %land.lhs.true
  call fastcc void @__bit_spin_unlock(i64* noundef %flags.i) #25
  call fastcc void @arch_local_irq_restore(i64 noundef %call8) #23
  br label %if.end48

cleanup:                                          ; preds = %land.lhs.true
  store i8* %freelist_new, i8** %4, align 8
  store i64 %counters_new, i64* %6, align 8
  call fastcc void @__bit_spin_unlock(i64* noundef %flags.i) #25
  call fastcc void @arch_local_irq_restore(i64 noundef %call8) #23
  br label %return

if.end48:                                         ; preds = %cleanup.thread, %if.then
  call fastcc void @cpu_relax() #23
  br label %return

return:                                           ; preds = %cleanup, %if.then, %if.end48
  %retval.1 = phi i1 [ false, %if.end48 ], [ true, %cleanup ], [ true, %if.then ]
  ret i1 %retval.1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @remove_full(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* nocapture noundef %page) unnamed_addr #10 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %do.body

do.body:                                          ; preds = %entry
  %slab_list = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %slab_list) #23
  br label %return

return:                                           ; preds = %entry, %do.body
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @add_partial(%struct.kmem_cache_node* noundef %n, %struct.page* noundef %page, i32 noundef %tail) unnamed_addr #10 {
entry:
  call fastcc void @__add_partial(%struct.kmem_cache_node* noundef %n, %struct.page* noundef %page, i32 noundef %tail) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @remove_partial(%struct.kmem_cache_node* nocapture noundef %n, %struct.page* nocapture noundef %page) unnamed_addr #10 {
entry:
  %slab_list = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %slab_list) #23
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 1
  %0 = load i64, i64* %nr_partial, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %nr_partial, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @discard_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %1 = bitcast i64* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  call fastcc void @dec_slabs_node(%struct.kmem_cache* noundef %s, i32 noundef %bf.clear) #23
  call fastcc void @free_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #25
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 512
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0)) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @compound_order(%struct.page* noundef %page) #23, !range !45
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %3 = load i32, i32* %size, align 8
  %call2 = call fastcc i32 @order_objects(i32 noundef %call1, i32 noundef %3) #23
  %4 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %5 = bitcast i64* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %cmp = icmp sgt i32 %bf.clear, %call2
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 noundef %bf.clear, i32 noundef %call2) #23
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %bf.clear9 = and i32 %bf.load, 65535
  %cmp13 = icmp ugt i32 %bf.clear9, %bf.clear
  br i1 %cmp13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end7
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 noundef %bf.clear9, i32 noundef %bf.clear) #23
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  call fastcc void @slab_pad_check(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then14, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then14 ], [ 1, %if.end20 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @free_consistency_checks(%struct.kmem_cache* noundef readonly %s, %struct.page* noundef %page, i8* noundef %object) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @check_valid_pointer(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i8* noundef %object) #23
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @on_freelist(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object) #23
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @object_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0)) #23
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @check_object(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8 noundef -52) #23
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %if.end4
  %slab_cache = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = bitcast %struct.address_space** %slab_cache to %struct.kmem_cache**
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %0, align 8
  %cmp.not = icmp eq %struct.kmem_cache* %1, %s
  br i1 %cmp.not, label %return, label %if.then11, !prof !14

if.then11:                                        ; preds = %if.end8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #25
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 512
  %tobool13.not = icmp eq i64 %4, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then11
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i64 0, i64 0), i8* noundef %object) #23
  br label %return

if.else:                                          ; preds = %if.then11
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** %0, align 8
  %tobool16.not = icmp eq %struct.kmem_cache* %5, null
  br i1 %tobool16.not, label %do.end, label %if.else19

do.end:                                           ; preds = %if.else
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i64 0, i64 0), i8* noundef %object) #24
  call void @dump_stack() #24
  br label %return

if.else19:                                        ; preds = %if.else
  call void @object_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0)) #23
  br label %return

return:                                           ; preds = %if.end8, %if.then14, %if.else19, %do.end, %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then ], [ 0, %if.end4 ], [ 0, %do.end ], [ 0, %if.else19 ], [ 0, %if.then14 ], [ 1, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_track(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %object, i32 noundef %alloc, i64 noundef %addr) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.track* @get_track(%struct.kmem_cache* noundef %s, i8* noundef %object, i32 noundef %alloc) #23
  %tobool.not = icmp eq i64 %addr, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %addr1 = getelementptr inbounds %struct.track, %struct.track* %call, i64 0, i32 0
  store i64 %addr, i64* %addr1, align 8
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call3, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %cpu = getelementptr inbounds %struct.track, %struct.track* %call, i64 0, i32 1
  store i32 %1, i32* %cpu, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #31, !srcloc !46
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 50
  %4 = load i32, i32* %pid, align 32
  %pid5 = getelementptr inbounds %struct.track, %struct.track* %call, i64 0, i32 2
  store i32 %4, i32* %pid5, align 4
  %5 = load volatile i64, i64* @jiffies, align 64
  %when = getelementptr inbounds %struct.track, %struct.track* %call, i64 0, i32 3
  store i64 %5, i64* %when, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = bitcast %struct.track* %call to i8*
  %call6 = call i8* @memset(i8* noundef %6, i32 noundef 0, i64 noundef 24) #25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @trace(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* nocapture noundef readonly %page, i8* noundef %object, i32 noundef %alloc) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %1 = load i8*, i8** %name, align 8
  %tobool1.not = icmp eq i32 %alloc, 0
  %cond = select i1 %tobool1.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0)
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %3 = bitcast i64* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %4 = bitcast i64* %freelist to i8**
  %5 = load i8*, i8** %4, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.55, i64 0, i64 0), i8* noundef %1, i8* noundef %cond, i8* noundef %object, i32 noundef %bf.clear, i8* noundef %5) #24
  br i1 %tobool1.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %do.end
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %6 = load i32, i32* %object_size, align 4
  call fastcc void @print_section(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), i8* noundef %object, i32 noundef %6) #23
  br label %if.end

if.end:                                           ; preds = %if.then3, %do.end
  call void @dump_stack() #24
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_object(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %object, i8 noundef %val) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %red_left_pad = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 15
  %1 = load i32, i32* %red_left_pad, align 8
  %idx.ext = zext i32 %1 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr i8, i8* %object, i64 %idx.neg
  %conv = zext i8 %val to i32
  %call3 = call i8* @memset(i8* noundef %add.ptr, i32 noundef %conv, i64 noundef %idx.ext) #25
  %.pr = load i32, i32* %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pr, %if.then ], [ %0, %entry ]
  %tobool6.not = icmp sgt i32 %2, -1
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %3 = load i32, i32* %object_size, align 4
  %sub = add i32 %3, -1
  %conv8 = zext i32 %sub to i64
  %call9 = call i8* @memset(i8* noundef %object, i32 noundef 107, i64 noundef %conv8) #25
  %4 = load i32, i32* %object_size, align 4
  %sub11 = add i32 %4, -1
  %idxprom = zext i32 %sub11 to i64
  %arrayidx = getelementptr i8, i8* %object, i64 %idxprom
  store i8 -91, i8* %arrayidx, align 1
  %.pre = load i32, i32* %flags, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end
  %5 = phi i32 [ %.pre, %if.then7 ], [ %2, %if.end ]
  %and14 = and i32 %5, 1024
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end25, label %if.then16

if.then16:                                        ; preds = %if.end12
  %object_size17 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %6 = load i32, i32* %object_size17, align 4
  %idx.ext18 = zext i32 %6 to i64
  %add.ptr19 = getelementptr i8, i8* %object, i64 %idx.ext18
  %conv20 = zext i8 %val to i32
  %inuse = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  %7 = load i32, i32* %inuse, align 8
  %sub22 = sub i32 %7, %6
  %conv23 = zext i32 %sub22 to i64
  %call24 = call i8* @memset(i8* noundef %add.ptr19, i32 noundef %conv20, i64 noundef %conv23) #25
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.end12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @slab_err(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %fmt, ...) unnamed_addr #1 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %buf = alloca [100 x i8], align 1
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  %1 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %1) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(100) %1, i8 0, i64 100, i1 false), !annotation !8
  call void @llvm.va_start(i8* nonnull %0)
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call2 = call i32 @vsnprintf(i8* noundef nonnull %1, i64 noundef 100, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #26
  call void @llvm.va_end(i8* nonnull %0)
  call void (%struct.kmem_cache*, i8*, ...) @slab_bug(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %1) #23
  call fastcc void @print_page_info(%struct.page* noundef %page) #23
  call void @dump_stack() #24
  call void @add_taint(i32 noundef 5, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %1) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @slab_fix(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %fmt, ...) unnamed_addr #1 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #26
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !8
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %2 = load i8*, i8** %name, align 8
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i64 0, i64 0), i8* noundef %2, %struct.va_format* noundef nonnull %vaf) #24
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #26
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bit_spin_lock(i64* noundef %addr) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !47
  %call2 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) #23
  br i1 %call2, label %while.body, label %while.end, !prof !9

while.body:                                       ; preds = %entry, %do.end
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !48
  br label %do.body

do.body:                                          ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #23
  %0 = load volatile i64, i64* %addr, align 8
  %conv.i1 = and i64 %0, 1
  %tobool4.not = icmp eq i64 %conv.i1, 0
  br i1 %tobool4.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !49
  %call = call fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) #23
  br i1 %call, label %while.body, label %while.end, !prof !9

while.end:                                        ; preds = %do.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #25
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #26, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #26, !srcloc !51
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @order_objects(i32 noundef %order, i32 noundef %size) unnamed_addr #9 {
entry:
  %shl = shl i32 4096, %order
  %div = udiv i32 %shl, %size
  ret i32 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #0 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @slab_pad_check(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %1, 6
  %add.i = and i64 %sub.i, -4096
  %2 = inttoptr i64 %add.i to i8*
  %call1 = call fastcc i64 @page_size(%struct.page* noundef %page) #23
  %conv = trunc i64 %call1 to i32
  %sext = shl i64 %call1, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %3 = load i32, i32* %size, align 8
  %rem = urem i32 %conv, %3
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %idx.ext5 = sext i32 %rem to i64
  %idx.neg = sub nsw i64 0, %idx.ext5
  %add.ptr6 = getelementptr i8, i8* %add.ptr, i64 %idx.neg
  %call9 = call i8* @memchr_inv(i8* noundef %add.ptr6, i32 noundef 90, i64 noundef %idx.ext5) #25
  %tobool10.not = icmp eq i8* %call9, null
  br i1 %tobool10.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %if.end4, %land.rhs
  %end.0 = phi i8* [ %arrayidx, %land.rhs ], [ %add.ptr, %if.end4 ]
  %cmp = icmp ugt i8* %end.0, %call9
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr i8, i8* %end.0, i64 -1
  %4 = load i8, i8* %arrayidx, align 1
  %cmp15 = icmp eq i8 %4, 90
  br i1 %cmp15, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond, %land.rhs
  %add.ptr17 = getelementptr i8, i8* %end.0, i64 -1
  %sub.ptr.lhs.cast = ptrtoint i8* %call9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %add.i
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %call9, i8* noundef %add.ptr17, i64 noundef %sub.ptr.sub) #23
  call fastcc void @print_section(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* noundef %add.ptr6, i32 noundef %rem) #23
  call fastcc void @restore_bytes(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8 noundef 90, i8* noundef nonnull %call9, i8* noundef %end.0) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %while.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memchr_inv(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_bytes(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %message, i8 noundef %data, i8* noundef %from, i8* noundef %to) unnamed_addr #1 {
entry:
  %add.ptr = getelementptr i8, i8* %to, i64 -1
  %conv = zext i8 %data to i32
  call void (%struct.kmem_cache*, i8*, ...) @slab_fix(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0), i8* noundef %message, i8* noundef %from, i8* noundef %add.ptr, i32 noundef %conv) #23
  %sub.ptr.lhs.cast = ptrtoint i8* %to to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %from to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @memset(i8* noundef %from, i32 noundef %conv, i64 noundef %sub.ptr.sub) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @check_valid_pointer(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %object) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i8* %object, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %call2 = call fastcc i8* @restore_red_left(%struct.kmem_cache* noundef %s, i8* noundef nonnull %object) #23
  %cmp = icmp ult i8* %call2, %1
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %3 = bitcast i64* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %4 = load i32, i32* %size, align 8
  %mul = mul i32 %bf.clear, %4
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext
  %cmp3.not = icmp ult i8* %call2, %add.ptr
  br i1 %cmp3.not, label %lor.lhs.false4, label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %sub.ptr.lhs.cast = ptrtoint i8* %call2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %add.i
  %conv = zext i32 %4 to i64
  %rem = srem i64 %sub.ptr.sub, %conv
  %tobool6.not = icmp eq i64 %rem, 0
  %spec.select = zext i1 %tobool6.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false4, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @on_freelist(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef readnone %search) unnamed_addr #1 {
entry:
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = bitcast i64* %freelist to i8**
  %1 = load i8*, i8** %0, align 8
  %tobool.not112 = icmp eq i8* %1, null
  br i1 %tobool.not112, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %3 = bitcast i64* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %4 = add nuw nsw i32 %bf.clear, 1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end13
  %object.0115 = phi i8* [ null, %land.rhs.lr.ph ], [ %fp.0114, %if.end13 ]
  %fp.0114 = phi i8* [ %1, %land.rhs.lr.ph ], [ %call14, %if.end13 ]
  %nr.0113 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end13 ]
  %exitcond = icmp eq i32 %nr.0113, %4
  br i1 %exitcond, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %cmp1 = icmp eq i8* %fp.0114, %search
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %call = call fastcc i32 @check_valid_pointer(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef nonnull %fp.0114) #23
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %tobool4.not = icmp eq i8* %object.0115, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @object_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef nonnull %object.0115, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0)) #23
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %s, i8* noundef nonnull %object.0115, i8* noundef null) #23
  br label %while.end

if.else:                                          ; preds = %if.then3
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #23
  store i8* null, i8** %0, align 8
  %bf.load7 = load i32, i32* %3, align 8
  %bf.lshr8 = lshr i32 %bf.load7, 16
  %bf.clear9 = and i32 %bf.lshr8, 32767
  %bf.clear11 = and i32 %bf.load7, -65536
  %bf.set = or i32 %bf.clear9, %bf.clear11
  store i32 %bf.set, i32* %3, align 8
  call void (%struct.kmem_cache*, i8*, ...) @slab_fix(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0)) #23
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef nonnull %fp.0114) #23
  %inc = add nuw nsw i32 %nr.0113, 1
  %tobool.not = icmp eq i8* %call14, null
  br i1 %tobool.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %if.end13, %entry, %if.then5
  %nr.0110 = phi i32 [ %nr.0113, %if.then5 ], [ 0, %entry ], [ %4, %land.rhs ], [ %inc, %if.end13 ]
  %call15 = call fastcc i32 @compound_order(%struct.page* noundef %page) #23, !range !45
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %5 = load i32, i32* %size, align 8
  %call16 = call fastcc i32 @order_objects(i32 noundef %call15, i32 noundef %5) #23
  %6 = icmp slt i32 %call16, 32767
  %spec.store.select = select i1 %6, i32 %call16, i32 32767
  %7 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %8 = bitcast i64* %7 to i32*
  %bf.load20 = load i32, i32* %8, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 16
  %bf.clear22 = and i32 %bf.lshr21, 32767
  %cmp23.not = icmp eq i32 %bf.clear22, %spec.store.select
  br i1 %cmp23.not, label %if.end32, label %if.then24

if.then24:                                        ; preds = %while.end
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 noundef %bf.clear22, i32 noundef %spec.store.select) #23
  %bf.load28 = load i32, i32* %8, align 8
  %bf.value29 = shl i32 %spec.store.select, 16
  %bf.shl = and i32 %bf.value29, 2147418112
  %bf.clear30 = and i32 %bf.load28, -2147418113
  %bf.set31 = or i32 %bf.clear30, %bf.shl
  store i32 %bf.set31, i32* %8, align 8
  call void (%struct.kmem_cache*, i8*, ...) @slab_fix(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0)) #23
  %bf.load33.pre = load i32, i32* %8, align 8
  %.pre = lshr i32 %bf.load33.pre, 16
  %.pre122 = and i32 %.pre, 32767
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %while.end
  %bf.clear37.pre-phi = phi i32 [ %.pre122, %if.then24 ], [ %bf.clear22, %while.end ]
  %bf.load33 = phi i32 [ %bf.load33.pre, %if.then24 ], [ %bf.load20, %while.end ]
  %bf.clear34 = and i32 %bf.load33, 65535
  %sub = sub i32 %bf.clear37.pre-phi, %nr.0110
  %cmp38.not = icmp eq i32 %bf.clear34, %sub
  br i1 %cmp38.not, label %if.end54, label %if.then39

if.then39:                                        ; preds = %if.end32
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.45, i64 0, i64 0), i32 noundef %bf.clear34, i32 noundef %sub) #23
  %bf.load46 = load i32, i32* %8, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 32767
  %sub49 = sub i32 %bf.clear48, %nr.0110
  %bf.value51 = and i32 %sub49, 65535
  %bf.clear52 = and i32 %bf.load46, -65536
  %bf.set53 = or i32 %bf.value51, %bf.clear52
  store i32 %bf.set53, i32* %8, align 8
  call void (%struct.kmem_cache*, i8*, ...) @slab_fix(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0)) #23
  br label %if.end54

if.end54:                                         ; preds = %if.then39, %if.end32
  %cmp55 = icmp eq i8* %search, null
  %conv = zext i1 %cmp55 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end54, %if.else
  %retval.0 = phi i32 [ %conv, %if.end54 ], [ 0, %if.else ], [ 1, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_object(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %object, i8 noundef %val) unnamed_addr #1 {
entry:
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %0 = load i32, i32* %object_size, align 4
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr i8, i8* %object, i64 %idx.ext
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %red_left_pad = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 15
  %2 = load i32, i32* %red_left_pad, align 8
  %idx.ext1 = zext i32 %2 to i64
  %idx.neg = sub nsw i64 0, %idx.ext1
  %add.ptr2 = getelementptr i8, i8* %object, i64 %idx.neg
  %conv = zext i8 %val to i32
  %call = call fastcc i32 @check_bytes_and_report(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* noundef %add.ptr2, i32 noundef %conv, i32 noundef %2) #23
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %inuse = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  %3 = load i32, i32* %inuse, align 8
  %4 = load i32, i32* %object_size, align 4
  %sub = sub i32 %3, %4
  %call8 = call fastcc i32 @check_bytes_and_report(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8* noundef %add.ptr, i32 noundef %conv, i32 noundef %sub) #23
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end24

if.else:                                          ; preds = %entry
  %and13 = and i32 %1, 2048
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %inuse16 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  %5 = load i32, i32* %inuse16, align 8
  %cmp = icmp ugt i32 %5, %0
  br i1 %cmp, label %if.then18, label %if.end24

if.then18:                                        ; preds = %land.lhs.true
  %sub21 = sub i32 %5, %0
  %call22 = call fastcc i32 @check_bytes_and_report(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i8* noundef %add.ptr, i32 noundef 90, i32 noundef %sub21) #23
  br label %if.end24

if.end24:                                         ; preds = %if.else, %land.lhs.true, %if.then18, %if.end
  %6 = load i32, i32* %flags, align 8
  %and26 = and i32 %6, 2048
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end50, label %if.then28

if.then28:                                        ; preds = %if.end24
  %cmp30.not = icmp eq i8 %val, -52
  %tobool35.not = icmp sgt i32 %6, -1
  %or.cond = select i1 %cmp30.not, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %if.end48, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.then28
  %7 = load i32, i32* %object_size, align 4
  %sub38 = add i32 %7, -1
  %call39 = call fastcc i32 @check_bytes_and_report(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* noundef %object, i32 noundef 107, i32 noundef %sub38) #23
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true36
  %8 = load i32, i32* %object_size, align 4
  %idx.ext42 = zext i32 %8 to i64
  %add.ptr43 = getelementptr i8, i8* %object, i64 %idx.ext42
  %add.ptr44 = getelementptr i8, i8* %add.ptr43, i64 -1
  %call45 = call fastcc i32 @check_bytes_and_report(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0), i8* noundef %add.ptr44, i32 noundef 165, i32 noundef 1) #23
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false, %if.then28
  call fastcc void @check_pad_bytes(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object) #23
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end24
  %call51 = call fastcc i1 @freeptr_outside_object(%struct.kmem_cache* noundef %s) #23
  %cmp54 = icmp ne i8 %val, -52
  %9 = or i1 %cmp54, %call51
  br i1 %9, label %if.end57, label %cleanup

if.end57:                                         ; preds = %if.end50
  %call58 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %object) #23
  %call59 = call fastcc i32 @check_valid_pointer(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %call58) #23
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %cleanup

if.then61:                                        ; preds = %if.end57
  call void @object_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #23
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %object, i8* noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end50, %land.lhs.true36, %lor.lhs.false, %if.end, %if.then, %if.then61
  %retval.0 = phi i32 [ 0, %if.then61 ], [ 0, %if.then ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true36 ], [ 1, %if.end50 ], [ 1, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_bytes_and_report(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef %what, i8* noundef %start, i32 noundef %value, i32 noundef %bytes) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %conv = zext i32 %bytes to i64
  %call2 = call i8* @memchr_inv(i8* noundef %start, i32 noundef %value, i64 noundef %conv) #25
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, i8* %start, i64 %conv
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end
  %end.0 = phi i8* [ %add.ptr, %if.end ], [ %arrayidx, %land.rhs ]
  %cmp = icmp ugt i8* %end.0, %call2
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr i8, i8* %end.0, i64 -1
  %1 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %1 to i32
  %cmp5 = icmp eq i32 %conv4, %value
  br i1 %cmp5, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond, %land.rhs
  call void (%struct.kmem_cache*, i8*, ...) @slab_bug(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), i8* noundef %what) #23
  %add.ptr10 = getelementptr i8, i8* %end.0, i64 -1
  %sub.ptr.lhs.cast = ptrtoint i8* %call2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %add.i
  %2 = load i8, i8* %call2, align 1
  %conv12 = zext i8 %2 to i32
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull %call2, i8* noundef %add.ptr10, i64 noundef %sub.ptr.sub, i32 noundef %conv12, i32 noundef %value) #24
  call fastcc void @print_trailer(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object) #23
  call void @add_taint(i32 noundef 5, i32 noundef 1) #25
  %conv14 = trunc i32 %value to i8
  call fastcc void @restore_bytes(%struct.kmem_cache* noundef %s, i8* noundef %what, i8 noundef %conv14, i8* noundef nonnull %call2, i8* noundef %end.0) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_pad_bytes(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %p) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @get_info_end(%struct.kmem_cache* noundef %s) #23
  %conv = zext i32 %call to i64
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  %add = add nuw nsw i64 %conv, 48
  %spec.select = select i1 %tobool.not, i64 %conv, i64 %add
  %call3 = call fastcc i32 @size_from_object(%struct.kmem_cache* noundef %s) #23
  %conv4 = zext i32 %call3 to i64
  %cmp = icmp eq i64 %spec.select, %conv4
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %p, i64 %spec.select
  %1 = trunc i64 %spec.select to i32
  %conv10 = sub i32 %call3, %1
  %call11 = call fastcc i32 @check_bytes_and_report(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %p, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8* noundef %add.ptr, i32 noundef 90, i32 noundef %conv10) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__bit_spin_unlock(i64* noundef %addr) unnamed_addr #1 {
entry:
  call fastcc void @__clear_bit_unlock(i64* noundef %addr) #23
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !52
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clear_bit_unlock(i64* noundef %addr) unnamed_addr #1 {
entry:
  call fastcc void @arch___clear_bit_unlock(i64* noundef %addr) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch___clear_bit_unlock(i64* noundef %p) unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* %p, align 8
  %and = and i64 %0, -2
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %p, i64 %and) #26, !srcloc !53
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #23
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #26, !srcloc !55
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #26, !srcloc !56
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #23
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #25
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #25
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #26, !srcloc !57
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #26, !srcloc !58
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #26, !srcloc !59
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_double_mb(i64 noundef %old1, i64 noundef %old2, i64 noundef %new1, i64 noundef %new2, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_double_mb(i64 noundef %old1, i64 noundef %old2, i64 noundef %new1, i64 noundef %new2, i8* noundef %ptr) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_double_mb(i64 noundef %old1, i64 noundef %old2, i64 noundef %new1, i64 noundef %new2, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "// __cmpxchg_double_mb\0A\09prfm\09pstl1strm, $2\0A1:\09ldxp\09$0, $1, $2\0A\09eor\09$0, $0, $3\0A\09eor\09$1, $1, $4\0A\09orr\09$1, $0, $1\0A\09cbnz\09$1, 2f\0A\09stlxp\09${0:w}, $5, $6, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,r,r,r,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old1, i64 %old2, i64 %new1, i64 %new2, i64* elementtype(i64) %0) #26, !srcloc !60
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__add_partial(%struct.kmem_cache_node* noundef %n, %struct.page* noundef %page, i32 noundef %tail) unnamed_addr #10 {
entry:
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 1
  %0 = load i64, i64* %nr_partial, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %nr_partial, align 8
  %cmp = icmp eq i32 %tail, 16
  %slab_list = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  %partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @list_add_tail(%struct.list_head* noundef %slab_list, %struct.list_head* noundef %partial) #23
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @list_add(%struct.list_head* noundef %slab_list, %struct.list_head* noundef %partial) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
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
define internal fastcc void @dec_slabs_node(%struct.kmem_cache* nocapture noundef readonly %s, i32 noundef %objects) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %nr_slabs = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 3
  call fastcc void @__ll_sc_atomic64_sub(i64 noundef 1, %struct.atomic64_t* noundef %nr_slabs) #25
  %0 = zext i32 %objects to i64
  %total_objects = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 4
  call fastcc void @__ll_sc_atomic64_sub(i64 noundef %0, %struct.atomic64_t* noundef %total_objects) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %callback_head = bitcast %union.anon* %1 to %struct.callback_head*
  call void @call_rcu(%struct.callback_head* noundef %callback_head, void (%struct.callback_head*)* noundef nonnull @rcu_free_slab) #25
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @__free_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_sub(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Jr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #26, !srcloc !61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_free_slab(%struct.callback_head* noundef %h) #1 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %h, i64 -1, i32 1
  %0 = bitcast void (%struct.callback_head*)** %add.ptr to %struct.page*
  %slab_cache = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 3
  %1 = bitcast void (%struct.callback_head*)** %slab_cache to %struct.kmem_cache**
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** %1, align 8
  call fastcc void @__free_slab(%struct.kmem_cache* noundef %2, %struct.page* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__free_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #23
  %shl = shl nuw i32 1, %call
  %call1 = call fastcc i1 @kmem_cache_debug_flags(%struct.kmem_cache* noundef %s, i32 noundef 256) #23
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @slab_pad_check(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %call4 = call i8* @fixup_red_left(%struct.kmem_cache* noundef %s, i8* noundef %1) #23
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %3 = bitcast i64* %2 to i32*
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %bf.load40 = load i32, i32* %3, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 16
  %bf.clear42 = and i32 %bf.lshr41, 32767
  %4 = load i32, i32* %size, align 8
  %mul43 = mul i32 %bf.clear42, %4
  %idx.ext44 = zext i32 %mul43 to i64
  %add.ptr45 = getelementptr i8, i8* %1, i64 %idx.ext44
  %cmp46 = icmp ult i8* %call4, %add.ptr45
  br i1 %cmp46, label %for.body, label %if.end

for.body:                                         ; preds = %if.then, %for.body
  %p.047 = phi i8* [ %add.ptr9, %for.body ], [ %call4, %if.then ]
  %call6 = call fastcc i32 @check_object(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %p.047, i8 noundef -69) #23
  %5 = load i32, i32* %size, align 8
  %idx.ext8 = zext i32 %5 to i64
  %add.ptr9 = getelementptr i8, i8* %p.047, i64 %idx.ext8
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %mul = mul i32 %bf.clear, %5
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext
  %cmp = icmp ult i8* %add.ptr9, %add.ptr
  br i1 %cmp, label %for.body, label %if.end

if.end:                                           ; preds = %for.body, %if.then, %entry
  call fastcc void @__ClearPageSlabPfmemalloc(%struct.page* noundef %page) #23
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #25
  %6 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load i64, i64* %flags.i, align 8
  %and.i.i = and i64 %7, -513
  store i64 %and.i.i, i64* %flags.i, align 8
  %slab_cache = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %8 = bitcast %struct.address_space** %slab_cache to %struct.kmem_cache**
  store %struct.kmem_cache* null, %struct.kmem_cache** %8, align 8
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #31, !srcloc !46
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %reclaim_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i64 0, i32 110
  %11 = load %struct.reclaim_state*, %struct.reclaim_state** %reclaim_state, align 64
  %tobool.not = icmp eq %struct.reclaim_state* %11, null
  br i1 %tobool.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %conv = sext i32 %shl to i64
  %reclaimed_slab = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %11, i64 0, i32 0
  %12 = load i64, i64* %reclaimed_slab, align 8
  %add = add i64 %12, %conv
  store i64 %add, i64* %reclaimed_slab, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %call2.i = call fastcc i32 @cache_vmstat_idx(%struct.kmem_cache* noundef %s) #25, !range !62
  %sh_prom.i = zext i32 %call to i64
  %shl.neg.i = shl i64 -4096, %sh_prom.i
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %call2.i, i64 noundef %shl.neg.i) #25
  call void @__free_pages(%struct.page* noundef %page, i32 noundef %call) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @__ClearPageSlabPfmemalloc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #25
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load i64, i64* %flags.i, align 8
  %and.i.i = and i64 %1, -33
  store i64 %and.i.i, i64* %flags.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !14

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @cache_vmstat_idx(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 131072
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 6, i32 5
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @should_failslab(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @pfmemalloc_match_unsafe(%struct.page* noundef %page, i32 noundef %gfpflags) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__PageSlabPfmemalloc(%struct.page* noundef %page) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  %call3 = call i1 @gfp_pfmemalloc_allowed(i32 noundef %gfpflags) #25
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i1 [ %call3, %if.then ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @get_freelist(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %freelist6 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = bitcast i64* %freelist6 to i8**
  %1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  br label %do.body5

do.body5:                                         ; preds = %do.body5, %entry
  %2 = load i8*, i8** %0, align 8
  %3 = load i64, i64* %1, align 8
  %new.sroa.3.sroa.9.0.extract.shift = and i64 %3, -4294967296
  %bf.lshr = lshr i64 %3, 16
  %bf.clear = and i64 %bf.lshr, 32767
  %bf.clear10 = and i64 %3, 2147418112
  %cmp.not = icmp eq i8* %2, null
  %bf.shl = select i1 %cmp.not, i64 0, i64 2147483648
  %bf.set = or i64 %bf.clear10, %bf.shl
  %bf.set14 = or i64 %bf.set, %bf.clear
  %new.sroa.3.sroa.0.0.insert.insert = or i64 %new.sroa.3.sroa.9.0.extract.shift, %bf.set14
  %call17 = call fastcc i1 @__cmpxchg_double_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %2, i64 noundef %3, i8* noundef null, i64 noundef %new.sroa.3.sroa.0.0.insert.insert) #23
  br i1 %call17, label %do.end18, label %do.body5

do.end18:                                         ; preds = %do.body5
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @deactivate_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %freelist) unnamed_addr #1 {
entry:
  %freelist_iter = alloca i8*, align 8
  %call1 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %0 = bitcast i8** %freelist_iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  %freelist2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %1 = bitcast i64* %freelist2 to i8**
  %2 = load i8*, i8** %1, align 8
  %tobool.not = icmp eq i8* %2, null
  %spec.select = select i1 %tobool.not, i32 15, i32 16
  store i8* %freelist, i8** %freelist_iter, align 8
  %tobool3.not233 = icmp eq i8* %freelist, null
  br i1 %tobool3.not233, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %call4240 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef nonnull %freelist) #23
  %call5241 = call fastcc i1 @freelist_corrupted(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8** noundef nonnull %freelist_iter, i8* noundef %call4240) #23
  br i1 %call5241, label %while.end, label %if.end7

while.body:                                       ; preds = %if.end7
  %call4 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef nonnull %call4243) #23
  %call5 = call fastcc i1 @freelist_corrupted(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8** noundef nonnull %freelist_iter, i8* noundef %call4) #23
  br i1 %call5, label %while.end, label %if.end7

if.end7:                                          ; preds = %while.body.preheader, %while.body
  %call4243 = phi i8* [ %call4, %while.body ], [ %call4240, %while.body.preheader ]
  %free_delta.0236242 = phi i32 [ %inc, %while.body ], [ 0, %while.body.preheader ]
  %3 = load i8*, i8** %freelist_iter, align 8
  %inc = add i32 %free_delta.0236242, 1
  store i8* %call4243, i8** %freelist_iter, align 8
  %tobool3.not = icmp eq i8* %call4243, null
  br i1 %tobool3.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end7, %while.body.preheader, %entry
  %freelist_tail.0.lcssa = phi i8* [ null, %entry ], [ null, %while.body.preheader ], [ %3, %if.end7 ], [ %3, %while.body ]
  %free_delta.0.lcssa = phi i32 [ 0, %entry ], [ 0, %while.body.preheader ], [ %inc, %if.end7 ], [ %inc, %while.body ]
  %4 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %tobool17.not = icmp eq i8* %freelist_tail.0.lcssa, null
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call1, i64 0, i32 1
  %min_partial = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 2
  %rlock.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call1, i64 0, i32 0, i32 0, i32 0
  br label %redo

redo:                                             ; preds = %if.end94, %while.end
  %flags.0 = phi i64 [ 0, %while.end ], [ %flags.1, %if.end94 ]
  %l.0 = phi i32 [ 0, %while.end ], [ %m.0, %if.end94 ]
  %lock.0 = phi i32 [ 0, %while.end ], [ %lock.1, %if.end94 ]
  %5 = load volatile i8*, i8** %1, align 8
  %6 = load volatile i64, i64* %4, align 8
  %new.sroa.7.sroa.0.0.extract.trunc = trunc i64 %6 to i32
  %new.sroa.7.sroa.11.0.extract.shift = and i64 %6, -4294967296
  br i1 %tobool17.not, label %if.end25, label %if.then18

if.then18:                                        ; preds = %redo
  %sub = sub i32 %new.sroa.7.sroa.0.0.extract.trunc, %free_delta.0.lcssa
  %bf.value = and i32 %sub, 65535
  %bf.clear20 = and i32 %new.sroa.7.sroa.0.0.extract.trunc, -65536
  %bf.set = or i32 %bf.value, %bf.clear20
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %s, i8* noundef nonnull %freelist_tail.0.lcssa, i8* noundef %5) #23
  br label %if.end25

if.end25:                                         ; preds = %redo, %if.then18
  %new.sroa.3.0 = phi i8* [ %freelist, %if.then18 ], [ %5, %redo ]
  %new.sroa.7.sroa.0.0 = phi i32 [ %bf.set, %if.then18 ], [ %new.sroa.7.sroa.0.0.extract.trunc, %redo ]
  %bf.clear27 = and i32 %new.sroa.7.sroa.0.0, 2147483647
  %bf.clear30 = and i32 %new.sroa.7.sroa.0.0, 65535
  %tobool31.not = icmp eq i32 %bf.clear30, 0
  br i1 %tobool31.not, label %land.lhs.true, label %if.else33

land.lhs.true:                                    ; preds = %if.end25
  %7 = load i64, i64* %nr_partial, align 8
  %8 = load i64, i64* %min_partial, align 8
  %cmp.not = icmp ult i64 %7, %8
  br i1 %cmp.not, label %if.else33, label %if.end72

if.else33:                                        ; preds = %land.lhs.true, %if.end25
  %tobool35.not = icmp eq i8* %new.sroa.3.0, null
  br i1 %tobool35.not, label %if.else50, label %if.then36

if.then36:                                        ; preds = %if.else33
  %tobool37.not = icmp eq i32 %lock.0, 0
  br i1 %tobool37.not, label %if.end72.sink.split, label %if.end72

if.else50:                                        ; preds = %if.else33
  %call51 = call fastcc i1 @kmem_cache_debug_flags(%struct.kmem_cache* noundef %s, i32 noundef 65536) #23
  %call51.not = xor i1 %call51, true
  %tobool54 = icmp ne i32 %lock.0, 0
  %or.cond = select i1 %call51.not, i1 true, i1 %tobool54
  br i1 %or.cond, label %if.end72, label %if.end72.sink.split

if.end72.sink.split:                              ; preds = %if.else50, %if.then36
  %m.0.ph = phi i32 [ 1, %if.then36 ], [ 2, %if.else50 ]
  %9 = xor i1 %tobool35.not, true
  %call44 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #23
  br label %if.end72

if.end72:                                         ; preds = %if.end72.sink.split, %land.lhs.true, %if.then36, %if.else50
  %cmp106 = phi i1 [ true, %if.then36 ], [ false, %if.else50 ], [ false, %land.lhs.true ], [ %9, %if.end72.sink.split ]
  %cmp110 = phi i1 [ false, %if.then36 ], [ true, %if.else50 ], [ false, %land.lhs.true ], [ %tobool35.not, %if.end72.sink.split ]
  %m.0 = phi i32 [ 1, %if.then36 ], [ 2, %if.else50 ], [ 3, %land.lhs.true ], [ %m.0.ph, %if.end72.sink.split ]
  %flags.1 = phi i64 [ %flags.0, %if.then36 ], [ %flags.0, %if.else50 ], [ %flags.0, %land.lhs.true ], [ %call44, %if.end72.sink.split ]
  %lock.1 = phi i32 [ 1, %if.then36 ], [ %lock.0, %if.else50 ], [ %lock.0, %land.lhs.true ], [ 1, %if.end72.sink.split ]
  %cmp73.not = icmp eq i32 %l.0, %m.0
  br i1 %cmp73.not, label %if.end94, label %if.then75

if.then75:                                        ; preds = %if.end72
  switch i32 %l.0, label %if.end84 [
    i32 1, label %if.then78
    i32 2, label %if.then82
  ]

if.then78:                                        ; preds = %if.then75
  call fastcc void @remove_partial(%struct.kmem_cache_node* noundef %call1, %struct.page* noundef %page) #23
  br label %if.end84

if.then82:                                        ; preds = %if.then75
  call fastcc void @remove_full(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  br label %if.end84

if.end84:                                         ; preds = %if.then75, %if.then82, %if.then78
  br i1 %cmp106, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.end84
  call fastcc void @add_partial(%struct.kmem_cache_node* noundef %call1, %struct.page* noundef %page, i32 noundef %spec.select) #23
  br label %if.end94

if.else88:                                        ; preds = %if.end84
  br i1 %cmp110, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.else88
  call fastcc void @add_full(%struct.kmem_cache* noundef %s, %struct.kmem_cache_node* noundef %call1, %struct.page* noundef %page) #23
  br label %if.end94

if.end94:                                         ; preds = %if.then87, %if.then91, %if.else88, %if.end72
  %new.sroa.7.sroa.0.0.insert.ext = zext i32 %bf.clear27 to i64
  %new.sroa.7.sroa.0.0.insert.insert = or i64 %new.sroa.7.sroa.11.0.extract.shift, %new.sroa.7.sroa.0.0.insert.ext
  %call99 = call fastcc i1 @cmpxchg_double_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %5, i64 noundef %6, i8* noundef %new.sroa.3.0, i64 noundef %new.sroa.7.sroa.0.0.insert.insert) #23
  br i1 %call99, label %if.end101, label %redo

if.end101:                                        ; preds = %if.end94
  %tobool102.not = icmp eq i32 %lock.1, 0
  br i1 %tobool102.not, label %if.end105, label %if.then103

if.then103:                                       ; preds = %if.end101
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags.1) #25
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end101
  %brmerge = or i1 %cmp106, %cmp110
  br i1 %brmerge, label %if.end119, label %if.then116

if.then116:                                       ; preds = %if.end105
  call fastcc void @discard_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  br label %if.end119

if.end119:                                        ; preds = %if.end105, %if.then116
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @get_partial(%struct.kmem_cache* nocapture noundef readonly %s, i32 noundef %flags, %struct.page** nocapture noundef writeonly %ret_page) unnamed_addr #1 {
entry:
  call fastcc void @numa_mem_id() #23
  %call1 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %call2 = call fastcc i8* @get_partial_node(%struct.kmem_cache* noundef %s, %struct.kmem_cache_node* noundef %call1, %struct.page** noundef %ret_page, i32 noundef %flags) #23
  ret i8* %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @new_slab(%struct.kmem_cache* noundef %s, i32 noundef %flags, i32 noundef %node) unnamed_addr #1 {
entry:
  %and = and i32 %flags, -33554426
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  %call = call i32 @kmalloc_fix_flags(i32 noundef %flags) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags.addr.0 = phi i32 [ %call, %if.then ], [ %flags, %entry ]
  %ctor = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 12
  %0 = load void (i8*)*, void (i8*)** %ctor, align 8
  %tobool3 = icmp ne void (i8*)* %0, null
  %and4 = and i32 %flags.addr.0, 256
  %tobool5 = icmp ne i32 %and4, 0
  %1 = select i1 %tobool3, i1 %tobool5, i1 false
  br i1 %1, label %if.then18, label %if.end19, !prof !9

if.then18:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 1968; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !63
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end
  %and27 = and i32 %flags.addr.0, 3927776
  %call28 = call fastcc %struct.page* @allocate_slab(%struct.kmem_cache* noundef %s, i32 noundef %and27, i32 noundef %node) #23
  ret %struct.page* %call28
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @slab_out_of_memory(%struct.kmem_cache* nocapture noundef readonly %s, i32 noundef %gfpflags) unnamed_addr #1 {
entry:
  %gfpflags.addr = alloca i32, align 4
  store i32 %gfpflags, i32* %gfpflags.addr, align 4
  %and = and i32 %gfpflags, 8192
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @slab_out_of_memory.slub_oom_rs, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.slab_out_of_memory, i64 0, i64 0)) #25
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %do.end

do.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.65, i64 0, i64 0), i32 noundef -1, i32 noundef %gfpflags, i32* noundef nonnull %gfpflags.addr) #24
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %0 = load i8*, i8** %name, align 8
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %1 = load i32, i32* %object_size, align 4
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %2 = load i32, i32* %size, align 8
  %coerce.dive = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 7, i32 0
  %3 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %3 to i64
  %call7 = call fastcc i32 @oo_order(i64 %coerce.val.ii) #23
  %coerce.dive8 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 9, i32 0
  %4 = load i32, i32* %coerce.dive8, align 4
  %coerce.val.ii9 = zext i32 %4 to i64
  %call10 = call fastcc i32 @oo_order(i64 %coerce.val.ii9) #23, !range !35
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.66, i64 0, i64 0), i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %call7, i32 noundef %call10) #24
  %5 = load i32, i32* %coerce.dive8, align 4
  %coerce.val.ii14 = zext i32 %5 to i64
  %call15 = call fastcc i32 @oo_order(i64 %coerce.val.ii14) #23
  %6 = load i32, i32* %object_size, align 4
  %conv = zext i32 %6 to i64
  %dec.i = add nsw i64 %conv, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %7 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #26, !range !31
  %8 = trunc i64 %7 to i32
  %conv.i.i = sub nuw nsw i32 64, %8
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %cmp = icmp ugt i32 %call15, %retval.0.i.i
  br i1 %cmp, label %do.end22, label %if.end26

do.end22:                                         ; preds = %do.end
  %9 = load i8*, i8** %name, align 8
  %call25 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.67, i64 0, i64 0), i8* noundef %9) #24
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %do.end
  %call29 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool30.not = icmp eq %struct.kmem_cache_node* %call29, null
  br i1 %tobool30.not, label %cleanup, label %if.then31

if.then31:                                        ; preds = %if.end26
  %call32 = call fastcc i64 @count_partial(%struct.kmem_cache_node* noundef nonnull %call29, i32 (%struct.page*)* noundef nonnull @count_free) #23
  %call33 = call fastcc i64 @node_nr_slabs(%struct.kmem_cache_node* noundef nonnull %call29) #23
  %call34 = call fastcc i64 @node_nr_objs(%struct.kmem_cache_node* noundef nonnull %call29) #23
  %call39 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i64 0, i64 0), i32 noundef 0, i64 noundef %call33, i64 noundef %call34, i64 noundef %call32) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end26, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_debug_processing(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %object, i64 noundef %addr) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @alloc_consistency_checks(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object) #23
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %bad, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  %.pre = load i32, i32* %flags, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry
  %1 = phi i32 [ %.pre, %if.then.if.end3_crit_edge ], [ %0, %entry ]
  %and5 = and i32 %1, 65536
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  call fastcc void @set_track(%struct.kmem_cache* noundef %s, i8* noundef %object, i32 noundef 0, i64 noundef %addr) #23
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  call fastcc void @trace(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i32 noundef 1) #23
  call fastcc void @init_object(%struct.kmem_cache* noundef %s, i8* noundef %object, i8 noundef -52) #23
  br label %return

bad:                                              ; preds = %if.then
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #25
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 512
  %tobool10.not = icmp eq i64 %4, 0
  br i1 %tobool10.not, label %return, label %if.then11

if.then11:                                        ; preds = %bad
  call void (%struct.kmem_cache*, i8*, ...) @slab_fix(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0)) #23
  %5 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %6 = bitcast i64* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %bf.clear13 = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.clear13
  store i32 %bf.set, i32* %6, align 8
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %7 = bitcast i64* %freelist to i8**
  store i8* null, i8** %7, align 8
  br label %return

return:                                           ; preds = %bad, %if.then11, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then11 ], [ 0, %bad ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @pfmemalloc_match(%struct.page* noundef %page, i32 noundef %gfpflags) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @PageSlabPfmemalloc(%struct.page* noundef %page) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  %call3 = call i1 @gfp_pfmemalloc_allowed(i32 noundef %gfpflags) #25
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i1 [ %call3, %if.then ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @__PageSlabPfmemalloc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #25
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 5
  %conv.i.i = and i32 %3, 1
  ret i32 %conv.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @gfp_pfmemalloc_allowed(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__cmpxchg_double_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %freelist_old, i64 noundef %counters_old, i8* noundef %freelist_new, i64 noundef %counters_new) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1073741824
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %1 = bitcast i64* %freelist to i8*
  %2 = ptrtoint i8* %freelist_old to i64
  %3 = ptrtoint i8* %freelist_new to i64
  %call = call fastcc i64 @__cmpxchg_double_mb(i64 noundef %2, i64 noundef %counters_old, i64 noundef %3, i64 noundef %counters_new, i8* noundef %1) #23
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %return, label %if.end12

if.else:                                          ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @bit_spin_lock(i64* noundef %flags.i.i) #25
  %freelist6 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %4 = bitcast i64* %freelist6 to i8**
  %5 = load i8*, i8** %4, align 8
  %cmp = icmp eq i8* %5, %freelist_old
  br i1 %cmp, label %land.lhs.true, label %cleanup.thread

land.lhs.true:                                    ; preds = %if.else
  %6 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %cmp7 = icmp eq i64 %7, %counters_old
  br i1 %cmp7, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %land.lhs.true
  call fastcc void @__bit_spin_unlock(i64* noundef %flags.i.i) #25
  br label %if.end12

cleanup:                                          ; preds = %land.lhs.true
  store i8* %freelist_new, i8** %4, align 8
  store i64 %counters_new, i64* %6, align 8
  call fastcc void @__bit_spin_unlock(i64* noundef %flags.i.i) #25
  br label %return

if.end12:                                         ; preds = %cleanup.thread, %if.then
  call fastcc void @cpu_relax() #23
  br label %return

return:                                           ; preds = %cleanup, %if.then, %if.end12
  %retval.1 = phi i1 [ false, %if.end12 ], [ true, %cleanup ], [ true, %if.then ]
  ret i1 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @freelist_corrupted(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8** noundef %freelist, i8* noundef readonly %nextfree) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @check_valid_pointer(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %nextfree) #23
  %tobool1 = icmp eq i32 %call, 0
  %tobool3 = icmp ne i8** %freelist, null
  %or.cond = and i1 %tobool3, %tobool1
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %1 = load i8*, i8** %freelist, align 8
  call void @object_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0)) #23
  store i8* null, i8** %freelist, align 8
  call void (%struct.kmem_cache*, i8*, ...) @slab_fix(%struct.kmem_cache* noundef %s, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0)) #23
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @add_full(%struct.kmem_cache* nocapture noundef readonly %s, %struct.kmem_cache_node* noundef %n, %struct.page* noundef %page) unnamed_addr #10 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %do.body

do.body:                                          ; preds = %entry
  %slab_list = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0
  %full = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 5
  call fastcc void @list_add(%struct.list_head* noundef %slab_list, %struct.list_head* noundef %full) #23
  br label %return

return:                                           ; preds = %entry, %do.body
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_mem_id() unnamed_addr #8 {
entry:
  call fastcc void @numa_node_id() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @get_partial_node(%struct.kmem_cache* nocapture noundef readonly %s, %struct.kmem_cache_node* noundef %n, %struct.page** nocapture noundef writeonly %ret_page, i32 noundef %gfpflags) unnamed_addr #1 {
entry:
  %objects = alloca i32, align 4
  %0 = bitcast i32* %objects to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #26
  %tobool.not = icmp eq %struct.kmem_cache_node* %n, null
  br i1 %tobool.not, label %cleanup48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 1
  %1 = load i64, i64* %nr_partial, align 8
  %tobool1.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %cleanup48, label %do.body2

do.body2:                                         ; preds = %lor.lhs.false
  %rlock.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 0, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #23
  %partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 2
  %2 = bitcast %struct.list_head* %partial to i8**
  %3 = load i8*, i8** %2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %do.body2
  %.pn.in.in = phi i8* [ %3, %do.body2 ], [ %.pn, %for.body ]
  %page.0.in = getelementptr i8, i8* %.pn.in.in, i64 -8
  %4 = bitcast i8* %.pn.in.in to %struct.list_head*
  %cmp19.not = icmp eq %struct.list_head* %partial, %4
  br i1 %cmp19.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %.pn.in = bitcast i8* %.pn.in.in to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %page.0 = bitcast i8* %page.0.in to %struct.page*
  %call21 = call fastcc i1 @pfmemalloc_match(%struct.page* noundef %page.0, i32 noundef %gfpflags) #23
  br i1 %call21, label %if.end23, label %for.cond

if.end23:                                         ; preds = %for.body
  %page.0.le = bitcast i8* %page.0.in to %struct.page*
  %call26 = call fastcc i8* @acquire_slab(%struct.kmem_cache* noundef %s, %struct.kmem_cache_node* noundef nonnull %n, %struct.page* noundef %page.0.le, i32 noundef 1, i32* noundef nonnull %objects) #23
  %tobool27.not = icmp eq i8* %call26, null
  br i1 %tobool27.not, label %for.end, label %if.then31

if.then31:                                        ; preds = %if.end23
  %5 = bitcast %struct.page** %ret_page to i8**
  store i8* %page.0.in, i8** %5, align 8
  br label %for.end

for.end:                                          ; preds = %for.cond, %if.end23, %if.then31
  %object.3 = phi i8* [ %call26, %if.then31 ], [ null, %if.end23 ], [ null, %for.cond ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #25
  br label %cleanup48

cleanup48:                                        ; preds = %entry, %lor.lhs.false, %for.end
  %retval.0 = phi i8* [ %object.3, %for.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #26
  ret i8* %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #8 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @acquire_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.kmem_cache_node* nocapture noundef %n, %struct.page* noundef %page, i32 noundef %mode, i32* nocapture noundef writeonly %objects) unnamed_addr #1 {
entry:
  %freelist1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = bitcast i64* %freelist1 to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %3 = load i64, i64* %2, align 8
  %new.sroa.6.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %new.sroa.6.sroa.11.0.extract.shift = and i64 %3, -4294967296
  %bf.lshr = lshr i32 %new.sroa.6.sroa.0.0.extract.trunc, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %bf.clear5 = and i32 %new.sroa.6.sroa.0.0.extract.trunc, 65535
  %sub = sub nsw i32 %bf.clear, %bf.clear5
  store i32 %sub, i32* %objects, align 4
  %tobool.not = icmp eq i32 %mode, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = bitcast i64* %2 to i32*
  %bf.load6 = load i32, i32* %4, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 16
  %bf.clear8 = and i32 %bf.lshr7, 32767
  %bf.clear10 = and i32 %new.sroa.6.sroa.0.0.extract.trunc, -65536
  %bf.set = or i32 %bf.clear8, %bf.clear10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %new.sroa.3.0 = phi i8* [ null, %if.then ], [ %1, %entry ]
  %new.sroa.6.sroa.0.0 = phi i32 [ %bf.set, %if.then ], [ %new.sroa.6.sroa.0.0.extract.trunc, %entry ]
  %bf.set15 = or i32 %new.sroa.6.sroa.0.0, -2147483648
  %new.sroa.6.sroa.0.0.insert.ext = zext i32 %bf.set15 to i64
  %new.sroa.6.sroa.0.0.insert.insert = or i64 %new.sroa.6.sroa.11.0.extract.shift, %new.sroa.6.sroa.0.0.insert.ext
  %call = call fastcc i1 @__cmpxchg_double_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %1, i64 noundef %3, i8* noundef %new.sroa.3.0, i64 noundef %new.sroa.6.sroa.0.0.insert.insert) #23
  br i1 %call, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end
  call fastcc void @remove_partial(%struct.kmem_cache_node* noundef %n, %struct.page* noundef %page) #23
  %tobool20.not = icmp eq i8* %1, null
  br i1 %tobool20.not, label %if.then29, label %cleanup, !prof !9

if.then29:                                        ; preds = %if.end19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 2089; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !64
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then29, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ null, %if.then29 ], [ %1, %if.end19 ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmalloc_fix_flags(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @allocate_slab(%struct.kmem_cache* noundef %s, i32 noundef %flags, i32 noundef %node) unnamed_addr #1 {
entry:
  %oo.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 7, i32 0
  %oo.sroa.0.0.copyload = load i32, i32* %oo.sroa.0.0..sroa_idx, align 4
  %0 = load i32, i32* @gfp_allowed_mask, align 4
  %and = and i32 %0, %flags
  %allocflags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 10
  %1 = load i32, i32* %allocflags, align 8
  %or = or i32 %and, %1
  %or3 = and i32 %or, -106497
  %and4 = or i32 %or3, 73728
  %and5 = and i32 %or, 1024
  %tobool.not = icmp eq i32 %and5, 0
  %.pre = zext i32 %oo.sroa.0.0.copyload to i64
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @oo_order(i64 %.pre) #23
  %coerce.dive6 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 9, i32 0
  %2 = load i32, i32* %coerce.dive6, align 4
  %coerce.val.ii7 = zext i32 %2 to i64
  %call8 = call fastcc i32 @oo_order(i64 %coerce.val.ii7) #23
  %cmp = icmp ugt i32 %call, %call8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %or9 = and i32 %or, -633857
  %and10 = or i32 %or9, 598016
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  %alloc_gfp.0 = phi i32 [ %and10, %if.then ], [ %and4, %land.lhs.true ], [ %and4, %entry ]
  %call13 = call fastcc %struct.page* @alloc_slab_page(i32 noundef %alloc_gfp.0, i32 noundef %node, i64 %.pre) #23
  %tobool14.not = icmp eq %struct.page* %call13, null
  br i1 %tobool14.not, label %if.then18, label %if.end35, !prof !9

if.then18:                                        ; preds = %if.end
  %oo.sroa.0.0..sroa_idx99 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 9, i32 0
  %oo.sroa.0.0.copyload100 = load i32, i32* %oo.sroa.0.0..sroa_idx99, align 4
  %coerce.val.ii21 = zext i32 %oo.sroa.0.0.copyload100 to i64
  %call22 = call fastcc %struct.page* @alloc_slab_page(i32 noundef %or, i32 noundef %node, i64 %coerce.val.ii21) #23
  %tobool23.not = icmp eq %struct.page* %call22, null
  br i1 %tobool23.not, label %cleanup, label %if.end35, !prof !9

if.end35:                                         ; preds = %if.then18, %if.end
  %coerce.val.ii37.pre-phi = phi i64 [ %coerce.val.ii21, %if.then18 ], [ %.pre, %if.end ]
  %page.0 = phi %struct.page* [ %call22, %if.then18 ], [ %call13, %if.end ]
  %call38 = call fastcc i32 @oo_objects(i64 %coerce.val.ii37.pre-phi) #23
  %3 = getelementptr inbounds %struct.page, %struct.page* %page.0, i64 0, i32 1, i32 0, i32 3
  %4 = bitcast i64* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.value = shl i32 %call38, 16
  %bf.shl = and i32 %bf.value, 2147418112
  %bf.clear = and i32 %bf.load, -2147418113
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %4, align 8
  %call41 = call fastcc i32 @oo_order(i64 %coerce.val.ii37.pre-phi) #23, !range !35
  %call3.i = call fastcc i32 @cache_vmstat_idx(%struct.kmem_cache* noundef %s) #25, !range !62
  %sh_prom.i = zext i32 %call41 to i64
  %shl.i = shl i64 4096, %sh_prom.i
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %call3.i, i64 noundef %shl.i) #25
  %slab_cache = getelementptr inbounds %struct.page, %struct.page* %page.0, i64 0, i32 1, i32 0, i32 1
  %5 = bitcast %struct.address_space** %slab_cache to %struct.kmem_cache**
  store %struct.kmem_cache* %s, %struct.kmem_cache** %5, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %page.0) #25
  %6 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %7, 512
  store i64 %or.i.i, i64* %flags.i, align 8
  %call42 = call fastcc i1 @page_is_pfmemalloc(%struct.page* noundef nonnull %page.0) #23
  br i1 %call42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end35
  call fastcc void @SetPageSlabPfmemalloc(%struct.page* noundef nonnull %page.0) #23
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end35
  %8 = ptrtoint %struct.page* %page.0 to i64
  %sub.i = shl i64 %8, 6
  %add.i = and i64 %sub.i, -4096
  %9 = inttoptr i64 %add.i to i8*
  call fastcc void @setup_page_debug(%struct.kmem_cache* noundef %s, %struct.page* noundef nonnull %page.0, i8* noundef %9) #23
  %call49 = call i8* @fixup_red_left(%struct.kmem_cache* noundef %s, i8* noundef %9) #23
  %call50 = call fastcc i8* @setup_object(%struct.kmem_cache* noundef %s, i8* noundef %call49) #23
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page.0, i64 0, i32 1, i32 0, i32 2
  %10 = bitcast i64* %freelist to i8**
  store i8* %call49, i8** %10, align 8
  %bf.load51152 = load i32, i32* %4, align 8
  %11 = and i32 %bf.load51152, 2147352576
  %cmp53156.not = icmp eq i32 %11, 0
  br i1 %cmp53156.not, label %out, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end44
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %idx.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %p.0157 = phi i8* [ %call49, %for.body.lr.ph ], [ %add.ptr, %for.body ]
  %12 = load i32, i32* %size, align 8
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr i8, i8* %p.0157, i64 %idx.ext
  %call55 = call fastcc i8* @setup_object(%struct.kmem_cache* noundef %s, i8* noundef %add.ptr) #23
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %p.0157, i8* noundef %add.ptr) #23
  %inc = add nuw nsw i32 %idx.0158, 1
  %bf.load51 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load51, 16
  %bf.clear52 = and i32 %bf.lshr, 32767
  %sub = add nsw i32 %bf.clear52, -1
  %cmp53 = icmp slt i32 %inc, %sub
  br i1 %cmp53, label %for.body, label %out

out:                                              ; preds = %for.body, %if.end44
  %p.0.lcssa = phi i8* [ %call49, %if.end44 ], [ %add.ptr, %for.body ]
  call fastcc void @set_freepointer(%struct.kmem_cache* noundef %s, i8* noundef %p.0.lcssa, i8* noundef null) #23
  %bf.load57 = load i32, i32* %4, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 16
  %bf.clear59 = and i32 %bf.lshr58, 32767
  %bf.clear62 = and i32 %bf.load57, 2147418112
  %bf.set63 = or i32 %bf.clear62, %bf.clear59
  %bf.set66 = or i32 %bf.set63, -2147483648
  store i32 %bf.set66, i32* %4, align 8
  %tobool67.not = icmp eq %struct.page* %page.0, null
  br i1 %tobool67.not, label %cleanup, label %if.end69

if.end69:                                         ; preds = %out
  %bf.lshr72 = lshr exact i32 %bf.clear62, 16
  call fastcc void @inc_slabs_node(%struct.kmem_cache* noundef %s, i32 noundef %bf.lshr72) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %out, %if.end69
  %retval.0 = phi %struct.page* [ %page.0, %if.end69 ], [ null, %out ], [ null, %if.then18 ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_slab_page(i32 noundef %flags, i32 noundef %node, i64 %oo.coerce) unnamed_addr #1 {
entry:
  %coerce.val.ii2 = and i64 %oo.coerce, 4294967295
  %call = call fastcc i32 @oo_order(i64 %coerce.val.ii2) #23
  %cmp = icmp eq i32 %node, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc %struct.page* @alloc_pages(i32 noundef %flags, i32 noundef %call) #23
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %flags, i32 noundef %call) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %page.0 = phi %struct.page* [ %call3, %if.then ], [ %call4, %if.else ]
  ret %struct.page* %page.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @page_is_pfmemalloc(%struct.page* nocapture noundef readonly %page) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %1 = ptrtoint %struct.list_head* %0 to i64
  %and = and i64 %1, 2
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @SetPageSlabPfmemalloc(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #25
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %flags.i) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setup_page_debug(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %addr) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @kmem_cache_debug_flags(%struct.kmem_cache* noundef %s, i32 noundef 2048) #23
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @page_size(%struct.page* noundef %page) #23
  %call3 = call i8* @memset(i8* noundef %addr, i32 noundef 90, i64 noundef %call2) #25
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @setup_object(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef returned %object) unnamed_addr #1 {
entry:
  call fastcc void @setup_object_debug(%struct.kmem_cache* noundef %s, i8* noundef %object) #23
  %ctor = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 12
  %0 = load void (i8*)*, void (i8*)** %ctor, align 8
  %tobool.not = icmp eq void (i8*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  call void %0(i8* noundef %object) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %object
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_slabs_node(%struct.kmem_cache* nocapture noundef readonly %s, i32 noundef %objects) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool.not = icmp eq %struct.kmem_cache_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %nr_slabs = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 3
  call fastcc void @__ll_sc_atomic64_add(i64 noundef 1, %struct.atomic64_t* noundef %nr_slabs) #25
  %0 = zext i32 %objects to i64
  %total_objects = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call, i64 0, i32 4
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %0, %struct.atomic64_t* noundef %total_objects) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  call fastcc void @numa_node_id() #23
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) #23
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef 0, %struct.nodemask_t* noundef null) #25
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #1 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) #23
  ret %struct.page* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #26, !srcloc !65
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setup_object_debug(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %object) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @kmem_cache_debug_flags(%struct.kmem_cache* noundef %s, i32 noundef -2147417088) #23
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @init_object(%struct.kmem_cache* noundef %s, i8* noundef %object, i8 noundef -69) #23
  call fastcc void @init_tracking(%struct.kmem_cache* noundef %s, i8* noundef %object) #23
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_tracking(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %object) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @set_track(%struct.kmem_cache* noundef %s, i8* noundef %object, i32 noundef 1, i64 noundef 0) #23
  call fastcc void @set_track(%struct.kmem_cache* noundef %s, i8* noundef %object, i32 noundef 0, i64 noundef 0) #23
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #26, !srcloc !66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_consistency_checks(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i8* noundef %object) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @check_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @check_valid_pointer(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object) #23
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @object_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i64 0, i64 0)) #23
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @check_object(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %object, i8 noundef -69) #23
  %tobool6.not = icmp ne i32 %call5, 0
  %. = zext i1 %tobool6.not to i32
  br label %return

return:                                           ; preds = %if.end4, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @PageSlabPfmemalloc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #25
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 5
  %conv.i.i = and i32 %3, 1
  ret i32 %conv.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @freelist_dereference(i8* nocapture noundef readonly %ptr_addr) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr_addr to i64*
  %1 = load i64, i64* %0, align 8
  %2 = inttoptr i64 %1 to i8*
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @has_cpu_slab(i32 noundef %cpu, %struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #3 {
entry:
  %cpu_slab = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 0
  %0 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab, align 8
  %1 = ptrtoint %struct.kmem_cache_cpu* %0 to i64
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.kmem_cache_cpu*
  %page = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %3, i64 0, i32 2
  %4 = load %struct.page*, %struct.page** %page, align 8
  %tobool = icmp ne %struct.page* %4, null
  ret i1 %tobool
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @flush_cpu_slab(%struct.work_struct* nocapture noundef readonly %w) #1 {
entry:
  %s1 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %w, i64 1
  %0 = bitcast %struct.work_struct* %s1 to %struct.kmem_cache**
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %0, align 8
  %cpu_slab = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %1, i64 0, i32 0
  %2 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab, align 8
  %3 = ptrtoint %struct.kmem_cache_cpu* %2 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, %3
  %4 = inttoptr i64 %add to %struct.kmem_cache_cpu*
  %page = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %4, i64 0, i32 2
  %5 = load %struct.page*, %struct.page** %page, align 8
  %tobool.not = icmp eq %struct.page* %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @flush_slab(%struct.kmem_cache* noundef %1, %struct.kmem_cache_cpu* noundef %4) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work_on(i32 noundef %cpu, %struct.work_struct* noundef %work) unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %call = call i1 @queue_work_on(i32 noundef %cpu, %struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_work(%struct.work_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.kmem_cache_cpu* nocapture noundef %c) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  %call10 = call fastcc i64 @__kern_my_cpu_offset() #23
  %page13 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c, i64 0, i32 2
  %0 = load %struct.page*, %struct.page** %page13, align 8
  %freelist14 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c, i64 0, i32 0
  %1 = bitcast %struct.kmem_cache_cpu* %c to i8**
  %2 = load i8*, i8** %1, align 8
  store %struct.page* null, %struct.page** %page13, align 8
  store i8** null, i8*** %freelist14, align 8
  %tid = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %c, i64 0, i32 1
  %3 = load i64, i64* %tid, align 8
  %call17 = call fastcc i64 @next_tid(i64 noundef %3) #23
  store i64 %call17, i64* %tid, align 8
  %call29 = call fastcc i64 @__kern_my_cpu_offset() #23
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #23
  %tobool.not = icmp eq %struct.page* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @deactivate_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef nonnull %0, i8* noundef %2) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_slab_objects(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %2 = load i8*, i8** %name, align 8
  call void (%struct.kmem_cache*, %struct.page*, i8*, ...) @slab_err(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.71, i64 0, i64 0), i8* noundef %2) #23
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @bit_spin_lock(i64* noundef %flags.i.i) #25
  call fastcc void @get_map(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  %call2 = call i8* @fixup_red_left(%struct.kmem_cache* noundef %s, i8* noundef %1) #23
  %3 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %4 = bitcast i64* %3 to i32*
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %bf.load3 = load i32, i32* %4, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 16
  %bf.clear5 = and i32 %bf.lshr4, 32767
  %5 = load i32, i32* %size, align 8
  %mul6 = mul i32 %bf.clear5, %5
  %idx.ext8 = zext i32 %mul6 to i64
  %add.ptr9 = getelementptr i8, i8* %1, i64 %idx.ext8
  %cmp10 = icmp ult i8* %call2, %add.ptr9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %bf.load12 = phi i32 [ %bf.load, %for.inc ], [ %bf.load3, %entry ]
  %6 = phi i32 [ %10, %for.inc ], [ %5, %entry ]
  %p.011 = phi i8* [ %add.ptr8, %for.inc ], [ %call2, %entry ]
  %call3 = call fastcc i32 @__obj_to_index(%struct.kmem_cache* noundef %s, i8* noundef %1, i8* noundef %p.011) #23
  %div.i = lshr i32 %call3, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr [512 x i64], [512 x i64]* @object_map, i64 0, i64 %idxprom.i
  %7 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %call3, 63
  %sh_prom.i = zext i32 %and.i to i64
  %8 = shl nuw i64 1, %sh_prom.i
  %9 = and i64 %8, %7
  %tobool.not = icmp eq i64 %9, 0
  br i1 %tobool.not, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %p.011 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %add.i
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i64 0, i64 0), i8* noundef %p.011, i64 noundef %sub.ptr.sub) #24
  call void @print_tracking(%struct.kmem_cache* noundef %s, i8* noundef %p.011) #23
  %.pre = load i32, i32* %size, align 8
  %bf.load.pre = load i32, i32* %4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.end
  %bf.load = phi i32 [ %bf.load12, %for.body ], [ %bf.load.pre, %do.end ]
  %10 = phi i32 [ %6, %for.body ], [ %.pre, %do.end ]
  %idx.ext7 = zext i32 %10 to i64
  %add.ptr8 = getelementptr i8, i8* %p.011, i64 %idx.ext7
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %mul = mul i32 %bf.clear, %10
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext
  %cmp = icmp ult i8* %add.ptr8, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @put_map() #23
  call fastcc void @__bit_spin_unlock(i64* noundef %flags.i.i) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #23
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !67
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #25
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #25
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_map(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock() #23
  call fastcc void @__fill_map(i64* noundef getelementptr inbounds ([512 x i64], [512 x i64]* @object_map, i64 0, i64 0), %struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__obj_to_index(%struct.kmem_cache* nocapture noundef readonly %cache, i8* noundef %addr, i8* noundef %obj) unnamed_addr #3 {
entry:
  %sub.ptr.lhs.cast = ptrtoint i8* %obj to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %addr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %reciprocal_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %cache, i64 0, i32 5
  %0 = bitcast %struct.reciprocal_value* %reciprocal_size to i64*
  %1 = load i64, i64* %0, align 8
  %call1 = call fastcc i32 @reciprocal_divide(i32 noundef %conv, i64 %1) #23
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_map() unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !68
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef nonnull @object_map_lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__fill_map(i64* noundef %obj_map, %struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %3 = bitcast i64* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  call fastcc void @bitmap_zero(i64* noundef %obj_map, i32 noundef %bf.clear) #23
  %freelist = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %4 = bitcast i64* %freelist to i8**
  %5 = load i8*, i8** %4, align 8
  %tobool.not11 = icmp eq i8* %5, null
  br i1 %tobool.not11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %p.012 = phi i8* [ %call2, %for.body ], [ %5, %entry ]
  %call1 = call fastcc i32 @__obj_to_index(%struct.kmem_cache* noundef %s, i8* noundef %1, i8* noundef nonnull %p.012) #23
  %conv = zext i32 %call1 to i64
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %obj_map) #23
  %call2 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %s, i8* noundef nonnull %p.012) #23
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst, i32 noundef %nbits) unnamed_addr #1 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %0 = lshr i64 %sub, 3
  %conv1 = and i64 %0, 1073741816
  %1 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %conv1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @reciprocal_divide(i32 noundef %a, i64 %R.coerce) unnamed_addr #9 {
entry:
  %R.sroa.2.0.extract.shift = lshr i64 %R.coerce, 32
  %R.sroa.2.0.extract.trunc = trunc i64 %R.sroa.2.0.extract.shift to i32
  %R.sroa.3.0.extract.shift = lshr i64 %R.coerce, 40
  %R.sroa.3.0.extract.trunc = trunc i64 %R.sroa.3.0.extract.shift to i32
  %conv = zext i32 %a to i64
  %conv1 = and i64 %R.coerce, 4294967295
  %mul = mul nuw i64 %conv1, %conv
  %shr = lshr i64 %mul, 32
  %conv2 = trunc i64 %shr to i32
  %sub = sub i32 %a, %conv2
  %conv3 = and i32 %R.sroa.2.0.extract.trunc, 255
  %shr4 = lshr i32 %sub, %conv3
  %add = add i32 %shr4, %conv2
  %conv5 = and i32 %R.sroa.3.0.extract.trunc, 255
  %shr6 = lshr i32 %add, %conv5
  ret i32 %shr6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @object_map_lock) #23
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !69
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @arch_local_irq_enable() #23
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(i8** noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmalloc_order(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %val) unnamed_addr #1 {
entry:
  %conv = sext i32 %val to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef 6, i64 noundef %conv) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #23
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #14 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @init_kmem_cache_node(%struct.kmem_cache_node* noundef %n) unnamed_addr #10 {
entry:
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 1
  store i64 0, i64* %nr_partial, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %partial) #23
  %counter.i.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 3, i32 0
  store volatile i64 0, i64* %counter.i.i, align 8
  %counter.i.i8 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 4, i32 0
  store volatile i64 0, i64* %counter.i.i8, align 8
  %full = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %n, i64 0, i32 5
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %full) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #1 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 2304) #23
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__flush_cpu_slab(%struct.kmem_cache* nocapture noundef readonly %s, i32 noundef %cpu) unnamed_addr #1 {
entry:
  %cpu_slab = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 0
  %0 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab, align 8
  %1 = ptrtoint %struct.kmem_cache_cpu* %0 to i64
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.kmem_cache_cpu*
  %freelist2 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %3, i64 0, i32 0
  %4 = inttoptr i64 %add to i8**
  %5 = load i8*, i8** %4, align 8
  %page3 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %3, i64 0, i32 2
  %6 = load %struct.page*, %struct.page** %page3, align 8
  store %struct.page* null, %struct.page** %page3, align 8
  store i8** null, i8*** %freelist2, align 8
  %tid = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %3, i64 0, i32 1
  %7 = load i64, i64* %tid, align 8
  %call = call fastcc i64 @next_tid(i64 noundef %7) #23
  store i64 %call, i64* %tid, align 8
  %tobool.not = icmp eq %struct.page* %6, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @deactivate_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef nonnull %6, i8* noundef %5) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @calculate_sizes(%struct.kmem_cache* nocapture noundef %s) unnamed_addr #1 {
entry:
  %flags1 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags1, align 8
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %1 = load i32, i32* %object_size, align 4
  %add = add i32 %1, 7
  %and = and i32 %add, -8
  %2 = and i32 %0, 526336
  %3 = icmp eq i32 %2, 2048
  br i1 %3, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %entry
  %ctor = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 12
  %4 = load void (i8*)*, void (i8*)** %ctor, align 8
  %tobool6.not = icmp eq void (i8*)* %4, null
  br i1 %tobool6.not, label %if.end.thread, label %if.end.thread65

if.end:                                           ; preds = %entry
  %and9 = and i32 %0, 2147483647
  store i32 %and9, i32* %flags1, align 8
  %and10 = and i32 %0, 1024
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end17.thread, label %land.lhs.true12

if.end.thread65:                                  ; preds = %land.lhs.true5
  %and966 = and i32 %0, 2147483647
  store i32 %and966, i32* %flags1, align 8
  %and1067 = and i32 %0, 1024
  %tobool11.not68 = icmp eq i32 %and1067, 0
  br i1 %tobool11.not68, label %if.end41.thread.sink.split, label %if.end41.thread49.sink.split

if.end.thread:                                    ; preds = %land.lhs.true5
  %or = or i32 %0, -2147483648
  store i32 %or, i32* %flags1, align 8
  %and1024 = and i32 %0, 1024
  %tobool11.not25 = icmp eq i32 %and1024, 0
  br i1 %tobool11.not25, label %if.end41.thread.sink.split, label %if.end41.thread49.sink.split

land.lhs.true12:                                  ; preds = %if.end
  %cmp = icmp eq i32 %and, %1
  %add15 = add i32 %and, 8
  %spec.select19 = select i1 %cmp, i32 %add15, i32 %and
  %inuse = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  store i32 %spec.select19, i32* %inuse, align 8
  %tobool19.not = icmp ne i32 %2, 0
  %cmp25 = icmp ult i32 %1, 8
  %or.cond = select i1 %tobool19.not, i1 true, i1 %cmp25
  br i1 %or.cond, label %if.end41.thread49, label %lor.lhs.false27

if.end17.thread:                                  ; preds = %if.end
  %inuse12 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  store i32 %and, i32* %inuse12, align 8
  %tobool19.not14 = icmp eq i32 %2, 0
  br i1 %tobool19.not14, label %lor.lhs.false27, label %if.end41.thread

lor.lhs.false27:                                  ; preds = %land.lhs.true12, %if.end17.thread
  %size.01518 = phi i32 [ %and, %if.end17.thread ], [ %spec.select19, %land.lhs.true12 ]
  %ctor28 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 12
  %5 = load void (i8*)*, void (i8*)** %ctor28, align 8
  %tobool29.not = icmp eq void (i8*)* %5, null
  br i1 %tobool29.not, label %if.else34, label %if.end41

if.else34:                                        ; preds = %lor.lhs.false27
  %div = lshr i32 %1, 1
  %6 = and i32 %div, 2147483640
  %offset40 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  store i32 %6, i32* %offset40, align 8
  %and4234 = and i32 %0, 65536
  %tobool43.not35 = icmp eq i32 %and4234, 0
  %add4636 = add i32 %size.01518, 48
  %spec.select2137 = select i1 %tobool43.not35, i32 %size.01518, i32 %add4636
  br i1 %tobool11.not, label %if.end41.if.end65_crit_edge, label %if.then52

if.end41.thread.sink.split:                       ; preds = %if.end.thread, %if.end.thread65
  %inuse1232 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  store i32 %and, i32* %inuse1232, align 8
  br label %if.end41.thread

if.end41.thread:                                  ; preds = %if.end41.thread.sink.split, %if.end17.thread
  %offset42 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  store i32 %and, i32* %offset42, align 8
  %and4244 = and i32 %0, 65536
  %tobool43.not45 = icmp eq i32 %and4244, 0
  %spec.select2147.v = select i1 %tobool43.not45, i32 8, i32 56
  %spec.select2147 = add i32 %and, %spec.select2147.v
  br label %if.end41.if.end65_crit_edge

if.end41.thread49.sink.split:                     ; preds = %if.end.thread, %if.end.thread65
  %cmp59 = icmp eq i32 %and, %1
  %add1560 = add i32 %and, 8
  %spec.select1961 = select i1 %cmp59, i32 %add1560, i32 %and
  %inuse78 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 13
  store i32 %spec.select1961, i32* %inuse78, align 8
  br label %if.end41.thread49

if.end41.thread49:                                ; preds = %if.end41.thread49.sink.split, %land.lhs.true12
  %spec.select1964 = phi i32 [ %spec.select19, %land.lhs.true12 ], [ %spec.select1961, %if.end41.thread49.sink.split ]
  %offset52 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  store i32 %spec.select1964, i32* %offset52, align 8
  %and4254 = and i32 %0, 65536
  %tobool43.not55 = icmp eq i32 %and4254, 0
  %spec.select2157.v = select i1 %tobool43.not55, i32 8, i32 56
  %spec.select2157 = add i32 %spec.select1964, %spec.select2157.v
  br label %if.then52

if.end41:                                         ; preds = %lor.lhs.false27
  %offset = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 6
  store i32 %size.01518, i32* %offset, align 8
  %and42 = and i32 %0, 65536
  %tobool43.not = icmp eq i32 %and42, 0
  %spec.select21.v = select i1 %tobool43.not, i32 8, i32 56
  %spec.select21 = add i32 %size.01518, %spec.select21.v
  br i1 %tobool11.not, label %if.end41.if.end65_crit_edge, label %if.then52

if.end41.if.end65_crit_edge:                      ; preds = %if.end41.thread, %if.else34, %if.end41
  %spec.select2139 = phi i32 [ %spec.select2137, %if.else34 ], [ %spec.select21, %if.end41 ], [ %spec.select2147, %if.end41.thread ]
  %align66.phi.trans.insert = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 14
  %.pre = load i32, i32* %align66.phi.trans.insert, align 4
  %.pre22 = sub i32 0, %.pre
  br label %if.end65

if.then52:                                        ; preds = %if.end41.thread49, %if.else34, %if.end41
  %spec.select2138 = phi i32 [ %spec.select2137, %if.else34 ], [ %spec.select21, %if.end41 ], [ %spec.select2157, %if.end41.thread49 ]
  %add54 = add i32 %spec.select2138, 8
  %red_left_pad = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 15
  %align = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 14
  %7 = load i32, i32* %align, align 4
  %add58 = add i32 %7, 7
  %neg = sub i32 0, %7
  %and61 = and i32 %add58, %neg
  store i32 %and61, i32* %red_left_pad, align 8
  %add64 = add i32 %add54, %and61
  br label %if.end65

if.end65:                                         ; preds = %if.end41.if.end65_crit_edge, %if.then52
  %neg71.pre-phi = phi i32 [ %.pre22, %if.end41.if.end65_crit_edge ], [ %neg, %if.then52 ]
  %8 = phi i32 [ %.pre, %if.end41.if.end65_crit_edge ], [ %7, %if.then52 ]
  %size.3 = phi i32 [ %spec.select2139, %if.end41.if.end65_crit_edge ], [ %add64, %if.then52 ]
  %sub67 = add i32 %size.3, -1
  %add68 = add i32 %sub67, %8
  %and72 = and i32 %add68, %neg71.pre-phi
  %size73 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  store i32 %and72, i32* %size73, align 8
  %call = call i64 @reciprocal_value(i32 noundef %and72) #25
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 5
  %tmp.sroa.0.0..sroa_cast = bitcast %struct.reciprocal_value* %tmp.sroa.0.0..sroa_idx to i64*
  store i64 %call, i64* %tmp.sroa.0.0..sroa_cast, align 8
  %call78 = call fastcc i32 @calculate_order(i32 noundef %and72) #23
  %cmp80 = icmp slt i32 %call78, 0
  br i1 %cmp80, label %cleanup, label %if.end83

if.end83:                                         ; preds = %if.end65
  %allocflags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 10
  %tobool84.not = icmp eq i32 %call78, 0
  %spec.select = select i1 %tobool84.not, i32 0, i32 262144
  store i32 %spec.select, i32* %allocflags, align 8
  %9 = load i32, i32* %flags1, align 8
  %10 = and i32 %9, 180224
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %if.end14.i, label %11

11:                                               ; preds = %if.end83
  %and97 = lshr i32 %9, 13
  %12 = and i32 %and97, 4
  %and90 = lshr i32 %9, 14
  %13 = and i32 %and90, 1
  %14 = or i32 %13, %spec.select
  %15 = or i32 %12, %14
  %and104 = lshr i32 %9, 13
  %16 = and i32 %and104, 16
  %17 = or i32 %16, %15
  store i32 %17, i32* %allocflags, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end83, %11
  %call111 = call fastcc i32 @oo_make(i32 noundef %call78, i32 noundef %and72) #23
  %tmp110.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 7, i32 0
  store i32 %call111, i32* %tmp110.sroa.0.0..sroa_idx, align 4
  %conv113 = zext i32 %and72 to i64
  %dec.i = add nsw i64 %conv113, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %18 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #26, !range !31
  %19 = trunc i64 %18 to i32
  %conv.i.i = sub nuw nsw i32 64, %19
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %call115 = call fastcc i32 @oo_make(i32 noundef %retval.0.i.i, i32 noundef %and72) #23
  %tmp112.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 9, i32 0
  store i32 %call115, i32* %tmp112.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %call111 to i64
  %call119 = call fastcc i32 @oo_objects(i64 %coerce.val.ii) #23
  %coerce.dive120 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 8, i32 0
  %20 = load i32, i32* %coerce.dive120, align 8
  %coerce.val.ii121 = zext i32 %20 to i64
  %call122 = call fastcc i32 @oo_objects(i64 %coerce.val.ii121) #23
  %cmp123 = icmp ugt i32 %call119, %call122
  br i1 %cmp123, label %if.then125, label %if.end128

if.then125:                                       ; preds = %if.end14.i
  store i32 %call111, i32* %coerce.dive120, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.end14.i
  %tobool133 = icmp ne i32 %call119, 0
  %lnot.ext = zext i1 %tobool133 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end128
  %retval.0 = phi i32 [ %lnot.ext, %if.end128 ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_min_partial(%struct.kmem_cache* nocapture noundef writeonly %s, i64 noundef %min) unnamed_addr #19 {
entry:
  %0 = icmp ult i64 %min, 10
  %spec.store.select = select i1 %0, i64 %min, i64 10
  %1 = icmp ugt i64 %spec.store.select, 5
  %min.addr.0 = select i1 %1, i64 %spec.store.select, i64 5
  %min_partial = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 2
  store i64 %min.addr.0, i64* %min_partial, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u32(i32 noundef %n) unnamed_addr #20 {
entry:
  %tobool.not.i = icmp eq i32 %n, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %n, i1 false) #26, !range !71
  %narrow.i.op = sub nsw i32 31, %0
  %sub = select i1 %tobool.not.i, i32 -1, i32 %narrow.i.op
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @init_kmem_cache_nodes(%struct.kmem_cache* nocapture noundef %s) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__nodes_empty() #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body, label %cleanup9

for.body:                                         ; preds = %entry
  %0 = load i32, i32* @slab_state, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  call fastcc void @early_kmem_cache_node_alloc() #23
  br label %cleanup

if.end:                                           ; preds = %for.body
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache_node, align 8
  %call.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #25
  %tobool4.not = icmp eq i8* %call.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call fastcc void @free_kmem_cache_nodes(%struct.kmem_cache* noundef %s) #23
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = bitcast i8* %call.i to %struct.kmem_cache_node*
  call fastcc void @init_kmem_cache_node(%struct.kmem_cache_node* noundef nonnull %2) #23
  %arrayidx = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 21, i64 0
  %3 = bitcast %struct.kmem_cache_node** %arrayidx to i8**
  store i8* %call.i, i8** %3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2
  %switch.selectcmp.case1 = phi i32 [ 1, %if.end6 ], [ 0, %if.then5 ], [ 0, %if.then2 ]
  %switch.selectcmp.case2 = phi i32 [ 0, %if.end6 ], [ 0, %if.then5 ], [ 1, %if.then2 ]
  %switch.selectcmp = or i32 %switch.selectcmp.case2, %switch.selectcmp.case1
  br label %cleanup9

cleanup9:                                         ; preds = %entry, %cleanup
  %retval.2 = phi i32 [ %switch.selectcmp, %cleanup ], [ 1, %entry ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_kmem_cache_cpus(%struct.kmem_cache* nocapture noundef %s) unnamed_addr #1 {
entry:
  %call = call i8* @__alloc_percpu(i64 noundef 24, i64 noundef 16) #25
  %0 = bitcast %struct.kmem_cache* %s to i8**
  store i8* %call, i8** %0, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @init_kmem_cache_cpus(%struct.kmem_cache* noundef %s) #23
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @reciprocal_value(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @calculate_order(i32 noundef %size) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @slub_min_objects, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @cpumask_weight() #23
  %cmp = icmp ult i32 %call, 2
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %spec.select = select i1 %cmp, i32 %1, i32 %call
  %tobool.not.i = icmp eq i32 %spec.select, 0
  %2 = call i32 @llvm.ctlz.i32(i32 %spec.select, i1 false) #26, !range !71
  %.neg = mul nsw i32 %2, -4
  %narrow.i.op.op = add nsw i32 %.neg, 132
  %mul = select i1 %tobool.not.i, i32 4, i32 %narrow.i.op.op
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %min_objects.0 = phi i32 [ %0, %entry ], [ %mul, %if.then ]
  %3 = load i32, i32* @slub_max_order, align 4
  %call4 = call fastcc i32 @order_objects(i32 noundef %3, i32 noundef %size) #23
  %cmp5 = icmp ult i32 %min_objects.0, %call4
  %cond = select i1 %cmp5, i32 %min_objects.0, i32 %call4
  %cmp655 = icmp ugt i32 %cond, 1
  br i1 %cmp655, label %while.cond7.preheader, label %while.end14

while.cond7.preheader:                            ; preds = %if.end3, %while.cond7.2
  %min_objects.156 = phi i32 [ %dec, %while.cond7.2 ], [ %cond, %if.end3 ]
  %call10 = call fastcc i32 @slab_order(i32 noundef %size, i32 noundef %min_objects.156, i32 noundef %3, i32 noundef 16) #23
  %cmp11.not = icmp ugt i32 %call10, %3
  br i1 %cmp11.not, label %while.cond7, label %cleanup23

while.cond7:                                      ; preds = %while.cond7.preheader
  %call10.1 = call fastcc i32 @slab_order(i32 noundef %size, i32 noundef %min_objects.156, i32 noundef %3, i32 noundef 8) #23
  %cmp11.not.1 = icmp ugt i32 %call10.1, %3
  br i1 %cmp11.not.1, label %while.cond7.1, label %cleanup23

while.cond7.1:                                    ; preds = %while.cond7
  %call10.2 = call fastcc i32 @slab_order(i32 noundef %size, i32 noundef %min_objects.156, i32 noundef %3, i32 noundef 4) #23
  %cmp11.not.2 = icmp ugt i32 %call10.2, %3
  br i1 %cmp11.not.2, label %while.cond7.2, label %cleanup23

while.cond7.2:                                    ; preds = %while.cond7.1
  %dec = add i32 %min_objects.156, -1
  %cmp6 = icmp ugt i32 %dec, 1
  br i1 %cmp6, label %while.cond7.preheader, label %while.end14

while.end14:                                      ; preds = %while.cond7.2, %if.end3
  %call15 = call fastcc i32 @slab_order(i32 noundef %size, i32 noundef 1, i32 noundef %3, i32 noundef 1) #23
  %cmp16.not = icmp ugt i32 %call15, %3
  br i1 %cmp16.not, label %if.end18, label %cleanup23

if.end18:                                         ; preds = %while.end14
  %call19 = call fastcc i32 @slab_order(i32 noundef %size, i32 noundef 1, i32 noundef 11, i32 noundef 1) #23
  %cmp20 = icmp ult i32 %call19, 11
  %call19. = select i1 %cmp20, i32 %call19, i32 -38
  br label %cleanup23

cleanup23:                                        ; preds = %while.cond7.preheader, %while.cond7, %while.cond7.1, %if.end18, %while.end14
  %retval.2 = phi i32 [ %call15, %while.end14 ], [ %call19., %if.end18 ], [ %call10.2, %while.cond7.1 ], [ %call10.1, %while.cond7 ], [ %call10, %while.cond7.preheader ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @oo_make(i32 noundef %order, i32 noundef %size) unnamed_addr #9 {
entry:
  %shl = shl i32 %order, 16
  %call = call fastcc i32 @order_objects(i32 noundef %order, i32 noundef %size) #23
  %add = add i32 %call, %shl
  ret i32 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #1 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_present_mask, i64 0, i32 0, i64 0), i32 noundef 256) #25
  ret i32 %call4.i
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @slab_order(i32 noundef %size, i32 noundef %min_objects, i32 noundef %max_order, i32 noundef %fract_leftover) unnamed_addr #21 {
entry:
  %0 = load i32, i32* @slub_min_order, align 4
  %call = call fastcc i32 @order_objects(i32 noundef %0, i32 noundef %size) #23
  %cmp = icmp ugt i32 %call, 32767
  br i1 %cmp, label %if.end14.i, label %if.end14.i52

if.end14.i:                                       ; preds = %entry
  %mul = mul i32 %size, 32767
  %conv = zext i32 %mul to i64
  %dec.i = add nsw i64 %conv, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %1 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #26, !range !31
  %2 = trunc i64 %1 to i32
  %conv.i.i.op = sub nsw i32 63, %2
  %sub = select i1 %cmp.i.i, i32 -1, i32 %conv.i.i.op
  br label %cleanup15

if.end14.i52:                                     ; preds = %entry
  %mul2 = mul i32 %min_objects, %size
  %conv3 = zext i32 %mul2 to i64
  %dec.i47 = add nsw i64 %conv3, -1
  %shr.i48 = lshr i64 %dec.i47, 12
  %cmp.i.i49 = icmp ult i64 %dec.i47, 4096
  %3 = call i64 @llvm.ctlz.i64(i64 %shr.i48, i1 false) #26, !range !31
  %4 = trunc i64 %3 to i32
  %conv.i.i50 = sub nuw nsw i32 64, %4
  %retval.0.i.i51 = select i1 %cmp.i.i49, i32 0, i32 %conv.i.i50
  %cmp5 = icmp ugt i32 %0, %retval.0.i.i51
  %cond = select i1 %cmp5, i32 %0, i32 %retval.0.i.i51
  %cmp7.not55 = icmp ugt i32 %cond, %max_order
  br i1 %cmp7.not55, label %cleanup15, label %for.body

for.body:                                         ; preds = %if.end14.i52, %for.inc
  %order.056 = phi i32 [ %inc, %for.inc ], [ %cond, %if.end14.i52 ]
  %shl = shl i32 4096, %order.056
  %rem9 = urem i32 %shl, %size
  %div = udiv i32 %shl, %fract_leftover
  %cmp10.not = icmp ugt i32 %rem9, %div
  br i1 %cmp10.not, label %for.inc, label %cleanup15

for.inc:                                          ; preds = %for.body
  %inc = add i32 %order.056, 1
  %cmp7.not = icmp ugt i32 %inc, %max_order
  br i1 %cmp7.not, label %cleanup15, label %for.body

cleanup15:                                        ; preds = %for.inc, %for.body, %if.end14.i52, %if.end14.i
  %retval.0 = phi i32 [ %sub, %if.end14.i ], [ %cond, %if.end14.i52 ], [ %inc, %for.inc ], [ %order.056, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__nodes_empty() unnamed_addr #3 {
entry:
  %call = call fastcc i1 @bitmap_empty() #23
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @early_kmem_cache_node_alloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache_node, align 8
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %0, i64 0, i32 3
  %1 = load i32, i32* %size, align 8
  %cmp = icmp ult i32 %1, 64
  br i1 %cmp, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 3906; .short 0; .popsection; 14471: brk 0x800", ""() #26, !srcloc !72
  unreachable

do.end9:                                          ; preds = %entry
  %call = call fastcc %struct.page* @new_slab(%struct.kmem_cache* noundef %0, i32 noundef 2048, i32 noundef 0) #23
  %tobool11.not = icmp eq %struct.page* %call, null
  br i1 %tobool11.not, label %do.body22, label %do.end30, !prof !9

do.body22:                                        ; preds = %do.end9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 3910; .short 0; .popsection; 14471: brk 0x800", ""() #26, !srcloc !73
  unreachable

do.end30:                                         ; preds = %do.end9
  %freelist = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 2
  %2 = bitcast i64* %freelist to i8**
  %3 = load i8*, i8** %2, align 8
  %tobool46.not = icmp eq i8* %3, null
  br i1 %tobool46.not, label %do.body57, label %do.end65, !prof !9

do.body57:                                        ; preds = %do.end30
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 3917; .short 0; .popsection; 14471: brk 0x800", ""() #26, !srcloc !74
  unreachable

do.end65:                                         ; preds = %do.end30
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache_node, align 8
  call fastcc void @init_object(%struct.kmem_cache* noundef %4, i8* noundef nonnull %3, i8 noundef -52) #23
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache_node, align 8
  call fastcc void @init_tracking(%struct.kmem_cache* noundef %5, i8* noundef nonnull %3) #23
  %6 = bitcast i8* %3 to %struct.kmem_cache_node*
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache_node, align 8
  %call67 = call fastcc i8* @get_freepointer(%struct.kmem_cache* noundef %7, i8* noundef nonnull %3) #23
  store i8* %call67, i8** %2, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 3
  %9 = bitcast i64* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 2147418112
  %bf.set = or i32 %bf.clear, 1
  store i32 %bf.set, i32* %9, align 8
  %arrayidx = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %7, i64 0, i32 21, i64 0
  %10 = bitcast %struct.kmem_cache_node** %arrayidx to i8**
  store i8* %3, i8** %10, align 8
  call fastcc void @init_kmem_cache_node(%struct.kmem_cache_node* noundef nonnull %6) #23
  %bf.load73 = load i32, i32* %9, align 8
  %bf.lshr = lshr i32 %bf.load73, 16
  %bf.clear74 = and i32 %bf.lshr, 32767
  call fastcc void @inc_slabs_node(%struct.kmem_cache* noundef %7, i32 noundef %bf.clear74) #23
  call fastcc void @__add_partial(%struct.kmem_cache_node* noundef nonnull %6, %struct.page* noundef nonnull %call, i32 noundef 15) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bitmap_empty() unnamed_addr #3 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.nodemask_t, %struct.nodemask_t* @slab_nodes, i64 0, i32 0, i64 0), align 8
  %and3 = and i64 %0, 1
  %tobool.not = icmp eq i64 %and3, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @init_kmem_cache_cpus(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #22 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call19 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #28
  %cmp20 = icmp ult i32 %call19, %0
  br i1 %cmp20, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %cpu_slab = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call21 = phi i32 [ %call19, %do.body.lr.ph ], [ %call, %do.body ]
  %1 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab, align 8
  %2 = ptrtoint %struct.kmem_cache_cpu* %1 to i64
  %idxprom = sext i32 %call21 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.kmem_cache_cpu*
  %conv = zext i32 %call21 to i64
  %tid = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %4, i64 0, i32 1
  store i64 %conv, i64* %tid, align 8
  %call = call i32 @cpumask_next(i32 noundef %call21, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #28
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @validate_slab(%struct.kmem_cache* nocapture noundef readonly %s, %struct.page* noundef %page, i64* noundef %obj_map) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %flags.i.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @bit_spin_lock(i64* noundef %flags.i.i) #25
  %call1 = call fastcc i32 @check_slab(%struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %unlock, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i32 @on_freelist(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef null) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %unlock, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @__fill_map(i64* noundef %obj_map, %struct.kmem_cache* noundef %s, %struct.page* noundef %page) #23
  %call4 = call i8* @fixup_red_left(%struct.kmem_cache* noundef %s, i8* noundef %1) #23
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %3 = bitcast i64* %2 to i32*
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %bf.load39 = load i32, i32* %3, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 16
  %bf.clear41 = and i32 %bf.lshr40, 32767
  %4 = load i32, i32* %size, align 8
  %mul42 = mul i32 %bf.clear41, %4
  %idx.ext43 = zext i32 %mul42 to i64
  %add.ptr44 = getelementptr i8, i8* %1, i64 %idx.ext43
  %cmp45 = icmp ult i8* %call4, %add.ptr44
  br i1 %cmp45, label %for.body, label %unlock

for.body:                                         ; preds = %if.end, %for.inc
  %p.046 = phi i8* [ %add.ptr14, %for.inc ], [ %call4, %if.end ]
  %call5 = call fastcc i32 @__obj_to_index(%struct.kmem_cache* noundef %s, i8* noundef %1, i8* noundef %p.046) #23
  %div.i = lshr i32 %call5, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %obj_map, i64 %idxprom.i
  %5 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %call5, 63
  %sh_prom.i = zext i32 %and.i to i64
  %6 = shl nuw i64 1, %sh_prom.i
  %7 = and i64 %6, %5
  %tobool7.not = icmp eq i64 %7, 0
  %conv = select i1 %tobool7.not, i8 -52, i8 -69
  %call8 = call fastcc i32 @check_object(%struct.kmem_cache* noundef %s, %struct.page* noundef %page, i8* noundef %p.046, i8 noundef %conv) #23
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %unlock, label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %size, align 8
  %idx.ext13 = zext i32 %8 to i64
  %add.ptr14 = getelementptr i8, i8* %p.046, i64 %idx.ext13
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  %mul = mul i32 %bf.clear, %8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext
  %cmp = icmp ult i8* %add.ptr14, %add.ptr
  br i1 %cmp, label %for.body, label %unlock

unlock:                                           ; preds = %for.inc, %for.body, %if.end, %entry, %lor.lhs.false
  call fastcc void @__bit_spin_unlock(i64* noundef %flags.i.i) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kset* @cache_kset() unnamed_addr #3 {
entry:
  %0 = load %struct.kset*, %struct.kset** @slab_kset, align 8
  ret %struct.kset* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slab_unmergeable(%struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @create_unique_id(%struct.kmem_cache* nocapture noundef readonly %s) unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #25
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 5865; .short 0; .popsection; 14471: brk 0x800", ""() #26, !srcloc !75
  unreachable

do.end9:                                          ; preds = %entry
  %incdec.ptr = getelementptr i8, i8* %call.i.i, i64 1
  store i8 58, i8* %call.i.i, align 8
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 16384
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %do.end9
  %incdec.ptr12 = getelementptr i8, i8* %call.i.i, i64 2
  store i8 100, i8* %incdec.ptr, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end9
  %p.0 = phi i8* [ %incdec.ptr12, %if.then11 ], [ %incdec.ptr, %do.end9 ]
  %and15 = and i32 %1, 32768
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  %incdec.ptr18 = getelementptr i8, i8* %p.0, i64 1
  store i8 68, i8* %p.0, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  %p.1 = phi i8* [ %incdec.ptr18, %if.then17 ], [ %p.0, %if.end13 ]
  %and21 = and i32 %1, 131072
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end19
  %incdec.ptr24 = getelementptr i8, i8* %p.1, i64 1
  store i8 97, i8* %p.1, align 1
  %.pre = load i32, i32* %flags, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19
  %2 = phi i32 [ %.pre, %if.then23 ], [ %1, %if.end19 ]
  %p.2 = phi i8* [ %incdec.ptr24, %if.then23 ], [ %p.1, %if.end19 ]
  %and27 = and i32 %2, 256
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end37, label %if.then29

if.then29:                                        ; preds = %if.end25
  %incdec.ptr30 = getelementptr i8, i8* %p.2, i64 1
  store i8 70, i8* %p.2, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.end25, %if.then29
  %p.3 = phi i8* [ %incdec.ptr30, %if.then29 ], [ %p.2, %if.end25 ]
  %cmp.not = icmp eq i8* %p.3, %incdec.ptr
  br i1 %cmp.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %incdec.ptr40 = getelementptr i8, i8* %p.3, i64 1
  store i8 45, i8* %p.3, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  %p.5 = phi i8* [ %incdec.ptr40, %if.then39 ], [ %incdec.ptr, %if.end37 ]
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %3 = load i32, i32* %size, align 8
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p.5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i32 noundef %3) #25
  %idx.ext = sext i32 %call42 to i64
  %add.ptr43 = getelementptr i8, i8* %p.5, i64 %idx.ext
  %add.ptr46 = getelementptr i8, i8* %call.i.i, i64 63
  %cmp47 = icmp ugt i8* %add.ptr43, %add.ptr46
  br i1 %cmp47, label %do.body57, label %do.end65, !prof !9

do.body57:                                        ; preds = %if.end41
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slub.c\22; .popsection; .long 14472b - 14470b; .short 5889; .short 0; .popsection; 14471: brk 0x800", ""() #26, !srcloc !76
  unreachable

do.end65:                                         ; preds = %if.end41
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(%struct.kobject* noundef, %struct.kobj_type* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kmem_cache_release(%struct.kobject* noundef %k) #1 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %k, i64 -2, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.kmem_cache*
  call void @slab_kmem_cache_release(%struct.kmem_cache* noundef %0) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @slab_kmem_cache_release(%struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @slab_attr_show(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %buf) #1 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.kmem_cache*, i8*)**
  %1 = load i64 (%struct.kmem_cache*, i8*)*, i64 (%struct.kmem_cache*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.kmem_cache*, i8*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr6 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -2, i32 1, i32 1
  %2 = bitcast %struct.list_head** %add.ptr6 to %struct.kmem_cache*
  %call = call i64 %1(%struct.kmem_cache* noundef %2, i8* noundef %buf) #25
  %sext = shl i64 %call, 32
  %conv8 = ashr exact i64 %sext, 32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv8, %if.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @slab_attr_store(%struct.kobject* noundef %kobj, %struct.attribute* nocapture noundef readonly %attr, i8* noundef %buf, i64 noundef %len) #1 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.kmem_cache*, i8*, i64)**
  %1 = load i64 (%struct.kmem_cache*, i8*, i64)*, i64 (%struct.kmem_cache*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.kmem_cache*, i8*, i64)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr6 = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -2, i32 1, i32 1
  %2 = bitcast %struct.list_head** %add.ptr6 to %struct.kmem_cache*
  %call = call i64 %1(%struct.kmem_cache* noundef %2, i8* noundef %buf, i64 noundef %len) #25
  %sext = shl i64 %call, 32
  %conv8 = ashr exact i64 %sext, 32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv8, %if.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @slab_size_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %0 = load i32, i32* %size, align 8
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef %0) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @object_size_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %0 = load i32, i32* %object_size, align 4
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef %0) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @objs_per_slab_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %coerce.dive = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 7, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @oo_objects(i64 %coerce.val.ii) #23, !range !35
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call) #25
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @order_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %coerce.dive = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 7, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @oo_order(i64 %coerce.val.ii) #23, !range !35
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call) #25
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @min_partial_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %min_partial = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 2
  %0 = load i64, i64* %min_partial, align 8
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i64 noundef %0) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @min_partial_store(%struct.kmem_cache* nocapture noundef writeonly %s, i8* noundef %buf, i64 noundef %length) #1 {
entry:
  %min = alloca i64, align 8
  %0 = bitcast i64* %min to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  store i64 0, i64* %min, align 8, !annotation !8
  %call = call fastcc i32 @kstrtoul(i8* noundef %buf, i64* noundef nonnull %min) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %min, align 8
  call fastcc void @set_min_partial(%struct.kmem_cache* noundef %s, i64 noundef %1) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %length, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s, i64* noundef %res) unnamed_addr #1 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 10, i64* noundef %res) #25
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @cpu_partial_show(%struct.kmem_cache* nocapture noundef readnone %s, i8* noundef %buf) #1 {
entry:
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef 0) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @cpu_partial_store(%struct.kmem_cache* noundef %s, i8* noundef %buf, i64 noundef %length) #1 {
entry:
  %objects = alloca i32, align 4
  %0 = bitcast i32* %objects to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #26
  store i32 0, i32* %objects, align 4, !annotation !8
  %call = call i32 @kstrtouint(i8* noundef %buf, i32 noundef 10, i32* noundef nonnull %objects) #25
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %objects, align 4
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  call fastcc void @flush_all(%struct.kmem_cache* noundef %s) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %length, %if.end4 ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #26
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @objects_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i64 @show_slab_objects(%struct.kmem_cache* noundef %s, i8* noundef %buf, i64 noundef 9) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @show_slab_objects(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf, i64 noundef %flags) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kcalloc() #23
  %0 = bitcast i8* %call to i64*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup167, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %flags, 4
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end86, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %call3248 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #28
  %cmp249 = icmp ult i32 %call3248, %1
  br i1 %cmp249, label %for.body.lr.ph, label %if.end86

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cpu_slab = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 0
  %2 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %cpu_slab, align 8
  %3 = ptrtoint %struct.kmem_cache_cpu* %2 to i64
  %and15 = and i64 %flags, 16
  %tobool16.not = icmp eq i64 %and15, 0
  %and18 = and i64 %flags, 8
  %tobool19.not = icmp eq i64 %and18, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %call3251 = phi i32 [ %call3248, %for.body.lr.ph ], [ %call3, %cleanup ]
  %total.0250 = phi i64 [ 0, %for.body.lr.ph ], [ %total.2, %cleanup ]
  %idxprom = sext i32 %call3251 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to %struct.kmem_cache_cpu*
  %page10 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %5, i64 0, i32 2
  %6 = load volatile %struct.page*, %struct.page** %page10, align 8
  %tobool11.not = icmp eq %struct.page* %6, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %for.body
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 1, i32 0, i32 3
  %8 = bitcast i64* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  br label %if.end25

if.else:                                          ; preds = %if.end13
  br i1 %tobool19.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.else
  %9 = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 1, i32 0, i32 3
  %10 = bitcast i64* %9 to i32*
  %bf.load21 = load i32, i32* %10, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20, %if.then17
  %x.0 = phi i32 [ %bf.clear, %if.then17 ], [ %bf.clear22, %if.then20 ], [ 1, %if.else ]
  %11 = zext i32 %x.0 to i64
  %12 = load i64, i64* %0, align 8
  %add30 = add i64 %12, %11
  store i64 %add30, i64* %0, align 8
  %add26 = add i64 %total.0250, %11
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end25
  %total.2 = phi i64 [ %add26, %if.end25 ], [ %total.0250, %for.body ]
  %call3 = call i32 @cpumask_next(i32 noundef %call3251, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #28
  %cmp = icmp ult i32 %call3, %1
  br i1 %cmp, label %for.body, label %if.end86

if.end86:                                         ; preds = %cleanup, %for.cond.preheader, %if.end
  %total.3 = phi i64 [ 0, %if.end ], [ 0, %for.cond.preheader ], [ %total.2, %cleanup ]
  %and87 = and i64 %flags, 1
  %tobool88.not = icmp eq i64 %and87, 0
  br i1 %tobool88.not, label %if.else123, label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %if.end86
  %and103 = and i64 %flags, 8
  %tobool104.not = icmp eq i64 %and103, 0
  %call94 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool95.not = icmp eq %struct.kmem_cache_node* %call94, null
  br i1 %tobool95.not, label %if.end161, label %if.then96

if.then96:                                        ; preds = %for.cond90.preheader
  %and97 = and i64 %flags, 16
  %tobool98.not = icmp eq i64 %and97, 0
  br i1 %tobool98.not, label %if.else102, label %if.then99

if.then99:                                        ; preds = %if.then96
  %counter.i.i = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call94, i64 0, i32 4, i32 0
  %13 = load volatile i64, i64* %counter.i.i, align 8
  br label %if.end161.sink.split

if.else102:                                       ; preds = %if.then96
  br i1 %tobool104.not, label %if.else110, label %if.then105

if.then105:                                       ; preds = %if.else102
  %counter.i.i245 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call94, i64 0, i32 4, i32 0
  %14 = load volatile i64, i64* %counter.i.i245, align 8
  %call108 = call fastcc i64 @count_partial(%struct.kmem_cache_node* noundef nonnull %call94, i32 (%struct.page*)* noundef nonnull @count_free) #23
  %sub = sub i64 %14, %call108
  br label %if.end161.sink.split

if.else110:                                       ; preds = %if.else102
  %counter.i.i246 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call94, i64 0, i32 3, i32 0
  %15 = load volatile i64, i64* %counter.i.i246, align 8
  br label %if.end161.sink.split

if.else123:                                       ; preds = %if.end86
  %and124 = and i64 %flags, 2
  %tobool125.not = icmp eq i64 %and124, 0
  br i1 %tobool125.not, label %if.end161, label %for.cond128.preheader

for.cond128.preheader:                            ; preds = %if.else123
  %and141 = and i64 %flags, 8
  %tobool142.not = icmp eq i64 %and141, 0
  %call132 = call fastcc %struct.kmem_cache_node* @get_node(%struct.kmem_cache* noundef %s, i32 noundef 0) #23
  %tobool133.not = icmp eq %struct.kmem_cache_node* %call132, null
  br i1 %tobool133.not, label %if.end161, label %if.then134

if.then134:                                       ; preds = %for.cond128.preheader
  %and135 = and i64 %flags, 16
  %tobool136.not = icmp eq i64 %and135, 0
  br i1 %tobool136.not, label %if.else140, label %if.then137

if.then137:                                       ; preds = %if.then134
  %call138 = call fastcc i64 @count_partial(%struct.kmem_cache_node* noundef nonnull %call132, i32 (%struct.page*)* noundef nonnull @count_total) #23
  br label %if.end161.sink.split

if.else140:                                       ; preds = %if.then134
  br i1 %tobool142.not, label %if.else146, label %if.then143

if.then143:                                       ; preds = %if.else140
  %call144 = call fastcc i64 @count_partial(%struct.kmem_cache_node* noundef nonnull %call132, i32 (%struct.page*)* noundef nonnull @count_inuse) #23
  br label %if.end161.sink.split

if.else146:                                       ; preds = %if.else140
  %nr_partial = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %call132, i64 0, i32 1
  %16 = load i64, i64* %nr_partial, align 8
  br label %if.end161.sink.split

if.end161.sink.split:                             ; preds = %if.then137, %if.else146, %if.then143, %if.then99, %if.else110, %if.then105
  %x.3.in.sink = phi i64 [ %13, %if.then99 ], [ %sub, %if.then105 ], [ %15, %if.else110 ], [ %call138, %if.then137 ], [ %call144, %if.then143 ], [ %16, %if.else146 ]
  %sext = shl i64 %x.3.in.sink, 32
  %conv150 = ashr exact i64 %sext, 32
  %add116 = add i64 %conv150, %total.3
  %17 = load i64, i64* %0, align 8
  %add120 = add i64 %conv150, %17
  store i64 %add120, i64* %0, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.end161.sink.split, %for.cond90.preheader, %for.cond128.preheader, %if.else123
  %total.8 = phi i64 [ %total.3, %if.else123 ], [ %total.3, %for.cond128.preheader ], [ %total.3, %for.cond90.preheader ], [ %add116, %if.end161.sink.split ]
  %call162 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* noundef %buf, i32 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0), i64 noundef %total.8) #25
  %call164 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* noundef %buf, i32 noundef %call162, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0)) #25
  %add165 = add i32 %call164, %call162
  call void @kfree(i8* noundef nonnull %call) #23
  %conv166 = sext i32 %add165 to i64
  br label %cleanup167

cleanup167:                                       ; preds = %entry, %if.end161
  %retval.0 = phi i64 [ %conv166, %if.end161 ], [ -12, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kcalloc() unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kmalloc_array() #23
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @count_total(%struct.page* nocapture noundef readonly %page) #3 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %1 = bitcast i64* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 32767
  ret i32 %bf.clear
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @count_inuse(%struct.page* nocapture noundef readonly %page) #3 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %1 = bitcast i64* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  ret i32 %bf.clear
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmalloc_array() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #25
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @objects_partial_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i64 @show_slab_objects(%struct.kmem_cache* noundef %s, i8* noundef %buf, i64 noundef 10) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @partial_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i64 @show_slab_objects(%struct.kmem_cache* noundef %s, i8* noundef %buf, i64 noundef 2) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @cpu_slabs_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i64 @show_slab_objects(%struct.kmem_cache* noundef %s, i8* noundef %buf, i64 noundef 4) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @ctor_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %ctor = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 12
  %0 = load void (i8*)*, void (i8*)** %ctor, align 8
  %tobool.not = icmp eq void (i8*)* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0), void (i8*)* noundef nonnull %0) #25
  %conv = sext i32 %call to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @aliases_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %refcount = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 11
  %0 = load i32, i32* %refcount, align 4
  %cmp = icmp slt i32 %0, 0
  %sub = add i32 %0, -1
  %spec.select = select i1 %cmp, i32 0, i32 %sub
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %spec.select) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @align_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %align = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 14
  %0 = load i32, i32* %align, align 4
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef %0) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @hwcache_align_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 13
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @reclaim_account_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 17
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @destroy_by_rcu_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 19
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @shrink_show(%struct.kmem_cache* nocapture noundef readnone %s, i8* nocapture noundef readnone %buf) #9 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @shrink_store(%struct.kmem_cache* noundef %s, i8* nocapture noundef readonly %buf, i64 noundef %length) #1 {
entry:
  %0 = load i8, i8* %buf, align 1
  %cmp = icmp eq i8 %0, 49
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = call i32 @kmem_cache_shrink(%struct.kmem_cache* noundef %s) #25
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %length, %if.then ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_shrink(%struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @slabs_cpu_partial_show(%struct.kmem_cache* nocapture noundef readnone %s, i8* noundef %buf) #1 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %for.cond ]
  %call = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_online_mask) #28
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* noundef %buf, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i64 0, i64 0), i32 noundef 0, i32 noundef 0) #25
  %1 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5, %for.end
  %cpu.1 = phi i32 [ -1, %for.end ], [ %call6, %for.cond5 ]
  %call6 = call i32 @cpumask_next(i32 noundef %cpu.1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #28
  %cmp7 = icmp ult i32 %call6, %1
  br i1 %cmp7, label %for.cond5, label %for.end17

for.end17:                                        ; preds = %for.cond5
  %call18 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* noundef %buf, i32 noundef %call3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0)) #25
  %add19 = add i32 %call18, %call3
  %conv = sext i32 %add19 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @total_objects_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i64 @show_slab_objects(%struct.kmem_cache* noundef %s, i8* noundef %buf, i64 noundef 17) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @slabs_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i64 @show_slab_objects(%struct.kmem_cache* noundef %s, i8* noundef %buf, i64 noundef 1) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @sanity_checks_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 8
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @trace_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 21
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @red_zone_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 10
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @poison_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 11
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @store_user_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 16
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @validate_show(%struct.kmem_cache* nocapture noundef readnone %s, i8* nocapture noundef readnone %buf) #9 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @validate_store(%struct.kmem_cache* noundef %s, i8* nocapture noundef readonly %buf, i64 noundef %length) #1 {
entry:
  %0 = load i8, i8* %buf, align 1
  %cmp = icmp eq i8 %0, 49
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = call i64 @validate_slab_cache(%struct.kmem_cache* noundef %s) #23
  %1 = and i64 %call, 2147483648
  %cmp3 = icmp eq i64 %1, 0
  %spec.select = select i1 %cmp3, i64 %length, i64 %call
  %phi.bo = shl i64 %spec.select, 32
  %phi.bo11 = ashr exact i64 %phi.bo, 32
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry
  %ret.0 = phi i64 [ -22, %entry ], [ %phi.bo11, %if.then ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @cache_dma_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = lshr i32 %0, 14
  %and.lobit = and i32 %and, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0), i32 noundef %and.lobit) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @usersize_show(%struct.kmem_cache* nocapture noundef readonly %s, i8* noundef %buf) #1 {
entry:
  %usersize = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 20
  %0 = load i32, i32* %usersize, align 4
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef %0) #25
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kset* @kset_create_and_add(i8* noundef, %struct.kset_uevent_ops* noundef, %struct.kobject* noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #21 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #22 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #23 = { nobuiltin "no-builtins" }
attributes #24 = { cold nobuiltin nounwind "no-builtins" }
attributes #25 = { nobuiltin nounwind "no-builtins" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly }
attributes #28 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #29 = { cold nobuiltin "no-builtins" }
attributes #30 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #31 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155710507}
!11 = !{!"branch_weights", i32 4000000, i32 4001}
!12 = !{i64 2155736943}
!13 = !{i64 2155739093}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2155747714}
!16 = !{i64 2155775800}
!17 = !{i64 2155777945}
!18 = !{i64 2155212788}
!19 = !{i64 2155784497}
!20 = !{i64 2155787200}
!21 = !{i64 2155795110}
!22 = !{i64 2155795276}
!23 = !{i64 2149265461, i64 2149265508, i64 2149265514, i64 2149265551, i64 2149265569, i64 2149266496, i64 2149266544, i64 2149266592, i64 2149266655, i64 2149266704, i64 2149265647, i64 2149265672, i64 2149265698, i64 2149265704, i64 2149265741, i64 2149265747, i64 2149265797, i64 2149265843, i64 2149265876}
!24 = !{i64 2149237439, i64 2149237486, i64 2149237492, i64 2149237529, i64 2149237547, i64 2149238888, i64 2149238936, i64 2149238984, i64 2149239047, i64 2149239096, i64 2149237625, i64 2149237650, i64 2149237676, i64 2149237682, i64 2149238554, i64 2149238594, i64 2149238612, i64 2149238644, i64 2149238672, i64 2149238726, i64 2149238746, i64 2149238843, i64 2149237705, i64 2149237719, i64 2149237725, i64 2149237775, i64 2149237821, i64 2149237854}
!25 = !{i64 2149227983, i64 2149228030, i64 2149228036, i64 2149228073, i64 2149228091, i64 2149229431, i64 2149229479, i64 2149229527, i64 2149229590, i64 2149229639, i64 2149228169, i64 2149228194, i64 2149228220, i64 2149228226, i64 2149229097, i64 2149229137, i64 2149229155, i64 2149229187, i64 2149229215, i64 2149229269, i64 2149229289, i64 2149229386, i64 2149228249, i64 2149228263, i64 2149228269, i64 2149228319, i64 2149228365, i64 2149228398}
!26 = !{i64 2155703197}
!27 = !{i64 2155703358}
!28 = !{i8 0, i8 2}
!29 = !{i64 2155812809}
!30 = !{i64 2155834028}
!31 = !{i64 0, i64 65}
!32 = !{i64 2155845012}
!33 = !{i64 2155858001}
!34 = !{i64 2155859016}
!35 = !{i32 0, i32 65536}
!36 = !{i32 (%struct.page*)* @count_free, i32 (%struct.page*)* @count_inuse, i32 (%struct.page*)* @count_total}
!37 = !{i64 2149161640}
!38 = !{i64 2149163386}
!39 = !{i64 2149165771}
!40 = !{i64 2149167517}
!41 = !{i64 2148217992, i64 2148218672, i64 2148218702, i64 2148218732, i64 2148218759, i64 2148218786, i64 2148218813, i64 2148218837, i64 2148218874, i64 2148218899, i64 2148218919}
!42 = !{i64 2023637}
!43 = !{i64 2155209013}
!44 = !{i64 2149677315}
!45 = !{i32 0, i32 256}
!46 = !{i64 1505890}
!47 = !{i64 2150756541}
!48 = !{i64 2150756652}
!49 = !{i64 2150756714}
!50 = !{i64 2026312}
!51 = !{i64 2148174638, i64 2148175308, i64 2148175338, i64 2148175370, i64 2148175402, i64 2148175436, i64 2148175461}
!52 = !{i64 2150757500}
!53 = !{i64 2148406929}
!54 = !{i64 2149703158}
!55 = !{i64 2149491827}
!56 = !{i64 2149249155, i64 2149249202, i64 2149249208, i64 2149249245, i64 2149249263, i64 2149250574, i64 2149250622, i64 2149250670, i64 2149250733, i64 2149250782, i64 2149249341, i64 2149249366, i64 2149249392, i64 2149249398, i64 2149250240, i64 2149250280, i64 2149250298, i64 2149250330, i64 2149250358, i64 2149250412, i64 2149250432, i64 2149250529, i64 2149249421, i64 2149249435, i64 2149249441, i64 2149249491, i64 2149249537, i64 2149249570}
!57 = !{i64 2149243142, i64 2149243189, i64 2149243195, i64 2149243232, i64 2149243250, i64 2149244561, i64 2149244609, i64 2149244657, i64 2149244720, i64 2149244769, i64 2149243328, i64 2149243353, i64 2149243379, i64 2149243385, i64 2149244227, i64 2149244267, i64 2149244285, i64 2149244317, i64 2149244345, i64 2149244399, i64 2149244419, i64 2149244516, i64 2149243408, i64 2149243422, i64 2149243428, i64 2149243478, i64 2149243524, i64 2149243557}
!58 = !{i64 2149245321, i64 2149245368, i64 2149245374, i64 2149245411, i64 2149245429, i64 2149246372, i64 2149246420, i64 2149246468, i64 2149246531, i64 2149246580, i64 2149245507, i64 2149245532, i64 2149245558, i64 2149245564, i64 2149245601, i64 2149245607, i64 2149245657, i64 2149245703, i64 2149245736}
!59 = !{i64 2148202593, i64 2148202626, i64 2148202679, i64 2148202738, i64 2148202772, i64 2148202827, i64 2148202856, i64 2148202876}
!60 = !{i64 2148219207, i64 2148219938, i64 2148219968, i64 2148219998, i64 2148220025, i64 2148220052, i64 2148220079, i64 2148220103, i64 2148220141, i64 2148220166, i64 2148220193}
!61 = !{i64 2148157089, i64 2148157603, i64 2148157633, i64 2148157659, i64 2148157691, i64 2148157720}
!62 = !{i32 5, i32 7}
!63 = !{i64 2155630362}
!64 = !{i64 2155640054}
!65 = !{i64 2148171750, i64 2148172261, i64 2148172291, i64 2148172317, i64 2148172349, i64 2148172378}
!66 = !{i64 2148143356, i64 2148143870, i64 2148143900, i64 2148143926, i64 2148143958, i64 2148143987}
!67 = !{i64 2149681608}
!68 = !{i64 2149692316}
!69 = !{i64 2149699597}
!70 = !{i64 2149706461}
!71 = !{i32 0, i32 33}
!72 = !{i64 2155802472}
!73 = !{i64 2155803847}
!74 = !{i64 2155806357}
!75 = !{i64 2155969675}
!76 = !{i64 2155971154}
