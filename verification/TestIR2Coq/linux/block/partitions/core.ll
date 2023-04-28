; ModuleID = 'block/partitions/core.c'
source_filename = "block/partitions/core.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.66 }
%union.anon.66 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.16 }
%union.anon.16 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.14, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.33 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.17, %union.anon.18 }
%union.anon.17 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.18 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.56, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.9 = type { i32 }
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
%struct.hlist_head = type { %struct.hlist_node* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
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
%struct.cgroup_namespace = type opaque
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.40, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.72, %union.anon.73, %union.anon.74, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.77, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.71, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.71 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { %struct.rb_node }
%union.anon.74 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.77 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.41, %union.anon.42, i32 }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.70, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.70 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
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
%union.anon.40 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.55, i32, [12 x i8] }
%union.anon.55 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.57, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.57 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.12, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.13, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.12 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.13 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.63 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.61, %struct.qspinlock }
%union.anon.61 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.63 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
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
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.parsed_partitions = type { %struct.gendisk*, [32 x i8], %struct.anon.78*, i32, i32, i8, i8* }
%struct.anon.78 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.Sector = type { %struct.page* }

@.str = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@part_attr_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @part_attr_group, %struct.attribute_group* null], align 8
@part_type = dso_local global %struct.device_type { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @part_attr_groups, i32 0, i32 0), i32 (%struct.device*, %struct.kobj_uevent_env*)* @part_uevent, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @part_release, %struct.dev_pm_ops* null }, align 8
@part_attr_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([9 x %struct.attribute*], [9 x %struct.attribute*]* @part_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@part_attrs = internal global [9 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_partition, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_start, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_size, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_ro, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_alignment_offset, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_discard_alignment, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_stat, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_inflight, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_partition = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_partition_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_start = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_start_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_size_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_ro = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_ro_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_alignment_offset = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_alignment_offset_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_discard_alignment = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_discard_alignment_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_stat = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_stat_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_inflight = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @part_inflight_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"alignment_offset\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"discard_alignment\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"inflight\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"PARTN=%u\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARTNAME=%s\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"\014%s: partitions not supported on host managed zoned block device\0A\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"\016%s: disabling host aware zoned block device support due to partitions\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%sp%d\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@block_class = external dso_local global %struct.class, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"holders\00", align 1
@dev_attr_whole_disk = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @whole_disk_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"whole_disk\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"\014%s: partition table beyond EOD, \00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"\014%s: ignoring partition table on host managed zoned block device\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"\014%s: partition table partially beyond EOD, \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" %s:\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\016%s\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c" unable to read partition table\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.27 = private unnamed_addr constant [28 x i8] c"\01cenabling native capacity\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"\01ctruncated\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"\014%s: p%d start %llu is beyond EOD, \00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"\014%s: p%d size %llu extends beyond EOD, \00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"\013 %s: p%d could not be added: %ld\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @part_uevent(%struct.device* nocapture noundef readonly %dev, %struct.kobj_uevent_env* noundef %env) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_partno = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35
  %0 = bitcast %struct.list_head* %bd_partno to i8*
  %1 = load i8, i8* %0, align 8
  %conv = zext i8 %1 to i32
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv) #11
  %bd_meta_info = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 39
  %2 = bitcast %struct.list_head* %bd_meta_info to %struct.partition_meta_info**
  %3 = load %struct.partition_meta_info*, %struct.partition_meta_info** %2, align 8
  %tobool.not = icmp eq %struct.partition_meta_info* %3, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %3, i64 0, i32 1, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call6 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* noundef %arrayidx) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @part_release(%struct.device* nocapture noundef readonly %dev) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  call void @put_disk(%struct.gendisk* noundef %1) #11
  %bd_inode = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 2, i32 1
  %2 = bitcast %struct.list_head** %bd_inode to %struct.inode**
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  call void @iput(%struct.inode* noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdev_add_partition(%struct.gendisk* noundef %disk, i32 noundef %partno, i64 noundef %start, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %open_mutex = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %open_mutex) #11
  %call = call fastcc i1 @disk_live(%struct.gendisk* noundef %disk) #12
  br i1 %call, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @partition_overlaps(%struct.gendisk* noundef %disk, i64 noundef %start, i64 noundef %length, i32 noundef -1) #12
  br i1 %call1, label %out, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc %struct.block_device* @add_partition(%struct.gendisk* noundef %disk, i32 noundef %partno, i64 noundef %start, i64 noundef %length, i32 noundef 0, %struct.partition_meta_info* noundef null) #12
  %0 = bitcast %struct.block_device* %call4 to i8*
  %call5 = call fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %0) #12
  br label %out

