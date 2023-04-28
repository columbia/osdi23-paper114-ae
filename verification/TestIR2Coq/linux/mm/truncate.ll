; ModuleID = 'mm/truncate.c'
source_filename = "mm/truncate.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, {}*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.page = type { i64, %union.anon, %union.anon.80, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.84, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.57, %struct.list_head, %struct.list_head, %union.anon.58 }
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
%union.anon.57 = type { %struct.list_head }
%union.anon.58 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.59 }
%union.anon.59 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.47, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.20, [0 x i64] }
%struct.anon.20 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.29, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.50, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.50 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.51, %union.anon.52, %union.anon.53, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.56, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.51 = type { %struct.hlist_node }
%union.anon.52 = type { %struct.rb_node }
%union.anon.53 = type { %struct.anon.55 }
%struct.anon.55 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.56 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.30, %union.anon.31, i32 }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
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
%union.anon.29 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.32 }
%struct.anon.32 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.45 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.46, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.46 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.47 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.48, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.49, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.48 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.49 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.65 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.63, %struct.qspinlock }
%union.anon.63 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.65 = type { %struct.nfs_lock_info }
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
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.fid = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i16, i16, i32, i32, i32 }
%struct.iomap = type opaque
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
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.82 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.83 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.84 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.80 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.60, %union.anon.61 }
%union.anon.60 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.61 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pagevec = type { i8, i8, [15 x %struct.page*] }
%struct.xa_state = type { %struct.xarray*, i64, i8, i8, i8, i8, %struct.xa_node*, %struct.xa_node*, void (%struct.xa_node*)* }
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.85, [64 x i8*], %union.anon.86 }
%union.anon.85 = type { %struct.list_head }
%union.anon.86 = type { [3 x [1 x i64]] }
%struct.anon.74 = type { i64, i8, i8, %struct.atomic_t, i32 }

