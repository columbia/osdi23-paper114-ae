; ModuleID = 'fs/splice.c'
source_filename = "fs/splice.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.page = type { i64, %union.anon.2, %union.anon.69, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
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
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
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
%union.anon.69 = type { %struct.atomic_t }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { {}*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.splice_pipe_desc = type { %struct.page**, %struct.partial_page*, i32, i32, %struct.pipe_buf_operations*, void (%struct.splice_pipe_desc*, i32)* }
%struct.partial_page = type { i32, i32, i64 }
%struct.splice_desc = type { i64, i32, i32, %union.anon.80, i64, i64*, i64, i8 }
%union.anon.80 = type { i8* }
%struct.pt_regs = type { %union.anon.81, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.81 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@page_cache_pipe_buf_ops = dso_local local_unnamed_addr constant { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* } { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @page_cache_pipe_buf_confirm, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @page_cache_pipe_buf_release, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @page_cache_pipe_buf_try_steal, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @generic_pipe_buf_get }, align 8
@default_pipe_buf_ops = dso_local local_unnamed_addr constant { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* } { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* null, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @generic_pipe_buf_release, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @generic_pipe_buf_try_steal, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @generic_pipe_buf_get }, align 8
@nosteal_pipe_buf_ops = dso_local local_unnamed_addr constant { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* } { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* null, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @generic_pipe_buf_release, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* null, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @generic_pipe_buf_get }, align 8
@user_page_pipe_buf_ops = internal constant { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* } { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* null, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @page_cache_pipe_buf_release, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @user_page_pipe_buf_try_steal, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @generic_pipe_buf_get }, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @page_cache_pipe_buf_confirm(%struct.pipe_inode_info* nocapture noundef readnone %pipe, %struct.pipe_buffer* nocapture noundef readonly %buf) #0 {
entry:
  %page1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page1, align 8
  %call = call fastcc i32 @PageUptodate(%struct.page* noundef %0) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  call fastcc void @lock_page(%struct.page* noundef %0) #13
  %mapping = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %tobool2.not = icmp eq %struct.address_space* %1, null
  br i1 %tobool2.not, label %error, label %if.end

if.end:                                           ; preds = %if.then
  %call4 = call fastcc i32 @PageUptodate(%struct.page* noundef %0) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %error, label %cleanup.sink.split

error:                                            ; preds = %if.end, %if.then
  %err.0 = phi i32 [ -61, %if.then ], [ -5, %if.end ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %error
  %retval.0.ph = phi i32 [ %err.0, %error ], [ 0, %if.end ]
  call void @unlock_page(%struct.page* noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @page_cache_pipe_buf_release(%struct.pipe_inode_info* nocapture noundef readnone %pipe, %struct.pipe_buffer* nocapture noundef %buf) #0 {
entry:
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %0) #13
  %flags = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 4
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, -2
  store i32 %and, i32* %flags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @page_cache_pipe_buf_try_steal(%struct.pipe_inode_info* nocapture noundef readnone %pipe, %struct.pipe_buffer* nocapture noundef %buf) #0 {
entry:
  %page1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page1, align 8
  call fastcc void @lock_page(%struct.page* noundef %0) #13
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %0) #14
  %tobool.not = icmp eq %struct.address_space* %call, null
  br i1 %tobool.not, label %out_unlock, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @PageUptodate(%struct.page* noundef %0) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then12, label %if.end, !prof !8

if.then12:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/splice.c\22; .popsection; .long 14472b - 14470b; .short 56; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then
  call void @wait_on_page_writeback(%struct.page* noundef %0) #14
  %call20 = call fastcc i32 @page_has_private(%struct.page* noundef %0) #13
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call22 = call i32 @try_to_release_page(%struct.page* noundef %0, i32 noundef 3264) #14
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %out_unlock, label %if.end25

if.end25:                                         ; preds = %land.lhs.true, %if.end
  %call26 = call i32 @remove_mapping(%struct.address_space* noundef nonnull %call, %struct.page* noundef %0) #14
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %out_unlock, label %if.then28

if.then28:                                        ; preds = %if.end25
  %flags = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 4
  %1 = load i32, i32* %flags, align 8
  %or = or i32 %1, 1
  store i32 %or, i32* %flags, align 8
  br label %cleanup

out_unlock:                                       ; preds = %entry, %if.end25, %land.lhs.true
  call void @unlock_page(%struct.page* noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then28
  %retval.0 = phi i1 [ true, %if.then28 ], [ false, %out_unlock ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @generic_pipe_buf_get(%struct.pipe_inode_info* noundef, %struct.pipe_buffer* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @splice_to_pipe(%struct.pipe_inode_info* nocapture noundef %pipe, %struct.splice_pipe_desc* noundef %spd) local_unnamed_addr #0 {
entry:
  %nr_pages = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 2
  %0 = load i32, i32* %nr_pages, align 8
  %tail1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %1 = load i32, i32* %tail1, align 4
  %head2 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %sub = add i32 %2, -1
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup43, label %if.end

if.end:                                           ; preds = %entry
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 8
  %3 = load i32, i32* %readers, align 4
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.then7, label %while.cond.preheader, !prof !8

while.cond.preheader:                             ; preds = %if.end
  %4 = load i32, i32* %head2, align 8
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %pages = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 0
  %partial = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 1
  %ops = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 4
  br label %while.cond

if.then7:                                         ; preds = %if.end
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %call8 = call i32 @send_sig(i32 noundef 13, %struct.task_struct* noundef %6, i32 noundef 0) #14
  br label %out

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %head.0 = phi i32 [ %inc, %while.body ], [ %4, %while.cond.preheader ]
  %ret.0 = phi i32 [ %add, %while.body ], [ 0, %while.cond.preheader ]
  %page_nr.0 = phi i32 [ %inc28, %while.body ], [ 0, %while.cond.preheader ]
  %7 = load i32, i32* %max_usage, align 8
  %call10 = call fastcc i1 @pipe_full(i32 noundef %head.0, i32 noundef %1, i32 noundef %7) #13
  br i1 %call10, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %8 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %head.0, %sub
  %idxprom = zext i32 %and to i64
  %9 = load %struct.page**, %struct.page*** %pages, align 8
  %idxprom13 = sext i32 %page_nr.0 to i64
  %arrayidx14 = getelementptr %struct.page*, %struct.page** %9, i64 %idxprom13
  %10 = load %struct.page*, %struct.page** %arrayidx14, align 8
  %page = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 0
  store %struct.page* %10, %struct.page** %page, align 8
  %11 = load %struct.partial_page*, %struct.partial_page** %partial, align 8
  %offset = getelementptr %struct.partial_page, %struct.partial_page* %11, i64 %idxprom13, i32 0
  %12 = load i32, i32* %offset, align 8
  %offset17 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 1
  store i32 %12, i32* %offset17, align 8
  %13 = load %struct.partial_page*, %struct.partial_page** %partial, align 8
  %len = getelementptr %struct.partial_page, %struct.partial_page* %13, i64 %idxprom13, i32 1
  %14 = load i32, i32* %len, align 4
  %len21 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 2
  store i32 %14, i32* %len21, align 4
  %15 = load %struct.partial_page*, %struct.partial_page** %partial, align 8
  %private = getelementptr %struct.partial_page, %struct.partial_page* %15, i64 %idxprom13, i32 2
  %16 = load i64, i64* %private, align 8
  %private25 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 5
  store i64 %16, i64* %private25, align 8
  %17 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops, align 8
  %ops26 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 3
  store %struct.pipe_buf_operations* %17, %struct.pipe_buf_operations** %ops26, align 8
  %flags = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %8, i64 %idxprom, i32 4
  store i32 0, i32* %flags, align 8
  %inc = add i32 %head.0, 1
  store i32 %inc, i32* %head2, align 8
  %inc28 = add i32 %page_nr.0, 1
  %18 = load i32, i32* %len21, align 4
  %add = add i32 %18, %ret.0
  %19 = load i32, i32* %nr_pages, align 8
  %dec = add i32 %19, -1
  store i32 %dec, i32* %nr_pages, align 8
  %tobool31.not = icmp eq i32 %dec, 0
  br i1 %tobool31.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.body, %while.cond
  %ret.1 = phi i32 [ %add, %while.body ], [ %ret.0, %while.cond ]
  %page_nr.1 = phi i32 [ %inc28, %while.body ], [ %page_nr.0, %while.cond ]
  %tobool34.not = icmp eq i32 %ret.1, 0
  %spec.store.select = select i1 %tobool34.not, i32 -11, i32 %ret.1
  %phi.cast = sext i32 %spec.store.select to i64
  br label %out

out:                                              ; preds = %while.end, %if.then7
  %ret.2 = phi i64 [ -32, %if.then7 ], [ %phi.cast, %while.end ]
  %page_nr.2 = phi i32 [ 0, %if.then7 ], [ %page_nr.1, %while.end ]
  %cmp88 = icmp ult i32 %page_nr.2, %0
  br i1 %cmp88, label %while.body39.lr.ph, label %cleanup43

while.body39.lr.ph:                               ; preds = %out
  %spd_release = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 5
  br label %while.body39

while.body39:                                     ; preds = %while.body39.lr.ph, %while.body39
  %page_nr.389 = phi i32 [ %page_nr.2, %while.body39.lr.ph ], [ %inc40, %while.body39 ]
  %20 = load void (%struct.splice_pipe_desc*, i32)*, void (%struct.splice_pipe_desc*, i32)** %spd_release, align 8
  %inc40 = add i32 %page_nr.389, 1
  call void %20(%struct.splice_pipe_desc* noundef %spd, i32 noundef %page_nr.389) #14
  %exitcond.not = icmp eq i32 %inc40, %0
  br i1 %exitcond.not, label %cleanup43, label %while.body39

cleanup43:                                        ; preds = %while.body39, %out, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %ret.2, %out ], [ %ret.2, %while.body39 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pipe_full(i32 noundef %head, i32 noundef %tail, i32 noundef %limit) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @pipe_occupancy(i32 noundef %head, i32 noundef %tail) #13
  %cmp = icmp uge i32 %call, %limit
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @add_to_pipe(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) local_unnamed_addr #0 {
entry:
  %head1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %0 = load i32, i32* %head1, align 8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %1 = load i32, i32* %ring_size, align 4
  %sub = add i32 %1, -1
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 8
  %2 = load i32, i32* %readers, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !8

if.then:                                          ; preds = %entry
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call6 = call i32 @send_sig(i32 noundef 13, %struct.task_struct* noundef %4, i32 noundef 0) #14
  br label %if.end12

if.else:                                          ; preds = %entry
  %tail2 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %5 = load i32, i32* %tail2, align 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %6 = load i32, i32* %max_usage, align 8
  %call7 = call fastcc i1 @pipe_full(i32 noundef %0, i32 noundef %5, i32 noundef %6) #13
  br i1 %call7, label %if.end12, label %if.else9

if.else9:                                         ; preds = %if.else
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %7 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %sub, %0
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %7, i64 %idxprom
  %8 = bitcast %struct.pipe_buffer* %arrayidx to i8*
  %9 = bitcast %struct.pipe_buffer* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(40) %8, i8* noundef align 8 dereferenceable(40) %9, i64 40, i1 false)
  %add = add i32 %0, 1
  store i32 %add, i32* %head1, align 8
  %len = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 2
  %10 = load i32, i32* %len, align 4
  %conv11 = zext i32 %10 to i64
  br label %cleanup

if.end12:                                         ; preds = %if.else, %if.then
  %ret.0 = phi i64 [ -32, %if.then ], [ -11, %if.else ]
  call fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else9
  %retval.0 = phi i64 [ %ret.0, %if.end12 ], [ %conv11, %if.else9 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 3
  %0 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops1, align 8
  store %struct.pipe_buf_operations* null, %struct.pipe_buf_operations** %ops1, align 8
  %release = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %0, i64 0, i32 1
  %1 = load void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %release, align 8
  call void %1(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @splice_grow_spd(%struct.pipe_inode_info* noundef %pipe, %struct.splice_pipe_desc* nocapture noundef %spd) local_unnamed_addr #0 {
entry:
  %max_usage1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %0 = load volatile i32, i32* %max_usage1, align 8
  %nr_pages_max = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 3
  store i32 %0, i32* %nr_pages_max, align 4
  %cmp = icmp ult i32 %0, 17
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i32 %0 to i64
  %call = call fastcc i8* @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #13
  %pages = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 0
  %1 = bitcast %struct.splice_pipe_desc* %spd to i8**
  store i8* %call, i8** %1, align 8
  %call3 = call fastcc i8* @kmalloc_array(i64 noundef %conv, i64 noundef 16, i32 noundef 3264) #13
  %partial = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 1
  %2 = bitcast %struct.partial_page** %partial to i8**
  store i8* %call3, i8** %2, align 8
  %3 = load %struct.page**, %struct.page*** %pages, align 8
  %tobool.not = icmp eq %struct.page** %3, null
  %tobool6.not = icmp eq i8* %call3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = bitcast %struct.page** %3 to i8*
  call void @kfree(i8* noundef %4) #14
  %5 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ -12, %if.end8 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @splice_shrink_spd(%struct.splice_pipe_desc* nocapture noundef readonly %spd) local_unnamed_addr #0 {
entry:
  %nr_pages_max = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 3
  %0 = load i32, i32* %nr_pages_max, align 4
  %cmp = icmp ult i32 %0, 17
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.splice_pipe_desc* %spd to i8**
  %2 = load i8*, i8** %1, align 8
  call void @kfree(i8* noundef %2) #14
  %partial = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %spd, i64 0, i32 1
  %3 = bitcast %struct.partial_page** %partial to i8**
  %4 = load i8*, i8** %3, align 8
  call void @kfree(i8* noundef %4) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_file_splice_read(%struct.file* noundef %in, i64* nocapture noundef %ppos, %struct.pipe_inode_info* noundef %pipe, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %to = alloca %struct.iov_iter, align 8
  %kiocb = alloca %struct.kiocb, align 8
  %0 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %to, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !11
  %1 = bitcast %struct.kiocb* %kiocb to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !11
  call void @iov_iter_pipe(%struct.iov_iter* noundef nonnull %to, i32 noundef 0, %struct.pipe_inode_info* noundef %pipe, i64 noundef %len) #14
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %to, i64 0, i32 5
  %head = bitcast %union.anon.50* %2 to i32*
  %3 = load i32, i32* %head, align 8
  call fastcc void @init_sync_kiocb(%struct.kiocb* noundef nonnull %kiocb, %struct.file* noundef %in) #13
  %4 = load i64, i64* %ppos, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 %4, i64* %ki_pos, align 8
  %call = call fastcc i64 @call_read_iter(%struct.file* noundef %in, %struct.kiocb* noundef nonnull %kiocb, %struct.iov_iter* noundef nonnull %to) #13
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %ki_pos, align 8
  store i64 %5, i64* %ppos, align 8
  call fastcc void @file_accessed(%struct.file* noundef %in) #13
  br label %if.end11

if.else:                                          ; preds = %entry
  %cmp3 = icmp slt i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.else
  store i32 %3, i32* %head, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %to, i64 0, i32 2
  store i64 0, i64* %iov_offset, align 8
  call void @iov_iter_advance(%struct.iov_iter* noundef nonnull %to, i64 noundef 0) #14
  %cmp7 = icmp eq i32 %conv, -14
  %spec.store.select = select i1 %cmp7, i64 -11, i64 %call
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5, %if.then
  %ret.0 = phi i64 [ %call, %if.then ], [ %spec.store.select, %if.then5 ], [ 0, %if.else ]
  %sext = shl i64 %ret.0, 32
  %conv12 = ashr exact i64 %sext, 32
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  ret i64 %conv12
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_pipe(%struct.iov_iter* noundef, i32 noundef, %struct.pipe_inode_info* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @init_sync_kiocb(%struct.kiocb* nocapture noundef writeonly %kiocb, %struct.file* noundef %filp) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @iocb_flags(%struct.file* noundef %filp) #13
  %call1 = call fastcc i32 @file_write_hint(%struct.file* noundef %filp) #13
  %call2 = call fastcc i16 @ki_hint_validate(i32 noundef %call1) #13
  %call3 = call fastcc i32 @get_current_ioprio() #13
  %conv = trunc i32 %call3 to i16
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 0
  store %struct.file* %filp, %struct.file** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx4 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 1
  store i64 0, i64* %.compoundliteral.sroa.2.0..sroa_idx4, align 8
  %.compoundliteral.sroa.3.0..sroa_idx5 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 2
  store void (%struct.kiocb*, i64, i64)* null, void (%struct.kiocb*, i64, i64)** %.compoundliteral.sroa.3.0..sroa_idx5, align 8
  %.compoundliteral.sroa.4.0..sroa_idx6 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 3
  store i8* null, i8** %.compoundliteral.sroa.4.0..sroa_idx6, align 8
  %.compoundliteral.sroa.5.0..sroa_idx7 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 4
  store i32 %call, i32* %.compoundliteral.sroa.5.0..sroa_idx7, align 8
  %.compoundliteral.sroa.6.0..sroa_idx8 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 5
  store i16 %call2, i16* %.compoundliteral.sroa.6.0..sroa_idx8, align 4
  %.compoundliteral.sroa.7.0..sroa_idx9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 6
  store i16 %conv, i16* %.compoundliteral.sroa.7.0..sroa_idx9, align 2
  %.compoundliteral.sroa.8.0..sroa_idx10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 7, i32 0
  store %struct.wait_page_queue* null, %struct.wait_page_queue** %.compoundliteral.sroa.8.0..sroa_idx10, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @call_read_iter(%struct.file* nocapture noundef readonly %file, %struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 4
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %call = call i64 %1(%struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_accessed(%struct.file* noundef %file) unnamed_addr #0 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  call void @touch_atime(%struct.path* noundef %f_path) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_pipe_buf_release(%struct.pipe_inode_info* noundef, %struct.pipe_buffer* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @generic_pipe_buf_try_steal(%struct.pipe_inode_info* noundef, %struct.pipe_buffer* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__splice_from_pipe(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* noundef %sd, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* nocapture noundef readonly %actor) local_unnamed_addr #0 {
entry:
  call fastcc void @splice_from_pipe_begin(%struct.splice_desc* noundef %sd) #13
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call fastcc void @_cond_resched() #13
  %call1 = call fastcc i32 @splice_from_pipe_next(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* noundef %sd) #13
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %call2 = call fastcc i32 @splice_from_pipe_feed(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* noundef %sd, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* noundef %actor) #13
  %cmp3 = icmp sgt i32 %call2, 0
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %do.cond
  %ret.017 = phi i32 [ %call2, %do.cond ], [ %call1, %do.body ]
  call fastcc void @splice_from_pipe_end(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* noundef %sd) #13
  %num_spliced = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 6
  %0 = load i64, i64* %num_spliced, align 8
  %tobool.not = icmp eq i64 %0, 0
  %conv = sext i32 %ret.017 to i64
  %cond = select i1 %tobool.not, i64 %conv, i64 %0
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @splice_from_pipe_begin(%struct.splice_desc* nocapture noundef writeonly %sd) unnamed_addr #7 {
entry:
  %num_spliced = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 6
  store i64 0, i64* %num_spliced, align 8
  %need_wakeup = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  store i8 0, i8* %need_wakeup, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @splice_from_pipe_next(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* nocapture noundef %sd) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %repeat.preheader, label %return

repeat.preheader:                                 ; preds = %entry
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 9
  %num_spliced = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 6
  %flags = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 2
  %need_wakeup = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  br label %repeat

repeat:                                           ; preds = %repeat.preheader, %while.end
  %2 = load i32, i32* %head, align 8
  %3 = load i32, i32* %tail, align 4
  %call233 = call fastcc i1 @pipe_empty(i32 noundef %2, i32 noundef %3) #13
  br i1 %call233, label %while.body, label %while.end

while.body:                                       ; preds = %repeat, %if.end20
  %4 = load i32, i32* %writers, align 8
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %return, label %if.end5

if.end5:                                          ; preds = %while.body
  %5 = load i64, i64* %num_spliced, align 8
  %tobool6.not = icmp eq i64 %5, 0
  br i1 %tobool6.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.end5
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 2
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %return

if.end11:                                         ; preds = %if.end8
  %call13 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #13
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end11
  %7 = load i8, i8* %need_wakeup, align 8, !range !12
  %tobool17.not = icmp eq i8 %7, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  call fastcc void @wakeup_pipe_writers(%struct.pipe_inode_info* noundef %pipe) #13
  store i8 0, i8* %need_wakeup, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  call void @pipe_wait_readable(%struct.pipe_inode_info* noundef %pipe) #14
  %8 = load i32, i32* %head, align 8
  %9 = load i32, i32* %tail, align 4
  %call2 = call fastcc i1 @pipe_empty(i32 noundef %8, i32 noundef %9) #13
  br i1 %call2, label %while.body, label %while.end

while.end:                                        ; preds = %if.end20, %repeat
  %call21 = call fastcc i1 @eat_empty_buffer(%struct.pipe_inode_info* noundef %pipe) #13
  br i1 %call21, label %repeat, label %return

return:                                           ; preds = %while.end, %if.end11, %if.end8, %if.end5, %while.body, %entry
  %retval.0 = phi i32 [ -512, %entry ], [ -512, %if.end11 ], [ -11, %if.end8 ], [ 0, %if.end5 ], [ 0, %while.body ], [ 1, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @splice_from_pipe_feed(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* noundef %sd, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* nocapture noundef readonly %actor) unnamed_addr #0 {
entry:
  %head1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %0 = load i32, i32* %head1, align 8
  %tail2 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %1 = load i32, i32* %tail2, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %2 = load i32, i32* %ring_size, align 4
  %sub = add i32 %2, -1
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %len3 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 1
  %total_len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 0
  %num_spliced = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 6
  %pos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 4
  %files = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 10
  %need_wakeup = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %tail.0 = phi i32 [ %1, %entry ], [ %tail.1, %cleanup ]
  %call = call fastcc i1 @pipe_empty(i32 noundef %0, i32 noundef %tail.0) #13
  br i1 %call, label %cleanup48, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %tail.0, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %3, i64 %idxprom
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %3, i64 %idxprom, i32 2
  %4 = load i32, i32* %len, align 4
  store i32 %4, i32* %len3, align 8
  %conv = zext i32 %4 to i64
  %5 = load i64, i64* %total_len, align 8
  %cmp = icmp ult i64 %5, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %conv7 = trunc i64 %5 to i32
  store i32 %conv7, i32* %len3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call9 = call fastcc i32 @pipe_buf_confirm(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %arrayidx) #13
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end19, label %if.then14, !prof !13

if.then14:                                        ; preds = %if.end
  %cmp15 = icmp eq i32 %call9, -61
  %spec.store.select = select i1 %cmp15, i32 0, i32 %call9
  br label %cleanup48

if.end19:                                         ; preds = %if.end
  %call20 = call i32 %actor(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %arrayidx, %struct.splice_desc* noundef %sd) #14
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %cleanup48, label %if.end24

if.end24:                                         ; preds = %if.end19
  %offset = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %3, i64 %idxprom, i32 1
  %6 = load i32, i32* %offset, align 8
  %add = add i32 %6, %call20
  store i32 %add, i32* %offset, align 8
  %7 = load i32, i32* %len, align 4
  %sub26 = sub i32 %7, %call20
  store i32 %sub26, i32* %len, align 4
  %conv2798 = zext i32 %call20 to i64
  %8 = load i64, i64* %num_spliced, align 8
  %add28 = add i64 %8, %conv2798
  store i64 %add28, i64* %num_spliced, align 8
  %9 = load i32, i32* %len3, align 8
  %sub30 = sub i32 %9, %call20
  store i32 %sub30, i32* %len3, align 8
  %10 = load i64, i64* %pos, align 8
  %add32 = add i64 %10, %conv2798
  store i64 %add32, i64* %pos, align 8
  %11 = load i64, i64* %total_len, align 8
  %sub35 = sub i64 %11, %conv2798
  store i64 %sub35, i64* %total_len, align 8
  %12 = load i32, i32* %len, align 4
  %tobool37.not = icmp eq i32 %12, 0
  br i1 %tobool37.not, label %if.then38, label %cleanup

if.then38:                                        ; preds = %if.end24
  call fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %arrayidx) #13
  %inc = add i32 %tail.0, 1
  store i32 %inc, i32* %tail2, align 4
  %13 = load i32, i32* %files, align 4
  %tobool40.not = icmp eq i32 %13, 0
  br i1 %tobool40.not, label %cleanupthread-pre-split, label %if.then41

if.then41:                                        ; preds = %if.then38
  store i8 1, i8* %need_wakeup, align 8
  br label %cleanupthread-pre-split

cleanupthread-pre-split:                          ; preds = %if.then38, %if.then41
  %.pr = load i64, i64* %total_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanupthread-pre-split, %if.end24
  %14 = phi i64 [ %.pr, %cleanupthread-pre-split ], [ %sub35, %if.end24 ]
  %tail.1 = phi i32 [ %inc, %cleanupthread-pre-split ], [ %tail.0, %if.end24 ]
  %tobool45.not = icmp eq i64 %14, 0
  br i1 %tobool45.not, label %cleanup48, label %while.cond

cleanup48:                                        ; preds = %if.end19, %while.cond, %cleanup, %if.then14
  %retval.2 = phi i32 [ %spec.store.select, %if.then14 ], [ %call20, %if.end19 ], [ 1, %while.cond ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @splice_from_pipe_end(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* nocapture noundef readonly %sd) unnamed_addr #0 {
entry:
  %need_wakeup = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  %0 = load i8, i8* %need_wakeup, align 8, !range !12
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @wakeup_pipe_writers(%struct.pipe_inode_info* noundef %pipe) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @splice_from_pipe(%struct.pipe_inode_info* noundef %pipe, %struct.file* noundef %out, i64* nocapture noundef readonly %ppos, i64 noundef %len, i32 noundef %flags, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* nocapture noundef readonly %actor) local_unnamed_addr #0 {
entry:
  %sd = alloca %struct.splice_desc, align 8
  %0 = bitcast %struct.splice_desc* %sd to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #15
  %1 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  %2 = bitcast i8* %1 to i64*, !annotation !11
  store i64 0, i64* %2, align 8, !annotation !11
  %total_len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 0
  store i64 %len, i64* %total_len, align 8
  %len1 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 1
  store i32 0, i32* %len1, align 8
  %flags2 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 2
  store i32 %flags, i32* %flags2, align 4
  %u = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 3
  %file = bitcast %union.anon.80* %u to %struct.file**
  store %struct.file* %out, %struct.file** %file, align 8
  %pos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 4
  %3 = load i64, i64* %ppos, align 8
  store i64 %3, i64* %pos, align 8
  %opos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 5
  store i64* null, i64** %opos, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 6
  store i64 0, i64* %num_spliced, align 8
  call void @pipe_lock(%struct.pipe_inode_info* noundef %pipe) #14
  %call = call i64 @__splice_from_pipe(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* noundef nonnull %sd, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* noundef %actor) #13
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %pipe) #14
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #15
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(%struct.pipe_inode_info* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(%struct.pipe_inode_info* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @iter_file_splice_write(%struct.pipe_inode_info* noundef %pipe, %struct.file* noundef %out, i64* nocapture noundef %ppos, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %sd = alloca %struct.splice_desc, align 8
  %from = alloca %struct.iov_iter, align 8
  %0 = bitcast %struct.splice_desc* %sd to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #15
  %1 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  %2 = bitcast i8* %1 to i64*, !annotation !11
  store i64 0, i64* %2, align 8, !annotation !11
  %total_len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 0
  store i64 %len, i64* %total_len, align 8
  %len1 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 1
  store i32 0, i32* %len1, align 8
  %flags2 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 2
  store i32 %flags, i32* %flags2, align 4
  %u = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 3
  %file = bitcast %union.anon.80* %u to %struct.file**
  store %struct.file* %out, %struct.file** %file, align 8
  %pos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 4
  %3 = load i64, i64* %ppos, align 8
  store i64 %3, i64* %pos, align 8
  %opos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 5
  store i64* null, i64** %opos, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 6
  store i64 0, i64* %num_spliced, align 8
  %need_wakeup = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %4 = load i32, i32* %max_usage, align 8
  %conv = sext i32 %4 to i64
  %call = call fastcc i8* @kcalloc(i64 noundef %conv) #13
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup132, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %5 = bitcast i8* %call to %struct.bio_vec*
  call void @pipe_lock(%struct.pipe_inode_info* noundef %pipe) #14
  call fastcc void @splice_from_pipe_begin(%struct.splice_desc* noundef nonnull %sd) #13
  %6 = load i64, i64* %total_len, align 8
  %tobool8.not256 = icmp eq i64 %6, 0
  br i1 %tobool8.not256, label %done, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %7 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %from, i64 0, i32 0
  %head32 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %tail33 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %files = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 10
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond86.cleanup118_crit_edge
  %nbufs.0258 = phi i32 [ %4, %while.body.lr.ph ], [ %nbufs.1, %while.cond86.cleanup118_crit_edge ]
  %array.0257 = phi %struct.bio_vec* [ %5, %while.body.lr.ph ], [ %array.1, %while.cond86.cleanup118_crit_edge ]
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !11
  %call9 = call fastcc i32 @splice_from_pipe_next(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* noundef nonnull %sd) #13
  %cmp = icmp slt i32 %call9, 1
  br i1 %cmp, label %cleanup118.thread.loopexit.split.loop.exit252, label %if.end13

if.end13:                                         ; preds = %while.body
  %8 = load i32, i32* %max_usage, align 8
  %cmp15 = icmp ult i32 %nbufs.0258, %8
  br i1 %cmp15, label %if.then24, label %if.end31, !prof !8

if.then24:                                        ; preds = %if.end13
  %9 = bitcast %struct.bio_vec* %array.0257 to i8*
  call void @kfree(i8* noundef %9) #14
  %10 = load i32, i32* %max_usage, align 8
  %conv26 = sext i32 %10 to i64
  %call27 = call fastcc i8* @kcalloc(i64 noundef %conv26) #13
  %11 = bitcast i8* %call27 to %struct.bio_vec*
  %tobool28.not = icmp eq i8* %call27, null
  br i1 %tobool28.not, label %cleanup118.thread, label %if.end31

if.end31:                                         ; preds = %if.then24, %if.end13
  %array.1 = phi %struct.bio_vec* [ %11, %if.then24 ], [ %array.0257, %if.end13 ]
  %nbufs.1 = phi i32 [ %10, %if.then24 ], [ %nbufs.0258, %if.end13 ]
  %12 = load i32, i32* %head32, align 8
  %13 = load i32, i32* %tail33, align 4
  %14 = load i32, i32* %ring_size, align 4
  %sub = add i32 %14, -1
  %15 = load i64, i64* %total_len, align 8
  %call35235 = call fastcc i1 @pipe_empty(i32 noundef %12, i32 noundef %13) #13
  %call35.not236 = xor i1 %call35235, true
  %tobool36237 = icmp ne i64 %15, 0
  %or.cond238 = select i1 %call35.not236, i1 %tobool36237, i1 false
  %cmp37239 = icmp sgt i32 %nbufs.1, 0
  %or.cond217240 = select i1 %or.cond238, i1 %cmp37239, i1 false
  br i1 %or.cond217240, label %for.body, label %for.end

for.body:                                         ; preds = %if.end31, %for.inc
  %n.0243 = phi i32 [ %n.1.ph, %for.inc ], [ 0, %if.end31 ]
  %left.0242 = phi i64 [ %left.1.ph, %for.inc ], [ %15, %if.end31 ]
  %tail.0241 = phi i32 [ %inc71, %for.inc ], [ %13, %if.end31 ]
  %16 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %tail.0241, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %16, i64 %idxprom
  %len39 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %16, i64 %idxprom, i32 2
  %17 = load i32, i32* %len39, align 4
  %conv40 = zext i32 %17 to i64
  %tobool41.not = icmp eq i32 %17, 0
  br i1 %tobool41.not, label %for.inc, label %if.end43

if.end43:                                         ; preds = %for.body
  %cmp44 = icmp ugt i64 %left.0242, %conv40
  %cond = select i1 %cmp44, i64 %conv40, i64 %left.0242
  %call46 = call fastcc i32 @pipe_buf_confirm(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %arrayidx) #13
  %tobool48.not = icmp eq i32 %call46, 0
  br i1 %tobool48.not, label %if.end61, label %cleanup, !prof !13

if.end61:                                         ; preds = %if.end43
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %arrayidx, i64 0, i32 0
  %18 = load %struct.page*, %struct.page** %page, align 8
  %idxprom62 = sext i32 %n.0243 to i64
  %bv_page = getelementptr %struct.bio_vec, %struct.bio_vec* %array.1, i64 %idxprom62, i32 0
  store %struct.page* %18, %struct.page** %bv_page, align 8
  %conv64 = trunc i64 %cond to i32
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %array.1, i64 %idxprom62, i32 1
  store i32 %conv64, i32* %bv_len, align 8
  %offset = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %16, i64 %idxprom, i32 1
  %19 = load i32, i32* %offset, align 8
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %array.1, i64 %idxprom62, i32 2
  store i32 %19, i32* %bv_offset, align 4
  %sub69 = sub i64 %left.0242, %cond
  %inc = add nsw i32 %n.0243, 1
  br label %for.inc

cleanup:                                          ; preds = %if.end43
  %cmp57 = icmp eq i32 %call46, -61
  %narrow = select i1 %cmp57, i32 0, i32 %call46
  %spec.select = sext i32 %narrow to i64
  br label %cleanup118.thread

for.inc:                                          ; preds = %if.end61, %for.body
  %left.1.ph = phi i64 [ %left.0242, %for.body ], [ %sub69, %if.end61 ]
  %n.1.ph = phi i32 [ %n.0243, %for.body ], [ %inc, %if.end61 ]
  %inc71 = add i32 %tail.0241, 1
  %call35 = call fastcc i1 @pipe_empty(i32 noundef %12, i32 noundef %inc71) #13
  %call35.not = xor i1 %call35, true
  %tobool36 = icmp ne i64 %left.1.ph, 0
  %or.cond = select i1 %call35.not, i1 %tobool36, i1 false
  %cmp37 = icmp slt i32 %n.1.ph, %nbufs.1
  %or.cond217 = select i1 %or.cond, i1 %cmp37, i1 false
  br i1 %or.cond217, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load i64, i64* %total_len, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end31
  %20 = phi i64 [ %15, %if.end31 ], [ %.pre, %for.end.loopexit ]
  %left.0.lcssa = phi i64 [ %15, %if.end31 ], [ %left.1.ph, %for.end.loopexit ]
  %n.0.lcssa = phi i32 [ 0, %if.end31 ], [ %n.1.ph, %for.end.loopexit ]
  %conv72 = sext i32 %n.0.lcssa to i64
  %sub74 = sub i64 %20, %left.0.lcssa
  call void @iov_iter_bvec(%struct.iov_iter* noundef nonnull %from, i32 noundef 1, %struct.bio_vec* noundef %array.1, i64 noundef %conv72, i64 noundef %sub74) #14
  %call76 = call i64 @vfs_iter_write(%struct.file* noundef %out, %struct.iov_iter* noundef nonnull %from, i64* noundef %pos, i32 noundef 0) #14
  %cmp77 = icmp slt i64 %call76, 1
  br i1 %cmp77, label %cleanup118.thread, label %if.end80

if.end80:                                         ; preds = %for.end
  %21 = load i64, i64* %num_spliced, align 8
  %add = add i64 %21, %call76
  store i64 %add, i64* %num_spliced, align 8
  %22 = load i64, i64* %total_len, align 8
  %sub83 = sub i64 %22, %call76
  store i64 %sub83, i64* %total_len, align 8
  %23 = load i64, i64* %pos, align 8
  store i64 %23, i64* %ppos, align 8
  %24 = load i32, i32* %tail33, align 4
  br label %while.body88

while.body88:                                     ; preds = %if.end80, %if.end117
  %tail.1247 = phi i32 [ %24, %if.end80 ], [ %inc103, %if.end117 ]
  %ret.4246 = phi i64 [ %call76, %if.end80 ], [ %sub101, %if.end117 ]
  %25 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and91 = and i32 %tail.1247, %sub
  %idxprom92 = zext i32 %and91 to i64
  %len94 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %25, i64 %idxprom92, i32 2
  %26 = load i32, i32* %len94, align 4
  %conv95 = zext i32 %26 to i64
  %cmp96.not = icmp slt i64 %ret.4246, %conv95
  br i1 %cmp96.not, label %if.end117.thread, label %if.then98

if.then98:                                        ; preds = %while.body88
  %arrayidx93 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %25, i64 %idxprom92
  %sub101 = sub i64 %ret.4246, %conv95
  store i32 0, i32* %len94, align 4
  call fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %arrayidx93) #13
  %inc103 = add i32 %tail.1247, 1
  store i32 %inc103, i32* %tail33, align 4
  %27 = load i32, i32* %files, align 4
  %tobool105.not = icmp eq i32 %27, 0
  br i1 %tobool105.not, label %if.end117, label %if.then106

if.then106:                                       ; preds = %if.then98
  store i8 1, i8* %need_wakeup, align 8
  br label %if.end117

if.end117.thread:                                 ; preds = %while.body88
  %idxprom92.le = zext i32 %and91 to i64
  %offset109 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %25, i64 %idxprom92.le, i32 1
  %28 = load i32, i32* %offset109, align 8
  %29 = trunc i64 %ret.4246 to i32
  %conv112 = add i32 %28, %29
  store i32 %conv112, i32* %offset109, align 8
  %conv116 = sub i32 %26, %29
  store i32 %conv116, i32* %len94, align 4
  br label %while.cond86.cleanup118_crit_edge

if.end117:                                        ; preds = %if.then98, %if.then106
  %tobool87.not = icmp eq i64 %sub101, 0
  br i1 %tobool87.not, label %while.cond86.cleanup118_crit_edge, label %while.body88

cleanup118.thread.loopexit.split.loop.exit252:    ; preds = %while.body
  %conv10.le = sext i32 %call9 to i64
  br label %cleanup118.thread

cleanup118.thread:                                ; preds = %for.end, %if.then24, %cleanup118.thread.loopexit.split.loop.exit252, %cleanup
  %ret.6.ph = phi i64 [ %spec.select, %cleanup ], [ %conv10.le, %cleanup118.thread.loopexit.split.loop.exit252 ], [ %call76, %for.end ], [ -12, %if.then24 ]
  %array.2.ph = phi %struct.bio_vec* [ %array.1, %cleanup ], [ %array.0257, %cleanup118.thread.loopexit.split.loop.exit252 ], [ %array.1, %for.end ], [ null, %if.then24 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #15
  br label %done

while.cond86.cleanup118_crit_edge:                ; preds = %if.end117, %if.end117.thread
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #15
  %30 = load i64, i64* %total_len, align 8
  %tobool8.not = icmp eq i64 %30, 0
  br i1 %tobool8.not, label %done, label %while.body

done:                                             ; preds = %while.cond86.cleanup118_crit_edge, %if.end, %cleanup118.thread
  %ret.7 = phi i64 [ %ret.6.ph, %cleanup118.thread ], [ 0, %if.end ], [ 0, %while.cond86.cleanup118_crit_edge ]
  %array.3 = phi %struct.bio_vec* [ %array.2.ph, %cleanup118.thread ], [ %5, %if.end ], [ %array.1, %while.cond86.cleanup118_crit_edge ]
  %31 = bitcast %struct.bio_vec* %array.3 to i8*
  call void @kfree(i8* noundef %31) #14
  call fastcc void @splice_from_pipe_end(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* noundef nonnull %sd) #13
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %pipe) #14
  %32 = load i64, i64* %num_spliced, align 8
  %tobool128.not = icmp eq i64 %32, 0
  %spec.select218 = select i1 %tobool128.not, i64 %ret.7, i64 %32
  br label %cleanup132

cleanup132:                                       ; preds = %entry, %done
  %retval.0 = phi i64 [ %spec.select218, %done ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef 16, i32 noundef 3520) #13
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pipe_empty(i32 noundef %head, i32 noundef %tail) unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %head, %tail
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pipe_buf_confirm(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 3
  %0 = bitcast %struct.pipe_buf_operations** %ops to i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)***
  %1 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)**, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*** %0, align 8
  %2 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %1, align 8
  %tobool.not = icmp eq i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* %2, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 %2(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(%struct.iov_iter* noundef, i32 noundef, %struct.bio_vec* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_iter_write(%struct.file* noundef, %struct.iov_iter* noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_splice_sendpage(%struct.pipe_inode_info* noundef %pipe, %struct.file* noundef %out, i64* nocapture noundef readonly %ppos, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call i64 @splice_from_pipe(%struct.pipe_inode_info* noundef %pipe, %struct.file* noundef %out, i64* noundef %ppos, i64 noundef %len, i32 noundef %flags, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* noundef nonnull @pipe_to_sendpage) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pipe_to_sendpage(%struct.pipe_inode_info* nocapture noundef readonly %pipe, %struct.pipe_buffer* nocapture noundef readonly %buf, %struct.splice_desc* nocapture noundef readonly %sd) #0 {
entry:
  %pos = alloca i64, align 8
  %u = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 3
  %file1 = bitcast %union.anon.80* %u to %struct.file**
  %0 = load %struct.file*, %struct.file** %file1, align 8
  %1 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %pos2 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 4
  %2 = load i64, i64* %pos2, align 8
  store i64 %2, i64* %pos, align 8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %3 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %sendpage = getelementptr inbounds %struct.file_operations, %struct.file_operations* %3, i64 0, i32 20
  %4 = load i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)** %sendpage, align 8
  %tobool.not = icmp eq i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* %4, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = shl i32 %5, 13
  %6 = and i32 %and, 32768
  %len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 1
  %7 = load i32, i32* %len, align 8
  %conv6 = zext i32 %7 to i64
  %total_len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 0
  %8 = load i64, i64* %total_len, align 8
  %cmp = icmp ugt i64 %8, %conv6
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %9 = load i32, i32* %head, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %10 = load i32, i32* %tail, align 4
  %call = call fastcc i32 @pipe_occupancy(i32 noundef %9, i32 noundef %10) #13
  %cmp8 = icmp ugt i32 %call, 1
  %or = or i32 %6, 131072
  %spec.select = select i1 %cmp8, i32 %or, i32 %6
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %more.0 = phi i32 [ %6, %if.end ], [ %spec.select, %land.lhs.true ]
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %11 = load %struct.page*, %struct.page** %page, align 8
  %offset = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 1
  %12 = load i32, i32* %offset, align 8
  %call16 = call i64 %4(%struct.file* noundef %0, %struct.page* noundef %11, i32 noundef %12, i64 noundef %conv6, i64* noundef nonnull %pos, i32 noundef %more.0) #14
  %conv17 = trunc i64 %call16 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %conv17, %if.end11 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @splice_direct_to_actor(%struct.file* noundef %in, %struct.splice_desc* noundef %sd, i32 (%struct.pipe_inode_info*, %struct.splice_desc*)* nocapture noundef readonly %actor) local_unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %in) #13
  %i_mode1 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode1, align 8
  %1 = and i16 %0, -4096
  switch i16 %1, label %cleanup116 [
    i16 -32768, label %if.end
    i16 24576, label %if.end
  ]

if.end:                                           ; preds = %entry, %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %splice_pipe = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 126
  %4 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %splice_pipe, align 8
  %tobool11.not = icmp eq %struct.pipe_inode_info* %4, null
  br i1 %tobool11.not, label %if.then21, label %if.end28, !prof !8

if.then21:                                        ; preds = %if.end
  %call22 = call %struct.pipe_inode_info* @alloc_pipe_info() #14
  %tobool23.not = icmp eq %struct.pipe_inode_info* %call22, null
  br i1 %tobool23.not, label %cleanup116, label %if.end25

if.end25:                                         ; preds = %if.then21
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %call22, i64 0, i32 8
  store i32 1, i32* %readers, align 4
  store %struct.pipe_inode_info* %call22, %struct.pipe_inode_info** %splice_pipe, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end
  %pipe.0 = phi %struct.pipe_inode_info* [ %call22, %if.end25 ], [ %4, %if.end ]
  %total_len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 0
  %5 = load i64, i64* %total_len, align 8
  %flags29 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 2
  %6 = load i32, i32* %flags29, align 4
  %and31 = and i32 %6, -3
  store i32 %and31, i32* %flags29, align 4
  %and33 = and i32 %6, 4
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 3
  %7 = load i32, i32* %head, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 4
  %8 = load i32, i32* %tail, align 4
  %call34 = call fastcc i1 @pipe_empty(i32 noundef %7, i32 noundef %8) #13
  br i1 %call34, label %if.end50, label %if.then49, !prof !13

if.then49:                                        ; preds = %if.end28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/splice.c\22; .popsection; .long 14472b - 14470b; .short 864; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !14
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end28
  %9 = bitcast i64* %pos to i8*
  %pos59 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 4
  %tobool77.not = icmp eq i32 %and33, 0
  %tobool58.not209 = icmp eq i64 %5, 0
  br i1 %tobool58.not209, label %done, label %while.body

while.body:                                       ; preds = %if.end50, %cleanup
  %len.0211 = phi i64 [ %sub, %cleanup ], [ %5, %if.end50 ]
  %bytes.0210 = phi i64 [ %add, %cleanup ], [ 0, %if.end50 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #15
  %10 = load i64, i64* %pos59, align 8
  store i64 %10, i64* %pos, align 8
  %call60 = call fastcc i64 @do_splice_to(%struct.file* noundef %in, i64* noundef nonnull %pos, %struct.pipe_inode_info* noundef %pipe.0, i64 noundef %len.0211, i32 noundef %6) #13
  %cmp61 = icmp slt i64 %call60, 1
  br i1 %cmp61, label %for.cond.preheader, label %if.end71, !prof !8

if.end71:                                         ; preds = %while.body
  store i64 %call60, i64* %total_len, align 8
  %cmp73 = icmp ult i64 %call60, %len.0211
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end71
  %11 = load i32, i32* %flags29, align 4
  %or = or i32 %11, 4
  br label %if.end82.sink.split

if.else:                                          ; preds = %if.end71
  br i1 %tobool77.not, label %if.then78, label %if.end82

if.then78:                                        ; preds = %if.else
  %12 = load i32, i32* %flags29, align 4
  %and80 = and i32 %12, -5
  br label %if.end82.sink.split

if.end82.sink.split:                              ; preds = %if.then75, %if.then78
  %and80.sink = phi i32 [ %and80, %if.then78 ], [ %or, %if.then75 ]
  store i32 %and80.sink, i32* %flags29, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end82.sink.split, %if.else
  %call83 = call i32 %actor(%struct.pipe_inode_info* noundef %pipe.0, %struct.splice_desc* noundef %sd) #14
  %conv84 = sext i32 %call83 to i64
  %cmp85 = icmp slt i32 %call83, 1
  br i1 %cmp85, label %for.cond.preheader.sink.split, label %if.end96, !prof !8

if.end96:                                         ; preds = %if.end82
  %add = add i64 %bytes.0210, %conv84
  %13 = load i64, i64* %pos, align 8
  store i64 %13, i64* %pos59, align 8
  %cmp98 = icmp ugt i64 %call60, %conv84
  br i1 %cmp98, label %if.then100, label %cleanup

if.then100:                                       ; preds = %if.end96
  %add101 = add i64 %10, %conv84
  br label %for.cond.preheader.sink.split

cleanup:                                          ; preds = %if.end96
  %sub = sub i64 %len.0211, %conv84
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #15
  %tobool58.not = icmp eq i64 %sub, 0
  br i1 %tobool58.not, label %done, label %while.body

for.cond.preheader.sink.split:                    ; preds = %if.end82, %if.then100
  %.lcssa197.sink = phi i64 [ %add101, %if.then100 ], [ %10, %if.end82 ]
  %bytes.1.ph.ph = phi i64 [ %add, %if.then100 ], [ %bytes.0210, %if.end82 ]
  store i64 %.lcssa197.sink, i64* %pos59, align 8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body, %for.cond.preheader.sink.split
  %ret.0.ph = phi i64 [ %conv84, %for.cond.preheader.sink.split ], [ %call60, %while.body ]
  %bytes.1.ph = phi i64 [ %bytes.1.ph.ph, %for.cond.preheader.sink.split ], [ %bytes.0210, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #15
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 6
  %14 = load i32, i32* %ring_size, align 4
  %cmp108183.not = icmp eq i32 %14, 0
  br i1 %cmp108183.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 17
  br label %for.body

done:                                             ; preds = %cleanup, %if.end50, %for.end
  %bytes.2 = phi i64 [ %spec.select, %for.end ], [ 0, %if.end50 ], [ %add, %cleanup ]
  store i32 0, i32* %head, align 8
  store i32 0, i32* %tail, align 4
  call fastcc void @file_accessed(%struct.file* noundef %in) #13
  br label %cleanup116

for.body:                                         ; preds = %for.body.lr.ph, %if.end112
  %15 = phi i32 [ %14, %for.body.lr.ph ], [ %18, %if.end112 ]
  %i.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end112 ]
  %16 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %idxprom = sext i32 %i.0184 to i64
  %ops = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %16, i64 %idxprom, i32 3
  %17 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops, align 8
  %tobool110.not = icmp eq %struct.pipe_buf_operations* %17, null
  br i1 %tobool110.not, label %if.end112, label %if.then111

if.then111:                                       ; preds = %for.body
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %16, i64 %idxprom
  call fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe.0, %struct.pipe_buffer* noundef %arrayidx) #13
  %.pre = load i32, i32* %ring_size, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %for.body
  %18 = phi i32 [ %.pre, %if.then111 ], [ %15, %for.body ]
  %inc = add nuw i32 %i.0184, 1
  %cmp108 = icmp ult i32 %inc, %18
  br i1 %cmp108, label %for.body, label %for.end

for.end:                                          ; preds = %if.end112, %for.cond.preheader
  %tobool113.not = icmp eq i64 %bytes.1.ph, 0
  %spec.select = select i1 %tobool113.not, i64 %ret.0.ph, i64 %bytes.1.ph
  br label %done

cleanup116:                                       ; preds = %if.then21, %entry, %done
  %retval.0 = phi i64 [ %bytes.2, %done ], [ -22, %entry ], [ -12, %if.then21 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #8 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pipe_inode_info* @alloc_pipe_info() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_splice_to(%struct.file* noundef %in, i64* noundef %ppos, %struct.pipe_inode_info* noundef %pipe, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %1 = load i32, i32* %max_usage, align 8
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %2 = load i32, i32* %head, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %3 = load i32, i32* %tail, align 4
  %call = call fastcc i32 @pipe_occupancy(i32 noundef %2, i32 noundef %3) #13
  %sub = sub i32 %1, %call
  %shl = shl i32 %sub, 12
  %conv4 = zext i32 %shl to i64
  %cmp = icmp ugt i64 %conv4, %len
  %cond = select i1 %cmp, i64 %len, i64 %conv4
  %call6 = call i32 @rw_verify_area(i32 noundef 0, %struct.file* noundef %in, i64* noundef %ppos, i64 noundef %cond) #14
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then16, label %if.end18, !prof !8

if.then16:                                        ; preds = %if.end
  %conv17 = sext i32 %call6 to i64
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %cmp19 = icmp ugt i64 %cond, 2147479552
  br i1 %cmp19, label %if.then28, label %if.end29, !prof !8

if.then28:                                        ; preds = %if.end18
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end18
  %len.addr.0 = phi i64 [ 2147479552, %if.then28 ], [ %cond, %if.end18 ]
  %f_op = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 3
  %4 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %splice_read = getelementptr inbounds %struct.file_operations, %struct.file_operations* %4, i64 0, i32 25
  %5 = load i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)** %splice_read, align 8
  %tobool30.not = icmp eq i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* %5, null
  br i1 %tobool30.not, label %cleanup, label %if.end43, !prof !8

if.end43:                                         ; preds = %if.end29
  %call46 = call i64 %5(%struct.file* noundef %in, i64* noundef %ppos, %struct.pipe_inode_info* noundef %pipe, i64 noundef %len.addr.0, i32 noundef %flags) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry, %if.end43, %if.then16
  %retval.0 = phi i64 [ %conv17, %if.then16 ], [ %call46, %if.end43 ], [ -9, %entry ], [ -22, %if.end29 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_splice_direct(%struct.file* noundef %in, i64* nocapture noundef %ppos, %struct.file* noundef %out, i64* noundef %opos, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %sd = alloca %struct.splice_desc, align 8
  %0 = bitcast %struct.splice_desc* %sd to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #15
  %1 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  %2 = bitcast i8* %1 to i64*, !annotation !11
  store i64 0, i64* %2, align 8, !annotation !11
  %total_len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 0
  store i64 %len, i64* %total_len, align 8
  %len1 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 1
  %conv = trunc i64 %len to i32
  store i32 %conv, i32* %len1, align 8
  %flags2 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 2
  store i32 %flags, i32* %flags2, align 4
  %u = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 3
  %file = bitcast %union.anon.80* %u to %struct.file**
  store %struct.file* %out, %struct.file** %file, align 8
  %pos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 4
  %3 = load i64, i64* %ppos, align 8
  store i64 %3, i64* %pos, align 8
  %opos3 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 5
  store i64* %opos, i64** %opos3, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 6
  store i64 0, i64* %num_spliced, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 8
  %4 = load i32, i32* %f_mode, align 4
  %and = and i32 %4, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 7
  %5 = load i32, i32* %f_flags, align 8
  %and8 = and i32 %5, 1024
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end18, label %cleanup, !prof !13

if.end18:                                         ; preds = %if.end
  %call = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef %out, i64* noundef %opos, i64 noundef %len) #14
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then28, label %if.end29, !prof !8

if.then28:                                        ; preds = %if.end18
  %conv19 = sext i32 %call to i64
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  %call30 = call i64 @splice_direct_to_actor(%struct.file* noundef %in, %struct.splice_desc* noundef nonnull %sd, i32 (%struct.pipe_inode_info*, %struct.splice_desc*)* noundef nonnull @direct_splice_actor) #13
  %cmp31 = icmp sgt i64 %call30, 0
  br i1 %cmp31, label %if.then33, label %cleanup

if.then33:                                        ; preds = %if.end29
  %6 = load i64, i64* %pos, align 8
  store i64 %6, i64* %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then33, %if.end, %entry, %if.then28
  %retval.0 = phi i64 [ %conv19, %if.then28 ], [ -9, %entry ], [ -22, %if.end ], [ %call30, %if.then33 ], [ %call30, %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rw_verify_area(i32 noundef, %struct.file* noundef, i64* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @direct_splice_actor(%struct.pipe_inode_info* noundef %pipe, %struct.splice_desc* nocapture noundef readonly %sd) #0 {
entry:
  %u = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 3
  %file1 = bitcast %union.anon.80* %u to %struct.file**
  %0 = load %struct.file*, %struct.file** %file1, align 8
  %opos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 5
  %1 = load i64*, i64** %opos, align 8
  %total_len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 0
  %2 = load i64, i64* %total_len, align 8
  %flags = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %call = call fastcc i64 @do_splice_from(%struct.pipe_inode_info* noundef %pipe, %struct.file* noundef %0, i64* noundef %1, i64 noundef %2, i32 noundef %3) #13
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @splice_file_to_pipe(%struct.file* noundef %in, %struct.pipe_inode_info* noundef %opipe, i64* noundef %offset, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  call void @pipe_lock(%struct.pipe_inode_info* noundef %opipe) #14
  %call = call fastcc i32 @wait_for_space(%struct.pipe_inode_info* noundef %opipe, i32 noundef %flags) #13
  %conv = sext i32 %call to i64
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @do_splice_to(%struct.file* noundef %in, i64* noundef %offset, %struct.pipe_inode_info* noundef %opipe, i64 noundef %len, i32 noundef %flags) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %conv, %entry ], [ %call1, %if.then ]
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %opipe) #14
  %cmp = icmp sgt i64 %ret.0, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call fastcc void @wakeup_pipe_readers(%struct.pipe_inode_info* noundef %opipe) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_for_space(%struct.pipe_inode_info* noundef %pipe, i32 noundef %flags) unnamed_addr #0 {
entry:
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 8
  %0 = load i32, i32* %readers, align 4
  %tobool.not20 = icmp eq i32 %0, 0
  br i1 %tobool.not20, label %if.then, label %if.end.lr.ph, !prof !8

if.end.lr.ph:                                     ; preds = %entry
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %and = and i32 %flags, 2
  %tobool8.not = icmp eq i32 %and, 0
  br label %if.end

if.then:                                          ; preds = %if.end15, %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call4 = call i32 @send_sig(i32 noundef 13, %struct.task_struct* noundef %2, i32 noundef 0) #14
  br label %return

if.end:                                           ; preds = %if.end.lr.ph, %if.end15
  %3 = load i32, i32* %head, align 8
  %4 = load i32, i32* %tail, align 4
  %5 = load i32, i32* %max_usage, align 8
  %call5 = call fastcc i1 @pipe_full(i32 noundef %3, i32 noundef %4, i32 noundef %5) #13
  %6 = and i1 %call5, %tobool8.not
  br i1 %6, label %if.end10, label %return.loopexit.split.loop.exit

if.end10:                                         ; preds = %if.end
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call12 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %8) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %return

if.end15:                                         ; preds = %if.end10
  call void @pipe_wait_writable(%struct.pipe_inode_info* noundef %pipe) #14
  %9 = load i32, i32* %readers, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

return.loopexit.split.loop.exit:                  ; preds = %if.end
  %.mux.le = select i1 %call5, i32 -11, i32 0
  br label %return

return:                                           ; preds = %if.end10, %return.loopexit.split.loop.exit, %if.then
  %retval.0 = phi i32 [ -32, %if.then ], [ %.mux.le, %return.loopexit.split.loop.exit ], [ -512, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wakeup_pipe_readers(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 1
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %rd_wait) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__wake_up(%struct.wait_queue_head* noundef %rd_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 15
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_readers, i32 noundef 29, i32 noundef 1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_splice(%struct.file* noundef %in, i64* noundef %off_in, %struct.file* noundef %out, i64* noundef %off_out, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %offset = alloca i64, align 8
  %0 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %entry
  %f_mode1 = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 8
  %2 = load i32, i32* %f_mode1, align 4
  %and2 = and i32 %2, 2
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %lor.rhs
  %call = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %in, i1 noundef true) #14
  %call7 = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %out, i1 noundef true) #14
  %tobool8 = icmp ne %struct.pipe_inode_info* %call, null
  %tobool9 = icmp ne %struct.pipe_inode_info* %call7, null
  %or.cond = select i1 %tobool8, i1 %tobool9, i1 false
  br i1 %or.cond, label %if.then10, label %if.end26

if.then10:                                        ; preds = %if.end
  %tobool11 = icmp ne i64* %off_in, null
  %tobool12 = icmp ne i64* %off_out, null
  %or.cond109 = or i1 %tobool11, %tobool12
  br i1 %or.cond109, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then10
  %cmp = icmp eq %struct.pipe_inode_info* %call, %call7
  br i1 %cmp, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end14
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 7
  %3 = load i32, i32* %f_flags, align 8
  %f_flags18 = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 7
  %4 = load i32, i32* %f_flags18, align 8
  %or = or i32 %4, %3
  %and19 = lshr i32 %or, 10
  %5 = and i32 %and19, 2
  %6 = or i32 %5, %flags
  %call24 = call fastcc i32 @splice_pipe_to_pipe(%struct.pipe_inode_info* noundef nonnull %call, %struct.pipe_inode_info* noundef nonnull %call7, i64 noundef %len, i32 noundef %6) #13
  %conv25 = sext i32 %call24 to i64
  br label %cleanup

if.end26:                                         ; preds = %if.end
  br i1 %tobool8, label %if.then28, label %if.end77

if.then28:                                        ; preds = %if.end26
  %tobool29.not = icmp eq i64* %off_in, null
  br i1 %tobool29.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %if.then28
  %tobool32.not = icmp eq i64* %off_out, null
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end31
  %7 = load i32, i32* %f_mode1, align 4
  %and35 = and i32 %7, 16
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %cleanup, label %if.end39

if.else:                                          ; preds = %if.end31
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 10
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.else
  %storemerge160.in = phi i64* [ %f_pos, %if.else ], [ %off_out, %if.then33 ]
  %storemerge160 = load i64, i64* %storemerge160.in, align 8
  store i64 %storemerge160, i64* %offset, align 8
  %f_flags40 = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 7
  %8 = load i32, i32* %f_flags40, align 8
  %and41 = and i32 %8, 1024
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end51, label %cleanup, !prof !13

if.end51:                                         ; preds = %if.end39
  %call52 = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef %out, i64* noundef nonnull %offset, i64 noundef %len) #14
  %cmp54 = icmp slt i32 %call52, 0
  br i1 %cmp54, label %if.then63, label %if.end64, !prof !8

if.then63:                                        ; preds = %if.end51
  %conv53 = sext i32 %call52 to i64
  br label %cleanup

if.end64:                                         ; preds = %if.end51
  %f_flags65 = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 7
  %9 = load i32, i32* %f_flags65, align 8
  %and66 = lshr i32 %9, 10
  %10 = and i32 %and66, 2
  %11 = or i32 %10, %flags
  call fastcc void @file_start_write(%struct.file* noundef %out) #13
  %call71 = call fastcc i64 @do_splice_from(%struct.pipe_inode_info* noundef nonnull %call, %struct.file* noundef %out, i64* noundef nonnull %offset, i64 noundef %len, i32 noundef %11) #13
  call fastcc void @file_end_write(%struct.file* noundef %out) #13
  %12 = load i64, i64* %offset, align 8
  br i1 %tobool32.not, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.end64
  %f_pos74 = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 10
  store i64 %12, i64* %f_pos74, align 8
  br label %cleanup

if.else75:                                        ; preds = %if.end64
  store i64 %12, i64* %off_out, align 8
  br label %cleanup

if.end77:                                         ; preds = %if.end26
  br i1 %tobool9, label %if.then79, label %cleanup

if.then79:                                        ; preds = %if.end77
  %tobool80.not = icmp eq i64* %off_out, null
  br i1 %tobool80.not, label %if.end82, label %cleanup

if.end82:                                         ; preds = %if.then79
  %tobool83.not = icmp eq i64* %off_in, null
  br i1 %tobool83.not, label %if.else90, label %if.then84

if.then84:                                        ; preds = %if.end82
  %13 = load i32, i32* %f_mode, align 4
  %and86 = and i32 %13, 8
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %cleanup, label %if.end92

if.else90:                                        ; preds = %if.end82
  %f_pos91 = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 10
  br label %if.end92

if.end92:                                         ; preds = %if.then84, %if.else90
  %storemerge.in = phi i64* [ %f_pos91, %if.else90 ], [ %off_in, %if.then84 ]
  %storemerge = load i64, i64* %storemerge.in, align 8
  store i64 %storemerge, i64* %offset, align 8
  %f_flags93 = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 7
  %14 = load i32, i32* %f_flags93, align 8
  %and94 = lshr i32 %14, 10
  %15 = and i32 %and94, 2
  %16 = or i32 %15, %flags
  %call99 = call i64 @splice_file_to_pipe(%struct.file* noundef %in, %struct.pipe_inode_info* noundef nonnull %call7, i64* noundef nonnull %offset, i64 noundef %len, i32 noundef %16) #13
  %17 = load i64, i64* %offset, align 8
  br i1 %tobool83.not, label %if.then101, label %if.else103

if.then101:                                       ; preds = %if.end92
  %f_pos102 = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 10
  store i64 %17, i64* %f_pos102, align 8
  br label %cleanup

if.else103:                                       ; preds = %if.end92
  store i64 %17, i64* %off_in, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end77, %if.then101, %if.else103, %if.then84, %if.then79, %if.then73, %if.else75, %if.end39, %if.then33, %if.then28, %if.end14, %if.then10, %lor.rhs, %if.then63, %if.end17
  %retval.0 = phi i64 [ %conv25, %if.end17 ], [ %conv53, %if.then63 ], [ -9, %lor.rhs ], [ -29, %if.then10 ], [ -22, %if.end14 ], [ -29, %if.then28 ], [ -22, %if.then33 ], [ -22, %if.end39 ], [ %call71, %if.else75 ], [ %call71, %if.then73 ], [ -29, %if.then79 ], [ -22, %if.then84 ], [ %call99, %if.else103 ], [ %call99, %if.then101 ], [ -22, %if.end77 ], [ -9, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @splice_pipe_to_pipe(%struct.pipe_inode_info* noundef %ipipe, %struct.pipe_inode_info* noundef %opipe, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call210 = call fastcc i32 @ipipe_prep(%struct.pipe_inode_info* noundef %ipipe, i32 noundef %flags) #13
  %tobool.not211 = icmp eq i32 %call210, 0
  br i1 %tobool.not211, label %if.end.lr.ph, label %cleanup78

if.end.lr.ph:                                     ; preds = %entry
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 6
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 3
  %ring_size5 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 6
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 8
  %head15 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 3
  %tail16 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 5
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 17
  %bufs32 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 17
  %writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 9
  %and = and i32 %flags, 2
  %tobool27.not = icmp eq i32 %and, 0
  %tobool27.not.not265 = xor i1 %tobool27.not, true
  %tobool27.not.not = xor i1 %tobool27.not, true
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup
  %input_wakeup.0.off0213 = phi i1 [ false, %if.end.lr.ph ], [ %input_wakeup.1.off0, %cleanup ]
  %len.addr.0212 = phi i64 [ %len, %if.end.lr.ph ], [ %len.addr.1, %cleanup ]
  %call1 = call fastcc i32 @opipe_prep(%struct.pipe_inode_info* noundef %opipe, i32 noundef %flags) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup78

if.end4:                                          ; preds = %if.end
  call void @pipe_double_lock(%struct.pipe_inode_info* noundef %ipipe, %struct.pipe_inode_info* noundef %opipe) #14
  %0 = load i32, i32* %tail, align 4
  %1 = load i32, i32* %ring_size, align 4
  %sub = add i32 %1, -1
  %2 = load i32, i32* %head, align 8
  %3 = load i32, i32* %ring_size5, align 4
  %sub6 = add i32 %3, -1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end4
  %len.addr.1 = phi i64 [ %len.addr.0212, %if.end4 ], [ %sub69, %do.cond ]
  %o_head.0 = phi i32 [ %2, %if.end4 ], [ %storemerge, %do.cond ]
  %i_tail.0 = phi i32 [ %0, %if.end4 ], [ %i_tail.1, %do.cond ]
  %ret.0 = phi i32 [ 0, %if.end4 ], [ %conv68, %do.cond ]
  %input_wakeup.1.off0 = phi i1 [ %input_wakeup.0.off0213, %if.end4 ], [ %input_wakeup.2.off0, %do.cond ]
  %4 = load i32, i32* %readers, align 4
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then8, label %if.end14

if.then8:                                         ; preds = %do.body
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %call10 = call i32 @send_sig(i32 noundef 13, %struct.task_struct* noundef %6, i32 noundef 0) #14
  %tobool11.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool11.not, i32 -32, i32 %ret.0
  br label %do.end

if.end14:                                         ; preds = %do.body
  %7 = load i32, i32* %head15, align 8
  %call17 = call fastcc i1 @pipe_empty(i32 noundef %7, i32 noundef %i_tail.0) #13
  br i1 %call17, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end14
  %8 = load i32, i32* %writers, align 8
  %tobool18.not = icmp eq i32 %8, 0
  %tobool24.not = icmp ne i32 %ret.0, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool24.not
  %brmerge = or i1 %or.cond, %tobool27.not.not
  br i1 %brmerge, label %do.end.loopexit268.split.loop.exit299, label %cleanup

lor.lhs.false:                                    ; preds = %if.end14
  %9 = load i32, i32* %tail16, align 4
  %10 = load i32, i32* %max_usage, align 8
  %call22 = call fastcc i1 @pipe_full(i32 noundef %o_head.0, i32 noundef %9, i32 noundef %10) #13
  br i1 %call22, label %if.then23, label %if.end30

if.then23:                                        ; preds = %lor.lhs.false
  %tobool24.not.old = icmp ne i32 %ret.0, 0
  %brmerge266 = or i1 %tobool24.not.old, %tobool27.not.not265
  br i1 %brmerge266, label %do.end.loopexit268.split.loop.exit, label %cleanup

if.end30:                                         ; preds = %lor.lhs.false
  %11 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and31 = and i32 %i_tail.0, %sub
  %idxprom = zext i32 %and31 to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %11, i64 %idxprom
  %12 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs32, align 8
  %and33 = and i32 %o_head.0, %sub6
  %idxprom34 = zext i32 %and33 to i64
  %arrayidx35 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %12, i64 %idxprom34
  %len36 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %11, i64 %idxprom, i32 2
  %13 = load i32, i32* %len36, align 4
  %conv = zext i32 %13 to i64
  %cmp.not = icmp ult i64 %len.addr.1, %conv
  br i1 %cmp.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end30
  %14 = bitcast %struct.pipe_buffer* %arrayidx35 to i8*
  %15 = bitcast %struct.pipe_buffer* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(40) %14, i8* noundef align 8 dereferenceable(40) %15, i64 40, i1 false)
  %ops = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %11, i64 %idxprom, i32 3
  store %struct.pipe_buf_operations* null, %struct.pipe_buf_operations** %ops, align 8
  %inc = add i32 %i_tail.0, 1
  store i32 %inc, i32* %tail, align 4
  %len40 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %12, i64 %idxprom34, i32 2
  %16 = load i32, i32* %len40, align 4
  %conv41 = zext i32 %16 to i64
  br label %do.cond

if.else:                                          ; preds = %if.end30
  %call44 = call fastcc i1 @pipe_buf_get(%struct.pipe_inode_info* noundef %ipipe, %struct.pipe_buffer* noundef %arrayidx) #13
  br i1 %call44, label %if.end50, label %if.then45

if.then45:                                        ; preds = %if.else
  %cmp46 = icmp eq i32 %ret.0, 0
  %spec.select248 = select i1 %cmp46, i32 -14, i32 %ret.0
  br label %do.end

if.end50:                                         ; preds = %if.else
  %17 = bitcast %struct.pipe_buffer* %arrayidx35 to i8*
  %18 = bitcast %struct.pipe_buffer* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(40) %17, i8* noundef align 8 dereferenceable(40) %18, i64 40, i1 false)
  %flags51 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %12, i64 %idxprom34, i32 4
  %19 = load i32, i32* %flags51, align 8
  %and54 = and i32 %19, -21
  store i32 %and54, i32* %flags51, align 8
  %conv55 = trunc i64 %len.addr.1 to i32
  %len56 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %12, i64 %idxprom34, i32 2
  store i32 %conv55, i32* %len56, align 4
  %offset = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %11, i64 %idxprom, i32 1
  %20 = load i32, i32* %offset, align 8
  %conv58 = add i32 %20, %conv55
  store i32 %conv58, i32* %offset, align 8
  %21 = load i32, i32* %len36, align 4
  %conv62 = sub i32 %21, %conv55
  store i32 %conv62, i32* %len36, align 4
  br label %do.cond

cleanup:                                          ; preds = %if.then23, %land.lhs.true
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %ipipe) #14
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %opipe) #14
  %call = call fastcc i32 @ipipe_prep(%struct.pipe_inode_info* noundef %ipipe, i32 noundef %flags) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup78

do.cond:                                          ; preds = %if.then38, %if.end50
  %.pre-phi = phi i32 [ %16, %if.then38 ], [ %conv55, %if.end50 ]
  %i_tail.1 = phi i32 [ %inc, %if.then38 ], [ %i_tail.0, %if.end50 ]
  %input_wakeup.2.off0 = phi i1 [ true, %if.then38 ], [ %input_wakeup.1.off0, %if.end50 ]
  %o_len.0 = phi i64 [ %conv41, %if.then38 ], [ %len.addr.1, %if.end50 ]
  %storemerge = add i32 %o_head.0, 1
  store i32 %storemerge, i32* %head, align 8
  %conv68 = add i32 %ret.0, %.pre-phi
  %sub69 = sub i64 %len.addr.1, %o_len.0
  %tobool70.not = icmp eq i64 %sub69, 0
  br i1 %tobool70.not, label %do.end, label %do.body

do.end.loopexit268.split.loop.exit:               ; preds = %if.then23
  %ret.0.mux267.le = select i1 %tobool24.not.old, i32 %ret.0, i32 -11
  br label %do.end

do.end.loopexit268.split.loop.exit299:            ; preds = %land.lhs.true
  %ret.0.mux.le = select i1 %or.cond, i32 %ret.0, i32 -11
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit268.split.loop.exit, %do.end.loopexit268.split.loop.exit299, %do.cond, %if.then45, %if.then8
  %input_wakeup.3.off0179 = phi i1 [ %input_wakeup.1.off0, %if.then8 ], [ %input_wakeup.1.off0, %if.then45 ], [ %input_wakeup.2.off0, %do.cond ], [ %input_wakeup.1.off0, %do.end.loopexit268.split.loop.exit299 ], [ %input_wakeup.1.off0, %do.end.loopexit268.split.loop.exit ]
  %ret.1178 = phi i32 [ %spec.select, %if.then8 ], [ %spec.select248, %if.then45 ], [ %conv68, %do.cond ], [ %ret.0.mux267.le, %do.end.loopexit268.split.loop.exit ], [ %ret.0.mux.le, %do.end.loopexit268.split.loop.exit299 ]
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %ipipe) #14
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %opipe) #14
  %cmp71 = icmp sgt i32 %ret.1178, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.end
  call fastcc void @wakeup_pipe_readers(%struct.pipe_inode_info* noundef %opipe) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %do.end
  br i1 %input_wakeup.3.off0179, label %if.then76, label %cleanup78

if.then76:                                        ; preds = %if.end74
  call fastcc void @wakeup_pipe_writers(%struct.pipe_inode_info* noundef %ipipe) #13
  br label %cleanup78

cleanup78:                                        ; preds = %cleanup, %if.end, %entry, %if.end74, %if.then76
  %retval.0 = phi i32 [ %ret.1178, %if.then76 ], [ %ret.1178, %if.end74 ], [ %call210, %entry ], [ %call, %cleanup ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_start_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #13
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %2) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_splice_from(%struct.pipe_inode_info* noundef %pipe, %struct.file* noundef %out, i64* noundef %ppos, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %splice_write = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 24
  %1 = load i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)** %splice_write, align 8
  %tobool.not = icmp eq i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* %1, null
  br i1 %tobool.not, label %return, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call7 = call i64 %1(%struct.pipe_inode_info* noundef %pipe, %struct.file* noundef %out, i64* noundef %ppos, i64 noundef %len, i32 noundef %flags) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call7, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_end_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #13
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @__sb_end_write(%struct.super_block* noundef %2) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_vmsplice(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_vmsplice(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_vmsplice(i64 noundef %fd, i64 noundef %uiov, i64 noundef %nr_segs, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %uiov to %struct.iovec*
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_vmsplice(i32 noundef %conv, %struct.iovec* noundef %0, i64 noundef %nr_segs, i32 noundef %conv1) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_splice(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_splice(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_splice(i64 noundef %fd_in, i64 noundef %off_in, i64 noundef %fd_out, i64 noundef %off_out, i64 noundef %len, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd_in to i32
  %0 = inttoptr i64 %off_in to i64*
  %conv1 = trunc i64 %fd_out to i32
  %1 = inttoptr i64 %off_out to i64*
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_splice(i32 noundef %conv, i64* noundef %0, i32 noundef %conv1, i64* noundef %1, i64 noundef %len, i32 noundef %conv2) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_tee(%struct.file* noundef %in, %struct.file* noundef %out, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %in, i1 noundef true) #14
  %call1 = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %out, i1 noundef true) #14
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %entry
  %f_mode2 = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 8
  %1 = load i32, i32* %f_mode2, align 4
  %and3 = and i32 %1, 2
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %lor.rhs
  %tobool8 = icmp eq %struct.pipe_inode_info* %call, null
  %tobool9 = icmp eq %struct.pipe_inode_info* %call1, null
  %or.cond = select i1 %tobool8, i1 true, i1 %tobool9
  %cmp.not = icmp eq %struct.pipe_inode_info* %call, %call1
  %or.cond50 = select i1 %or.cond, i1 true, i1 %cmp.not
  br i1 %or.cond50, label %if.end28, label %if.then12

if.then12:                                        ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %in, i64 0, i32 7
  %2 = load i32, i32* %f_flags, align 8
  %f_flags13 = getelementptr inbounds %struct.file, %struct.file* %out, i64 0, i32 7
  %3 = load i32, i32* %f_flags13, align 8
  %or = or i32 %3, %2
  %and14 = lshr i32 %or, 10
  %4 = and i32 %and14, 2
  %5 = or i32 %4, %flags
  %call19 = call fastcc i32 @ipipe_prep(%struct.pipe_inode_info* noundef nonnull %call, i32 noundef %5) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.then12
  %call22 = call fastcc i32 @opipe_prep(%struct.pipe_inode_info* noundef nonnull %call1, i32 noundef %5) #13
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.then21
  %call25 = call fastcc i32 @link_pipe(%struct.pipe_inode_info* noundef nonnull %call, %struct.pipe_inode_info* noundef nonnull %call1, i64 noundef %len) #13
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %if.then24, %if.then21, %if.end
  %ret.0 = phi i32 [ %call19, %if.then12 ], [ %call22, %if.then21 ], [ %call25, %if.then24 ], [ -22, %if.end ]
  %conv29 = sext i32 %ret.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.rhs, %if.end28
  %retval.0 = phi i64 [ %conv29, %if.end28 ], [ -9, %lor.rhs ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ipipe_prep(%struct.pipe_inode_info* noundef %pipe, i32 noundef %flags) unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %0 = load i32, i32* %head, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %1 = load i32, i32* %tail, align 4
  %call = call fastcc i1 @pipe_empty(i32 noundef %0, i32 noundef %1) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @pipe_lock(%struct.pipe_inode_info* noundef %pipe) #14
  %writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 9
  %2 = load i32, i32* %head, align 8
  %3 = load i32, i32* %tail, align 4
  %call322 = call fastcc i1 @pipe_empty(i32 noundef %2, i32 noundef %3) #13
  br i1 %call322, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %and = and i32 %flags, 2
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %tobool11.not = icmp ne i32 %and, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end13
  %call5 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %5) #13
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %while.end

if.end7:                                          ; preds = %while.body
  %6 = load i32, i32* %writers, align 8
  %tobool8.not = icmp eq i32 %6, 0
  %brmerge = or i1 %tobool8.not, %tobool11.not
  br i1 %brmerge, label %while.end.loopexit.split.loop.exit28, label %if.end13

if.end13:                                         ; preds = %if.end7
  call void @pipe_wait_readable(%struct.pipe_inode_info* noundef %pipe) #14
  %7 = load i32, i32* %head, align 8
  %8 = load i32, i32* %tail, align 4
  %call3 = call fastcc i1 @pipe_empty(i32 noundef %7, i32 noundef %8) #13
  br i1 %call3, label %while.body, label %while.end

while.end.loopexit.split.loop.exit28:             ; preds = %if.end7
  %.mux.le = select i1 %tobool8.not, i32 0, i32 -11
  br label %while.end

while.end:                                        ; preds = %while.body, %if.end13, %while.end.loopexit.split.loop.exit28, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ %.mux.le, %while.end.loopexit.split.loop.exit28 ], [ -512, %while.body ], [ 0, %if.end13 ]
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %pipe) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %ret.0, %while.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @opipe_prep(%struct.pipe_inode_info* noundef %pipe, i32 noundef %flags) unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %0 = load i32, i32* %head, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %1 = load i32, i32* %tail, align 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %2 = load i32, i32* %max_usage, align 8
  %call = call fastcc i1 @pipe_full(i32 noundef %0, i32 noundef %1, i32 noundef %2) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @pipe_lock(%struct.pipe_inode_info* noundef %pipe) #14
  %3 = load i32, i32* %head, align 8
  %4 = load i32, i32* %tail, align 4
  %5 = load i32, i32* %max_usage, align 8
  %call427 = call fastcc i1 @pipe_full(i32 noundef %3, i32 noundef %4, i32 noundef %5) #13
  br i1 %call427, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 8
  %and = and i32 %flags, 2
  %tobool9.not = icmp eq i32 %and, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end16
  %6 = load i32, i32* %readers, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %while.body
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call7 = call i32 @send_sig(i32 noundef 13, %struct.task_struct* noundef %8, i32 noundef 0) #14
  br label %while.end

if.end8:                                          ; preds = %while.body
  br i1 %tobool9.not, label %if.end11, label %while.end

if.end11:                                         ; preds = %if.end8
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %call13 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %10) #13
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %while.end

if.end16:                                         ; preds = %if.end11
  call void @pipe_wait_writable(%struct.pipe_inode_info* noundef %pipe) #14
  %11 = load i32, i32* %head, align 8
  %12 = load i32, i32* %tail, align 4
  %13 = load i32, i32* %max_usage, align 8
  %call4 = call fastcc i1 @pipe_full(i32 noundef %11, i32 noundef %12, i32 noundef %13) #13
  br i1 %call4, label %while.body, label %while.end

while.end:                                        ; preds = %if.end16, %if.end8, %if.end11, %if.end, %if.then5
  %ret.0 = phi i32 [ -32, %if.then5 ], [ 0, %if.end ], [ 0, %if.end16 ], [ -11, %if.end8 ], [ -512, %if.end11 ]
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %pipe) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %ret.0, %while.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @link_pipe(%struct.pipe_inode_info* noundef %ipipe, %struct.pipe_inode_info* noundef %opipe, i64 noundef %len) unnamed_addr #0 {
entry:
  call void @pipe_double_lock(%struct.pipe_inode_info* noundef %ipipe, %struct.pipe_inode_info* noundef %opipe) #14
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 4
  %0 = load i32, i32* %tail, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 6
  %1 = load i32, i32* %ring_size, align 4
  %sub = add i32 %1, -1
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 3
  %2 = load i32, i32* %head, align 8
  %ring_size1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 6
  %3 = load i32, i32* %ring_size1, align 4
  %sub2 = add i32 %3, -1
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 8
  %head7 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 3
  %tail8 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 5
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %ipipe, i64 0, i32 17
  %bufs13 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %opipe, i64 0, i32 17
  br label %do.body

do.body:                                          ; preds = %if.end32, %entry
  %len.addr.0 = phi i64 [ %len, %entry ], [ %sub36, %if.end32 ]
  %o_head.0 = phi i32 [ %2, %entry ], [ %inc, %if.end32 ]
  %i_tail.0 = phi i32 [ %0, %entry ], [ %inc38, %if.end32 ]
  %ret.0 = phi i32 [ 0, %entry ], [ %add, %if.end32 ]
  %4 = load i32, i32* %readers, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %call3 = call i32 @send_sig(i32 noundef 13, %struct.task_struct* noundef %6, i32 noundef 0) #14
  %tobool4.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool4.not, i32 -32, i32 %ret.0
  br label %do.end

if.end6:                                          ; preds = %do.body
  %7 = load i32, i32* %head7, align 8
  %call9 = call fastcc i1 @pipe_empty(i32 noundef %7, i32 noundef %i_tail.0) #13
  br i1 %call9, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %8 = load i32, i32* %tail8, align 4
  %9 = load i32, i32* %max_usage, align 8
  %call10 = call fastcc i1 @pipe_full(i32 noundef %o_head.0, i32 noundef %8, i32 noundef %9) #13
  br i1 %call10, label %do.end, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false
  %10 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %i_tail.0, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %10, i64 %idxprom
  %11 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs13, align 8
  %and14 = and i32 %o_head.0, %sub2
  %idxprom15 = zext i32 %and14 to i64
  %call17 = call fastcc i1 @pipe_buf_get(%struct.pipe_inode_info* noundef %ipipe, %struct.pipe_buffer* noundef %arrayidx) #13
  br i1 %call17, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end12
  %cmp = icmp eq i32 %ret.0, 0
  %spec.select10 = select i1 %cmp, i32 -14, i32 %ret.0
  br label %do.end

if.end21:                                         ; preds = %if.end12
  %arrayidx16 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %11, i64 %idxprom15
  %12 = bitcast %struct.pipe_buffer* %arrayidx16 to i8*
  %13 = bitcast %struct.pipe_buffer* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(40) %12, i8* noundef align 8 dereferenceable(40) %13, i64 40, i1 false)
  %flags22 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %11, i64 %idxprom15, i32 4
  %14 = load i32, i32* %flags22, align 8
  %and25 = and i32 %14, -21
  store i32 %and25, i32* %flags22, align 8
  %len26 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %11, i64 %idxprom15, i32 2
  %15 = load i32, i32* %len26, align 4
  %conv = zext i32 %15 to i64
  %cmp27 = icmp ult i64 %len.addr.0, %conv
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end21
  %conv30 = trunc i64 %len.addr.0 to i32
  store i32 %conv30, i32* %len26, align 4
  %.pre = and i64 %len.addr.0, 4294967295
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end21
  %conv35.pre-phi = phi i64 [ %.pre, %if.then29 ], [ %conv, %if.end21 ]
  %16 = phi i32 [ %conv30, %if.then29 ], [ %15, %if.end21 ]
  %add = add i32 %16, %ret.0
  %sub36 = sub i64 %len.addr.0, %conv35.pre-phi
  %inc = add i32 %o_head.0, 1
  store i32 %inc, i32* %head, align 8
  %inc38 = add i32 %i_tail.0, 1
  %tobool39.not = icmp eq i64 %sub36, 0
  br i1 %tobool39.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end6, %lor.lhs.false, %if.end32, %if.then18, %if.then
  %ret.1 = phi i32 [ %spec.select10, %if.then18 ], [ %spec.select, %if.then ], [ %add, %if.end32 ], [ %ret.0, %lor.lhs.false ], [ %ret.0, %if.end6 ]
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %ipipe) #14
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %opipe) #14
  %cmp40 = icmp sgt i32 %ret.1, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.end
  call fastcc void @wakeup_pipe_readers(%struct.pipe_inode_info* noundef %opipe) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %do.end
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_tee(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_tee(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_tee(i64 noundef %fdin, i64 noundef %fdout, i64 noundef %len, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fdin to i32
  %conv1 = trunc i64 %fdout to i32
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_tee(i32 noundef %conv, i32 noundef %conv1, i64 noundef %len, i32 noundef %conv2) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #15, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.2* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

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
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #13
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #14
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #15, !srcloc !17
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #14
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !18
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_has_private(%struct.page* nocapture noundef readonly %page) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %and = and i64 %0, 24576
  %tobool = icmp ne i64 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(%struct.page* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_mapping(%struct.address_space* noundef, %struct.page* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pipe_occupancy(i32 noundef %head, i32 noundef %tail) unnamed_addr #3 {
entry:
  %sub = sub i32 %head, %tail
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iocb_flags(%struct.file* nocapture noundef readonly %file) unnamed_addr #8 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = lshr i32 %0, 6
  %1 = and i32 %and, 16
  %and2 = shl i32 %0, 1
  %2 = and i32 %and2, 131072
  %3 = or i32 %2, %1
  %and8 = and i32 %0, 4096
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.then17

lor.lhs.false:                                    ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %4 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %4, i64 0, i32 0
  %5 = load %struct.inode*, %struct.inode** %host, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %5, i64 0, i32 6
  %6 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 10
  %7 = load i64, i64* %s_flags, align 16
  %and10 = and i64 %7, 16
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.then17

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %5, i64 0, i32 4
  %8 = load i32, i32* %i_flags, align 4
  %and15 = and i32 %8, 1
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %entry
  %or18 = or i32 %3, 2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.lhs.false12
  %res.2 = phi i32 [ %or18, %if.then17 ], [ %3, %lor.lhs.false12 ]
  %and21 = lshr i32 %0, 18
  %9 = and i32 %and21, 4
  %10 = or i32 %res.2, %9
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i16 @ki_hint_validate(i32 noundef %hint) unnamed_addr #3 {
entry:
  %0 = icmp ult i32 %hint, 65536
  %retval.05 = select i1 %0, i32 %hint, i32 65536
  %1 = trunc i32 %retval.05 to i16
  ret i16 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @file_write_hint(%struct.file* nocapture noundef readonly %file) unnamed_addr #8 {
entry:
  %f_write_hint = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 5
  %0 = load i32, i32* %f_write_hint, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #13
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 18
  %1 = load i8, i8* %i_write_hint, align 1
  %conv = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ %0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @get_current_ioprio() unnamed_addr #11 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %io_context = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 112
  %2 = load %struct.io_context*, %struct.io_context** %io_context, align 16
  %tobool.not = icmp eq %struct.io_context* %2, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %ioprio = getelementptr inbounds %struct.io_context, %struct.io_context* %2, i64 0, i32 4
  %3 = load i16, i16* %ioprio, align 4
  %conv = zext i16 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 16388, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(%struct.path* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #9 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !13

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wakeup_pipe_writers(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 2
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wr_wait) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__wake_up(%struct.wait_queue_head* noundef %wr_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fasync_writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 16
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_writers, i32 noundef 29, i32 noundef 2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_wait_readable(%struct.pipe_inode_info* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @eat_empty_buffer(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #0 {
entry:
  %tail1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %0 = load i32, i32* %tail1, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %1 = load i32, i32* %ring_size, align 4
  %sub = add i32 %1, -1
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %2 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %sub, %0
  %idxprom = zext i32 %and to i64
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %2, i64 %idxprom, i32 2
  %3 = load i32, i32* %len, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %cleanup, !prof !8

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %2, i64 %idxprom
  call fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %arrayidx) #13
  %add = add i32 %0, 1
  store i32 %add, i32* %tail1, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #9 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #13
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #13
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #9 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #13
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #9 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #3 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #9 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #13
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(%struct.fasync_struct** noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_wait_writable(%struct.pipe_inode_info* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_start_write(%struct.super_block* noundef %sb) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #13
  br i1 %call, label %do.body7, label %if.else, !prof !13

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef false) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  ret void
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
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #15, !srcloc !24
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !25
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #13
  br i1 %call, label %do.body3, label %if.else, !prof !13

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_vmsplice(i32 noundef %fd, %struct.iovec* noundef %uiov, i64 noundef %nr_segs, i32 noundef %flags) unnamed_addr #0 {
entry:
  %iovstack = alloca [8 x %struct.iovec], align 8
  %iov = alloca %struct.iovec*, align 8
  %iter = alloca %struct.iov_iter, align 8
  %type = alloca i32, align 4
  %0 = bitcast [8 x %struct.iovec]* %iovstack to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !11
  %1 = bitcast %struct.iovec** %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %arraydecay = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %iovstack, i64 0, i64 0
  store %struct.iovec* %arraydecay, %struct.iovec** %iov, align 8
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !11
  %3 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15
  store i32 0, i32* %type, align 4, !annotation !11
  %tobool.not = icmp ult i32 %flags, 16
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !13

if.end:                                           ; preds = %entry
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #13
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %4 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call3 = call fastcc i32 @vmsplice_type([2 x i64] %call, i32* noundef nonnull %type) #13
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %conv4 = sext i32 %call3 to i64
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %type, align 4
  %conv8 = trunc i64 %nr_segs to i32
  %call9 = call i64 @import_iovec(i32 noundef %5, %struct.iovec* noundef %uiov, i32 noundef %conv8, i32 noundef 8, %struct.iovec** noundef nonnull %iov, %struct.iov_iter* noundef nonnull %iter) #14
  %cmp = icmp slt i64 %call9, 0
  br i1 %cmp, label %out_fdput, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef nonnull %iter) #13
  %tobool14.not = icmp eq i64 %call13, 0
  br i1 %tobool14.not, label %if.end26, label %if.else

if.else:                                          ; preds = %if.end12
  %call16 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef nonnull %iter) #13
  %cmp18 = icmp eq i8 %call16, 1
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else
  %call21 = call fastcc i64 @vmsplice_to_pipe(%struct.file* noundef %4, %struct.iov_iter* noundef nonnull %iter, i32 noundef %flags) #13
  br label %if.end26

if.else22:                                        ; preds = %if.else
  %call24 = call fastcc i64 @vmsplice_to_user(%struct.file* noundef %4, %struct.iov_iter* noundef nonnull %iter, i32 noundef %flags) #13
  br label %if.end26

if.end26:                                         ; preds = %if.end12, %if.then20, %if.else22
  %error.0 = phi i64 [ %call21, %if.then20 ], [ %call24, %if.else22 ], [ 0, %if.end12 ]
  %6 = bitcast %struct.iovec** %iov to i8**
  %7 = load i8*, i8** %6, align 8
  call void @kfree(i8* noundef %7) #14
  br label %out_fdput

out_fdput:                                        ; preds = %if.end7, %if.end26
  %error.1 = phi i64 [ %call9, %if.end7 ], [ %error.0, %if.end26 ]
  call fastcc void @fdput([2 x i64] %call) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_fdput, %if.then6
  %retval.0 = phi i64 [ %conv4, %if.then6 ], [ %error.1, %out_fdput ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #14
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #13
  ret [2 x i64] %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmsplice_type([2 x i64] %f.coerce, i32* nocapture noundef writeonly %type) unnamed_addr #0 {
entry:
  %f.coerce.fca.0.extract = extractvalue [2 x i64] %f.coerce, 0
  %tobool.not = icmp eq i64 %f.coerce.fca.0.extract, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = inttoptr i64 %f.coerce.fca.0.extract to %struct.file*
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.end11

if.else:                                          ; preds = %if.end
  %and6 = and i32 %1, 1
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %if.end11

if.else9:                                         ; preds = %if.else
  call fastcc void @fdput([2 x i64] %f.coerce) #13
  br label %return

if.end11:                                         ; preds = %if.else, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ 0, %if.else ]
  store i32 %storemerge, i32* %type, align 4
  br label %return

return:                                           ; preds = %entry, %if.end11, %if.else9
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -9, %if.else9 ], [ -9, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @import_iovec(i32 noundef, %struct.iovec* noundef, i32 noundef, i32 noundef, %struct.iovec** noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #8 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @iov_iter_rw(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #8 {
entry:
  %data_source = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  %0 = load i8, i8* %data_source, align 1, !range !12
  ret i8 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @vmsplice_to_pipe(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = lshr i32 %flags, 1
  %0 = and i32 %and, 4
  %call = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %file, i1 noundef true) #14
  %tobool1.not = icmp eq %struct.pipe_inode_info* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  call void @pipe_lock(%struct.pipe_inode_info* noundef nonnull %call) #14
  %call4 = call fastcc i32 @wait_for_space(%struct.pipe_inode_info* noundef nonnull %call, i32 noundef %flags) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end3
  %call7 = call fastcc i32 @iter_to_pipe(%struct.iov_iter* noundef %iter, %struct.pipe_inode_info* noundef nonnull %call, i32 noundef %0) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end3
  %ret.0.in = phi i32 [ %call4, %if.end3 ], [ %call7, %if.then6 ]
  %ret.0 = sext i32 %ret.0.in to i64
  call void @pipe_unlock(%struct.pipe_inode_info* noundef nonnull %call) #14
  %cmp = icmp sgt i32 %ret.0.in, 0
  br i1 %cmp, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end9
  call fastcc void @wakeup_pipe_readers(%struct.pipe_inode_info* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11, %entry
  %retval.0 = phi i64 [ -9, %entry ], [ %ret.0, %if.then11 ], [ %ret.0, %if.end9 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @vmsplice_to_user(%struct.file* noundef %file, %struct.iov_iter* noundef %iter, i32 noundef %flags) unnamed_addr #0 {
entry:
  %sd = alloca %struct.splice_desc, align 8
  %call = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %file, i1 noundef true) #14
  %0 = bitcast %struct.splice_desc* %sd to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #15
  %1 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 7
  %2 = bitcast i8* %1 to i64*, !annotation !11
  store i64 0, i64* %2, align 8, !annotation !11
  %total_len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 0
  %call1 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #13
  store i64 %call1, i64* %total_len, align 8
  %len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 1
  store i32 0, i32* %len, align 8
  %flags2 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 2
  store i32 %flags, i32* %flags2, align 4
  %data = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 3, i32 0
  %3 = getelementptr %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  store i8* %3, i8** %data, align 8
  %pos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 4
  store i64 0, i64* %pos, align 8
  %opos = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 5
  store i64* null, i64** %opos, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 6
  store i64 0, i64* %num_spliced, align 8
  %tobool.not = icmp eq %struct.pipe_inode_info* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq i64 %call1, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @pipe_lock(%struct.pipe_inode_info* noundef nonnull %call) #14
  %call6 = call i64 @__splice_from_pipe(%struct.pipe_inode_info* noundef nonnull %call, %struct.splice_desc* noundef nonnull %sd, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* noundef nonnull @pipe_to_user) #13
  call void @pipe_unlock(%struct.pipe_inode_info* noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %entry
  %retval.0 = phi i64 [ -9, %entry ], [ %call6, %if.then5 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #0 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #3 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @iter_to_pipe(%struct.iov_iter* noundef %from, %struct.pipe_inode_info* noundef %pipe, i32 noundef %flags) unnamed_addr #0 {
entry:
  %buf = alloca %struct.pipe_buffer, align 8
  %pages = alloca [16 x %struct.page*], align 8
  %start = alloca i64, align 8
  %0 = bitcast %struct.pipe_buffer* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %offset = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 1
  %len = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 2
  %ops = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 3
  %1 = bitcast %struct.pipe_buffer* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  store %struct.pipe_buf_operations* bitcast ({ i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }* @user_page_pipe_buf_ops to %struct.pipe_buf_operations*), %struct.pipe_buf_operations** %ops, align 8
  %flags1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 4
  store i32 %flags, i32* %flags1, align 8
  %private = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 5
  store i64 0, i64* %private, align 8
  %call96 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #13
  %tobool97.not = icmp eq i64 %call96, 0
  br i1 %tobool97.not, label %while.end.thread, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %2 = bitcast [16 x %struct.page*]* %pages to i8*
  %3 = bitcast i64* %start to i8*
  %arraydecay = getelementptr inbounds [16 x %struct.page*], [16 x %struct.page*]* %pages, i64 0, i64 0
  %arrayidx29.peel = getelementptr inbounds [16 x %struct.page*], [16 x %struct.page*]* %pages, i64 0, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %for.cond.cleanup_crit_edge
  %total.0100 = phi i64 [ 0, %while.body.lr.ph ], [ %total.2.lcssa, %for.cond.cleanup_crit_edge ]
  %ret.099 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.2.lcssa, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #15
  store i64 0, i64* %start, align 8, !annotation !11
  %call3 = call i64 @iov_iter_get_pages(%struct.iov_iter* noundef %from, %struct.page** noundef nonnull %arraydecay, i64 noundef -1, i32 noundef 16, i64* noundef nonnull %start) #14
  %cmp = icmp slt i64 %call3, 1
  br i1 %cmp, label %cleanup.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %while.body
  %.pre = load i64, i64* %start, align 8
  %conv5.peel = trunc i64 %call3 to i32
  %4 = trunc i64 %.pre to i32
  %conv6.peel = sub i32 4096, %4
  %cmp7.peel = icmp sgt i32 %conv6.peel, %conv5.peel
  %cond.peel = select i1 %cmp7.peel, i32 %conv5.peel, i32 %conv6.peel
  %5 = load %struct.page*, %struct.page** %arrayidx29.peel, align 8
  store %struct.page* %5, %struct.page** %page, align 8
  store i32 %4, i32* %offset, align 8
  store i32 %cond.peel, i32* %len, align 4
  %call15.peel = call i64 @add_to_pipe(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef nonnull %buf) #13
  %conv16.peel = trunc i64 %call15.peel to i32
  %cmp17.peel = icmp slt i32 %conv16.peel, 0
  br i1 %cmp17.peel, label %if.end30.peel, label %if.else.peel, !prof !8

if.else.peel:                                     ; preds = %for.body.preheader
  %sext.peel = shl i64 %call15.peel, 32
  %conv24.peel = ashr exact i64 %sext.peel, 32
  call void @iov_iter_advance(%struct.iov_iter* noundef %from, i64 noundef %conv24.peel) #14
  %add.peel = add i64 %conv24.peel, %total.0100
  br label %if.end30.peel

if.end30.peel:                                    ; preds = %if.else.peel, %for.body.preheader
  %failed.2.off0.peel = phi i1 [ false, %if.else.peel ], [ true, %for.body.preheader ]
  %total.2.peel = phi i64 [ %add.peel, %if.else.peel ], [ %total.0100, %for.body.preheader ]
  %conv31.peel = sext i32 %cond.peel to i64
  %sub32.peel = sub i64 %call3, %conv31.peel
  store i64 0, i64* %start, align 8
  %tobool4.not.peel = icmp eq i64 %sub32.peel, 0
  br i1 %tobool4.not.peel, label %for.cond.cleanup_crit_edge, label %for.body

cleanup.thread:                                   ; preds = %while.body
  %conv = trunc i64 %call3 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #15
  br label %while.end

for.body:                                         ; preds = %if.end30.peel, %if.end30
  %total.193 = phi i64 [ %total.2, %if.end30 ], [ %total.2.peel, %if.end30.peel ]
  %ret.192 = phi i32 [ %ret.2, %if.end30 ], [ %conv16.peel, %if.end30.peel ]
  %failed.1.off091 = phi i1 [ %failed.2.off0, %if.end30 ], [ %failed.2.off0.peel, %if.end30.peel ]
  %n.089 = phi i32 [ %inc, %if.end30 ], [ 1, %if.end30.peel ]
  %copied.088 = phi i64 [ %sub32, %if.end30 ], [ %sub32.peel, %if.end30.peel ]
  %conv5 = trunc i64 %copied.088 to i32
  %cmp7 = icmp slt i32 %conv5, 4096
  %cond = select i1 %cmp7, i32 %conv5, i32 4096
  %idxprom28 = sext i32 %n.089 to i64
  %arrayidx29 = getelementptr [16 x %struct.page*], [16 x %struct.page*]* %pages, i64 0, i64 %idxprom28
  %6 = load %struct.page*, %struct.page** %arrayidx29, align 8
  br i1 %failed.1.off091, label %if.else27, label %if.then10

if.then10:                                        ; preds = %for.body
  store %struct.page* %6, %struct.page** %page, align 8
  store i32 0, i32* %offset, align 8
  store i32 %cond, i32* %len, align 4
  %call15 = call i64 @add_to_pipe(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef nonnull %buf) #13
  %conv16 = trunc i64 %call15 to i32
  %cmp17 = icmp slt i32 %conv16, 0
  br i1 %cmp17, label %if.end30, label %if.else, !prof !8

if.else:                                          ; preds = %if.then10
  %sext = shl i64 %call15, 32
  %conv24 = ashr exact i64 %sext, 32
  call void @iov_iter_advance(%struct.iov_iter* noundef %from, i64 noundef %conv24) #14
  %add = add i64 %conv24, %total.193
  br label %if.end30

if.else27:                                        ; preds = %for.body
  call fastcc void @put_page(%struct.page* noundef %6) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then10, %if.else, %if.else27
  %failed.2.off0 = phi i1 [ true, %if.else27 ], [ false, %if.else ], [ true, %if.then10 ]
  %ret.2 = phi i32 [ %ret.192, %if.else27 ], [ %conv16, %if.else ], [ %conv16, %if.then10 ]
  %total.2 = phi i64 [ %total.193, %if.else27 ], [ %add, %if.else ], [ %total.193, %if.then10 ]
  %conv31 = sext i32 %cond to i64
  %sub32 = sub i64 %copied.088, %conv31
  %inc = add i32 %n.089, 1
  store i64 0, i64* %start, align 8
  %tobool4.not = icmp eq i64 %sub32, 0
  br i1 %tobool4.not, label %for.cond.cleanup_crit_edge, label %for.body, !llvm.loop !33

for.cond.cleanup_crit_edge:                       ; preds = %if.end30, %if.end30.peel
  %failed.2.off0.lcssa = phi i1 [ %failed.2.off0.peel, %if.end30.peel ], [ %failed.2.off0, %if.end30 ]
  %ret.2.lcssa = phi i32 [ %conv16.peel, %if.end30.peel ], [ %ret.2, %if.end30 ]
  %total.2.lcssa = phi i64 [ %total.2.peel, %if.end30.peel ], [ %total.2, %if.end30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #15
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #13
  %tobool = icmp eq i64 %call, 0
  %7 = or i1 %failed.2.off0.lcssa, %tobool
  br i1 %7, label %while.end, label %while.body

while.end:                                        ; preds = %for.cond.cleanup_crit_edge, %cleanup.thread
  %total.084 = phi i64 [ %total.0100, %cleanup.thread ], [ %total.2.lcssa, %for.cond.cleanup_crit_edge ]
  %ret.4 = phi i32 [ %conv, %cleanup.thread ], [ %ret.2.lcssa, %for.cond.cleanup_crit_edge ]
  %tobool36.not = icmp eq i64 %total.084, 0
  %conv3977 = zext i32 %ret.4 to i64
  br i1 %tobool36.not, label %while.end.thread, label %8

while.end.thread:                                 ; preds = %entry, %while.end
  %conv3977109 = phi i64 [ %conv3977, %while.end ], [ 0, %entry ]
  br label %8

8:                                                ; preds = %while.end, %while.end.thread
  %9 = phi i64 [ %conv3977109, %while.end.thread ], [ %total.084, %while.end ]
  %conv42 = trunc i64 %9 to i32
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  ret i32 %conv42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iov_iter_get_pages(%struct.iov_iter* noundef, %struct.page** noundef, i64 noundef, i32 noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @user_page_pipe_buf_try_steal(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #0 {
entry:
  %flags = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %or = or i32 %0, 1
  store i32 %or, i32* %flags, align 8
  %call = call i1 @generic_pipe_buf_try_steal(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pipe_to_user(%struct.pipe_inode_info* nocapture noundef readnone %pipe, %struct.pipe_buffer* nocapture noundef readonly %buf, %struct.splice_desc* nocapture noundef readonly %sd) #0 {
entry:
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page, align 8
  %offset = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 1
  %1 = load i32, i32* %offset, align 8
  %conv = zext i32 %1 to i64
  %len = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 1
  %2 = load i32, i32* %len, align 8
  %conv1 = zext i32 %2 to i64
  %data = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %sd, i64 0, i32 3, i32 0
  %3 = bitcast i8** %data to %struct.iov_iter**
  %4 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %call = call i64 @copy_page_to_iter(%struct.page* noundef %0, i64 noundef %conv, i64 noundef %conv1, %struct.iov_iter* noundef %4) #14
  %conv2 = trunc i64 %call to i32
  %5 = load i32, i32* %len, align 8
  %cmp = icmp eq i32 %5, %conv2
  %cond = select i1 %cmp, i32 %conv2, i32 -14
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_page_to_iter(%struct.page* noundef, i64 noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_splice(i32 noundef %fd_in, i64* noundef %off_in, i32 noundef %fd_out, i64* noundef %off_out, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %len, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %tobool4.not = icmp ult i32 %flags, 16
  br i1 %tobool4.not, label %if.end13, label %cleanup, !prof !13

if.end13:                                         ; preds = %if.end
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd_in) #13
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool14.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool14.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call17 = call fastcc [2 x i64] @fdget(i32 noundef %fd_out) #13
  %call17.fca.0.extract = extractvalue [2 x i64] %call17, 0
  %tobool19.not = icmp eq i64 %call17.fca.0.extract, 0
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.then15
  %1 = inttoptr i64 %call17.fca.0.extract to %struct.file*
  %call23 = call fastcc i64 @__do_splice(%struct.file* noundef nonnull %0, i64* noundef %off_in, %struct.file* noundef nonnull %1, i64* noundef %off_out, i64 noundef %len, i32 noundef %flags) #13
  call fastcc void @fdput([2 x i64] %call17) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then15
  %error.0 = phi i64 [ %call23, %if.then20 ], [ -9, %if.then15 ]
  call fastcc void @fdput([2 x i64] %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end24, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ -22, %if.end ], [ %error.0, %if.end24 ], [ -9, %if.end13 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_splice(%struct.file* noundef %in, i64* noundef %off_in, %struct.file* noundef %out, i64* noundef %off_out, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 {
entry:
  %offset = alloca i64, align 8
  %0 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 0, i64* %offset, align 8, !annotation !11
  %call = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %in, i1 noundef true) #14
  %call1 = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %out, i1 noundef true) #14
  %tobool = icmp ne %struct.pipe_inode_info* %call, null
  %tobool2 = icmp ne i64* %off_in, null
  %or.cond = and i1 %tobool2, %tobool
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool3 = icmp ne %struct.pipe_inode_info* %call1, null
  %tobool5 = icmp ne i64* %off_out, null
  %or.cond42 = and i1 %tobool5, %tobool3
  br i1 %or.cond42, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  br i1 %tobool5, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end7
  %1 = bitcast i64* %off_out to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %1) #14
  %tobool11.not = icmp eq i64 %call2.i, 0
  br i1 %tobool11.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.then9, %if.end7
  %__off_out.0 = phi i64* [ null, %if.end7 ], [ %offset, %if.then9 ]
  br i1 %tobool2, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  %2 = bitcast i64* %off_in to i8*
  %call2.i62 = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %2) #14
  %tobool18.not = icmp eq i64 %call2.i62, 0
  br i1 %tobool18.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.then16, %if.end14
  %__off_in.0 = phi i64* [ null, %if.end14 ], [ %offset, %if.then16 ]
  %call22 = call i64 @do_splice(%struct.file* noundef %in, i64* noundef %__off_in.0, %struct.file* noundef %out, i64* noundef %__off_out.0, i64 noundef %len, i32 noundef %flags) #13
  %cmp = icmp slt i64 %call22, 0
  br i1 %cmp, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end21
  %tobool25.not = icmp eq i64* %__off_out.0, null
  br i1 %tobool25.not, label %if.end30, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end24
  %3 = bitcast i64* %off_out to i8*
  %4 = bitcast i64* %__off_out.0 to i8*
  %call2.i63 = call fastcc i64 @_copy_to_user(i8* noundef %3, i8* noundef nonnull %4) #14
  %tobool28.not = icmp eq i64 %call2.i63, 0
  br i1 %tobool28.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %land.lhs.true26, %if.end24
  %tobool31.not = icmp eq i64* %__off_in.0, null
  br i1 %tobool31.not, label %if.end36, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end30
  %5 = bitcast i64* %off_in to i8*
  %6 = bitcast i64* %__off_in.0 to i8*
  %call2.i64 = call fastcc i64 @_copy_to_user(i8* noundef %5, i8* noundef nonnull %6) #14
  %tobool34.not = icmp eq i64 %call2.i64, 0
  br i1 %tobool34.not, label %if.end36, label %cleanup

if.end36:                                         ; preds = %land.lhs.true32, %if.end30
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true32, %land.lhs.true26, %if.end21, %if.then16, %if.then9, %if.end, %entry, %if.end36
  %retval.0 = phi i64 [ %call22, %if.end36 ], [ -29, %entry ], [ -29, %if.end ], [ -14, %if.then9 ], [ -14, %if.then16 ], [ %call22, %if.end21 ], [ -14, %land.lhs.true26 ], [ -14, %land.lhs.true32 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from) #13
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.then16, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #13
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef 8) #14
  %tobool8.not = icmp eq i64 %call6, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !13

if.then16:                                        ; preds = %entry, %if.end
  %res.03 = phi i64 [ %call6, %if.end ], [ 8, %entry ]
  %sub = sub i64 8, %res.03
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.03) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %res.04 = phi i64 [ %res.03, %if.then16 ], [ 0, %if.end ]
  ret i64 %res.04
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 8, i8* %addr, i64 549755813887) #15, !srcloc !35
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #15, !srcloc !36
  call void asm sideeffect "hint #20", "~{memory}"() #15, !srcloc !37
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to) #13
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #13
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef 8) #14
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ 8, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_double_lock(%struct.pipe_inode_info* noundef, %struct.pipe_inode_info* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @pipe_buf_get(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 3
  %0 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops, align 8
  %get = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %0, i64 0, i32 3
  %1 = load i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %get, align 8
  %call = call i1 %1(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #14
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_tee(i32 noundef %fdin, i32 noundef %fdout, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %flags, 16
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !13

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq i64 %len, 0
  br i1 %tobool3.not, label %cleanup, label %if.end14, !prof !8

if.end14:                                         ; preds = %if.end
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fdin) #13
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool15.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool15.not, label %if.end27, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call18 = call fastcc [2 x i64] @fdget(i32 noundef %fdout) #13
  %call18.fca.0.extract = extractvalue [2 x i64] %call18, 0
  %tobool20.not = icmp eq i64 %call18.fca.0.extract, 0
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.then16
  %1 = inttoptr i64 %call18.fca.0.extract to %struct.file*
  %call24 = call i64 @do_tee(%struct.file* noundef nonnull %0, %struct.file* noundef nonnull %1, i64 noundef %len, i32 noundef %flags) #13
  call fastcc void @fdput([2 x i64] %call18) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then16
  %error.0 = phi i64 [ %call24, %if.then21 ], [ -9, %if.then16 ]
  call fastcc void @fdput([2 x i64] %call) #13
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end14
  %error.1 = phi i64 [ %error.0, %if.end26 ], [ -9, %if.end14 ]
  %sext = shl i64 %error.1, 32
  %conv28 = ashr exact i64 %sext, 32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end27
  %retval.0 = phi i64 [ %conv28, %if.end27 ], [ -22, %entry ], [ 0, %if.end ]
  ret i64 %retval.0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155510017}
!10 = !{i64 1398131}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2155521893}
!15 = !{i64 2155510557}
!16 = !{i64 2150793268}
!17 = !{i64 2148055757, i64 2148056427, i64 2148056457, i64 2148056489, i64 2148056521, i64 2148056555, i64 2148056580}
!18 = !{i64 2147994362, i64 2147995010, i64 2147995040, i64 2147995072, i64 2147995106, i64 2147995142, i64 2147995167}
!19 = !{i64 2155514329}
!20 = !{i64 2151683717}
!21 = !{i64 2151687140}
!22 = !{i64 2151687982}
!23 = !{i64 2151689168}
!24 = !{i64 2149184901, i64 2149184943, i64 2149185002, i64 2149185055}
!25 = !{i64 2149160011, i64 2149160058, i64 2149160064, i64 2149160101, i64 2149160119, i64 2149161046, i64 2149161094, i64 2149161142, i64 2149161205, i64 2149161254, i64 2149160197, i64 2149160222, i64 2149160248, i64 2149160254, i64 2149160291, i64 2149160297, i64 2149160347, i64 2149160393, i64 2149160426}
!26 = !{i64 2151702077}
!27 = !{i64 2151705938}
!28 = !{i64 2151706780}
!29 = !{i64 2151708034}
!30 = !{i64 2151715918}
!31 = !{i64 2151716760}
!32 = !{i64 2151718012}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{i64 3966212, i64 3966295, i64 3966519, i64 3966739, i64 3966762}
!36 = !{i64 3970914, i64 3970938}
!37 = !{i64 2151523698}