out:                                              ; preds = %if.end, %entry, %if.end3
  %ret.0 = phi i32 [ %call5, %if.end3 ], [ -6, %entry ], [ -16, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @disk_live(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 6
  %1 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i32 @inode_unhashed(%struct.inode* noundef %1) #12
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @partition_overlaps(%struct.gendisk* noundef %disk, i64 noundef %start, i64 noundef %length, i32 noundef %skip_partno) unnamed_addr #0 {
entry:
  %idx = alloca i64, align 8
  %0 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  call fastcc void @__rcu_read_lock() #11
  store i64 1, i64* %idx, align 8
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 6
  %call = call i8* @xa_find(%struct.xarray* noundef %part_tbl, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #11
  %tobool.not21 = icmp eq i8* %call, null
  br i1 %tobool.not21, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add6 = add i64 %length, %start
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %part.0.in22 = phi i8* [ %call, %for.body.lr.ph ], [ %call11, %for.inc ]
  %1 = getelementptr inbounds i8, i8* %part.0.in22, i64 560
  %2 = load i8, i8* %1, align 8
  %conv = zext i8 %2 to i32
  %cmp.not = icmp eq i32 %conv, %skip_partno
  br i1 %cmp.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %part.023 = bitcast i8* %part.0.in22 to %struct.block_device*
  %bd_start_sect = bitcast i8* %part.0.in22 to i64*
  %3 = load i64, i64* %bd_start_sect, align 8
  %call2 = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef nonnull %part.023) #12
  %add = add i64 %call2, %3
  %cmp3 = icmp ugt i64 %add, %start
  %cmp8 = icmp ugt i64 %add6, %3
  %or.cond = and i1 %cmp8, %cmp3
  br i1 %or.cond, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %call11 = call i8* @xa_find_after(%struct.xarray* noundef %part_tbl, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #11
  %tobool.not = icmp eq i8* %call11, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %land.lhs.true, %entry
  %tobool.not.lcssa = phi i1 [ false, %entry ], [ true, %land.lhs.true ], [ false, %for.inc ]
  call fastcc void @rcu_read_unlock() #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i1 %tobool.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.block_device* @add_partition(%struct.gendisk* noundef %disk, i32 noundef %partno, i64 noundef %start, i64 noundef %len, i32 noundef %flags, %struct.partition_meta_info* noundef %info) unnamed_addr #0 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_device = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 9
  %call = call fastcc i32 @disk_max_parts(%struct.gendisk* noundef %disk) #12
  %cmp.not = icmp sgt i32 %call, %partno
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -22) #12
  %1 = bitcast i8* %call1 to %struct.block_device*
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %zoned = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 31, i32 27
  %3 = load i32, i32* %zoned, align 4
  switch i32 %3, label %sw.epilog [
    i32 2, label %do.end4
    i32 1, label %do.end10
  ]

do.end4:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i8* noundef %arraydecay) #14
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -6) #12
  %4 = bitcast i8* %call6 to %struct.block_device*
  br label %cleanup

do.end10:                                         ; preds = %if.end
  %arraydecay13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.14, i64 0, i64 0), i8* noundef %arraydecay13) #14
  call void @blk_queue_set_zoned(%struct.gendisk* noundef %disk, i32 noundef 0) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %do.end10
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 6
  %conv = sext i32 %partno to i64
  %call15 = call i8* @xa_load(%struct.xarray* noundef %part_tbl, i64 noundef %conv) #11
  %tobool.not = icmp eq i8* %call15, null
  br i1 %tobool.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %sw.epilog
  %call17 = call fastcc i8* @ERR_PTR(i64 noundef -16) #12
  %5 = bitcast i8* %call17 to %struct.block_device*
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  %6 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_device20 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i64 0, i32 9
  %call21 = call %struct.device* @get_device(%struct.device* noundef %bd_device20) #11
  %conv22 = trunc i32 %partno to i8
  %call23 = call %struct.block_device* @bdev_alloc(%struct.gendisk* noundef %disk, i8 noundef %conv22) #11
  %tobool24.not = icmp eq %struct.block_device* %call23, null
  br i1 %tobool24.not, label %out_put_disk, label %if.end26

if.end26:                                         ; preds = %if.end18
  %bd_start_sect = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 0
  store i64 %start, i64* %bd_start_sect, align 8
  call fastcc void @bdev_set_nr_sectors(%struct.block_device* noundef nonnull %call23, i64 noundef %len) #12
  %bd_device27 = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 9
  %call28 = call fastcc i8* @dev_name(%struct.device* noundef %bd_device) #12
  %call29 = call i64 @strlen(i8* noundef %call28) #11
  %sub = add i64 %call29, -1
  %arrayidx = getelementptr i8, i8* %call28, i64 %sub
  %7 = load i8, i8* %arrayidx, align 1
  %conv30 = zext i8 %7 to i32
  %call31 = call fastcc i32 @isdigit(i32 noundef %conv30) #12
  %tobool32.not = icmp eq i32 %call31, 0
  %. = select i1 %tobool32.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)
  %call35 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %bd_device27, i8* noundef %., i8* noundef %call28, i32 noundef %partno) #11
  call void @device_initialize(%struct.device* noundef %bd_device27) #11
  %class = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 9, i32 31
  store %struct.class* @block_class, %struct.class** %class, align 8
  %type = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 9, i32 4
  store %struct.device_type* @part_type, %struct.device_type** %type, align 8
  %parent = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 9, i32 1
  store %struct.device* %bd_device, %struct.device** %parent, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 14
  %8 = load i8, i8* %bd_partno, align 8
  %conv37 = zext i8 %8 to i32
  %minors = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 2
  %9 = load i32, i32* %minors, align 8
  %cmp38 = icmp sgt i32 %9, %conv37
  br i1 %cmp38, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.end26
  %major = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 0
  %10 = load i32, i32* %major, align 8
  %shl = shl i32 %10, 20
  %first_minor = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 1
  %11 = load i32, i32* %first_minor, align 4
  %add = add i32 %11, %conv37
  %or = or i32 %add, %shl
  br label %if.end50

if.else43:                                        ; preds = %if.end26
  %call44 = call i32 @blk_alloc_ext_minor() #11
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %out_put, label %if.end48

if.end48:                                         ; preds = %if.else43
  %or49 = or i32 %call44, 271581184
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.then40
  %devt.0 = phi i32 [ %or, %if.then40 ], [ %or49, %if.end48 ]
  %devt51 = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 9, i32 27
  store i32 %devt.0, i32* %devt51, align 8
  %tobool52.not = icmp eq %struct.partition_meta_info* %info, null
  br i1 %tobool52.not, label %if.end59, label %if.then53