@shmem_aops = external dso_local constant %struct.address_space_operations, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_invalidatepage(%struct.page* noundef %page, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 {
entry:
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %invalidatepage1 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 9
  %invalidatepage2 = bitcast {}** %invalidatepage1 to void (%struct.page*, i32, i32)**
  %2 = load void (%struct.page*, i32, i32)*, void (%struct.page*, i32, i32)** %invalidatepage2, align 8
  %tobool.not = icmp eq void (%struct.page*, i32, i32)* %2, null
  %spec.store.select = select i1 %tobool.not, void (%struct.page*, i32, i32)* @block_invalidatepage, void (%struct.page*, i32, i32)* %2
  call void %spec.store.select(%struct.page* noundef %page, i32 noundef %offset, i32 noundef %length) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @block_invalidatepage(%struct.page* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @truncate_inode_page(%struct.address_space* noundef readnone %mapping, %struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %cmp.not = icmp eq %struct.address_space* %0, %mapping
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @truncate_cleanup_page(%struct.page* noundef %page) #9
  call void @delete_from_page_cache(%struct.page* noundef %page) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @truncate_cleanup_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call i1 @page_mapped(%struct.page* noundef %page) #8
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @unmap_mapping_page(%struct.page* noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call fastcc i32 @page_has_private(%struct.page* noundef %page) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @do_invalidatepage(%struct.page* noundef %page, i32 noundef 0, i32 noundef 4096) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  call fastcc void @cancel_dirty_page(%struct.page* noundef %page) #9
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_page_cache(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_error_remove_page(%struct.address_space* noundef %mapping, %struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.address_space* %mapping, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 0
  %1 = load i16, i16* %i_mode, align 8
  %2 = and i16 %1, -4096
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %call = call i32 @truncate_inode_page(%struct.address_space* noundef nonnull %mapping, %struct.page* noundef %page) #9
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry ], [ -5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @invalidate_inode_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #8
  %tobool.not = icmp eq %struct.address_space* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 8
  %tobool2.not = icmp eq i64 %2, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call.i17 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %3 = inttoptr i64 %call.i17 to %struct.page*
  %flags.i18 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i18, align 8
  %5 = and i64 %4, 32768
  %tobool4.not = icmp eq i64 %5, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = call i1 @page_mapped(%struct.page* noundef %page) #8
  br i1 %call7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = call fastcc i32 @invalidate_complete_page(%struct.address_space* noundef nonnull %call, %struct.page* noundef %page) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %lor.lhs.false, %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @page_mapped(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @invalidate_complete_page(%struct.address_space* noundef %mapping, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %cmp.not = icmp eq %struct.address_space* %0, %mapping
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @page_has_private(%struct.page* noundef %page) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @try_to_release_page(%struct.page* noundef %page, i32 noundef 0) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call6 = call i32 @remove_mapping(%struct.address_space* noundef %mapping, %struct.page* noundef %page) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @truncate_inode_pages_range(%struct.address_space* noundef %mapping, i64 noundef %lstart, i64 noundef %lend) local_unnamed_addr #0 {
entry:
  %pvec = alloca %struct.pagevec, align 8
  %indices = alloca [15 x i64], align 8
  %0 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !7
  %1 = bitcast [15 x i64]* %indices to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %1, i8 0, i64 120, i1 false), !annotation !7
  %call = call fastcc i1 @mapping_empty(%struct.address_space* noundef %mapping) #9
  br i1 %call, label %out, label %if.end

if.end:                                           ; preds = %entry
  %2 = trunc i64 %lstart to i32
  %conv = and i32 %2, 4095
  %add = add i64 %lend, 1
  %3 = trunc i64 %add to i32
  %conv2 = and i32 %3, 4095
  %sub = add i64 %lstart, 4095
  %shr = lshr i64 %sub, 12
  %cmp = icmp eq i64 %lend, -1
  %shr7 = ashr i64 %add, 12
  %end.0 = select i1 %cmp, i64 -1, i64 %shr7
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #9
  %sub11 = add nsw i64 %end.0, -1
  %arraydecay = getelementptr inbounds [15 x i64], [15 x i64]* %indices, i64 0, i64 0
  %cmp9206 = icmp ult i64 %shr, %end.0
  br i1 %cmp9206, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %if.end, %for.end32
  %index.0207 = phi i64 [ %add15, %for.end32 ], [ %shr, %if.end ]
  %call12 = call i32 @find_lock_entries(%struct.address_space* noundef %mapping, i64 noundef %index.0207, i64 noundef %sub11, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call13 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %sub14 = add i32 %call13, -1
  %idxprom = zext i32 %sub14 to i64
  %arrayidx = getelementptr [15 x i64], [15 x i64]* %indices, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add15 = add i64 %4, 1
  call fastcc void @truncate_exceptional_pvec_entries(%struct.address_space* noundef %mapping, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #9
  %call17200 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp18201.not = icmp eq i32 %call17200, 0
  br i1 %cmp18201.not, label %for.end, label %for.body

for.body:                                         ; preds = %while.body, %for.body
  %i.0202 = phi i32 [ %inc, %for.body ], [ 0, %while.body ]
  %idxprom20 = sext i32 %i.0202 to i64
  %arrayidx21 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom20
  %5 = load %struct.page*, %struct.page** %arrayidx21, align 8
  call fastcc void @truncate_cleanup_page(%struct.page* noundef %5) #9
  %inc = add nuw i32 %i.0202, 1
  %call17 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp18 = icmp ult i32 %inc, %call17
  br i1 %cmp18, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %while.body
  call void @delete_from_page_cache_batch(%struct.address_space* noundef %mapping, %struct.pagevec* noundef nonnull %pvec) #8
  %call23203 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp24204.not = icmp eq i32 %call23203, 0
  br i1 %cmp24204.not, label %for.end32, label %for.body26

for.body26:                                       ; preds = %for.end, %for.body26
  %i.1205 = phi i32 [ %inc31, %for.body26 ], [ 0, %for.end ]
  %idxprom28 = sext i32 %i.1205 to i64
  %arrayidx29 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom28
  %6 = load %struct.page*, %struct.page** %arrayidx29, align 8
  call void @unlock_page(%struct.page* noundef %6) #8
  %inc31 = add nuw i32 %i.1205, 1
  %call23 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp24 = icmp ult i32 %inc31, %call23
  br i1 %cmp24, label %for.body26, label %for.end32

for.end32:                                        ; preds = %for.body26, %for.end
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #9
  call fastcc void @_cond_resched() #9
  %cmp9 = icmp ult i64 %add15, %end.0
  br i1 %cmp9, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %for.end32, %if.end
  %tobool34.not = icmp eq i32 %conv, 0
  br i1 %tobool34.not, label %if.end50, label %if.then35

if.then35:                                        ; preds = %while.end
  %sub36 = add nsw i64 %shr, -1
  %call37 = call fastcc %struct.page* @find_lock_page(%struct.address_space* noundef %mapping, i64 noundef %sub36) #9
  %tobool38.not = icmp eq %struct.page* %call37, null
  br i1 %tobool38.not, label %if.end50, label %if.then39

if.then39:                                        ; preds = %if.then35
  %cmp40 = icmp ugt i64 %shr, %end.0
  %spec.select = select i1 %cmp40, i32 0, i32 %conv2
  %spec.select199 = select i1 %cmp40, i32 %conv2, i32 4096
  call void @wait_on_page_writeback(%struct.page* noundef nonnull %call37) #8
  call fastcc void @zero_user_segment(%struct.page* noundef nonnull %call37, i32 noundef %conv, i32 noundef %spec.select199) #9
  %call44 = call fastcc i32 @page_has_private(%struct.page* noundef nonnull %call37) #9
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.then39
  %sub47 = sub nsw i32 %spec.select199, %conv
  call void @do_invalidatepage(%struct.page* noundef nonnull %call37, i32 noundef %conv, i32 noundef %sub47) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then39
  call void @unlock_page(%struct.page* noundef nonnull %call37) #8
  call fastcc void @put_page(%struct.page* noundef nonnull %call37) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then35, %if.end48, %while.end
  %partial_end.2 = phi i32 [ %conv2, %while.end ], [ %spec.select, %if.end48 ], [ %conv2, %if.then35 ]
  %tobool51.not = icmp eq i32 %partial_end.2, 0
  br i1 %tobool51.not, label %if.end62, label %if.then52

if.then52:                                        ; preds = %if.end50
  %call54 = call fastcc %struct.page* @find_lock_page(%struct.address_space* noundef %mapping, i64 noundef %end.0) #9
  %tobool55.not = icmp eq %struct.page* %call54, null
  br i1 %tobool55.not, label %if.end62, label %if.then56

if.then56:                                        ; preds = %if.then52
  call void @wait_on_page_writeback(%struct.page* noundef nonnull %call54) #8
  call fastcc void @zero_user_segment(%struct.page* noundef nonnull %call54, i32 noundef 0, i32 noundef %partial_end.2) #9
  %call57 = call fastcc i32 @page_has_private(%struct.page* noundef nonnull %call54) #9
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.then56
  call void @do_invalidatepage(%struct.page* noundef nonnull %call54, i32 noundef 0, i32 noundef %partial_end.2) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then56
  call void @unlock_page(%struct.page* noundef nonnull %call54) #8
  call fastcc void @put_page(%struct.page* noundef nonnull %call54) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then52, %if.end60, %if.end50
  br i1 %cmp9206, label %for.cond67, label %out

for.cond67:                                       ; preds = %if.end62, %for.cond67.backedge
  %index.1 = phi i64 [ %index.1.be, %for.cond67.backedge ], [ %shr, %if.end62 ]
  call fastcc void @_cond_resched() #9
  %call72 = call i32 @find_get_entries(%struct.address_space* noundef %mapping, i64 noundef %index.1, i64 noundef %sub11, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %for.cond67
  %call81208 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp82209.not = icmp eq i32 %call81208, 0
  br i1 %cmp82209.not, label %for.end118, label %for.body84

if.then74:                                        ; preds = %for.cond67
  %cmp75 = icmp eq i64 %index.1, %shr
  br i1 %cmp75, label %out, label %for.cond67.backedge

for.body84:                                       ; preds = %for.cond80.preheader, %cleanup
  %i.2210 = phi i32 [ %inc117, %cleanup ], [ 0, %for.cond80.preheader ]
  %idxprom87 = sext i32 %i.2210 to i64
  %arrayidx88 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom87
  %7 = load %struct.page*, %struct.page** %arrayidx88, align 8
  %arrayidx90 = getelementptr [15 x i64], [15 x i64]* %indices, i64 0, i64 %idxprom87
  %8 = load i64, i64* %arrayidx90, align 8
  %9 = bitcast %struct.page* %7 to i8*
  %call91 = call fastcc i1 @xa_is_value(i8* noundef %9) #9
  br i1 %call91, label %cleanup, label %if.end93

if.end93:                                         ; preds = %for.body84
  call fastcc void @lock_page(%struct.page* noundef %7) #9
  %call94 = call fastcc i64 @page_to_index(%struct.page* noundef %7) #9
  %cmp95.not = icmp eq i64 %call94, %8
  br i1 %cmp95.not, label %if.end106, label %if.then105, !prof !8

if.then105:                                       ; preds = %if.end93
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/truncate.c\22; .popsection; .long 14472b - 14470b; .short 395; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end93
  call void @wait_on_page_writeback(%struct.page* noundef %7) #8
  %call115 = call i32 @truncate_inode_page(%struct.address_space* noundef %mapping, %struct.page* noundef %7) #9
  call void @unlock_page(%struct.page* noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body84, %if.end106
  %inc117 = add nuw i32 %i.2210, 1
  %call81 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp82 = icmp ult i32 %inc117, %call81
  br i1 %cmp82, label %for.body84, label %for.end118

for.end118:                                       ; preds = %cleanup, %for.cond80.preheader
  %index.2.lcssa = phi i64 [ %index.1, %for.cond80.preheader ], [ %8, %cleanup ]
  call fastcc void @truncate_exceptional_pvec_entries(%struct.address_space* noundef %mapping, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #9
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #9
  %inc120 = add i64 %index.2.lcssa, 1
  br label %for.cond67.backedge

for.cond67.backedge:                              ; preds = %for.end118, %if.then74
  %index.1.be = phi i64 [ %inc120, %for.end118 ], [ %shr, %if.then74 ]
  br label %for.cond67

out:                                              ; preds = %if.then74, %if.end62, %entry
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mapping_empty(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #4 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %call = call fastcc i1 @xa_empty(%struct.xarray* noundef %i_pages) #9
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pagevec_init(%struct.pagevec* nocapture noundef writeonly %pvec) unnamed_addr #5 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 0, i8* %nr, align 8
  %percpu_pvec_drained = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 1
  store i8 0, i8* %percpu_pvec_drained, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_lock_entries(%struct.address_space* noundef, i64 noundef, i64 noundef, %struct.pagevec* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_count(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #4 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @truncate_exceptional_pvec_entries(%struct.address_space* noundef %mapping, %struct.pagevec* nocapture noundef %pvec, i64* nocapture noundef readonly %indices) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %mapping) #9
  br i1 %call, label %cleanup44, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #9
  %cmp79.not = icmp eq i32 %call1, 0
  br i1 %cmp79.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %j.080 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %idxprom = sext i32 %j.080 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %0 = bitcast %struct.page** %arrayidx to i8**
  %1 = load i8*, i8** %0, align 8
  %call2 = call fastcc i1 @xa_is_value(i8* noundef %1) #9
  br i1 %call2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %j.080, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup44, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %j.080, %for.body ]
  %cmp6 = icmp eq i32 %j.0.lcssa, %call1
  br i1 %cmp6, label %cleanup44, label %if.end8

if.end8:                                          ; preds = %for.end
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %call1384 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #9
  %cmp1485 = icmp ult i32 %j.0.lcssa, %call1384
  br i1 %cmp1485, label %for.body15, label %if.then39

for.body15:                                       ; preds = %if.end8, %cleanup
  %j.187 = phi i32 [ %j.2, %cleanup ], [ %j.0.lcssa, %if.end8 ]
  %i.086 = phi i32 [ %inc36, %cleanup ], [ %j.0.lcssa, %if.end8 ]
  %idxprom17 = sext i32 %i.086 to i64
  %arrayidx18 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom17
  %2 = load %struct.page*, %struct.page** %arrayidx18, align 8
  %3 = bitcast %struct.page* %2 to i8*
  %call21 = call fastcc i1 @xa_is_value(i8* noundef %3) #9
  br i1 %call21, label %if.end33, label %if.then22

if.then22:                                        ; preds = %for.body15
  %inc24 = add i32 %j.187, 1
  %idxprom25 = sext i32 %j.187 to i64
  %arrayidx26 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom25
  store %struct.page* %2, %struct.page** %arrayidx26, align 8
  br label %cleanup

if.end33:                                         ; preds = %for.body15
  %arrayidx20 = getelementptr i64, i64* %indices, i64 %idxprom17
  %4 = load i64, i64* %arrayidx20, align 8
  call fastcc void @__clear_shadow_entry(%struct.address_space* noundef %mapping, i64 noundef %4, i8* noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then22
  %j.2 = phi i32 [ %j.187, %if.end33 ], [ %inc24, %if.then22 ]
  %inc36 = add nuw i32 %i.086, 1
  %call13 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #9
  %cmp14 = icmp ult i32 %inc36, %call13
  br i1 %cmp14, label %for.body15, label %if.then39

if.then39:                                        ; preds = %cleanup, %if.end8
  %j.1.lcssa = phi i32 [ %j.0.lcssa, %if.end8 ], [ %j.2, %cleanup ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %conv43 = trunc i32 %j.1.lcssa to i8
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 %conv43, i8* %nr, align 8
  br label %cleanup44

cleanup44:                                        ; preds = %for.inc, %for.end, %entry, %if.then39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_page_cache_batch(%struct.address_space* noundef, %struct.pagevec* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagevec_release(%struct.pagevec* noundef %pvec) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__pagevec_release(%struct.pagevec* noundef %pvec) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @find_lock_page(%struct.address_space* noundef %mapping, i64 noundef %index) unnamed_addr #0 {
entry:
  %call = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef 2, i32 noundef 0) #8
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segment(%struct.page* noundef %page, i32 noundef %start, i32 noundef %end) unnamed_addr #0 {
entry:
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start, i32 noundef %end) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_has_private(%struct.page* nocapture noundef readonly %page) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %and = and i64 %0, 24576
  %tobool = icmp ne i64 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #9
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_entries(%struct.address_space* noundef, i64 noundef, i64 noundef, %struct.pagevec* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_to_index(%struct.page* nocapture noundef readonly %page) unnamed_addr #4 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @truncate_inode_pages(%struct.address_space* noundef %mapping, i64 noundef %lstart) local_unnamed_addr #0 {
entry:
  call void @truncate_inode_pages_range(%struct.address_space* noundef %mapping, i64 noundef %lstart, i64 noundef -1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @truncate_inode_pages_final(%struct.address_space* noundef %mapping) local_unnamed_addr #0 {
entry:
  call fastcc void @mapping_set_exiting(%struct.address_space* noundef %mapping) #9
  %call = call fastcc i1 @mapping_empty(%struct.address_space* noundef %mapping) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @truncate_inode_pages(%struct.address_space* noundef %mapping, i64 noundef 0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_set_exiting(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  call fastcc void @set_bit(i64* noundef %flags) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @invalidate_mapping_pages(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__invalidate_mapping_pages(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, i64* noundef null) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__invalidate_mapping_pages(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, i64* noundef %nr_pagevec) unnamed_addr #0 {
entry:
  %indices = alloca [15 x i64], align 8
  %pvec = alloca %struct.pagevec, align 8
  %0 = bitcast [15 x i64]* %indices to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false), !annotation !7
  %1 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !7
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #9
  %arraydecay = getelementptr inbounds [15 x i64], [15 x i64]* %indices, i64 0, i64 0
  %call53 = call i32 @find_lock_entries(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #8
  %tobool.not54 = icmp eq i32 %call53, 0
  br i1 %tobool.not54, label %while.end, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %entry
  %tobool13.not = icmp eq i64* %nr_pagevec, null
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end
  %index.056 = phi i64 [ %start, %for.cond.preheader.lr.ph ], [ %inc20, %for.end ]
  %count.055 = phi i64 [ 0, %for.cond.preheader.lr.ph ], [ %count.1.lcssa, %for.end ]
  %call148 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp49.not = icmp eq i32 %call148, 0
  br i1 %cmp49.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %i.051 = phi i32 [ %inc18, %cleanup ], [ 0, %for.cond.preheader ]
  %count.150 = phi i64 [ %add17, %cleanup ], [ %count.055, %for.cond.preheader ]
  %idxprom = sext i32 %i.051 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %2 = load %struct.page*, %struct.page** %arrayidx, align 8
  %arrayidx3 = getelementptr [15 x i64], [15 x i64]* %indices, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx3, align 8
  %4 = bitcast %struct.page* %2 to i8*
  %call4 = call fastcc i1 @xa_is_value(i8* noundef %4) #9
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call fastcc void @invalidate_exceptional_entry(%struct.address_space* noundef %mapping, i64 noundef %3, i8* noundef %4) #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call9 = call i32 @invalidate_inode_page(%struct.page* noundef %2) #9
  %conv10 = sext i32 %call9 to i64
  call void @unlock_page(%struct.page* noundef %2) #8
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end
  call void @deactivate_file_page(%struct.page* noundef %2) #8
  br i1 %tobool13.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.then12
  %5 = load i64, i64* %nr_pagevec, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %nr_pagevec, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then14, %if.then12, %if.then
  %conv10.sink = phi i64 [ 1, %if.then ], [ %conv10, %if.then12 ], [ %conv10, %if.then14 ], [ %conv10, %if.end ]
  %add17 = add i64 %count.150, %conv10.sink
  %inc18 = add nuw i32 %i.051, 1
  %call1 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp = icmp ult i32 %inc18, %call1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %count.1.lcssa = phi i64 [ %count.055, %for.cond.preheader ], [ %add17, %cleanup ]
  %index.1.lcssa = phi i64 [ %index.056, %for.cond.preheader ], [ %3, %cleanup ]
  call void @pagevec_remove_exceptionals(%struct.pagevec* noundef nonnull %pvec) #8
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #9
  call fastcc void @_cond_resched() #9
  %inc20 = add i64 %index.1.lcssa, 1
  %call = call i32 @find_lock_entries(%struct.address_space* noundef %mapping, i64 noundef %inc20, i64 noundef %end, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %for.cond.preheader

while.end:                                        ; preds = %for.end, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %count.1.lcssa, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #10
  ret i64 %count.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @invalidate_mapping_pagevec(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, i64* noundef %nr_pagevec) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__invalidate_mapping_pages(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, i64* noundef %nr_pagevec) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @invalidate_inode_pages2_range(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 {
entry:
  %indices = alloca [15 x i64], align 8
  %pvec = alloca %struct.pagevec, align 8
  %0 = bitcast [15 x i64]* %indices to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false), !annotation !7
  %1 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !7
  %call = call fastcc i1 @mapping_empty(%struct.address_space* noundef %mapping) #9
  br i1 %call, label %out, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #9
  %arraydecay = getelementptr inbounds [15 x i64], [15 x i64]* %indices, i64 0, i64 0
  %call1142 = call i32 @find_get_entries(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #8
  %tobool.not143 = icmp eq i32 %call1142, 0
  br i1 %tobool.not143, label %out, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %if.end
  %add = add i64 %end, 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end
  %index.0146 = phi i64 [ %start, %for.cond.preheader.lr.ph ], [ %inc73, %for.end ]
  %did_range_unmap.0145 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %did_range_unmap.1.lcssa, %for.end ]
  %ret.0144 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %ret.1.lcssa, %for.end ]
  %call2135 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp136.not = icmp eq i32 %call2135, 0
  br i1 %cmp136.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %i.0139 = phi i32 [ %inc, %cleanup ], [ 0, %for.cond.preheader ]
  %did_range_unmap.1138 = phi i32 [ %did_range_unmap.3, %cleanup ], [ %did_range_unmap.0145, %for.cond.preheader ]
  %ret.1137 = phi i32 [ %ret.4, %cleanup ], [ %ret.0144, %for.cond.preheader ]
  %idxprom = sext i32 %i.0139 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %2 = load %struct.page*, %struct.page** %arrayidx, align 8
  %arrayidx4 = getelementptr [15 x i64], [15 x i64]* %indices, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx4, align 8
  %4 = bitcast %struct.page* %2 to i8*
  %call5 = call fastcc i1 @xa_is_value(i8* noundef %4) #9
  br i1 %call5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %for.body
  call fastcc void @invalidate_exceptional_entry2(%struct.address_space* noundef %mapping, i64 noundef %3, i8* noundef %4) #9
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %tobool12.not = icmp eq i32 %did_range_unmap.1138, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end11
  %call13 = call i1 @page_mapped(%struct.page* noundef %2) #8
  br i1 %call13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %sub = sub i64 %add, %3
  call void @unmap_mapping_pages(%struct.address_space* noundef %mapping, i64 noundef %3, i64 noundef %sub, i1 noundef false) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end11
  %did_range_unmap.2 = phi i32 [ 1, %if.end11 ], [ 1, %if.then14 ], [ 0, %land.lhs.true ]
  call fastcc void @lock_page(%struct.page* noundef %2) #9
  %call16 = call fastcc i64 @page_to_index(%struct.page* noundef %2) #9
  %cmp17.not = icmp eq i64 %call16, %3
  br i1 %cmp17.not, label %if.end26, label %if.then25, !prof !8

if.then25:                                        ; preds = %if.end15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/truncate.c\22; .popsection; .long 14472b - 14470b; .short 649; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end15
  %mapping34 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 1, i32 0, i32 1
  %5 = load %struct.address_space*, %struct.address_space** %mapping34, align 8
  %cmp35.not = icmp eq %struct.address_space* %5, %mapping
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end26
  call void @unlock_page(%struct.page* noundef %2) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end26
  call void @wait_on_page_writeback(%struct.page* noundef %2) #8
  %call39 = call i1 @page_mapped(%struct.page* noundef %2) #8
  br i1 %call39, label %if.then40, label %do.body

if.then40:                                        ; preds = %if.end38
  call void @unmap_mapping_page(%struct.page* noundef %2) #8
  br label %do.body

do.body:                                          ; preds = %if.end38, %if.then40
  %call42 = call i1 @page_mapped(%struct.page* noundef %2) #8
  br i1 %call42, label %do.body51, label %do.end57, !prof !11

do.body51:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/truncate.c\22; .popsection; .long 14472b - 14470b; .short 658; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !12
  unreachable

do.end57:                                         ; preds = %do.body
  %call58 = call fastcc i32 @do_launder_page(%struct.address_space* noundef %mapping, %struct.page* noundef %2) #9
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end66

if.then61:                                        ; preds = %do.end57
  %call62 = call fastcc i32 @invalidate_complete_page2(%struct.address_space* noundef %mapping, %struct.page* noundef %2) #9
  %tobool63.not = icmp eq i32 %call62, 0
  %spec.select = select i1 %tobool63.not, i32 -16, i32 0
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %do.end57
  %ret2.0 = phi i32 [ %call58, %do.end57 ], [ %spec.select, %if.then61 ]
  %cmp67 = icmp slt i32 %ret2.0, 0
  %spec.select130 = select i1 %cmp67, i32 %ret2.0, i32 %ret.1137
  call void @unlock_page(%struct.page* noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then37, %if.then6
  %ret.4 = phi i32 [ %ret.1137, %if.then6 ], [ %ret.1137, %if.then37 ], [ %spec.select130, %if.end66 ]
  %did_range_unmap.3 = phi i32 [ %did_range_unmap.1138, %if.then6 ], [ %did_range_unmap.2, %if.then37 ], [ %did_range_unmap.2, %if.end66 ]
  %inc = add nuw i32 %i.0139, 1
  %call2 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #9
  %cmp = icmp ult i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %ret.1.lcssa = phi i32 [ %ret.0144, %for.cond.preheader ], [ %ret.4, %cleanup ]
  %did_range_unmap.1.lcssa = phi i32 [ %did_range_unmap.0145, %for.cond.preheader ], [ %did_range_unmap.3, %cleanup ]
  %index.1.lcssa = phi i64 [ %index.0146, %for.cond.preheader ], [ %3, %cleanup ]
  call void @pagevec_remove_exceptionals(%struct.pagevec* noundef nonnull %pvec) #8
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #9
  call fastcc void @_cond_resched() #9
  %inc73 = add i64 %index.1.lcssa, 1
  %call1 = call i32 @find_get_entries(%struct.address_space* noundef %mapping, i64 noundef %inc73, i64 noundef %end, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %out, label %for.cond.preheader

out:                                              ; preds = %for.end, %if.end, %entry
  %ret.5 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %ret.1.lcssa, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #10
  ret i32 %ret.5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @invalidate_exceptional_entry2(%struct.address_space* noundef %mapping, i64 noundef %index, i8* noundef %entry1) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %mapping) #9
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clear_shadow_entry(%struct.address_space* noundef %mapping, i64 noundef %index, i8* noundef %entry1) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_pages(%struct.address_space* noundef, i64 noundef, i64 noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_launder_page(%struct.address_space* noundef readonly %mapping, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %3 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %cmp.not = icmp eq %struct.address_space* %3, %mapping
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %4 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %launder_page = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %4, i64 0, i32 16
  %5 = load i32 (%struct.page*)*, i32 (%struct.page*)** %launder_page, align 8
  %cmp2 = icmp eq i32 (%struct.page*)* %5, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %call7 = call i32 %5(%struct.page* noundef %page) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %entry, %if.end4
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @invalidate_complete_page2(%struct.address_space* noundef %mapping, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %cmp.not = icmp eq %struct.address_space* %0, %mapping
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @page_has_private(%struct.page* noundef %page) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @try_to_release_page(%struct.page* noundef %page, i32 noundef 3264) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 8
  %tobool7.not = icmp eq i64 %3, 0
  br i1 %tobool7.not, label %do.body, label %failed

do.body:                                          ; preds = %if.end5
  %call10 = call fastcc i32 @page_has_private(%struct.page* noundef %page) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end19, label %do.body15, !prof !8

do.body15:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/truncate.c\22; .popsection; .long 14472b - 14470b; .short 574; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !13
  unreachable

do.end19:                                         ; preds = %do.body
  call void @__delete_from_page_cache(%struct.page* noundef %page, i8* noundef null) #8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %4 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %freepage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %4, i64 0, i32 11
  %5 = load void (%struct.page*)*, void (%struct.page*)** %freepage, align 8
  %tobool22.not = icmp eq void (%struct.page*)* %5, null
  br i1 %tobool22.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %do.end19
  call void %5(%struct.page* noundef %page) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %do.end19
  call fastcc void @put_page(%struct.page* noundef %page) #9
  br label %return

failed:                                           ; preds = %if.end5
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %failed, %if.end26
  %retval.0 = phi i32 [ 0, %failed ], [ 1, %if.end26 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagevec_remove_exceptionals(%struct.pagevec* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @invalidate_inode_pages2(%struct.address_space* noundef %mapping) local_unnamed_addr #0 {
entry:
  %call = call i32 @invalidate_inode_pages2_range(%struct.address_space* noundef %mapping, i64 noundef 0, i64 noundef -1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @truncate_pagecache(%struct.inode* nocapture noundef readonly %inode, i64 noundef %newsize) local_unnamed_addr #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %sub = add i64 %newsize, -1
  %or = or i64 %sub, 4095
  %add = add i64 %or, 1
  call void @unmap_mapping_range(%struct.address_space* noundef %0, i64 noundef %add, i64 noundef 0, i32 noundef 1) #8
  call void @truncate_inode_pages(%struct.address_space* noundef %0, i64 noundef %newsize) #9
  call void @unmap_mapping_range(%struct.address_space* noundef %0, i64 noundef %add, i64 noundef 0, i32 noundef 1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(%struct.address_space* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @truncate_setsize(%struct.inode* nocapture noundef %inode, i64 noundef %newsize) local_unnamed_addr #0 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  call fastcc void @i_size_write(%struct.inode* noundef %inode, i64 noundef %newsize) #9
  %cmp = icmp slt i64 %0, %newsize
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @pagecache_isize_extended(%struct.inode* noundef %inode, i64 noundef %0, i64 noundef %newsize) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @truncate_pagecache(%struct.inode* noundef %inode, i64 noundef %newsize) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_size_write(%struct.inode* nocapture noundef writeonly %inode, i64 noundef %i_size) unnamed_addr #5 {
entry:
  %i_size1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 %i_size, i64* %i_size1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pagecache_isize_extended(%struct.inode* nocapture noundef readonly %inode, i64 noundef %from, i64 noundef %to) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @i_blocksize(%struct.inode* noundef %inode) #9
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  %cmp = icmp slt i64 %0, %to
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/truncate.c\22; .popsection; .long 14472b - 14470b; .short 790; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp14 = icmp sge i64 %from, %to
  %cmp17 = icmp eq i32 %call, 4096
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp17
  br i1 %or.cond, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end
  %sub = add i64 %from, -1
  %sub21 = add i32 %call, -1
  %conv22 = sext i32 %sub21 to i64
  %or = or i64 %sub, %conv22
  %add = add i64 %or, 1
  %cmp23.not = icmp sge i64 %add, %to
  %and = and i64 %add, 4095
  %tobool26.not = icmp eq i64 %and, 0
  %or.cond59 = or i1 %cmp23.not, %tobool26.not
  br i1 %or.cond59, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end20
  %shr = ashr i64 %from, 12
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call29 = call fastcc %struct.page* @find_lock_page(%struct.address_space* noundef %1, i64 noundef %shr) #9
  %tobool30.not = icmp eq %struct.page* %call29, null
  br i1 %tobool30.not, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @page_mkclean(%struct.page* noundef nonnull %call29) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end32
  %call36 = call i32 @set_page_dirty(%struct.page* noundef nonnull %call29) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32
  call void @unlock_page(%struct.page* noundef nonnull %call29) #8
  call fastcc void @put_page(%struct.page* noundef nonnull %call29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end20, %if.end, %if.end37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_blocksize(%struct.inode* nocapture noundef readonly %node) unnamed_addr #4 {
entry:
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %node, i64 0, i32 17
  %0 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 1, %conv
  ret i32 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_mkclean(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @truncate_pagecache_range(%struct.inode* nocapture noundef readonly %inode, i64 noundef %lstart, i64 noundef %lend) local_unnamed_addr #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %sub = add i64 %lstart, -1
  %or = or i64 %sub, 4095
  %add = add i64 %or, 1
  %add1 = add i64 %lend, 1
  %and = and i64 %add1, -4096
  %sub2 = add i64 %and, -1
  %cmp = icmp ugt i64 %sub2, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub4 = sub i64 %and, %add
  call void @unmap_mapping_range(%struct.address_space* noundef %0, i64 noundef %add, i64 noundef %sub4, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @truncate_inode_pages_range(%struct.address_space* noundef %0, i64 noundef %lstart, i64 noundef %lend) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cancel_dirty_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #8
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__cancel_dirty_page(%struct.page* noundef %page) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cancel_dirty_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #7 {
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
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 131072, i64* elementtype(i64) %counter) #10, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(%struct.page* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_mapping(%struct.address_space* noundef, %struct.page* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_empty(%struct.xarray* nocapture noundef readonly %xa) unnamed_addr #4 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  %0 = load i8*, i8** %xa_head, align 8
  %cmp = icmp eq i8* %0, null
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @shmem_mapping(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #4 {
entry:
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %cmp = icmp eq %struct.address_space_operations* %0, @shmem_aops
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clear_shadow_entry(%struct.address_space* noundef %mapping, i64 noundef %index, i8* noundef readnone %entry1) unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @xas_set_update(%struct.xa_state* noundef nonnull %xas) #9
  %call = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #8
  %cmp.not = icmp eq i8* %call, %entry1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_set_update(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #5 {
entry:
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* @workingset_update_node, void (%struct.xa_node*)** %xa_update, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_update_node(%struct.xa_node* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_load(%struct.xa_state* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_store(%struct.xa_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(%struct.pagevec* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @pagecache_get_page(%struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start1, i32 noundef %end1) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #9
  %conv = zext i32 %end1 to i64
  %call1 = call fastcc i64 @page_size(%struct.page* noundef %page) #9
  %cmp = icmp ult i64 %call1, %conv
  br i1 %cmp, label %do.body9, label %lor.rhs, !prof !11

lor.rhs:                                          ; preds = %entry
  %call4 = call fastcc i64 @page_size(%struct.page* noundef %page) #9
  %cmp15 = icmp ugt i32 %end1, %start1
  br i1 %cmp15, label %if.then17, label %do.end33

do.body9:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/highmem.h\22; .popsection; .long 14472b - 14470b; .short 208; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !16
  unreachable

if.then17:                                        ; preds = %lor.rhs
  %idx.ext = zext i32 %start1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub = sub i32 %end1, %start1
  %conv18 = zext i32 %sub to i64
  %call19 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv18) #8
  br label %do.end33

do.end33:                                         ; preds = %lor.rhs, %if.then17
  call fastcc void @__kunmap_atomic() #9
  %call371 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #9
  %cmp382.not = icmp eq i64 %call371, 0
  br i1 %cmp382.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end33, %for.body
  %conv364 = phi i64 [ %conv36, %for.body ], [ 0, %do.end33 ]
  %add.ptr41 = getelementptr %struct.page, %struct.page* %page, i64 %conv364
  call void @flush_dcache_page(%struct.page* noundef %add.ptr41) #8
  %inc = add nuw nsw i64 %conv364, 1
  %conv36 = and i64 %inc, 4294967295
  %call37 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #9
  %cmp38 = icmp ugt i64 %call37, %conv36
  br i1 %cmp38, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  call fastcc void @pagefault_disable() #9
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #9
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
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
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !19
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
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
  %3 = bitcast %union.anon* %2 to %struct.anon.74*
  %compound_order = getelementptr inbounds %struct.anon.74, %struct.anon.74* %3, i64 0, i32 2
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
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !19
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #8
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !22
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #9
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #9
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #8
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #10, !srcloc !23
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 16, i64* elementtype(i64) %counter) #10, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !27
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_enable() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #10, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @invalidate_exceptional_entry(%struct.address_space* noundef %mapping, i64 noundef %index, i8* noundef %entry1) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %mapping) #9
  br i1 %call, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call fastcc void @clear_shadow_entry(%struct.address_space* noundef %mapping, i64 noundef %index, i8* noundef %entry1) #9
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_file_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_shadow_entry(%struct.address_space* noundef %mapping, i64 noundef %index, i8* noundef %entry1) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  call fastcc void @__clear_shadow_entry(%struct.address_space* noundef %mapping, i64 noundef %index, i8* noundef %entry1) #9
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__delete_from_page_cache(%struct.page* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 2155309985}
!10 = !{i64 2155314081}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2155319472}
!13 = !{i64 2155312301}
!14 = !{i64 2155321796}
!15 = !{i64 2147824626, i64 2147825147, i64 2147825177, i64 2147825203, i64 2147825235, i64 2147825264}
!16 = !{i64 2153768684}
!17 = !{i64 2153759627}
!18 = !{i64 2153761885}
!19 = !{i64 1380631}
!20 = !{i64 2151511391}
!21 = !{i64 2151511598}
!22 = !{i64 2147755549, i64 2147756197, i64 2147756227, i64 2147756259, i64 2147756293, i64 2147756329, i64 2147756354}
!23 = !{i64 2147816944, i64 2147817614, i64 2147817644, i64 2147817676, i64 2147817708, i64 2147817742, i64 2147817767}
!24 = !{i64 2147814056, i64 2147814567, i64 2147814597, i64 2147814623, i64 2147814655, i64 2147814684}
!25 = !{i64 2149558658}
!26 = !{i64 2149114489, i64 2149114536, i64 2149114542, i64 2149114579, i64 2149114597, i64 2149115938, i64 2149115986, i64 2149116034, i64 2149116097, i64 2149116146, i64 2149114675, i64 2149114700, i64 2149114726, i64 2149114732, i64 2149115604, i64 2149115644, i64 2149115662, i64 2149115694, i64 2149115722, i64 2149115776, i64 2149115796, i64 2149115893, i64 2149114755, i64 2149114769, i64 2149114775, i64 2149114825, i64 2149114871, i64 2149114904}
!27 = !{i64 2147840838, i64 2147840871, i64 2147840924, i64 2147840983, i64 2147841017, i64 2147841072, i64 2147841101, i64 2147841121}
!28 = !{i64 2149583511}
!29 = !{i64 2149368877}
!30 = !{i64 2149105033, i64 2149105080, i64 2149105086, i64 2149105123, i64 2149105141, i64 2149106481, i64 2149106529, i64 2149106577, i64 2149106640, i64 2149106689, i64 2149105219, i64 2149105244, i64 2149105270, i64 2149105276, i64 2149106147, i64 2149106187, i64 2149106205, i64 2149106237, i64 2149106265, i64 2149106319, i64 2149106339, i64 2149106436, i64 2149105299, i64 2149105313, i64 2149105319, i64 2149105369, i64 2149105415, i64 2149105448}