if.then53:                                        ; preds = %if.end50
  %12 = getelementptr %struct.partition_meta_info, %struct.partition_meta_info* %info, i64 0, i32 0, i64 0
  %call54 = call i8* @kmemdup(i8* noundef %12, i64 noundef 101, i32 noundef 3264) #11
  %bd_meta_info = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 20
  %13 = bitcast %struct.partition_meta_info** %bd_meta_info to i8**
  store i8* %call54, i8** %13, align 8
  %tobool56.not = icmp eq i8* %call54, null
  br i1 %tobool56.not, label %out_put, label %if.end59

if.end59:                                         ; preds = %if.then53, %if.end50
  call fastcc void @dev_set_uevent_suppress(%struct.device* noundef %bd_device27, i32 noundef 1) #12
  %call60 = call i32 @device_add(%struct.device* noundef %bd_device27) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %out_put

if.end63:                                         ; preds = %if.end59
  %kobj = getelementptr inbounds %struct.device, %struct.device* %bd_device27, i64 0, i32 0
  %call64 = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), %struct.kobject* noundef %kobj) #11
  %bd_holder_dir = getelementptr inbounds %struct.block_device, %struct.block_device* %call23, i64 0, i32 13
  store %struct.kobject* %call64, %struct.kobject** %bd_holder_dir, align 8
  %tobool66.not = icmp eq %struct.kobject* %call64, null
  br i1 %tobool66.not, label %out_del, label %if.end68

if.end68:                                         ; preds = %if.end63
  call fastcc void @dev_set_uevent_suppress(%struct.device* noundef %bd_device27, i32 noundef 0) #12
  %and = and i32 %flags, 2
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %if.end75, label %if.then70

if.then70:                                        ; preds = %if.end68
  %call71 = call i32 @device_create_file(%struct.device* noundef %bd_device27, %struct.device_attribute* noundef nonnull @dev_attr_whole_disk) #11
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end75, label %out_del

if.end75:                                         ; preds = %if.then70, %if.end68
  %14 = bitcast %struct.block_device* %call23 to i8*
  %call78 = call fastcc i32 @xa_insert(%struct.xarray* noundef %part_tbl, i64 noundef %conv, i8* noundef nonnull %14) #12
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %out_del

if.end81:                                         ; preds = %if.end75
  call void @bdev_add(%struct.block_device* noundef nonnull %call23, i32 noundef %devt.0) #11
  %call82 = call fastcc i32 @dev_get_uevent_suppress(%struct.device* noundef %bd_device) #12
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %cleanup

if.then84:                                        ; preds = %if.end81
  %call86 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 0) #11
  br label %cleanup

out_del:                                          ; preds = %if.end75, %if.then70, %if.end63
  %err.0 = phi i32 [ %call71, %if.then70 ], [ %call78, %if.end75 ], [ -12, %if.end63 ]
  %15 = load %struct.kobject*, %struct.kobject** %bd_holder_dir, align 8
  call void @kobject_put(%struct.kobject* noundef %15) #11
  call void @device_del(%struct.device* noundef %bd_device27) #11
  br label %out_put

out_put:                                          ; preds = %if.end59, %if.then53, %if.else43, %out_del
  %err.1 = phi i32 [ %call60, %if.end59 ], [ %err.0, %out_del ], [ -12, %if.then53 ], [ %call44, %if.else43 ]
  call void @put_device(%struct.device* noundef %bd_device27) #11
  %conv89 = sext i32 %err.1 to i64
  %call90 = call fastcc i8* @ERR_PTR(i64 noundef %conv89) #12
  %16 = bitcast i8* %call90 to %struct.block_device*
  br label %cleanup

out_put_disk:                                     ; preds = %if.end18
  call void @put_disk(%struct.gendisk* noundef %disk) #11
  %call92 = call fastcc i8* @ERR_PTR(i64 noundef -12) #12
  %17 = bitcast i8* %call92 to %struct.block_device*
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.then84, %out_put_disk, %out_put, %if.then16, %do.end4, %if.then
  %retval.0 = phi %struct.block_device* [ %1, %if.then ], [ %5, %if.then16 ], [ %16, %out_put ], [ %17, %out_put_disk ], [ %4, %do.end4 ], [ %call23, %if.then84 ], [ %call23, %if.end81 ]
  ret %struct.block_device* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @PTR_ERR_OR_ZERO(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @IS_ERR(i8* noundef %ptr) #12
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %ptr) #12
  %conv = trunc i64 %call1 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdev_del_partition(%struct.gendisk* noundef %disk, i32 noundef %partno) local_unnamed_addr #0 {
entry:
  %open_mutex = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %open_mutex) #11
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 6
  %conv = sext i32 %partno to i64
  %call = call i8* @xa_load(%struct.xarray* noundef %part_tbl, i64 noundef %conv) #11
  %0 = bitcast i8* %call to %struct.block_device*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %out_unlock, label %if.end

if.end:                                           ; preds = %entry
  %bd_openers = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %bd_openers to i32*
  %2 = load i32, i32* %1, align 8
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end3, label %out_unlock

if.end3:                                          ; preds = %if.end
  call fastcc void @delete_partition(%struct.block_device* noundef nonnull %0) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %entry, %if.end3
  %ret.0 = phi i32 [ -16, %if.end ], [ 0, %if.end3 ], [ -6, %entry ]
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_load(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @delete_partition(%struct.block_device* noundef %part) unnamed_addr #0 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 16
  %call = call i32 @fsync_bdev(%struct.block_device* noundef %part) #11
  %call1 = call i32 @__invalidate_device(%struct.block_device* noundef %part, i1 noundef true) #11
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 6
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 14
  %1 = load i8, i8* %bd_partno, align 8
  %conv = zext i8 %1 to i64
  %call3 = call i8* @xa_erase(%struct.xarray* noundef %part_tbl, i64 noundef %conv) #11
  %bd_holder_dir = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 13
  %2 = load %struct.kobject*, %struct.kobject** %bd_holder_dir, align 8
  call void @kobject_put(%struct.kobject* noundef %2) #11
  %bd_device = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 9
  call void @device_del(%struct.device* noundef %bd_device) #11
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 6
  %3 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  call fastcc void @remove_inode_hash(%struct.inode* noundef %3) #12
  call void @put_device(%struct.device* noundef %bd_device) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdev_resize_partition(%struct.gendisk* noundef %disk, i32 noundef %partno, i64 noundef %start, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %open_mutex = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %open_mutex) #11
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 6
  %conv = sext i32 %partno to i64
  %call = call i8* @xa_load(%struct.xarray* noundef %part_tbl, i64 noundef %conv) #11
  %0 = bitcast i8* %call to %struct.block_device*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %out_unlock, label %if.end

if.end:                                           ; preds = %entry
  %bd_start_sect = bitcast i8* %call to i64*
  %1 = load i64, i64* %bd_start_sect, align 8
  %cmp.not = icmp eq i64 %1, %start
  br i1 %cmp.not, label %if.end3, label %out_unlock

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i1 @partition_overlaps(%struct.gendisk* noundef %disk, i64 noundef %start, i64 noundef %length, i32 noundef %partno) #12
  br i1 %call4, label %out_unlock, label %if.end6

if.end6:                                          ; preds = %if.end3
  call fastcc void @bdev_set_nr_sectors(%struct.block_device* noundef nonnull %0, i64 noundef %length) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end3, %if.end, %entry, %if.end6
  %ret.0 = phi i32 [ -22, %if.end ], [ -16, %if.end3 ], [ 0, %if.end6 ], [ -6, %entry ]
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bdev_set_nr_sectors(%struct.block_device* noundef %bdev, i64 noundef %sectors) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %shl = shl i64 %sectors, 9
  call fastcc void @i_size_write(%struct.inode* noundef %0, i64 noundef %shl) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_drop_partitions(%struct.gendisk* noundef %disk) local_unnamed_addr #0 {
entry:
  %idx = alloca i64, align 8
  %0 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 1, i64* %idx, align 8
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 6
  %call = call i8* @xa_find(%struct.xarray* noundef %part_tbl, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #11
  %tobool.not7 = icmp eq i8* %call, null
  br i1 %tobool.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %part.0.in8 = phi i8* [ %call2, %for.body ], [ %call, %entry ]
  %part.0 = bitcast i8* %part.0.in8 to %struct.block_device*
  call fastcc void @delete_partition(%struct.block_device* noundef nonnull %part.0) #12
  %call2 = call i8* @xa_find_after(%struct.xarray* noundef %part_tbl, i64* noundef nonnull %idx, i64 noundef -1, i32 noundef 8) #11
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_find(%struct.xarray* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_find_after(%struct.xarray* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdev_disk_changed(%struct.gendisk* noundef %disk, i1 noundef %invalidate) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @disk_live(%struct.gendisk* noundef %disk) #12
  br i1 %call, label %rescan.preheader, label %cleanup

rescan.preheader:                                 ; preds = %entry
  %open_partitions = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 14
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 12
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  br label %rescan

rescan:                                           ; preds = %rescan.preheader, %if.then14
  %ret.0 = phi i32 [ -11, %if.then14 ], [ 0, %rescan.preheader ]
  %0 = load i32, i32* %open_partitions, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %rescan
  %1 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call3 = call i32 @sync_blockdev(%struct.block_device* noundef %1) #11
  %2 = load %struct.block_device*, %struct.block_device** %part0, align 8
  call void @invalidate_bdev(%struct.block_device* noundef %2) #11
  call void @blk_drop_partitions(%struct.gendisk* noundef %disk) #12
  call fastcc void @clear_bit(i64* noundef %state) #12
  br i1 %invalidate, label %if.then6, label %if.end11.thread

if.then6:                                         ; preds = %if.end2
  %call7 = call fastcc i1 @disk_part_scan_enabled(%struct.gendisk* noundef %disk) #12
  br i1 %call7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 1
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false, %if.then6
  call void @set_capacity(%struct.gendisk* noundef %disk, i64 noundef 0) #11
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false, %if.then9
  %call12 = call fastcc i64 @get_capacity(%struct.gendisk* noundef %disk) #12
  %tobool13.not = icmp eq i64 %call12, 0
  br i1 %tobool13.not, label %if.then19, label %if.then14

if.end11.thread:                                  ; preds = %if.end2
  %call1239 = call fastcc i64 @get_capacity(%struct.gendisk* noundef %disk) #12
  %tobool13.not40 = icmp eq i64 %call1239, 0
  br i1 %tobool13.not40, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end11.thread, %if.end11
  %call15 = call fastcc i32 @blk_add_partitions(%struct.gendisk* noundef %disk) #12
  %cmp = icmp eq i32 %call15, -11
  br i1 %cmp, label %rescan, label %cleanup

if.then19:                                        ; preds = %if.end11
  %4 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %kobj = getelementptr inbounds %struct.block_device, %struct.block_device* %4, i64 0, i32 9, i32 0
  %call21 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11.thread, %if.then14, %rescan, %if.then19, %entry
  %retval.0 = phi i32 [ -6, %entry ], [ %ret.0, %if.then19 ], [ %ret.0, %if.end11.thread ], [ %call15, %if.then14 ], [ -16, %rescan ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(%struct.block_device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(%struct.block_device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @disk_part_scan_enabled(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @disk_max_parts(%struct.gendisk* noundef %disk) #12
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 512
  %tobool.not = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool.not, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(%struct.gendisk* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_capacity(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_add_partitions(%struct.gendisk* noundef %disk) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @disk_part_scan_enabled(%struct.gendisk* noundef %disk) #12
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.parsed_partitions* @check_partition(%struct.gendisk* noundef %disk) #12
  %tobool.not = icmp eq %struct.parsed_partitions* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %0 = bitcast %struct.parsed_partitions* %call1 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef nonnull %0) #12
  br i1 %call4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end3
  %call6 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %0) #12
  %cmp = icmp eq i64 %call6, -28
  br i1 %cmp, label %do.end, label %if.end12

do.end:                                           ; preds = %if.then5
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* noundef %arraydecay) #14
  %call9 = call fastcc i1 @disk_unlock_native_capacity(%struct.gendisk* noundef %disk) #12
  br i1 %call9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %do.end, %if.then5
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %zoned = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 31, i32 27
  %2 = load i32, i32* %zoned, align 4
  %cmp14 = icmp eq i32 %2, 2
  br i1 %cmp14, label %do.end18, label %if.end23

do.end18:                                         ; preds = %if.end13
  %arraydecay21 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call22 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0), i8* noundef %arraydecay21) #14
  br label %out_free_state

if.end23:                                         ; preds = %if.end13
  %access_beyond_eod = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %call1, i64 0, i32 5
  %3 = load i8, i8* %access_beyond_eod, align 8, !range !7
  %tobool24.not = icmp eq i8 %3, 0
  br i1 %tobool24.not, label %if.end36, label %do.end28

do.end28:                                         ; preds = %if.end23
  %arraydecay31 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i8* noundef %arraydecay31) #14
  %call33 = call fastcc i1 @disk_unlock_native_capacity(%struct.gendisk* noundef %disk) #12
  br i1 %call33, label %out_free_state, label %if.end36

if.end36:                                         ; preds = %do.end28, %if.end23
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %4 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %kobj = getelementptr inbounds %struct.block_device, %struct.block_device* %4, i64 0, i32 9, i32 0
  %call37 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 2) #11
  %limit = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %call1, i64 0, i32 4
  %5 = load i32, i32* %limit, align 4
  %cmp3864 = icmp sgt i32 %5, 1
  br i1 %cmp3864, label %for.body, label %out_free_state

for.cond:                                         ; preds = %for.body
  %6 = load i32, i32* %limit, align 4
  %cmp38 = icmp slt i32 %inc, %6
  br i1 %cmp38, label %for.body, label %out_free_state

for.body:                                         ; preds = %if.end36, %for.cond
  %p.065 = phi i32 [ %inc, %for.cond ], [ 1, %if.end36 ]
  %call39 = call fastcc i1 @blk_add_partition(%struct.gendisk* noundef %disk, %struct.parsed_partitions* noundef nonnull %call1, i32 noundef %p.065) #12
  %inc = add nuw nsw i32 %p.065, 1
  br i1 %call39, label %for.cond, label %out_free_state

out_free_state:                                   ; preds = %for.body, %for.cond, %if.end36, %do.end28, %do.end18
  %ret.0 = phi i32 [ 0, %do.end18 ], [ -11, %do.end28 ], [ 0, %if.end36 ], [ -11, %for.body ], [ 0, %for.cond ]
  call fastcc void @free_partitions(%struct.parsed_partitions* noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end, %entry, %out_free_state, %if.end12
  %retval.0 = phi i32 [ -5, %if.end12 ], [ %ret.0, %out_free_state ], [ 0, %entry ], [ 0, %if.end ], [ -11, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @read_part_sector(%struct.parsed_partitions* nocapture noundef %state, i64 noundef %n, %struct.Sector* nocapture noundef writeonly %p) local_unnamed_addr #0 {
entry:
  %disk = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 0
  %0 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %call = call fastcc i64 @get_capacity(%struct.gendisk* noundef %0) #12
  %cmp.not = icmp ugt i64 %call, %n
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %access_beyond_eod = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 5
  store i8 1, i8* %access_beyond_eod, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 7
  %1 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 6
  %2 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 7
  %3 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %shr = lshr i64 %n, 3
  %call2 = call fastcc %struct.page* @read_mapping_page(%struct.address_space* noundef %3, i64 noundef %shr) #12
  %4 = bitcast %struct.page* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %4) #12
  br i1 %call3, label %out, label %if.end5

if.end5:                                          ; preds = %if.end
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call2) #11
  %5 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 256
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.end8, label %out_put_page

if.end8:                                          ; preds = %if.end5
  %v = getelementptr inbounds %struct.Sector, %struct.Sector* %p, i64 0, i32 0
  store %struct.page* %call2, %struct.page** %v, align 8
  %8 = ptrtoint %struct.page* %call2 to i64
  %sub.i = shl i64 %8, 6
  %add.i = and i64 %sub.i, -4096
  %9 = inttoptr i64 %add.i to i8*
  %and = shl i64 %n, 9
  %shl = and i64 %and, 3584
  %add.ptr = getelementptr i8, i8* %9, i64 %shl
  br label %cleanup

out_put_page:                                     ; preds = %if.end5
  call fastcc void @put_page(%struct.page* noundef %call2) #12
  br label %out

out:                                              ; preds = %if.end, %out_put_page
  %v10 = getelementptr inbounds %struct.Sector, %struct.Sector* %p, i64 0, i32 0
  store %struct.page* null, %struct.page** %v10, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %out ], [ %add.ptr, %if.end8 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @read_mapping_page(%struct.address_space* noundef %mapping, i64 noundef %index) unnamed_addr #0 {
entry:
  %call = call %struct.page* @read_cache_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 (i8*, %struct.page*)* noundef null, i8* noundef null) #11
  ret %struct.page* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @part_partition_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_partno = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35
  %0 = bitcast %struct.list_head* %bd_partno to i8*
  %1 = load i8, i8* %0, align 8
  %conv = zext i8 %1 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv) #11
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @part_start_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_start_sect = bitcast %struct.list_head* %add.ptr to i64*
  %0 = load i64, i64* %bd_start_sect, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef %0) #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @part_size_show(%struct.device* noundef, %struct.device_attribute* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @part_ro_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %0 = bitcast %struct.list_head* %add.ptr to %struct.block_device*
  %call = call i32 @bdev_read_only(%struct.block_device* noundef %0) #11
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_only(%struct.block_device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @part_alignment_offset_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %limits = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 31
  %bd_start_sect = bitcast %struct.list_head* %add.ptr to i64*
  %3 = load i64, i64* %bd_start_sect, align 8
  %call = call fastcc i32 @queue_limit_alignment_offset(%struct.queue_limits* noundef %limits, i64 noundef %3) #12
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_limit_alignment_offset(%struct.queue_limits* nocapture noundef readonly %lim, i64 noundef %sector) unnamed_addr #3 {
entry:
  %physical_block_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 8
  %0 = load i32, i32* %physical_block_size, align 4
  %io_min = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 11
  %1 = load i32, i32* %io_min, align 8
  %cmp = icmp ugt i32 %0, %1
  %cond = select i1 %cmp, i32 %0, i32 %1
  %shr = lshr i32 %cond, 9
  %conv = zext i32 %shr to i64
  %rem = urem i64 %sector, %conv
  %conv1 = trunc i64 %rem to i32
  %shl.neg = mul i32 %conv1, -512
  %alignment_offset = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 10
  %2 = load i32, i32* %alignment_offset, align 4
  %add = add i32 %cond, %2
  %sub = add i32 %add, %shl.neg
  %rem4 = urem i32 %sub, %cond
  ret i32 %rem4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @part_discard_alignment_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %limits = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 31
  %bd_start_sect = bitcast %struct.list_head* %add.ptr to i64*
  %3 = load i64, i64* %bd_start_sect, align 8
  %call = call fastcc i32 @queue_limit_discard_alignment(%struct.queue_limits* noundef %limits, i64 noundef %3) #12, !range !8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_limit_discard_alignment(%struct.queue_limits* nocapture noundef readonly %lim, i64 noundef %sector) unnamed_addr #3 {
entry:
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 13
  %0 = load i32, i32* %max_discard_sectors, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %discard_granularity = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 18
  %1 = load i32, i32* %discard_granularity, align 4
  %shr1 = lshr i32 %1, 9
  %tobool2.not = icmp ult i32 %1, 512
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %discard_alignment = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 19
  %2 = load i32, i32* %discard_alignment, align 8
  %shr = lshr i32 %2, 9
  %conv = zext i32 %shr1 to i64
  %rem = urem i64 %sector, %conv
  %conv5 = trunc i64 %rem to i32
  %add = add nuw nsw i32 %shr, %shr1
  %sub = sub nsw i32 %add, %conv5
  %rem7 = urem i32 %sub, %shr1
  %shl = shl nuw i32 %rem7, 9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %shl, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @part_stat_show(%struct.device* noundef, %struct.device_attribute* noundef, i8* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @part_inflight_show(%struct.device* noundef, %struct.device_attribute* noundef, i8* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(%struct.gendisk* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @inode_unhashed(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %i_hash) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #3 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @bdev_nr_sectors(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #12
  %shr = ashr i64 %call, 9
  ret i64 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  call void @rcu_read_unlock_strict() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @disk_max_parts(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %minors = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 2
  %1 = load i32, i32* %minors, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 256, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_set_zoned(%struct.gendisk* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @bdev_alloc(%struct.gendisk* noundef, i8 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #3 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #4 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_alloc_ext_minor() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kmemdup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @dev_set_uevent_suppress(%struct.device* nocapture noundef %dev, i32 noundef %val) unnamed_addr #6 {
entry:
  %uevent_suppress = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 7
  %0 = trunc i32 %val to i8
  %bf.load = load i8, i8* %uevent_suppress, align 4
  %bf.value = shl i8 %0, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %uevent_suppress, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_create_and_add(i8* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xa_insert(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef %entry1) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %call = call i32 @__xa_insert(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef %entry1, i32 noundef 3264) #11
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdev_add(%struct.block_device* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dev_get_uevent_suppress(%struct.device* nocapture noundef readonly %dev) unnamed_addr #3 {
entry:
  %uevent_suppress = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 7
  %bf.load = load i8, i8* %uevent_suppress, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #3 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @whole_disk_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* nocapture noundef readnone %buf) #4 {
entry:
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(%struct.xarray* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsync_bdev(%struct.block_device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(%struct.block_device* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_erase(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @remove_inode_hash(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @inode_unhashed(%struct.inode* noundef %inode) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  %call1 = call fastcc i1 @hlist_fake(%struct.hlist_node* noundef %i_hash) #12
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__remove_inode_hash(%struct.inode* noundef %inode) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @hlist_fake(%struct.hlist_node* noundef readonly %h) unnamed_addr #3 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  %cmp = icmp eq %struct.hlist_node** %0, %next
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_size_write(%struct.inode* nocapture noundef writeonly %inode, i64 noundef %i_size) unnamed_addr #7 {
entry:
  %i_size1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 %i_size, i64* %i_size1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.parsed_partitions* @check_partition(%struct.gendisk* noundef %hd) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.parsed_partitions* @allocate_partitions(%struct.gendisk* noundef %hd) #12
  %tobool.not = icmp eq %struct.parsed_partitions* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %0 = inttoptr i64 %call1 to i8*
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %call, i64 0, i32 6
  store i8* %0, i8** %pp_buf, align 8
  %tobool3.not = icmp eq i64 %call1, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call fastcc void @free_partitions(%struct.parsed_partitions* noundef nonnull %call) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  store i8 0, i8* %0, align 1
  %disk = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %call, i64 0, i32 0
  store %struct.gendisk* %hd, %struct.gendisk** %disk, align 8
  %arraydecay = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %call, i64 0, i32 1, i64 0
  %arraydecay7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %hd, i64 0, i32 3, i64 0
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* noundef %arraydecay7) #11
  %1 = load i8*, i8** %pp_buf, align 8
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %1, i64 noundef 4096, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef %arraydecay) #11
  %call16 = call i64 @strlen(i8* noundef %arraydecay) #11
  %sub = add i64 %call16, -1
  %arrayidx17 = getelementptr %struct.parsed_partitions, %struct.parsed_partitions* %call, i64 0, i32 1, i64 %sub
  %2 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %2 to i32
  %call18 = call fastcc i32 @isdigit(i32 noundef %conv) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end5
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end5
  %parts = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %call, i64 0, i32 2
  %3 = bitcast %struct.anon.78** %parts to i8**
  %limit = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %call, i64 0, i32 4
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* %limit, align 4
  %conv28 = sext i32 %5 to i64
  %mul = shl nsw i64 %conv28, 7
  %call29 = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef %mul) #11
  %call32 = call i32 @efi_partition(%struct.parsed_partitions* noundef nonnull %call) #11
  %6 = icmp slt i32 %call32, 1
  br i1 %6, label %land.rhs.1, label %do.end

land.rhs.1:                                       ; preds = %if.end24
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* %limit, align 4
  %conv28.1 = sext i32 %8 to i64
  %mul.1 = shl nsw i64 %conv28.1, 7
  %call29.1 = call i8* @memset(i8* noundef %7, i32 noundef 0, i64 noundef %mul.1) #11
  %call32.1 = call i32 @msdos_partition(%struct.parsed_partitions* noundef nonnull %call) #11
  %9 = icmp slt i32 %call32.1, 1
  br i1 %9, label %if.end42, label %do.end

do.end:                                           ; preds = %land.rhs.1, %if.end24
  %10 = load i8*, i8** %pp_buf, align 8
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef %10) #14
  %11 = load i8*, i8** %pp_buf, align 8
  %12 = ptrtoint i8* %11 to i64
  call void @free_pages(i64 noundef %12, i32 noundef 0) #11
  br label %cleanup

if.end42:                                         ; preds = %land.rhs.1
  %cmp.1.not = icmp eq i32 %call32.1, 0
  %cmp = icmp slt i32 %call32, 0
  %spec.select104 = select i1 %cmp, i32 %call32, i32 0
  %spec.select104.1 = select i1 %cmp.1.not, i32 %spec.select104, i32 %call32.1
  %access_beyond_eod = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %call, i64 0, i32 5
  %13 = load i8, i8* %access_beyond_eod, align 8, !range !7
  %tobool43.not = icmp eq i8 %13, 0
  %spec.select102 = select i1 %tobool43.not, i32 %spec.select104.1, i32 -28
  %tobool46.not = icmp eq i32 %spec.select102, 0
  br i1 %tobool46.not, label %if.end59, label %if.then50

if.then50:                                        ; preds = %if.end42
  %14 = load i8*, i8** %pp_buf, align 8
  %call52 = call i64 @strlcat(i8* noundef %14, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i64 noundef 4096) #11
  %15 = load i8*, i8** %pp_buf, align 8
  %call58 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef %15) #14
  br label %if.end59

if.end59:                                         ; preds = %if.then50, %if.end42
  %16 = load i8*, i8** %pp_buf, align 8
  %17 = ptrtoint i8* %16 to i64
  call void @free_pages(i64 noundef %17, i32 noundef 0) #11
  call fastcc void @free_partitions(%struct.parsed_partitions* noundef nonnull %call) #12
  %conv61 = sext i32 %spec.select102 to i64
  %call62 = call fastcc i8* @ERR_PTR(i64 noundef %conv61) #12
  %18 = bitcast i8* %call62 to %struct.parsed_partitions*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end59, %do.end, %if.then4
  %retval.0 = phi %struct.parsed_partitions* [ %call, %do.end ], [ %18, %if.end59 ], [ null, %if.then4 ], [ null, %entry ]
  ret %struct.parsed_partitions* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @disk_unlock_native_capacity(%struct.gendisk* noundef %disk) unnamed_addr #0 {
entry:
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 8
  %0 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %unlock_native_capacity = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %0, i64 0, i32 7
  %1 = load void (%struct.gendisk*)*, void (%struct.gendisk*)** %unlock_native_capacity, align 8
  %tobool.not = icmp eq void (%struct.gendisk*)* %1, null
  br i1 %tobool.not, label %do.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 11
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 128
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.end, label %do.end6

do.end:                                           ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0)) #14
  %3 = load void (%struct.gendisk*)*, void (%struct.gendisk*)** %unlock_native_capacity, align 8
  call void %3(%struct.gendisk* noundef %disk) #11
  %4 = load i32, i32* %flags, align 8
  %or = or i32 %4, 128
  store i32 %or, i32* %flags, align 8
  br label %cleanup

do.end6:                                          ; preds = %entry, %land.lhs.true
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %do.end
  %retval.0 = phi i1 [ false, %do.end6 ], [ true, %do.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_add_partition(%struct.gendisk* noundef %disk, %struct.parsed_partitions* nocapture noundef readonly %state, i32 noundef %p) unnamed_addr #0 {
entry:
  %parts = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 2
  %0 = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  %idxprom = sext i32 %p to i64
  %size1 = getelementptr %struct.anon.78, %struct.anon.78* %0, i64 %idxprom, i32 1
  %1 = load i64, i64* %size1, align 8
  %from5 = getelementptr %struct.anon.78, %struct.anon.78* %0, i64 %idxprom, i32 0
  %2 = load i64, i64* %from5, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @get_capacity(%struct.gendisk* noundef %disk) #12
  %cmp.not = icmp ult i64 %2, %call
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %p, i64 noundef %2) #14
  %call8 = call fastcc i1 @disk_unlock_native_capacity(%struct.gendisk* noundef %disk) #12
  %not.call8 = xor i1 %call8, true
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %add = add i64 %2, %1
  %cmp13 = icmp ugt i64 %add, %call
  br i1 %cmp13, label %do.end17, label %if.end26

do.end17:                                         ; preds = %if.end11
  %arraydecay20 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call21 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0), i8* noundef %arraydecay20, i32 noundef %p, i64 noundef %1) #14
  %call22 = call fastcc i1 @disk_unlock_native_capacity(%struct.gendisk* noundef %disk) #12
  br i1 %call22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %do.end17
  %call25 = call fastcc i64 @get_capacity(%struct.gendisk* noundef %disk) #12
  %sub = sub i64 %call25, %2
  %.pre = load %struct.anon.78*, %struct.anon.78** %parts, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end11
  %3 = phi %struct.anon.78* [ %.pre, %if.end24 ], [ %0, %if.end11 ]
  %size.0 = phi i64 [ %sub, %if.end24 ], [ %1, %if.end11 ]
  %flags = getelementptr %struct.anon.78, %struct.anon.78* %3, i64 %idxprom, i32 2
  %4 = load i32, i32* %flags, align 8
  %info = getelementptr %struct.anon.78, %struct.anon.78* %3, i64 %idxprom, i32 4
  %call33 = call fastcc %struct.block_device* @add_partition(%struct.gendisk* noundef %disk, i32 noundef %p, i64 noundef %2, i64 noundef %size.0, i32 noundef %4, %struct.partition_meta_info* noundef %info) #12
  %5 = bitcast %struct.block_device* %call33 to i8*
  %call34 = call fastcc i1 @IS_ERR(i8* noundef %5) #12
  br i1 %call34, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end26
  %call35 = call fastcc i64 @PTR_ERR(i8* noundef %5) #12
  %cmp36.not = icmp eq i64 %call35, -6
  br i1 %cmp36.not, label %cleanup, label %do.end40

do.end40:                                         ; preds = %land.lhs.true
  %arraydecay43 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %sub45 = sub i64 0, %call35
  %call46 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0), i8* noundef %arraydecay43, i32 noundef %p, i64 noundef %sub45) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %land.lhs.true, %do.end17, %do.end, %entry, %do.end40
  %retval.0 = phi i1 [ true, %do.end40 ], [ true, %entry ], [ %not.call8, %do.end ], [ false, %do.end17 ], [ true, %land.lhs.true ], [ true, %if.end26 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_partitions(%struct.parsed_partitions* noundef %state) unnamed_addr #0 {
entry:
  %parts = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %state, i64 0, i32 2
  %0 = bitcast %struct.anon.78** %parts to i8**
  %1 = load i8*, i8** %0, align 8
  call void @vfree(i8* noundef %1) #11
  %2 = bitcast %struct.parsed_partitions* %state to i8*
  call void @kfree(i8* noundef %2) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.parsed_partitions* @allocate_partitions(%struct.gendisk* nocapture noundef readonly %hd) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #12
  %0 = bitcast i8* %call to %struct.parsed_partitions*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @disk_max_parts(%struct.gendisk* noundef %hd) #12
  %conv = sext i32 %call1 to i64
  %call2 = call fastcc i64 @array_size(i64 noundef %conv) #12
  %call3 = call i8* @vzalloc(i64 noundef %call2) #11
  %parts = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %parts to i8**
  store i8* %call3, i8** %1, align 8
  %tobool5.not = icmp eq i8* %call3, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %limit = getelementptr inbounds i8, i8* %call, i64 52
  %2 = bitcast i8* %limit to i32*
  store i32 %call1, i32* %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.then6
  %retval.0 = phi %struct.parsed_partitions* [ %0, %if.end7 ], [ null, %if.then6 ], [ null, %entry ]
  ret %struct.parsed_partitions* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #11
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @vzalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @array_size(i64 noundef %a) unnamed_addr #8 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 128)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %retval.0 = select i1 %1, i64 -1, i64 %2
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_partition(%struct.parsed_partitions* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msdos_partition(%struct.parsed_partitions* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @read_cache_page(%struct.address_space* noundef, i64 noundef, i32 (i8*, %struct.page*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #10 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.14* %0 to i64*
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #2

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
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !17
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i8 0, i8 2}
!8 = !{i32 0, i32 -1023}
!9 = !{i64 2149783086}
!10 = !{i64 2149783303}
!11 = !{i64 2149549388}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148042173, i64 2148042206, i64 2148042259, i64 2148042318, i64 2148042352, i64 2148042407, i64 2148042436, i64 2148042456}
!14 = !{i64 2149556669}
!15 = !{i64 2149348899}
!16 = !{i64 2148025961, i64 2148026482, i64 2148026512, i64 2148026538, i64 2148026570, i64 2148026599}
!17 = !{i64 2147956884, i64 2147957532, i64 2147957562, i64 2147957594, i64 2147957628, i64 2147957664, i64 2147957689}
