; ModuleID = 'fs/aio.c'
source_filename = "fs/aio.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_aio__421_279_aio_setup6:\09\09\09"
module asm ".long\09aio_setup - .\09"
module asm ".previous\09\09\09\09\09"

%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.9, i64, i32 }
%union.anon.9 = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.83, %struct.list_head, %struct.list_head, %union.anon.84 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.80, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.85 }
%union.anon.85 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.13, %union.anon.62, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.62 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.63, %union.anon.64 }
%union.anon.63 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.64 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.27, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.26, [0 x i64] }
%struct.anon.26 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.30 }
%union.anon.30 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.38, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.66 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.67, %union.anon.68, %union.anon.69, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.72, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.67 = type { %struct.hlist_node }
%union.anon.68 = type { %struct.rb_node }
%union.anon.69 = type { %struct.anon.71 }
%struct.anon.71 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.72 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
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
%union.anon.38 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type { %struct.callback_head, i32, [0 x %struct.kioctx*] }
%struct.kioctx = type { %struct.percpu_ref, %struct.atomic_t, %struct.percpu_ref, i64, %struct.kioctx_cpu*, i32, i32, i32, i64, i64, %struct.page**, i64, %struct.rcu_work, %struct.ctx_rq_wait*, [24 x i8], %struct.anon.56, %struct.anon.57, %struct.anon.58, %struct.anon.59, [8 x %struct.page*], %struct.file*, i32, [52 x i8] }
%struct.kioctx_cpu = type { i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.ctx_rq_wait = type { %struct.completion, %struct.atomic_t }
%struct.anon.56 = type { %struct.atomic_t, [60 x i8] }
%struct.anon.57 = type { %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.anon.58 = type { %struct.mutex, %struct.wait_queue_head, [8 x i8] }
%struct.anon.59 = type { i32, i32, %struct.spinlock, [52 x i8] }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.27 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.28, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.29, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.28 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.29 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.78 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.76, %struct.qspinlock }
%union.anon.76 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.78 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.80 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.81 }
%union.anon.81 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.12, i32 }
%union.anon.12 = type { %struct.kuid_t }
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
%union.anon.83 = type { %struct.list_head }
%union.anon.84 = type { %struct.hlist_node }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [48 x i8] }
%struct.anon.2 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.net = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.10 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.10 = type { %struct.callback_head }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.module = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.87, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.87 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.iocb = type { i64, i32, i32, i16, i16, i32, i64, i64, i64, i64, i32, i32 }
%struct.io_event = type { i64, i64, i64, i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.__aio_sigset = type { %struct.sigset_t*, i64 }
%struct.pseudo_fs_context = type { %struct.super_operations*, %struct.xattr_handler**, %struct.dentry_operations*, i64 }
%struct.aio_kiocb = type { %union.anon.86, %struct.kioctx*, i32 (%struct.kiocb*)*, %struct.io_event, %struct.list_head, %struct.refcount_struct, %struct.eventfd_ctx* }
%union.anon.86 = type { %struct.poll_iocb }
%struct.poll_iocb = type { %struct.file*, %struct.wait_queue_head*, i32, i8, i8, %struct.wait_queue_entry, %struct.work_struct }
%struct.eventfd_ctx = type opaque
%struct.fsync_iocb = type { %struct.file*, %struct.work_struct, i8, %struct.cred* }
%struct.aio_poll_table = type { %struct.poll_table_struct, %struct.aio_kiocb*, i32 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, %struct.task_struct* }

@aio_max_nr = dso_local local_unnamed_addr global i64 65536, align 8
@__UNIQUE_ID___addressable_aio_setup422 = internal global i8* bitcast (i32 ()* @aio_setup to i8*), section ".discard.addressable", align 8
@aio_nr = dso_local local_unnamed_addr global i64 0, align 8
@aio_setup.aio_fs = internal global %struct.file_system_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0, i32 (%struct.fs_context*)* @aio_init_fs_context, %struct.fs_parameter_spec* null, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* null, void (%struct.super_block*)* @kill_anon_super, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@.str = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@aio_mnt = internal unnamed_addr global %struct.vfsmount* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to create aio fs mount.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"aio_kiocb\00", align 1
@kiocb_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"kioctx\00", align 1
@kioctx_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@aio_nr_lock = internal global %struct.spinlock zeroinitializer, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@ioctx_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"&ctx->ring_lock\00", align 1
@ioctx_alloc.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"&ctx->wait\00", align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@aio_ctx_aops = internal constant %struct.address_space_operations { i32 (%struct.page*, %struct.writeback_control*)* null, i32 (%struct.file*, %struct.page*)* null, i32 (%struct.address_space*, %struct.writeback_control*)* null, i32 (%struct.page*)* @__set_page_dirty_no_writeback, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* null, void (%struct.readahead_control*)* null, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)* null, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)* null, i64 (%struct.address_space*, i64)* null, void (%struct.page*, i32, i32)* null, i32 (%struct.page*, i32)* null, void (%struct.page*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* null, i1 (%struct.page*, i32)* null, void (%struct.page*)* null, i32 (%struct.page*)* null, i32 (%struct.page*, i64, i64)* null, void (%struct.page*, i8*, i8*)* null, i32 (%struct.address_space*, %struct.page*)* null, i32 (%struct.swap_info_struct*, %struct.file*, i64*)* null, void (%struct.file*)* null }, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"[aio]\00", align 1
@aio_ring_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* @aio_ring_mmap, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@aio_ring_vm_ops = internal constant %struct.vm_operations_struct { void (%struct.vm_area_struct*)* null, void (%struct.vm_area_struct*)* null, i32 (%struct.vm_area_struct*, i64)* null, i32 (%struct.vm_area_struct*)* @aio_ring_mremap, i32 (%struct.vm_area_struct*, i64, i64, i64)* null, i32 (%struct.vm_fault*)* @filemap_fault, i32 (%struct.vm_fault*, i32)* null, i32 (%struct.vm_fault*, i64, i64)* @filemap_map_pages, i64 (%struct.vm_area_struct*)* null, i32 (%struct.vm_fault*)* @filemap_page_mkwrite, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* null, i8* (%struct.vm_area_struct*)* null, %struct.page* (%struct.vm_area_struct*, i64)* null }, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_aio_setup422 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @aio_setup() #0 section ".init.text" {
entry:
  %call = call %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef nonnull @aio_setup.aio_fs) #17
  store %struct.vfsmount* %call, %struct.vfsmount** @aio_mnt, align 8
  %0 = bitcast %struct.vfsmount* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #18
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #19
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 176, i32 noundef 8, i32 noundef 270336, void (i8*)* noundef null) #17
  store %struct.kmem_cache* %call2, %struct.kmem_cache** @kiocb_cachep, align 8
  %call3 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef 576, i32 noundef 64, i32 noundef 270336, void (i8*)* noundef null) #17
  store %struct.kmem_cache* %call3, %struct.kmem_cache** @kioctx_cachep, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kiocb_set_cancel_fn(%struct.kiocb* noundef %iocb, i32 (%struct.kiocb*)* noundef %cancel) local_unnamed_addr #1 {
entry:
  %ki_ctx = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 2
  %0 = bitcast %struct.kiocb* %ki_ctx to %struct.kioctx**
  %1 = load %struct.kioctx*, %struct.kioctx** %0, align 8
  %ki_list = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 3
  %2 = bitcast %struct.kiocb* %ki_list to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %2) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.body21, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/aio.c\22; .popsection; .long 14472b - 14470b; .short 566; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !9
  br label %cleanup

do.body21:                                        ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %1, i64 0, i32 16, i32 0, i32 0, i32 0
  %call25 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #18
  %active_reqs = getelementptr inbounds %struct.kioctx, %struct.kioctx* %1, i64 0, i32 16, i32 1
  call fastcc void @list_add_tail(%struct.list_head* noundef %2, %struct.list_head* noundef %active_reqs) #18
  %ki_cancel = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 2, i32 1
  %3 = bitcast i64* %ki_cancel to i32 (%struct.kiocb*)**
  store i32 (%struct.kiocb*)* %cancel, i32 (%struct.kiocb*)** %3, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call25) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #18
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_aio(%struct.mm_struct* noundef %mm) local_unnamed_addr #1 {
entry:
  %wait = alloca %struct.ctx_rq_wait, align 8
  %ioctx_table = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 46
  %0 = load volatile %struct.kioctx_table*, %struct.kioctx_table** %ioctx_table, align 8
  %1 = bitcast %struct.ctx_rq_wait* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !11
  %tobool.not = icmp eq %struct.kioctx_table* %0, null
  br i1 %tobool.not, label %cleanup30, label %if.end

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %wait, i64 0, i32 1
  %nr = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %0, i64 0, i32 1
  %2 = load i32, i32* %nr, align 8
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %count, i64 0, i32 0
  store volatile i32 %2, i32* %counter.i, align 8
  %comp = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %wait, i64 0, i32 0
  call fastcc void @init_completion(%struct.completion* noundef nonnull %comp) #18
  %3 = load i32, i32* %nr, align 8
  %cmp53.not = icmp eq i32 %3, 0
  br i1 %cmp53.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %cleanup
  %4 = phi i32 [ %6, %cleanup ], [ %3, %if.end ]
  %skipped.055 = phi i32 [ %skipped.1, %cleanup ], [ 0, %if.end ]
  %i.054 = phi i32 [ %inc11, %cleanup ], [ 0, %if.end ]
  %idxprom = sext i32 %i.054 to i64
  %arrayidx = getelementptr %struct.kioctx_table, %struct.kioctx_table* %0, i64 0, i32 2, i64 %idxprom
  %5 = load %struct.kioctx*, %struct.kioctx** %arrayidx, align 8
  %tobool8.not = icmp eq %struct.kioctx* %5, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  %inc = add i32 %skipped.055, 1
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %mmap_size = getelementptr inbounds %struct.kioctx, %struct.kioctx* %5, i64 0, i32 9
  store i64 0, i64* %mmap_size, align 16
  %call = call fastcc i32 @kill_ioctx(%struct.mm_struct* noundef %mm, %struct.kioctx* noundef nonnull %5, %struct.ctx_rq_wait* noundef nonnull %wait) #18
  %.pre = load i32, i32* %nr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  %6 = phi i32 [ %.pre, %if.end10 ], [ %4, %if.then9 ]
  %skipped.1 = phi i32 [ %skipped.055, %if.end10 ], [ %inc, %if.then9 ]
  %inc11 = add nuw i32 %i.054, 1
  %cmp = icmp ult i32 %inc11, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %if.end
  %skipped.0.lcssa = phi i32 [ 0, %if.end ], [ %skipped.1, %cleanup ]
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef %skipped.0.lcssa, %struct.atomic_t* noundef %count) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body22, label %if.then14

if.then14:                                        ; preds = %for.end
  call void @wait_for_completion(%struct.completion* noundef nonnull %comp) #17
  br label %do.body22

do.body22:                                        ; preds = %if.then14, %for.end
  store volatile %struct.kioctx_table* null, %struct.kioctx_table** %ioctx_table, align 8
  %7 = bitcast %struct.kioctx_table* %0 to i8*
  call void @kfree(i8* noundef nonnull %7) #17
  br label %cleanup30

cleanup30:                                        ; preds = %entry, %do.body22
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #1 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kill_ioctx(%struct.mm_struct* noundef %mm, %struct.kioctx* noundef %ctx, %struct.ctx_rq_wait* noundef %wait) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 45, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %dead = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 1
  %0 = bitcast %struct.atomic_t* %dead to i8*
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32(i8* noundef %0) #17
  %tobool.not = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioctx_table = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 46
  %1 = load volatile %struct.kioctx_table*, %struct.kioctx_table** %ioctx_table, align 8
  %id = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 21
  %2 = load i32, i32* %id, align 8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr %struct.kioctx_table, %struct.kioctx_table* %1, i64 0, i32 2, i64 %idxprom
  %3 = load volatile %struct.kioctx*, %struct.kioctx** %arrayidx, align 8
  %cmp.not = icmp eq %struct.kioctx* %3, %ctx
  br i1 %cmp.not, label %if.end17, label %if.then16, !prof !12

if.then16:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/aio.c\22; .popsection; .long 14472b - 14470b; .short 827; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !13
  %.pre = load i32, i32* %id, align 8
  %.pre70 = zext i32 %.pre to i64
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  %idxprom34.pre-phi = phi i64 [ %.pre70, %if.then16 ], [ %idxprom, %if.end ]
  %arrayidx35 = getelementptr %struct.kioctx_table, %struct.kioctx_table* %1, i64 0, i32 2, i64 %idxprom34.pre-phi
  store volatile %struct.kioctx* null, %struct.kioctx** %arrayidx35, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  %wait43 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 17, i32 1
  call void @__wake_up(%struct.wait_queue_head* noundef %wait43, i32 noundef 3, i32 noundef 0, i8* noundef null) #17
  %max_reqs = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 6
  %4 = load i32, i32* %max_reqs, align 4
  call fastcc void @aio_nr_sub(i32 noundef %4) #18
  %mmap_size = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 9
  %5 = load i64, i64* %mmap_size, align 16
  %tobool44.not = icmp eq i64 %5, 0
  br i1 %tobool44.not, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.end17
  %mmap_base = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 8
  %6 = load i64, i64* %mmap_base, align 8
  %call47 = call i32 @vm_munmap(i64 noundef %6, i64 noundef %5) #17
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end17
  %rq_wait = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 13
  store %struct.ctx_rq_wait* %wait, %struct.ctx_rq_wait** %rq_wait, align 32
  %users = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 0
  call fastcc void @percpu_ref_kill(%struct.percpu_ref* noundef %users) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_io_setup(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_io_setup(i64 noundef %0, i64 noundef %1) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_io_setup(i64 noundef %nr_events, i64 noundef %ctxp) unnamed_addr #1 {
entry:
  %conv = trunc i64 %nr_events to i32
  %0 = inttoptr i64 %ctxp to i64*
  %call = call fastcc i64 @__do_sys_io_setup(i32 noundef %conv, i64* noundef %0) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_io_destroy(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_io_destroy(i64 noundef %0) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_io_destroy(i64 noundef %ctx) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__do_sys_io_destroy(i64 noundef %ctx) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_io_submit(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_io_submit(i64 noundef %0, i64 noundef %1, i64 noundef %2) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_io_submit(i64 noundef %ctx_id, i64 noundef %nr, i64 noundef %iocbpp) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %iocbpp to %struct.iocb**
  %call = call fastcc i64 @__do_sys_io_submit(i64 noundef %ctx_id, i64 noundef %nr, %struct.iocb** noundef %0) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_io_cancel(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_io_cancel(i64 noundef %0, i64 noundef %1, i64 noundef %2) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_io_cancel(i64 noundef %ctx_id, i64 noundef %iocb, i64 noundef %result) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %iocb to %struct.iocb*
  %call = call fastcc i64 @__do_sys_io_cancel(i64 noundef %ctx_id, %struct.iocb* noundef %0) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_io_getevents(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
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
  %call = call fastcc i64 @__se_sys_io_getevents(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_io_getevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, i64 noundef %events, i64 noundef %timeout) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %events to %struct.io_event*
  %1 = inttoptr i64 %timeout to %struct.__kernel_timespec*
  %call = call fastcc i64 @__do_sys_io_getevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %0, %struct.__kernel_timespec* noundef %1) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_io_pgetevents(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
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
  %call = call fastcc i64 @__se_sys_io_pgetevents(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_io_pgetevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, i64 noundef %events, i64 noundef %timeout, i64 noundef %usig) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %events to %struct.io_event*
  %1 = inttoptr i64 %timeout to %struct.__kernel_timespec*
  %2 = inttoptr i64 %usig to %struct.__aio_sigset*
  %call = call fastcc i64 @__do_sys_io_pgetevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %0, %struct.__kernel_timespec* noundef %1, %struct.__aio_sigset* noundef %2) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @aio_init_fs_context(%struct.fs_context* noundef %fc) #1 {
entry:
  %call = call %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef %fc, i64 noundef 2701791393) #17
  %tobool.not = icmp eq %struct.pseudo_fs_context* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %s_iflags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 15
  %0 = load i32, i32* %s_iflags, align 8
  %or = or i32 %0, 2
  store i32 %or, i32* %s_iflags, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(%struct.super_block* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #18
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #20, !srcloc !14
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #20, !srcloc !15
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #18
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #20, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #20, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
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
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #20, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #20, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @aio_nr_sub(i32 noundef %nr) unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @aio_nr_lock, i64 0, i32 0, i32 0)) #17
  %0 = load i64, i64* @aio_nr, align 8
  %conv = zext i32 %nr to i64
  %cmp = icmp ult i64 %0, %conv
  br i1 %cmp, label %if.then, label %if.else, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/aio.c\22; .popsection; .long 14472b - 14470b; .short 690; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !21
  br label %if.end20

if.else:                                          ; preds = %entry
  %sub19 = sub i64 %0, %conv
  br label %if.end20

if.end20:                                         ; preds = %if.then, %if.else
  %storemerge = phi i64 [ %sub19, %if.else ], [ 0, %if.then ]
  store i64 %storemerge, i64* @aio_nr, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @aio_nr_lock, i64 0, i32 0, i32 0)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_kill(%struct.percpu_ref* noundef %ref) unnamed_addr #1 {
entry:
  call void @percpu_ref_kill_and_confirm(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !22
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* elementtype(i32) %0, i32 1, i32* elementtype(i32) %0) #20, !srcloc !23
  %asmresult = extractvalue { i32, i64 } %1, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(%struct.percpu_ref* noundef, void (%struct.percpu_ref*)* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #20, !srcloc !25
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_io_setup(i32 noundef %nr_events, i64* noundef %ctxp) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %ctxp to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 8) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %1 = bitcast i8* %call1 to i64*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %1, i32 -14, i32 0) #20, !srcloc !26
  %asmresult = extractvalue { i32, i64 } %2, 0
  %phi.cast = sext i32 %asmresult to i64
  %tobool11.not = icmp eq i32 %asmresult, 0
  br i1 %tobool11.not, label %if.end16, label %out, !prof !12

if.end16:                                         ; preds = %if.end
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %tobool17 = icmp ne i64 %asmresult5, 0
  %cmp = icmp eq i32 %nr_events, 0
  %3 = or i1 %cmp, %tobool17
  br i1 %3, label %out, label %if.end28, !prof !8

if.end28:                                         ; preds = %if.end16
  %call29 = call fastcc %struct.kioctx* @ioctx_alloc(i32 noundef %nr_events) #18
  %4 = bitcast %struct.kioctx* %call29 to i8*
  %call30 = call fastcc i64 @PTR_ERR(i8* noundef %4) #18
  %call31 = call fastcc i1 @IS_ERR(i8* noundef %4) #18
  br i1 %call31, label %out, label %if.then32

if.then32:                                        ; preds = %if.end28
  %call35 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 8) #18
  %tobool36.not = icmp eq i64 %call35, 0
  br i1 %tobool36.not, label %if.then54, label %if.end48

if.end48:                                         ; preds = %if.then32
  %call38 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %5 = bitcast i8* %call38 to i64*
  %user_id = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call29, i64 0, i32 3
  %6 = load i64, i64* %user_id, align 8
  %7 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %6, i64* %5, i32 -14, i32 0) #20, !srcloc !27
  %phi.cast82 = sext i32 %7 to i64
  %tobool53.not = icmp eq i32 %7, 0
  br i1 %tobool53.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %if.then32, %if.end48
  %__pu_err.088 = phi i64 [ %phi.cast82, %if.end48 ], [ -14, %if.then32 ]
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 35
  %10 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call56 = call fastcc i32 @kill_ioctx(%struct.mm_struct* noundef %10, %struct.kioctx* noundef %call29, %struct.ctx_rq_wait* noundef null) #18
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end48
  %__pu_err.089 = phi i64 [ %__pu_err.088, %if.then54 ], [ 0, %if.end48 ]
  %users = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call29, i64 0, i32 0
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %users) #18
  br label %out

out:                                              ; preds = %entry, %if.end16, %if.end28, %if.end57, %if.end
  %ret.0 = phi i64 [ %phi.cast, %if.end ], [ %call30, %if.end28 ], [ %__pu_err.089, %if.end57 ], [ -22, %if.end16 ], [ -14, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #20, !srcloc !29
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #20, !srcloc !30
  call void asm sideeffect "hint #20", "~{memory}"() #20, !srcloc !31
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kioctx* @ioctx_alloc(i32 noundef %nr_events) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %call2 = call fastcc i32 @cpumask_weight() #18
  %mul = shl i32 %call2, 2
  %cmp = icmp ult i32 %mul, %nr_events
  %cond = select i1 %cmp, i32 %nr_events, i32 %mul
  %mul3 = shl i32 %cond, 1
  %cmp4 = icmp ugt i32 %mul3, 8388608
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -22) #18
  %3 = bitcast i8* %call7 to %struct.kioctx*
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %mul3, 0
  %conv8 = zext i32 %nr_events to i64
  %4 = load i64, i64* @aio_max_nr, align 8
  %cmp9 = icmp ult i64 %4, %conv8
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef -11) #18
  %5 = bitcast i8* %call12 to %struct.kioctx*
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** @kioctx_cachep, align 8
  %call14 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %6) #18
  %7 = bitcast i8* %call14 to %struct.kioctx*
  %tobool15.not = icmp eq i8* %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %call17 = call fastcc i8* @ERR_PTR(i64 noundef -12) #18
  %8 = bitcast i8* %call17 to %struct.kioctx*
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %max_reqs19 = getelementptr inbounds i8, i8* %call14, i64 60
  %9 = bitcast i8* %max_reqs19 to i32*
  store i32 %nr_events, i32* %9, align 4
  %10 = getelementptr inbounds i8, i8* %call14, i64 256
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 64
  %completion_lock = getelementptr inbounds i8, i8* %call14, i64 392
  %12 = bitcast i8* %completion_lock to i32*
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds i8, i8* %call14, i64 320
  %ring_lock = bitcast i8* %13 to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %ring_lock, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @ioctx_alloc.__key) #17
  call void @mutex_lock(%struct.mutex* noundef %ring_lock) #17
  %wait = getelementptr inbounds i8, i8* %call14, i64 352
  %14 = bitcast i8* %wait to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %14, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @ioctx_alloc.__key.6) #17
  %active_reqs = getelementptr inbounds i8, i8* %call14, i64 264
  %15 = bitcast i8* %active_reqs to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %15) #18
  %users = bitcast i8* %call14 to %struct.percpu_ref*
  %call39 = call i32 @percpu_ref_init(%struct.percpu_ref* noundef nonnull %users, void (%struct.percpu_ref*)* noundef nonnull @free_ioctx_users, i32 noundef 0, i32 noundef 3264) #17
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %err97

if.end42:                                         ; preds = %if.end18
  %reqs = getelementptr inbounds i8, i8* %call14, i64 24
  %16 = bitcast i8* %reqs to %struct.percpu_ref*
  %call43 = call i32 @percpu_ref_init(%struct.percpu_ref* noundef %16, void (%struct.percpu_ref*)* noundef nonnull @free_ioctx_reqs, i32 noundef 0, i32 noundef 3264) #17
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %err97

if.end46:                                         ; preds = %if.end42
  %call47 = call i8* @__alloc_percpu(i64 noundef 4, i64 noundef 4) #17
  %cpu = getelementptr inbounds i8, i8* %call14, i64 48
  %17 = bitcast i8* %cpu to i8**
  store i8* %call47, i8** %17, align 16
  %tobool49.not = icmp eq i8* %call47, null
  br i1 %tobool49.not, label %err97, label %if.end51

if.end51:                                         ; preds = %if.end46
  %call52 = call fastcc i32 @aio_setup_ring(%struct.kioctx* noundef nonnull %7, i32 noundef %mul3) #18
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %err97, label %if.end56

if.end56:                                         ; preds = %if.end51
  %18 = getelementptr inbounds i8, i8* %call14, i64 192
  %nr_events57 = getelementptr inbounds i8, i8* %call14, i64 64
  %19 = bitcast i8* %nr_events57 to i32*
  %20 = load i32, i32* %19, align 64
  %sub = add i32 %20, -1
  %counter.i = bitcast i8* %18 to i32*
  store volatile i32 %sub, i32* %counter.i, align 4
  %call60 = call fastcc i32 @cpumask_weight() #18
  %mul61 = shl i32 %call60, 2
  %div = udiv i32 %sub, %mul61
  %req_batch = getelementptr inbounds i8, i8* %call14, i64 56
  %21 = bitcast i8* %req_batch to i32*
  %cmp63 = icmp ugt i32 %mul61, %sub
  %spec.select = select i1 %cmp63, i32 1, i32 %div
  store i32 %spec.select, i32* %21, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @aio_nr_lock, i64 0, i32 0, i32 0)) #17
  %22 = load i64, i64* @aio_nr, align 8
  %23 = load i32, i32* %9, align 4
  %conv69 = zext i32 %23 to i64
  %add = add i64 %22, %conv69
  %24 = load i64, i64* @aio_max_nr, align 8
  %cmp70 = icmp ugt i64 %add, %24
  %cmp76 = icmp ult i64 %add, %22
  %or.cond164 = or i1 %cmp70, %cmp76
  br i1 %or.cond164, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end56
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @aio_nr_lock, i64 0, i32 0, i32 0)) #17
  br label %err_ctx

if.end79:                                         ; preds = %if.end56
  store i64 %add, i64* @aio_nr, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @aio_nr_lock, i64 0, i32 0, i32 0)) #17
  call fastcc void @percpu_ref_get(%struct.percpu_ref* noundef nonnull %users) #18
  call fastcc void @percpu_ref_get(%struct.percpu_ref* noundef %16) #18
  %call85 = call fastcc i32 @ioctx_add_table(%struct.kioctx* noundef nonnull %7, %struct.mm_struct* noundef %2) #18
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %err_cleanup

if.end88:                                         ; preds = %if.end79
  call void @mutex_unlock(%struct.mutex* noundef %ring_lock) #17
  br label %cleanup

err_cleanup:                                      ; preds = %if.end79
  %25 = load i32, i32* %9, align 4
  call fastcc void @aio_nr_sub(i32 noundef %25) #18
  br label %err_ctx

err_ctx:                                          ; preds = %err_cleanup, %if.then78
  %err.0 = phi i32 [ -11, %if.then78 ], [ %call85, %err_cleanup ]
  %dead = getelementptr inbounds i8, i8* %call14, i64 16
  %counter.i166 = bitcast i8* %dead to i32*
  store volatile i32 1, i32* %counter.i166, align 4
  %mmap_size = getelementptr inbounds i8, i8* %call14, i64 80
  %26 = bitcast i8* %mmap_size to i64*
  %27 = load i64, i64* %26, align 16
  %tobool92.not = icmp eq i64 %27, 0
  br i1 %tobool92.not, label %if.end96, label %if.then93

if.then93:                                        ; preds = %err_ctx
  %mmap_base = getelementptr inbounds i8, i8* %call14, i64 72
  %28 = bitcast i8* %mmap_base to i64*
  %29 = load i64, i64* %28, align 8
  %call95 = call i32 @vm_munmap(i64 noundef %29, i64 noundef %27) #17
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %err_ctx
  call fastcc void @aio_free_ring(%struct.kioctx* noundef nonnull %7) #18
  br label %err97

err97:                                            ; preds = %if.end18, %if.end51, %if.end46, %if.end42, %if.end96
  %err.1 = phi i32 [ -12, %if.end42 ], [ %call52, %if.end51 ], [ %err.0, %if.end96 ], [ -12, %if.end46 ], [ -12, %if.end18 ]
  call void @mutex_unlock(%struct.mutex* noundef %ring_lock) #17
  %cpu99 = getelementptr inbounds i8, i8* %call14, i64 48
  %30 = bitcast i8* %cpu99 to i8**
  %31 = load i8*, i8** %30, align 16
  call void @free_percpu(i8* noundef %31) #17
  %reqs100 = getelementptr inbounds i8, i8* %call14, i64 24
  %32 = bitcast i8* %reqs100 to %struct.percpu_ref*
  call void @percpu_ref_exit(%struct.percpu_ref* noundef %32) #17
  call void @percpu_ref_exit(%struct.percpu_ref* noundef nonnull %users) #17
  %33 = load %struct.kmem_cache*, %struct.kmem_cache** @kioctx_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %33, i8* noundef nonnull %call14) #17
  %conv103 = sext i32 %err.1 to i64
  %call104 = call fastcc i8* @ERR_PTR(i64 noundef %conv103) #18
  %34 = bitcast i8* %call104 to %struct.kioctx*
  br label %cleanup

cleanup:                                          ; preds = %err97, %if.end88, %if.then16, %if.then11, %if.then
  %retval.0 = phi %struct.kioctx* [ %3, %if.then ], [ %5, %if.then11 ], [ %34, %err97 ], [ %7, %if.end88 ], [ %8, %if.then16 ]
  ret %struct.kioctx* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %ref) unnamed_addr #1 {
entry:
  call fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #1 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #17
  ret i32 %call4.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #1 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #17
  ret i8* %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(%struct.percpu_ref* noundef, void (%struct.percpu_ref*)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @free_ioctx_users(%struct.percpu_ref* noundef %ref) #1 {
entry:
  %0 = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 16
  %rlock.i = bitcast %struct.percpu_ref* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %active_reqs = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 16, i32 1
  %1 = bitcast %struct.percpu_ref_data** %active_reqs to %struct.list_head*
  %call23 = call fastcc i32 @list_empty(%struct.list_head* noundef %1) #18
  %tobool.not24 = icmp eq i32 %call23, 0
  br i1 %tobool.not24, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = bitcast %struct.percpu_ref_data** %active_reqs to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %3 = load i8*, i8** %2, align 8
  %add.ptr7 = getelementptr i8, i8* %3, i64 -144
  %ki_cancel = getelementptr i8, i8* %3, i64 -40
  %4 = bitcast i8* %ki_cancel to i32 (%struct.kiocb*)**
  %5 = load i32 (%struct.kiocb*)*, i32 (%struct.kiocb*)** %4, align 8
  %rw = bitcast i8* %add.ptr7 to %struct.kiocb*
  %call8 = call i32 %5(%struct.kiocb* noundef %rw) #17
  %6 = bitcast i8* %3 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %6) #18
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %1) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %reqs = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 1, i32 1
  %7 = bitcast %struct.percpu_ref_data** %reqs to %struct.percpu_ref*
  call fastcc void @percpu_ref_kill(%struct.percpu_ref* noundef %7) #18
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %7) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @free_ioctx_reqs(%struct.percpu_ref* noundef %ref) #1 {
entry:
  %add.ptr = getelementptr %struct.percpu_ref, %struct.percpu_ref* %ref, i64 -2, i32 1
  %rq_wait = getelementptr inbounds %struct.percpu_ref_data*, %struct.percpu_ref_data** %add.ptr, i64 20
  %0 = bitcast %struct.percpu_ref_data** %rq_wait to %struct.ctx_rq_wait**
  %1 = load %struct.ctx_rq_wait*, %struct.ctx_rq_wait** %0, align 32
  %tobool.not = icmp eq %struct.ctx_rq_wait* %1, null
  br i1 %tobool.not, label %do.body3, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %1, i64 0, i32 1
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef 1, %struct.atomic_t* noundef %count) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %do.body3

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.ctx_rq_wait*, %struct.ctx_rq_wait** %0, align 32
  %comp = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %2, i64 0, i32 0
  call void @complete(%struct.completion* noundef %comp) #17
  br label %do.body3

do.body3:                                         ; preds = %entry, %land.lhs.true, %if.then
  %free_rwork = getelementptr inbounds %struct.percpu_ref_data*, %struct.percpu_ref_data** %add.ptr, i64 13
  %3 = bitcast %struct.percpu_ref_data** %free_rwork to %struct.rcu_work*
  %4 = bitcast %struct.percpu_ref_data** %free_rwork to i64*
  store i64 68719476704, i64* %4, align 8
  %entry8 = getelementptr inbounds %struct.percpu_ref_data*, %struct.percpu_ref_data** %add.ptr, i64 14
  %5 = bitcast %struct.percpu_ref_data** %entry8 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %5) #18
  %func = getelementptr inbounds %struct.percpu_ref_data*, %struct.percpu_ref_data** %add.ptr, i64 16
  %6 = bitcast %struct.percpu_ref_data** %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @free_ioctx, void (%struct.work_struct*)** %6, align 8
  %7 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %call14 = call i1 @queue_rcu_work(%struct.workqueue_struct* noundef %7, %struct.rcu_work* noundef %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @aio_setup_ring(%struct.kioctx* noundef %ctx, i32 noundef %nr_events) unnamed_addr #1 {
entry:
  %unused = alloca i64, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast i64* %unused to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  store i64 0, i64* %unused, align 8, !annotation !11
  %add = add i32 %nr_events, 2
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 5
  %sub = add nuw nsw i64 %mul, 4127
  %shr = lshr i64 %sub, 12
  %conv4 = trunc i64 %shr to i32
  %call7 = call fastcc %struct.file* @aio_private_file(%struct.kioctx* noundef %ctx, i64 noundef %shr) #18
  %4 = bitcast %struct.file* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %4) #18
  %aio_ring_file = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 20
  br i1 %call8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %entry
  store %struct.file* null, %struct.file** %aio_ring_file, align 64
  br label %cleanup70

if.end10:                                         ; preds = %entry
  store %struct.file* %call7, %struct.file** %aio_ring_file, align 64
  %mul13 = and i64 %sub, 274877902848
  %sub14 = add nuw nsw i64 %mul13, 137438953440
  %div = lshr exact i64 %sub14, 5
  %conv15 = trunc i64 %div to i32
  %arraydecay = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 19, i64 0
  %ring_pages = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 10
  store %struct.page** %arraydecay, %struct.page*** %ring_pages, align 8
  %cmp16 = icmp ugt i32 %conv4, 8
  br i1 %cmp16, label %if.then18, label %for.body.preheader

if.then18:                                        ; preds = %if.end10
  %call20 = call fastcc i8* @kcalloc(i64 noundef %shr) #18
  %5 = bitcast %struct.page*** %ring_pages to i8**
  store i8* %call20, i8** %5, align 8
  %tobool.not = icmp eq i8* %call20, null
  br i1 %tobool.not, label %if.then23, label %for.body.preheader

if.then23:                                        ; preds = %if.then18
  call fastcc void @put_aio_ring_file(%struct.kioctx* noundef %ctx) #18
  br label %cleanup70

for.body.preheader:                               ; preds = %if.end10, %if.then18
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %call7, i64 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %6 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %call29 = call fastcc %struct.page* @find_or_create_page(%struct.address_space* noundef %6, i64 noundef %indvars.iv) #18
  %tobool30.not = icmp eq %struct.page* %call29, null
  br i1 %tobool30.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !32
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %call29, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags.i) #17
  call void @unlock_page(%struct.page* noundef nonnull %call29) #17
  %7 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %arrayidx = getelementptr %struct.page*, %struct.page** %7, i64 %indvars.iv
  store %struct.page* %call29, %struct.page** %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %shr
  br i1 %exitcond.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.inc
  %nr_pages35146 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 11
  store i64 %shr, i64* %nr_pages35146, align 32
  br label %if.end42

for.end:                                          ; preds = %for.body
  %8 = trunc i64 %indvars.iv to i32
  %conv34 = and i64 %indvars.iv, 4294967295
  %nr_pages35 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 11
  store i64 %conv34, i64* %nr_pages35, align 32
  %cmp36.not = icmp eq i32 %8, %conv4
  br i1 %cmp36.not, label %if.end42, label %if.then41, !prof !12

if.then41:                                        ; preds = %for.end
  call fastcc void @aio_free_ring(%struct.kioctx* noundef %ctx) #18
  br label %cleanup70

if.end42:                                         ; preds = %for.end.thread, %for.end
  %mmap_size = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 9
  store i64 %mul13, i64* %mmap_size, align 16
  %call46 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #18
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end42
  store i64 0, i64* %mmap_size, align 16
  call fastcc void @aio_free_ring(%struct.kioctx* noundef %ctx) #18
  br label %cleanup70

if.end50:                                         ; preds = %if.end42
  %9 = load %struct.file*, %struct.file** %aio_ring_file, align 64
  %10 = load i64, i64* %mmap_size, align 16
  %call53 = call i64 @do_mmap(%struct.file* noundef %9, i64 noundef 0, i64 noundef %10, i64 noundef 3, i64 noundef 1, i64 noundef 0, i64* noundef nonnull %unused, %struct.list_head* noundef null) #17
  %mmap_base = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 8
  store i64 %call53, i64* %mmap_base, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  %11 = load i64, i64* %mmap_base, align 8
  %12 = inttoptr i64 %11 to i8*
  %call55 = call fastcc i1 @IS_ERR(i8* noundef %12) #18
  br i1 %call55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end50
  store i64 0, i64* %mmap_size, align 16
  call fastcc void @aio_free_ring(%struct.kioctx* noundef %ctx) #18
  br label %cleanup70

if.end58:                                         ; preds = %if.end50
  %user_id = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 3
  store i64 %11, i64* %user_id, align 8
  %nr_events61 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 7
  store i32 %conv15, i32* %nr_events61, align 64
  %13 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %14 = load %struct.page*, %struct.page** %13, align 8
  %call64 = call fastcc i8* @kmap_atomic(%struct.page* noundef %14) #18
  %nr = getelementptr inbounds i8, i8* %call64, i64 4
  %15 = bitcast i8* %nr to i32*
  store i32 %conv15, i32* %15, align 4
  %id = bitcast i8* %call64 to i32*
  store i32 -1, i32* %id, align 8
  %tail = getelementptr inbounds i8, i8* %call64, i64 12
  %16 = bitcast i8* %tail to i32*
  store i32 0, i32* %16, align 4
  %head = getelementptr inbounds i8, i8* %call64, i64 8
  %17 = bitcast i8* %head to i32*
  store i32 0, i32* %17, align 8
  %magic = getelementptr inbounds i8, i8* %call64, i64 16
  %18 = bitcast i8* %magic to i32*
  store i32 -1593175903, i32* %18, align 8
  %compat_features = getelementptr inbounds i8, i8* %call64, i64 20
  %19 = bitcast i8* %compat_features to i32*
  store i32 1, i32* %19, align 4
  %incompat_features = getelementptr inbounds i8, i8* %call64, i64 24
  %20 = bitcast i8* %incompat_features to i32*
  store i32 0, i32* %20, align 8
  %header_length = getelementptr inbounds i8, i8* %call64, i64 28
  %21 = bitcast i8* %header_length to i32*
  store i32 32, i32* %21, align 4
  call fastcc void @__kunmap_atomic() #18
  %22 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %23 = load %struct.page*, %struct.page** %22, align 8
  call void @flush_dcache_page(%struct.page* noundef %23) #17
  br label %cleanup70

cleanup70:                                        ; preds = %if.end58, %if.then56, %if.then48, %if.then41, %if.then23, %if.then9
  %retval.0 = phi i32 [ -12, %if.then9 ], [ -12, %if.then41 ], [ -4, %if.then48 ], [ -12, %if.then56 ], [ 0, %if.end58 ], [ -12, %if.then23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_get(%struct.percpu_ref* noundef %ref) unnamed_addr #1 {
entry:
  call fastcc void @percpu_ref_get_many(%struct.percpu_ref* noundef %ref) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ioctx_add_table(%struct.kioctx* noundef %ctx, %struct.mm_struct* noundef %mm) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 45, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %ioctx_table = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 46
  %0 = load volatile %struct.kioctx_table*, %struct.kioctx_table** %ioctx_table, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %table.0 = phi %struct.kioctx_table* [ %0, %entry ], [ %table.0.be, %while.cond.backedge ]
  %tobool.not = icmp eq %struct.kioctx_table* %table.0, null
  br i1 %tobool.not, label %cond.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %nr = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %table.0, i64 0, i32 1
  %1 = load i32, i32* %nr, align 8
  %cmp226.not = icmp eq i32 %1, 0
  br i1 %cmp226.not, label %cond.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.kioctx_table, %struct.kioctx_table* %table.0, i64 0, i32 2, i64 %indvars.iv
  %2 = load volatile %struct.kioctx*, %struct.kioctx** %arrayidx, align 8
  %tobool8.not = icmp eq %struct.kioctx* %2, null
  br i1 %tobool8.not, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %id = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 21
  store i32 %3, i32* %id, align 8
  %4 = ptrtoint %struct.kioctx* %ctx to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.kioctx** elementtype(%struct.kioctx*) %arrayidx, i64 %4) #20, !srcloc !33
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  %ring_pages = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 10
  %5 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %6 = load %struct.page*, %struct.page** %5, align 8
  %call38 = call fastcc i8* @kmap_atomic(%struct.page* noundef %6) #18
  %7 = load i32, i32* %id, align 8
  %id40 = bitcast i8* %call38 to i32*
  store i32 %7, i32* %id40, align 8
  call fastcc void @__kunmap_atomic() #18
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cond.end, label %for.body

cond.end:                                         ; preds = %for.inc, %for.cond.preheader, %while.cond
  %cond = phi i32 [ 1, %while.cond ], [ 0, %for.cond.preheader ], [ %1, %for.inc ]
  %mul = shl i32 %cond, 2
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  %conv = zext i32 %mul to i64
  %mul52 = shl nuw nsw i64 %conv, 3
  %add = or i64 %mul52, 24
  %call53 = call fastcc i8* @kzalloc(i64 noundef %add) #18
  %8 = bitcast i8* %call53 to %struct.kioctx_table*
  %tobool54.not = icmp eq i8* %call53, null
  br i1 %tobool54.not, label %cleanup, label %if.end56

if.end56:                                         ; preds = %cond.end
  %nr57 = getelementptr inbounds i8, i8* %call53, i64 16
  %9 = bitcast i8* %nr57 to i32*
  store i32 %mul, i32* %9, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %10 = load volatile %struct.kioctx_table*, %struct.kioctx_table** %ioctx_table, align 8
  %tobool66.not = icmp eq %struct.kioctx_table* %10, null
  br i1 %tobool66.not, label %do.body68, label %if.else101

do.body68:                                        ; preds = %if.end56
  %11 = ptrtoint i8* %call53 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.kioctx_table** elementtype(%struct.kioctx_table*) %ioctx_table, i64 %11) #20, !srcloc !34
  br label %while.cond.backedge

if.else101:                                       ; preds = %if.end56
  %12 = load i32, i32* %9, align 8
  %nr103 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %10, i64 0, i32 1
  %13 = load i32, i32* %nr103, align 8
  %cmp104 = icmp ugt i32 %12, %13
  br i1 %cmp104, label %if.then106, label %if.else157

if.then106:                                       ; preds = %if.else101
  %table107 = getelementptr inbounds i8, i8* %call53, i64 24
  %arraydecay110 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %10, i64 0, i32 2, i64 0
  %14 = bitcast %struct.kioctx** %arraydecay110 to i8*
  %conv112 = zext i32 %13 to i64
  %mul113 = shl nuw nsw i64 %conv112, 3
  %call114 = call i8* @memcpy(i8* noundef %table107, i8* noundef %14, i64 noundef %mul113) #17
  %15 = ptrtoint i8* %call53 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.kioctx_table** elementtype(%struct.kioctx_table*) %ioctx_table, i64 %15) #20, !srcloc !35
  %rcu = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %10, i64 0, i32 0
  call void @kvfree_call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef null) #17
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then106, %if.else157, %do.body68
  %table.0.be = phi %struct.kioctx_table* [ %8, %if.then106 ], [ %10, %if.else157 ], [ %8, %do.body68 ]
  br label %while.cond

if.else157:                                       ; preds = %if.else101
  call void @kfree(i8* noundef nonnull %call53) #17
  br label %while.cond.backedge

cleanup:                                          ; preds = %cond.end, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ -12, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @aio_free_ring(%struct.kioctx* noundef %ctx) unnamed_addr #1 {
entry:
  call fastcc void @put_aio_ring_file(%struct.kioctx* noundef %ctx) #18
  %nr_pages = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 11
  %0 = load i64, i64* %nr_pages, align 32
  %cmp29 = icmp sgt i64 %0, 0
  br i1 %cmp29, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ring_pages = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %1 = phi i64 [ %0, %for.body.lr.ph ], [ %4, %cleanup ]
  %conv31 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %cleanup ]
  %2 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %arrayidx = getelementptr %struct.page*, %struct.page** %2, i64 %conv31
  %3 = load %struct.page*, %struct.page** %arrayidx, align 8
  %tobool.not = icmp eq %struct.page* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  store %struct.page* null, %struct.page** %arrayidx, align 8
  call fastcc void @put_page(%struct.page* noundef nonnull %3) #18
  %.pre = load i64, i64* %nr_pages, align 32
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end
  %4 = phi i64 [ %1, %for.body ], [ %.pre, %if.end ]
  %inc = shl nsw i64 %conv31, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %cmp = icmp sgt i64 %4, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  %ring_pages5 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 10
  %5 = load %struct.page**, %struct.page*** %ring_pages5, align 8
  %tobool6.not = icmp eq %struct.page** %5, null
  %arraydecay = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 19, i64 0
  %cmp8.not = icmp eq %struct.page** %5, %arraydecay
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %if.end13, label %if.then10

if.then10:                                        ; preds = %for.end
  %6 = bitcast %struct.page** %5 to i8*
  call void @kfree(i8* noundef nonnull %6) #17
  store %struct.page** null, %struct.page*** %ring_pages5, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(%struct.percpu_ref* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #18
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call fastcc void @arch_local_irq_enable() #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #20, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @free_ioctx(%struct.work_struct* noundef %work) #1 {
entry:
  %call = call fastcc %struct.rcu_work* @to_rcu_work(%struct.work_struct* noundef %work) #18
  %add.ptr = getelementptr %struct.rcu_work, %struct.rcu_work* %call, i64 -2, i32 0, i32 1
  %0 = bitcast %struct.list_head* %add.ptr to i8*
  %1 = bitcast %struct.list_head* %add.ptr to %struct.kioctx*
  call fastcc void @aio_free_ring(%struct.kioctx* noundef %1) #18
  %cpu = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 3
  %2 = bitcast %struct.list_head* %cpu to i8**
  %3 = load i8*, i8** %2, align 16
  call void @free_percpu(i8* noundef %3) #17
  %reqs = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 1, i32 1
  %4 = bitcast %struct.list_head** %reqs to %struct.percpu_ref*
  call void @percpu_ref_exit(%struct.percpu_ref* noundef %4) #17
  %users = bitcast %struct.list_head* %add.ptr to %struct.percpu_ref*
  call void @percpu_ref_exit(%struct.percpu_ref* noundef %users) #17
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @kioctx_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %5, i8* noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_rcu_work(%struct.workqueue_struct* noundef, %struct.rcu_work* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.rcu_work* @to_rcu_work(%struct.work_struct* noundef readnone %work) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.work_struct* %work to %struct.rcu_work*
  ret %struct.rcu_work* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @aio_private_file(%struct.kioctx* noundef %ctx, i64 noundef %nr_pages) unnamed_addr #1 {
entry:
  %0 = load %struct.vfsmount*, %struct.vfsmount** @aio_mnt, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call = call %struct.inode* @alloc_anon_inode(%struct.super_block* noundef %1) #17
  %2 = bitcast %struct.inode* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %2) #18
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.inode* %call to %struct.file*
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %4 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %4, i64 0, i32 9
  store %struct.address_space_operations* @aio_ctx_aops, %struct.address_space_operations** %a_ops, align 8
  %5 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %private_data = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i64 0, i32 14
  %6 = bitcast i8** %private_data to %struct.kioctx**
  store %struct.kioctx* %ctx, %struct.kioctx** %6, align 8
  %mul = shl i64 %nr_pages, 12
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  store i64 %mul, i64* %i_size, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** @aio_mnt, align 8
  %call4 = call %struct.file* @alloc_file_pseudo(%struct.inode* noundef %call, %struct.vfsmount* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 noundef 2, %struct.file_operations* noundef nonnull @aio_ring_fops) #17
  %8 = bitcast %struct.file* %call4 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %8) #18
  br i1 %call5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  call void @iput(%struct.inode* noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6, %if.then
  %retval.0 = phi %struct.file* [ %3, %if.then ], [ %call4, %if.then6 ], [ %call4, %if.end ]
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #18
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_aio_ring_file(%struct.kioctx* nocapture noundef %ctx) unnamed_addr #1 {
entry:
  %aio_ring_file1 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 20
  %0 = load %struct.file*, %struct.file** %aio_ring_file1, align 64
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %0) #18
  call void @truncate_setsize(%struct.inode* noundef %call, i64 noundef 0) #17
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 12, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %private_data = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 14
  store i8* null, i8** %private_data, align 8
  store %struct.file* null, %struct.file** %aio_ring_file1, align 64
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @fput(%struct.file* noundef nonnull %0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @find_or_create_page(%struct.address_space* noundef %mapping, i64 noundef %index) unnamed_addr #1 {
entry:
  %call = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef 7, i32 noundef 1052098) #17
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #1 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @do_mmap(%struct.file* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64* noundef, %struct.list_head* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #1 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !39
  call fastcc void @pagefault_disable() #18
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #1 {
entry:
  call fastcc void @pagefault_enable() #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @alloc_anon_inode(%struct.super_block* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @alloc_file_pseudo(%struct.inode* noundef, %struct.vfsmount* noundef, i8* noundef, i32 noundef, %struct.file_operations* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(%struct.page* noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @aio_ring_mmap(%struct.file* nocapture noundef readnone %file, %struct.vm_area_struct* nocapture noundef %vma) #10 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %or = or i64 %0, 262144
  store i64 %or, i64* %vm_flags, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  store %struct.vm_operations_struct* @aio_ring_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @aio_ring_mremap(%struct.vm_area_struct* nocapture noundef readonly %vma) #1 {
entry:
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 45, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @__rcu_read_lock() #17
  %ioctx_table = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 46
  %2 = load volatile %struct.kioctx_table*, %struct.kioctx_table** %ioctx_table, align 8
  %nr = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %2, i64 0, i32 1
  %3 = load i32, i32* %nr, align 8
  %cmp49.not = icmp eq i32 %3, 0
  br i1 %cmp49.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.050 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %idxprom = sext i32 %i.050 to i64
  %arrayidx = getelementptr %struct.kioctx_table, %struct.kioctx_table* %2, i64 0, i32 2, i64 %idxprom
  %4 = load volatile %struct.kioctx*, %struct.kioctx** %arrayidx, align 8
  %tobool.not = icmp eq %struct.kioctx* %4, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %aio_ring_file = getelementptr inbounds %struct.kioctx, %struct.kioctx* %4, i64 0, i32 20
  %5 = load %struct.file*, %struct.file** %aio_ring_file, align 64
  %cmp15 = icmp eq %struct.file* %5, %0
  br i1 %cmp15, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %counter.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %4, i64 0, i32 1, i32 0
  %6 = load volatile i32, i32* %counter.i, align 4
  %tobool16.not = icmp eq i32 %6, 0
  br i1 %tobool16.not, label %if.then17, label %for.end

if.then17:                                        ; preds = %if.then
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %7 = load i64, i64* %vm_start, align 8
  %mmap_base = getelementptr inbounds %struct.kioctx, %struct.kioctx* %4, i64 0, i32 8
  store i64 %7, i64* %mmap_base, align 8
  %user_id = getelementptr inbounds %struct.kioctx, %struct.kioctx* %4, i64 0, i32 3
  store i64 %7, i64* %user_id, align 8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %inc = add nuw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.then17, %if.then
  %res.3 = phi i32 [ -22, %if.then ], [ 0, %if.then17 ], [ -22, %entry ], [ -22, %for.inc ]
  call fastcc void @rcu_read_unlock() #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  ret i32 %res.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(%struct.vm_fault* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(%struct.vm_fault* noundef, i64 noundef, i64 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_page_mkwrite(%struct.vm_fault* noundef) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !42
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #1 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(%struct.inode* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #12 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @pagecache_get_page(%struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #20, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_get_many(%struct.percpu_ref* noundef %ref) unnamed_addr #1 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store i64* null, i64** %percpu_count, align 8, !annotation !11
  call fastcc void @__rcu_read_lock() #17
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #18
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !46
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !47
  br label %if.end

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %count) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body1
  call fastcc void @rcu_read_unlock() #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** nocapture noundef writeonly %percpu_countp) unnamed_addr #3 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load volatile i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !12

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %0 to i64*
  store i64* %1, i64** %percpu_countp, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #20, !srcloc !48
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #13 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !49
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #20, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #1 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #17
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.13* %0 to i64*
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
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef 1, %struct.atomic_t* noundef %_refcount) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) unnamed_addr #1 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store i64* null, i64** %percpu_count, align 8, !annotation !11
  call fastcc void @__rcu_read_lock() #17
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #18
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !52
  br label %if.end14

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %count) #17
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then12, label %if.end14, !prof !8

if.then12:                                        ; preds = %if.else
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %release = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 1
  %6 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %release, align 8
  call void %6(%struct.percpu_ref* noundef %ref) #17
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %do.body1
  call fastcc void @rcu_read_unlock() #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #20, !srcloc !53
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_io_destroy(i64 noundef %ctx) unnamed_addr #1 {
entry:
  %wait = alloca %struct.ctx_rq_wait, align 8
  %call = call fastcc %struct.kioctx* @lookup_ioctx(i64 noundef %ctx) #18
  %cmp.not = icmp eq %struct.kioctx* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ctx_rq_wait* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !11
  %comp = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %wait, i64 0, i32 0
  call fastcc void @init_completion(%struct.completion* noundef nonnull %comp) #18
  %counter.i = getelementptr inbounds %struct.ctx_rq_wait, %struct.ctx_rq_wait* %wait, i64 0, i32 1, i32 0
  store volatile i32 1, i32* %counter.i, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call3 = call fastcc i32 @kill_ioctx(%struct.mm_struct* noundef %3, %struct.kioctx* noundef nonnull %call, %struct.ctx_rq_wait* noundef nonnull %wait) #18
  %users = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call, i64 0, i32 0
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %users) #18
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @wait_for_completion(%struct.completion* noundef nonnull %comp) #17
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %conv7 = sext i32 %call3 to i64
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv7, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kioctx* @lookup_ioctx(i64 noundef %ctx_id) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = inttoptr i64 %ctx_id to i8*
  %call3 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef 4) #18
  %tobool.not = icmp eq i64 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %3) #18
  %4 = bitcast i8* %call4 to i32*
  %5 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %4, i32 -14, i32 0) #20, !srcloc !54
  %asmresult = extractvalue { i32, i64 } %5, 0
  %asmresult8 = extractvalue { i32, i64 } %5, 1
  %conv = trunc i64 %asmresult8 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end
  call fastcc void @__rcu_read_lock() #17
  %ioctx_table = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 46
  %6 = load volatile %struct.kioctx_table*, %struct.kioctx_table** %ioctx_table, align 8
  %tobool25.not = icmp eq %struct.kioctx_table* %6, null
  br i1 %tobool25.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %nr = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %6, i64 0, i32 1
  %7 = load i32, i32* %nr, align 8
  %cmp.not = icmp ugt i32 %7, %conv
  br i1 %cmp.not, label %if.end28, label %out

if.end28:                                         ; preds = %lor.lhs.false
  %conv30 = and i64 %asmresult8, 4294967295
  %conv31 = zext i32 %7 to i64
  %call32 = call fastcc i64 @array_index_mask_nospec(i64 noundef %conv30, i64 noundef %conv31) #18
  %idxprom = and i64 %conv30, %call32
  %arrayidx = getelementptr %struct.kioctx_table, %struct.kioctx_table* %6, i64 0, i32 2, i64 %idxprom
  %8 = load volatile %struct.kioctx*, %struct.kioctx** %arrayidx, align 8
  %tobool52.not = icmp eq %struct.kioctx* %8, null
  br i1 %tobool52.not, label %out, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %user_id = getelementptr inbounds %struct.kioctx, %struct.kioctx* %8, i64 0, i32 3
  %9 = load i64, i64* %user_id, align 8
  %cmp53 = icmp eq i64 %9, %ctx_id
  br i1 %cmp53, label %if.then55, label %out

if.then55:                                        ; preds = %land.lhs.true
  %users = getelementptr inbounds %struct.kioctx, %struct.kioctx* %8, i64 0, i32 0
  %call56 = call fastcc i1 @percpu_ref_tryget_live(%struct.percpu_ref* noundef %users) #18
  %spec.select = select i1 %call56, %struct.kioctx* %8, %struct.kioctx* null
  br label %out

out:                                              ; preds = %if.then55, %if.end28, %land.lhs.true, %if.end16, %lor.lhs.false
  %ret.0 = phi %struct.kioctx* [ null, %lor.lhs.false ], [ null, %land.lhs.true ], [ null, %if.end28 ], [ null, %if.end16 ], [ %spec.select, %if.then55 ]
  call fastcc void @rcu_read_unlock() #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %out
  %retval.0 = phi %struct.kioctx* [ %ret.0, %out ], [ null, %if.end ], [ null, %entry ]
  ret %struct.kioctx* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @array_index_mask_nospec(i64 noundef %idx, i64 noundef %sz) unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09cmp\09$1, $2\0A\09sbc\09$0, xzr, xzr\0A", "=r,r,Ir,~{cc}"(i64 %idx, i64 %sz) #20, !srcloc !55
  call void asm sideeffect "hint #20", "~{memory}"() #20, !srcloc !56
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @percpu_ref_tryget_live(%struct.percpu_ref* noundef %ref) unnamed_addr #1 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store i64* null, i64** %percpu_count, align 8, !annotation !11
  call fastcc void @__rcu_read_lock() #17
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #18
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !57
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !58
  br label %if.end12

if.else:                                          ; preds = %entry
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %4 = load i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %4, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %counter.i.i.i.i.i = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 0, i32 0
  %6 = load volatile i64, i64* %counter.i.i.i.i.i, align 8
  %7 = bitcast %struct.percpu_ref_data* %5 to i8*
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.cond.i.i.i.i.i, %if.then10
  %c.0.i.i.i.i.i = phi i64 [ %6, %if.then10 ], [ %call14.i.i.i.i.i.i.i, %do.cond.i.i.i.i.i ]
  %cmp.i.i.i.i.i = icmp eq i64 %c.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %atomic_long_inc_not_zero.exit, label %do.cond.i.i.i.i.i, !prof !8

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i64 %c.0.i.i.i.i.i, 1
  %call14.i.i.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %7, i64 noundef %c.0.i.i.i.i.i, i64 noundef %add.i.i.i.i.i) #17
  %cmp.not.i.i.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i.i.i, %c.0.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i.i, label %atomic_long_inc_not_zero.exit, label %do.body.i.i.i.i.i, !prof !12

atomic_long_inc_not_zero.exit:                    ; preds = %do.body.i.i.i.i.i, %do.cond.i.i.i.i.i
  %8 = xor i1 %cmp.i.i.i.i.i, true
  br label %if.end12

if.end12:                                         ; preds = %if.else, %atomic_long_inc_not_zero.exit, %do.body1
  %ret.0.off0 = phi i1 [ true, %do.body1 ], [ false, %if.else ], [ %8, %atomic_long_inc_not_zero.exit ]
  call fastcc void @rcu_read_unlock() #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #20, !srcloc !59
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #20, !srcloc !60
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_io_submit(i64 noundef %ctx_id, i64 noundef %nr, %struct.iocb** noundef %iocbpp) unnamed_addr #1 {
entry:
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !11
  %cmp = icmp slt i64 %nr, 0
  br i1 %cmp, label %cleanup64, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.kioctx* @lookup_ioctx(i64 noundef %ctx_id) #18
  %tobool2.not = icmp eq %struct.kioctx* %call, null
  br i1 %tobool2.not, label %cleanup64, label %if.end13, !prof !8

if.end13:                                         ; preds = %if.end
  %nr_events = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call, i64 0, i32 7
  %1 = load i32, i32* %nr_events, align 64
  %conv14 = zext i32 %1 to i64
  %cmp15 = icmp ult i64 %conv14, %nr
  %spec.select = select i1 %cmp15, i64 %conv14, i64 %nr
  %cmp21 = icmp ugt i64 %spec.select, 2
  br i1 %cmp21, label %if.end24.thread, label %if.end24

if.end24.thread:                                  ; preds = %if.end13
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #17
  br label %for.body.preheader

if.end24:                                         ; preds = %if.end13
  %cmp26111.not = icmp eq i64 %spec.select, 0
  br i1 %cmp26111.not, label %if.end61.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end24.thread, %if.end24
  br label %for.body

if.end61.thread:                                  ; preds = %if.end24
  %users128 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call, i64 0, i32 0
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %users128) #18
  br label %6

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %conv25113 = phi i64 [ %conv25, %for.inc ], [ 0, %for.body.preheader ]
  %indvars = trunc i64 %conv25113 to i32
  %add.ptr = getelementptr %struct.iocb*, %struct.iocb** %iocbpp, i64 %conv25113
  %2 = bitcast %struct.iocb** %add.ptr to i8*
  %call28 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 8) #18
  %tobool29.not = icmp eq i64 %call28, 0
  br i1 %tobool29.not, label %for.end.loopexit.split.loop.exit, label %if.end39

if.end39:                                         ; preds = %for.body
  %call31 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #18
  %3 = bitcast i8* %call31 to %struct.iocb**
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(%struct.iocb** %3, i32 -14, i32 0) #20, !srcloc !61
  %asmresult = extractvalue { i32, i64 } %4, 0
  %tobool43.not = icmp eq i32 %asmresult, 0
  br i1 %tobool43.not, label %if.end52, label %for.end.loopexit.split.loop.exit133, !prof !12

if.end52:                                         ; preds = %if.end39
  %asmresult35 = extractvalue { i32, i64 } %4, 1
  %5 = inttoptr i64 %asmresult35 to %struct.iocb*
  %call53 = call fastcc i32 @io_submit_one(%struct.kioctx* noundef nonnull %call, %struct.iocb* noundef %5) #18
  %tobool55.not = icmp eq i32 %call53, 0
  br i1 %tobool55.not, label %for.inc, label %for.end.split.loop.exit99

for.inc:                                          ; preds = %if.end52
  %inc = add i32 %indvars, 1
  %conv25 = sext i32 %inc to i64
  %cmp26 = icmp sgt i64 %spec.select, %conv25
  br i1 %cmp26, label %for.body, label %for.end

for.end.split.loop.exit99:                        ; preds = %if.end52
  %indvars.le143 = trunc i64 %conv25113 to i32
  %conv54.le = sext i32 %call53 to i64
  br label %for.end

for.end.loopexit.split.loop.exit:                 ; preds = %for.body
  %indvars.le141 = trunc i64 %conv25113 to i32
  br label %for.end

for.end.loopexit.split.loop.exit133:              ; preds = %if.end39
  %indvars.le = trunc i64 %conv25113 to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.loopexit.split.loop.exit, %for.end.loopexit.split.loop.exit133, %for.end.split.loop.exit99
  %i.0.lcssa = phi i32 [ %indvars.le143, %for.end.split.loop.exit99 ], [ %indvars.le141, %for.end.loopexit.split.loop.exit ], [ %indvars.le, %for.end.loopexit.split.loop.exit133 ], [ %inc, %for.inc ]
  %conv25.lcssa = phi i64 [ %conv25113, %for.end.split.loop.exit99 ], [ %conv25113, %for.end.loopexit.split.loop.exit ], [ %conv25113, %for.end.loopexit.split.loop.exit133 ], [ %conv25, %for.inc ]
  %ret.2 = phi i64 [ %conv54.le, %for.end.split.loop.exit99 ], [ -14, %for.end.loopexit.split.loop.exit ], [ -14, %for.end.loopexit.split.loop.exit133 ], [ 0, %for.inc ]
  br i1 %cmp21, label %if.then60, label %if.end61

if.then60:                                        ; preds = %for.end
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #17
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %for.end
  %users = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call, i64 0, i32 0
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %users) #18
  %tobool62.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %tobool62.not, label %6, label %cleanup64

6:                                                ; preds = %if.end61.thread, %if.end61
  %ret.2124130 = phi i64 [ 0, %if.end61.thread ], [ %ret.2, %if.end61 ]
  br label %cleanup64

cleanup64:                                        ; preds = %6, %if.end61, %if.end, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ -22, %if.end ], [ %ret.2124130, %6 ], [ %conv25.lcssa, %if.end61 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @io_submit_one(%struct.kioctx* noundef %ctx, %struct.iocb* noundef %user_iocb) unnamed_addr #1 {
entry:
  %iocb = alloca %struct.iocb, align 8
  %0 = bitcast %struct.iocb* %iocb to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !11
  %1 = bitcast %struct.iocb* %user_iocb to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 64) #17
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !12

if.end:                                           ; preds = %entry
  %aio_reserved2 = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 9
  %2 = load i64, i64* %aio_reserved2, align 8
  %tobool3.not = icmp ne i64 %2, 0
  %aio_nbytes = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 7
  %3 = load i64, i64* %aio_nbytes, align 8
  %cmp19 = icmp slt i64 %3, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp19
  br i1 %or.cond, label %cleanup, label %if.end30, !prof !62

if.end30:                                         ; preds = %if.end
  %call31 = call fastcc %struct.aio_kiocb* @aio_get_req(%struct.kioctx* noundef %ctx) #18
  %tobool32.not = icmp eq %struct.aio_kiocb* %call31, null
  br i1 %tobool32.not, label %cleanup, label %if.end43, !prof !8

if.end43:                                         ; preds = %if.end30
  %call45 = call fastcc i32 @__io_submit_one(%struct.iocb* noundef nonnull %iocb, %struct.iocb* noundef %user_iocb, %struct.aio_kiocb* noundef nonnull %call31) #18
  call fastcc void @iocb_put(%struct.aio_kiocb* noundef nonnull %call31) #18
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup, label %if.then54, !prof !12

if.then54:                                        ; preds = %if.end43
  call fastcc void @iocb_destroy(%struct.aio_kiocb* noundef nonnull %call31) #18
  call fastcc void @put_reqs_available(%struct.kioctx* noundef %ctx, i32 noundef 1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then54, %if.end30, %if.end, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ -22, %if.end ], [ -11, %if.end30 ], [ %call45, %if.then54 ], [ 0, %if.end43 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.aio_kiocb* @aio_get_req(%struct.kioctx* noundef %ctx) unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @kiocb_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #17
  %1 = bitcast i8* %call to %struct.aio_kiocb*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call4 = call fastcc i1 @get_reqs_available(%struct.kioctx* noundef %ctx) #18
  br i1 %call4, label %if.end15, label %if.then14, !prof !12

if.then14:                                        ; preds = %if.end
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @kiocb_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %2, i8* noundef nonnull %call) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %reqs = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 2
  call fastcc void @percpu_ref_get(%struct.percpu_ref* noundef %reqs) #18
  %ki_ctx = getelementptr inbounds i8, i8* %call, i64 96
  %3 = bitcast i8* %ki_ctx to %struct.kioctx**
  store %struct.kioctx* %ctx, %struct.kioctx** %3, align 8
  %ki_list = getelementptr inbounds i8, i8* %call, i64 144
  %4 = bitcast i8* %ki_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %4) #18
  %ki_refcnt = getelementptr inbounds i8, i8* %call, i64 160
  %5 = bitcast i8* %ki_refcnt to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %5) #18
  %ki_eventfd = getelementptr inbounds i8, i8* %call, i64 168
  %6 = bitcast i8* %ki_eventfd to %struct.eventfd_ctx**
  store %struct.eventfd_ctx* null, %struct.eventfd_ctx** %6, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15, %if.then14
  %retval.0 = phi %struct.aio_kiocb* [ null, %if.then14 ], [ %1, %if.end15 ], [ null, %entry ]
  ret %struct.aio_kiocb* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__io_submit_one(%struct.iocb* nocapture noundef readonly %iocb, %struct.iocb* noundef %user_iocb, %struct.aio_kiocb* noundef %req) unnamed_addr #1 {
entry:
  %aio_fildes = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 5
  %0 = load i32, i32* %aio_fildes, align 4
  %call = call %struct.file* @fget(i32 noundef %0) #17
  %ki_filp = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %req, i64 0, i32 0, i32 0, i32 0
  store %struct.file* %call, %struct.file** %ki_filp, align 8
  %tobool.not = icmp eq %struct.file* %call, null
  br i1 %tobool.not, label %return, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %aio_flags = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 10
  %1 = load i32, i32* %aio_flags, align 8
  %and = and i32 %1, 1
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end13, label %if.then6

if.then6:                                         ; preds = %if.end
  %aio_resfd = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 11
  %2 = load i32, i32* %aio_resfd, align 4
  %call7 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 noundef %2) #17
  %3 = bitcast %struct.eventfd_ctx* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %3) #18
  br i1 %call8, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then6
  %ki_eventfd = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %req, i64 0, i32 6
  store %struct.eventfd_ctx* %call7, %struct.eventfd_ctx** %ki_eventfd, align 8
  br label %if.end13

cleanup:                                          ; preds = %if.then6
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %3) #18
  %conv11 = trunc i64 %call10 to i32
  br label %return

if.end13:                                         ; preds = %cleanup.thread, %if.end
  %aio_key = getelementptr inbounds %struct.iocb, %struct.iocb* %user_iocb, i64 0, i32 1
  %4 = bitcast i32* %aio_key to i8*
  %call14 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 4) #18
  %tobool15.not = icmp eq i64 %call14, 0
  br i1 %tobool15.not, label %return, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #18
  %5 = bitcast i8* %call17 to i32*
  %6 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %5, i32 -14, i32 0) #20, !srcloc !63
  %phi.cmp = icmp eq i32 %6, 0
  br i1 %phi.cmp, label %if.end37, label %return, !prof !12

if.end37:                                         ; preds = %if.then16
  %7 = ptrtoint %struct.iocb* %user_iocb to i64
  %obj = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %req, i64 0, i32 3, i32 1
  store i64 %7, i64* %obj, align 8
  %aio_data = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 0
  %8 = load i64, i64* %aio_data, align 8
  %data = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %req, i64 0, i32 3, i32 0
  store i64 %8, i64* %data, align 8
  %res = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %req, i64 0, i32 3, i32 2
  store i64 0, i64* %res, align 8
  %res2 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %req, i64 0, i32 3, i32 3
  store i64 0, i64* %res2, align 8
  %aio_lio_opcode = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 3
  %9 = load i16, i16* %aio_lio_opcode, align 8
  switch i16 %9, label %return [
    i16 0, label %sw.bb
    i16 1, label %sw.bb44
    i16 7, label %sw.bb48
    i16 8, label %sw.bb52
    i16 2, label %sw.bb56
    i16 3, label %sw.bb58
    i16 5, label %sw.bb61
  ]

sw.bb:                                            ; preds = %if.end37
  %rw = bitcast %struct.aio_kiocb* %req to %struct.kiocb*
  %call43 = call fastcc i32 @aio_read(%struct.kiocb* noundef %rw, %struct.iocb* noundef %iocb, i1 noundef false) #18
  br label %return

sw.bb44:                                          ; preds = %if.end37
  %rw45 = bitcast %struct.aio_kiocb* %req to %struct.kiocb*
  %call47 = call fastcc i32 @aio_write(%struct.kiocb* noundef %rw45, %struct.iocb* noundef %iocb, i1 noundef false, i1 noundef false) #18
  br label %return

sw.bb48:                                          ; preds = %if.end37
  %rw49 = bitcast %struct.aio_kiocb* %req to %struct.kiocb*
  %call51 = call fastcc i32 @aio_read(%struct.kiocb* noundef %rw49, %struct.iocb* noundef %iocb, i1 noundef true) #18
  br label %return

sw.bb52:                                          ; preds = %if.end37
  %rw53 = bitcast %struct.aio_kiocb* %req to %struct.kiocb*
  %call55 = call fastcc i32 @aio_write(%struct.kiocb* noundef %rw53, %struct.iocb* noundef %iocb, i1 noundef true, i1 noundef false) #18
  br label %return

sw.bb56:                                          ; preds = %if.end37
  %fsync = bitcast %struct.aio_kiocb* %req to %struct.fsync_iocb*
  %call57 = call fastcc i32 @aio_fsync(%struct.fsync_iocb* noundef %fsync, %struct.iocb* noundef %iocb, i1 noundef false) #18
  br label %return

sw.bb58:                                          ; preds = %if.end37
  %fsync59 = bitcast %struct.aio_kiocb* %req to %struct.fsync_iocb*
  %call60 = call fastcc i32 @aio_fsync(%struct.fsync_iocb* noundef %fsync59, %struct.iocb* noundef %iocb, i1 noundef true) #18
  br label %return

sw.bb61:                                          ; preds = %if.end37
  %call62 = call fastcc i32 @aio_poll(%struct.aio_kiocb* noundef %req, %struct.iocb* noundef %iocb) #18
  br label %return

return:                                           ; preds = %cleanup, %if.end13, %if.end37, %if.then16, %entry, %sw.bb61, %sw.bb58, %sw.bb56, %sw.bb52, %sw.bb48, %sw.bb44, %sw.bb
  %retval.1 = phi i32 [ %conv11, %cleanup ], [ %call62, %sw.bb61 ], [ %call60, %sw.bb58 ], [ %call57, %sw.bb56 ], [ %call55, %sw.bb52 ], [ %call51, %sw.bb48 ], [ %call47, %sw.bb44 ], [ %call43, %sw.bb ], [ -9, %entry ], [ -14, %if.then16 ], [ -22, %if.end37 ], [ -14, %if.end13 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @iocb_put(%struct.aio_kiocb* noundef %iocb) unnamed_addr #1 {
entry:
  %ki_refcnt = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 5
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %ki_refcnt) #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @aio_complete(%struct.aio_kiocb* noundef %iocb) #18
  call fastcc void @iocb_destroy(%struct.aio_kiocb* noundef %iocb) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @iocb_destroy(%struct.aio_kiocb* noundef %iocb) unnamed_addr #1 {
entry:
  %ki_eventfd = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 6
  %0 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %ki_eventfd, align 8
  %tobool.not = icmp eq %struct.eventfd_ctx* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @eventfd_ctx_put(%struct.eventfd_ctx* noundef nonnull %0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ki_filp = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 0, i32 0, i32 0
  %1 = load %struct.file*, %struct.file** %ki_filp, align 8
  %tobool2.not = icmp eq %struct.file* %1, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @fput(%struct.file* noundef nonnull %1) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %ki_ctx = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 1
  %2 = load %struct.kioctx*, %struct.kioctx** %ki_ctx, align 8
  %reqs = getelementptr inbounds %struct.kioctx, %struct.kioctx* %2, i64 0, i32 2
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %reqs) #18
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @kiocb_cachep, align 8
  %4 = bitcast %struct.aio_kiocb* %iocb to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_reqs_available(%struct.kioctx* noundef %ctx, i32 noundef %nr) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #18
  %cpu = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 4
  %0 = load %struct.kioctx_cpu*, %struct.kioctx_cpu** %cpu, align 16
  %1 = ptrtoint %struct.kioctx_cpu* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to %struct.kioctx_cpu*
  %reqs_available = getelementptr inbounds %struct.kioctx_cpu, %struct.kioctx_cpu* %2, i64 0, i32 0
  %3 = load i32, i32* %reqs_available, align 4
  %add10 = add i32 %3, %nr
  store i32 %add10, i32* %reqs_available, align 4
  %req_batch = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 5
  %4 = load i32, i32* %req_batch, align 8
  %mul42 = shl i32 %4, 1
  %cmp12.not43 = icmp ult i32 %add10, %mul42
  br i1 %cmp12.not43, label %do.body19, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %reqs_available17 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 15, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %9, %while.body ]
  %6 = phi i32 [ %add10, %while.body.lr.ph ], [ %8, %while.body ]
  %sub = sub i32 %6, %5
  store i32 %sub, i32* %reqs_available, align 4
  %7 = load i32, i32* %req_batch, align 8
  call fastcc void @__ll_sc_atomic_add(i32 noundef %7, %struct.atomic_t* noundef %reqs_available17) #17
  %8 = load i32, i32* %reqs_available, align 4
  %9 = load i32, i32* %req_batch, align 8
  %mul = shl i32 %9, 1
  %cmp12.not = icmp ult i32 %8, %mul
  br i1 %cmp12.not, label %do.body19, label %while.body

do.body19:                                        ; preds = %while.body, %entry
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #18
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !12

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @get_reqs_available(%struct.kioctx* noundef %ctx) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__get_reqs_available(%struct.kioctx* noundef %ctx) #18
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @user_refill_reqs_available(%struct.kioctx* noundef %ctx) #18
  %call1 = call fastcc i1 @__get_reqs_available(%struct.kioctx* noundef %ctx) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call1, %if.end ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 2, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__get_reqs_available(%struct.kioctx* noundef %ctx) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #18
  %cpu = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 4
  %0 = load %struct.kioctx_cpu*, %struct.kioctx_cpu** %cpu, align 16
  %1 = ptrtoint %struct.kioctx_cpu* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to %struct.kioctx_cpu*
  %reqs_available = getelementptr inbounds %struct.kioctx_cpu, %struct.kioctx_cpu* %2, i64 0, i32 0
  %3 = load i32, i32* %reqs_available, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %reqs_available10 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 15, i32 0
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %reqs_available10, i64 0, i32 0
  %4 = load volatile i32, i32* %counter.i, align 4
  %req_batch = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 5
  %5 = bitcast %struct.atomic_t* %reqs_available10 to i8*
  br label %do.body12

do.body12:                                        ; preds = %if.end, %if.then
  %avail.0 = phi i32 [ %4, %if.then ], [ %call11.i.i, %if.end ]
  %6 = load i32, i32* %req_batch, align 8
  %cmp13 = icmp ult i32 %avail.0, %6
  br i1 %cmp13, label %cleanup44, label %if.end

if.end:                                           ; preds = %do.body12
  %sub = sub i32 %avail.0, %6
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %5, i32 noundef %avail.0, i32 noundef %sub) #17
  %cmp20.not = icmp eq i32 %call11.i.i, %avail.0
  br i1 %cmp20.not, label %cleanup.thread, label %do.body12

cleanup.thread:                                   ; preds = %if.end
  %7 = load i32, i32* %req_batch, align 8
  %8 = load i32, i32* %reqs_available, align 4
  %add25 = add i32 %8, %7
  br label %if.end27

if.end27:                                         ; preds = %cleanup.thread, %entry
  %9 = phi i32 [ %add25, %cleanup.thread ], [ %3, %entry ]
  %dec = add i32 %9, -1
  store i32 %dec, i32* %reqs_available, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %do.body12, %if.end27
  %ret.0.off0 = phi i1 [ true, %if.end27 ], [ false, %do.body12 ]
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #18
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @user_refill_reqs_available(%struct.kioctx* noundef %ctx) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 18, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %completed_events = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 18, i32 1
  %0 = load i32, i32* %completed_events, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ring_pages = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 10
  %1 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %2 = load %struct.page*, %struct.page** %1, align 8
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %2) #18
  %head1 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %head1 to i32*
  %4 = load i32, i32* %3, align 8
  call fastcc void @__kunmap_atomic() #18
  %tail = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 18, i32 0
  %5 = load i32, i32* %tail, align 64
  call fastcc void @refill_reqs_available(%struct.kioctx* noundef %ctx, i32 noundef %4, i32 noundef %5) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refill_reqs_available(%struct.kioctx* noundef %ctx, i32 noundef %head, i32 noundef %tail) unnamed_addr #1 {
entry:
  %nr_events = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 7
  %0 = load i32, i32* %nr_events, align 64
  %rem = urem i32 %head, %0
  %cmp.not = icmp ugt i32 %rem, %tail
  %sub = sub i32 %tail, %rem
  %sub3 = select i1 %cmp.not, i32 %0, i32 0
  %events_in_ring.0 = add i32 %sub3, %sub
  %completed_events = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 18, i32 1
  %1 = load i32, i32* %completed_events, align 4
  %2 = call i32 @llvm.usub.sat.i32(i32 %1, i32 %events_in_ring.0)
  %tobool.not.not = icmp ugt i32 %1, %events_in_ring.0
  br i1 %tobool.not.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %entry
  %sub12 = sub i32 %1, %2
  store i32 %sub12, i32* %completed_events, align 4
  call fastcc void @put_reqs_available(%struct.kioctx* noundef %ctx, i32 noundef %2) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @aio_read(%struct.kiocb* noundef %req, %struct.iocb* nocapture noundef readonly %iocb, i1 noundef %vectored) unnamed_addr #1 {
entry:
  %inline_vecs = alloca [8 x %struct.iovec], align 8
  %iovec = alloca %struct.iovec*, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast [8 x %struct.iovec]* %inline_vecs to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !11
  %1 = bitcast %struct.iovec** %iovec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  %arraydecay = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %inline_vecs, i64 0, i64 0
  store %struct.iovec* %arraydecay, %struct.iovec** %iovec, align 8
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !11
  %call = call fastcc i32 @aio_prep_rw(%struct.kiocb* noundef %req, %struct.iocb* noundef %iocb) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 0
  %3 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 8
  %4 = load i32, i32* %f_mode, align 4
  %and = and i32 %4, 1
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cleanup, label %if.end7, !prof !8

if.end7:                                          ; preds = %if.end
  %f_op = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 3
  %5 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %5, i64 0, i32 4
  %6 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %tobool8.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %6, null
  br i1 %tobool8.not, label %cleanup, label %if.end19, !prof !8

if.end19:                                         ; preds = %if.end7
  %call22 = call fastcc i64 @aio_setup_rw(i32 noundef 0, %struct.iocb* noundef %iocb, %struct.iovec** noundef nonnull %iovec, i1 noundef %vectored, %struct.iov_iter* noundef nonnull %iter) #18
  %conv23 = trunc i64 %call22 to i32
  %cmp = icmp slt i32 %conv23, 0
  br i1 %cmp, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end19
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 1
  %call27 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef nonnull %iter) #18
  %call28 = call i32 @rw_verify_area(i32 noundef 0, %struct.file* noundef %3, i64* noundef %ki_pos, i64 noundef %call27) #17
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  %call31 = call fastcc i64 @call_read_iter(%struct.file* noundef %3, %struct.kiocb* noundef %req, %struct.iov_iter* noundef nonnull %iter) #18
  call fastcc void @aio_rw_done(%struct.kiocb* noundef %req, i64 noundef %call31) #18
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26
  %7 = bitcast %struct.iovec** %iovec to i8**
  %8 = load i8*, i8** %7, align 8
  call void @kfree(i8* noundef %8) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end7, %if.end, %entry, %if.end32
  %retval.0 = phi i32 [ %call28, %if.end32 ], [ %call, %entry ], [ -9, %if.end ], [ -22, %if.end7 ], [ %conv23, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @aio_write(%struct.kiocb* noundef %req, %struct.iocb* nocapture noundef readonly %iocb, i1 noundef %vectored, i1 noundef %compat) unnamed_addr #1 {
entry:
  %inline_vecs = alloca [8 x %struct.iovec], align 8
  %iovec = alloca %struct.iovec*, align 8
  %iter = alloca %struct.iov_iter, align 8
  %0 = bitcast [8 x %struct.iovec]* %inline_vecs to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !11
  %1 = bitcast %struct.iovec** %iovec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  %arraydecay = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %inline_vecs, i64 0, i64 0
  store %struct.iovec* %arraydecay, %struct.iovec** %iovec, align 8
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !11
  %call = call fastcc i32 @aio_prep_rw(%struct.kiocb* noundef %req, %struct.iocb* noundef %iocb) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 0
  %3 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 8
  %4 = load i32, i32* %f_mode, align 4
  %and = and i32 %4, 2
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cleanup, label %if.end7, !prof !8

if.end7:                                          ; preds = %if.end
  %f_op = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 3
  %5 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %5, i64 0, i32 5
  %6 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %tobool8.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %6, null
  br i1 %tobool8.not, label %cleanup, label %if.end19, !prof !8

if.end19:                                         ; preds = %if.end7
  %call22 = call fastcc i64 @aio_setup_rw(i32 noundef 1, %struct.iocb* noundef %iocb, %struct.iovec** noundef nonnull %iovec, i1 noundef %vectored, %struct.iov_iter* noundef nonnull %iter) #18
  %conv23 = trunc i64 %call22 to i32
  %cmp = icmp slt i32 %conv23, 0
  br i1 %cmp, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end19
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 1
  %call27 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef nonnull %iter) #18
  %call28 = call i32 @rw_verify_area(i32 noundef 1, %struct.file* noundef %3, i64* noundef %ki_pos, i64 noundef %call27) #17
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end42

if.then30:                                        ; preds = %if.end26
  %call31 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %3) #18
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call31, i64 0, i32 0
  %7 = load i16, i16* %i_mode, align 8
  %8 = and i16 %7, -4096
  %cmp34 = icmp eq i16 %8, -32768
  br i1 %cmp34, label %__here, label %if.end40

__here:                                           ; preds = %if.then30
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call31, i64 0, i32 6
  %9 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %9) #18
  br label %if.end40

if.end40:                                         ; preds = %__here, %if.then30
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 4
  %10 = load i32, i32* %ki_flags, align 8
  %or = or i32 %10, 262144
  store i32 %or, i32* %ki_flags, align 8
  %call41 = call fastcc i64 @call_write_iter(%struct.file* noundef %3, %struct.kiocb* noundef %req, %struct.iov_iter* noundef nonnull %iter) #18
  call fastcc void @aio_rw_done(%struct.kiocb* noundef %req, i64 noundef %call41) #18
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %if.end26
  %11 = bitcast %struct.iovec** %iovec to i8**
  %12 = load i8*, i8** %11, align 8
  call void @kfree(i8* noundef %12) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end7, %if.end, %entry, %if.end42
  %retval.0 = phi i32 [ %call28, %if.end42 ], [ %call, %entry ], [ -9, %if.end ], [ -22, %if.end7 ], [ %conv23, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @aio_fsync(%struct.fsync_iocb* noundef %req, %struct.iocb* nocapture noundef readonly %iocb, i1 noundef %datasync) unnamed_addr #1 {
entry:
  %frombool = zext i1 %datasync to i8
  %aio_buf = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 6
  %0 = load i64, i64* %aio_buf, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return, !prof !12

lor.lhs.false:                                    ; preds = %entry
  %aio_offset = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 8
  %1 = load i64, i64* %aio_offset, align 8
  %tobool1.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %return, !prof !12

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %aio_nbytes = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 7
  %2 = load i64, i64* %aio_nbytes, align 8
  %tobool3.not = icmp eq i64 %2, 0
  br i1 %tobool3.not, label %lor.rhs, label %return, !prof !12

lor.rhs:                                          ; preds = %lor.lhs.false2
  %aio_rw_flags = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 2
  %3 = load i32, i32* %aio_rw_flags, align 4
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %lor.rhs
  %file = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %req, i64 0, i32 0
  %4 = load %struct.file*, %struct.file** %file, align 8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %4, i64 0, i32 3
  %5 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %fsync = getelementptr inbounds %struct.file_operations, %struct.file_operations* %5, i64 0, i32 17
  %6 = load i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)** %fsync, align 8
  %tobool7.not = icmp eq i32 (%struct.file*, i64, i64, i32)* %6, null
  br i1 %tobool7.not, label %return, label %if.end18, !prof !8

if.end18:                                         ; preds = %if.end
  %call = call %struct.cred* @prepare_creds() #17
  %creds = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %req, i64 0, i32 3
  store %struct.cred* %call, %struct.cred** %creds, align 8
  %tobool20.not = icmp eq %struct.cred* %call, null
  br i1 %tobool20.not, label %return, label %if.end22

if.end22:                                         ; preds = %if.end18
  %datasync24 = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %req, i64 0, i32 2
  store i8 %frombool, i8* %datasync24, align 8
  %work = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %req, i64 0, i32 1
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %req, i64 0, i32 1, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry28 = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %req, i64 0, i32 1, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry28) #18
  %func = getelementptr inbounds %struct.fsync_iocb, %struct.fsync_iocb* %req, i64 0, i32 1, i32 2
  store void (%struct.work_struct*)* @aio_fsync_work, void (%struct.work_struct*)** %func, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %work) #18
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end18, %if.end, %lor.rhs, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %lor.rhs ], [ -22, %if.end ], [ -12, %if.end18 ], [ -22, %lor.lhs.false2 ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @aio_poll(%struct.aio_kiocb* noundef %aiocb, %struct.iocb* nocapture noundef readonly %iocb) unnamed_addr #1 {
entry:
  %apt = alloca %struct.aio_poll_table, align 8
  %ki_ctx = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 1
  %0 = load %struct.kioctx*, %struct.kioctx** %ki_ctx, align 8
  %1 = bitcast %struct.aio_poll_table* %apt to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #20
  %2 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %apt, i64 0, i32 0, i32 1
  %3 = bitcast i32* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false), !annotation !11
  %aio_buf = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 6
  %4 = load i64, i64* %aio_buf, align 8
  %5 = icmp ult i64 %4, 65536
  br i1 %5, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %aio_offset = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 8
  %6 = load i64, i64* %aio_offset, align 8
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %aio_nbytes = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 7
  %7 = load i64, i64* %aio_nbytes, align 8
  %tobool4.not = icmp eq i64 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %aio_rw_flags = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 2
  %8 = load i32, i32* %aio_rw_flags, align 4
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %do.body, label %cleanup

do.body:                                          ; preds = %lor.lhs.false5
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 6, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry11 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 6, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry11) #18
  %func = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 6, i32 2
  store void (%struct.work_struct*)* @aio_poll_complete_work, void (%struct.work_struct*)** %func, align 8
  %9 = load i64, i64* %aio_buf, align 8
  %conv14 = trunc i64 %9 to i16
  %call = call fastcc i32 @demangle_poll(i16 noundef %conv14) #18
  %or15 = or i32 %call, 24
  %events = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 2
  store i32 %or15, i32* %events, align 8
  %head = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 1
  store %struct.wait_queue_head* null, %struct.wait_queue_head** %head, align 8
  %done = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 3
  store i8 0, i8* %done, align 4
  %cancelled = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 4
  store i8 0, i8* %cancelled, align 1
  %pt = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %apt, i64 0, i32 0
  %_qproc = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %apt, i64 0, i32 0, i32 0
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* @aio_poll_queue_proc, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %_key = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %apt, i64 0, i32 0, i32 1
  store i32 %or15, i32* %_key, align 8
  %iocb18 = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %apt, i64 0, i32 1
  store %struct.aio_kiocb* %aiocb, %struct.aio_kiocb** %iocb18, align 8
  %error = getelementptr inbounds %struct.aio_poll_table, %struct.aio_poll_table* %apt, i64 0, i32 2
  store i32 -22, i32* %error, align 8
  %wait = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 5
  %entry19 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 5, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry19) #18
  call fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* noundef %wait) #18
  %file = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 0, i32 0, i32 0
  %10 = load %struct.file*, %struct.file** %file, align 8
  %call22 = call fastcc i32 @vfs_poll(%struct.file* noundef %10, %struct.poll_table_struct* noundef nonnull %pt) #18
  %11 = load i32, i32* %events, align 8
  %and = and i32 %11, %call22
  %rlock.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 16, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %12 = load %struct.wait_queue_head*, %struct.wait_queue_head** %head, align 8
  %tobool25.not = icmp eq %struct.wait_queue_head* %12, null
  br i1 %tobool25.not, label %if.end77, label %if.then29, !prof !8

if.then29:                                        ; preds = %do.body
  %rlock.i131 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %12, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i131) #17
  %call33 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry19) #18
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end48.thread, label %if.end48, !prof !12

if.end48:                                         ; preds = %if.then29
  %13 = load i32, i32* %error, align 8
  store i32 0, i32* %error, align 8
  %tobool44.not = icmp eq i32 %13, 0
  br i1 %tobool44.not, label %if.else68, label %do.body62

if.end48.thread:                                  ; preds = %if.then29
  %tobool49137 = icmp ne i32 %and, 0
  %14 = load i32, i32* %error, align 8
  %tobool52138 = icmp ne i32 %14, 0
  %or.cond139 = select i1 %tobool49137, i1 true, i1 %tobool52138
  br i1 %or.cond139, label %if.then53, label %if.else68

if.then53:                                        ; preds = %if.end48.thread
  call fastcc void @list_del_init(%struct.list_head* noundef %entry19) #18
  br label %if.end74

do.body62:                                        ; preds = %if.end48
  store volatile i8 1, i8* %cancelled, align 1
  br label %if.end74

if.else68:                                        ; preds = %if.end48.thread, %if.end48
  %15 = load i8, i8* %done, align 4, !range !64
  %tobool70.not = icmp eq i8 %15, 0
  br i1 %tobool70.not, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.else68
  %ki_list = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 4
  %active_reqs = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 16, i32 1
  call fastcc void @list_add_tail(%struct.list_head* noundef %ki_list, %struct.list_head* noundef %active_reqs) #18
  %ki_cancel = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 2
  store i32 (%struct.kiocb*)* @aio_poll_cancel, i32 (%struct.kiocb*)** %ki_cancel, align 8
  br label %if.end74

if.end74:                                         ; preds = %do.body62, %if.then71, %if.else68, %if.then53
  %mask.0141 = phi i32 [ 0, %do.body62 ], [ 0, %if.then71 ], [ 0, %if.else68 ], [ %and, %if.then53 ]
  %16 = load %struct.wait_queue_head*, %struct.wait_queue_head** %head, align 8
  %rlock.i132 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %16, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i132) #17
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %do.body
  %mask.1 = phi i32 [ %mask.0141, %if.end74 ], [ %and, %do.body ]
  %tobool78.not = icmp eq i32 %mask.1, 0
  br i1 %tobool78.not, label %if.end87.critedge, label %if.then79

if.then79:                                        ; preds = %if.end77
  %call80 = call fastcc i16 @mangle_poll(i32 noundef %mask.1) #18
  %conv81 = zext i16 %call80 to i64
  %res = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %aiocb, i64 0, i32 3, i32 2
  store i64 %conv81, i64* %res, align 8
  store i32 0, i32* %error, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @iocb_put(%struct.aio_kiocb* noundef %aiocb) #18
  br label %if.end87

if.end87.critedge:                                ; preds = %if.end77
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %if.end87

if.end87:                                         ; preds = %if.end87.critedge, %if.then79
  %17 = load i32, i32* %error, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %lor.lhs.false5, %entry, %if.end87
  %retval.0 = phi i32 [ %17, %if.end87 ], [ -22, %entry ], [ -22, %lor.lhs.false5 ], [ -22, %lor.lhs.false ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @aio_prep_rw(%struct.kiocb* nocapture noundef %req, %struct.iocb* nocapture noundef readonly %iocb) unnamed_addr #1 {
entry:
  %ki_complete = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 2
  store void (%struct.kiocb*, i64, i64)* @aio_complete_rw, void (%struct.kiocb*, i64, i64)** %ki_complete, align 8
  %private = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 3
  store i8* null, i8** %private, align 8
  %aio_offset = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 8
  %0 = load i64, i64* %aio_offset, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 1
  store i64 %0, i64* %ki_pos, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc i32 @iocb_flags(%struct.file* noundef %1) #18
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 4
  store i32 %call, i32* %ki_flags, align 8
  %aio_flags = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 10
  %2 = load i32, i32* %aio_flags, align 8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %or = or i32 %call, 65536
  store i32 %or, i32* %ki_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call fastcc i32 @file_write_hint(%struct.file* noundef %1) #18
  %call4 = call fastcc i16 @ki_hint_validate(i32 noundef %call3) #18
  %ki_hint = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 5
  store i16 %call4, i16* %ki_hint, align 4
  %3 = load i32, i32* %aio_flags, align 8
  %and6 = and i32 %3, 2
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %aio_reqprio = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 4
  %4 = load i16, i16* %aio_reqprio, align 2
  %conv = sext i16 %4 to i32
  %call9 = call i32 @ioprio_check_cap(i32 noundef %conv) #17
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.then8
  %5 = load i16, i16* %aio_reqprio, align 2
  br label %if.end17

if.else:                                          ; preds = %if.end
  %call14 = call fastcc i32 @get_current_ioprio() #18
  %conv15 = trunc i32 %call14 to i16
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end12
  %conv15.sink = phi i16 [ %conv15, %if.else ], [ %5, %if.end12 ]
  %ki_ioprio16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 6
  store i16 %conv15.sink, i16* %ki_ioprio16, align 2
  %aio_rw_flags = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 2
  %6 = load i32, i32* %aio_rw_flags, align 4
  %call18 = call fastcc i32 @kiocb_set_rw_flags(%struct.kiocb* noundef %req, i32 noundef %6) #18
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %cleanup, !prof !12

if.end24:                                         ; preds = %if.end17
  %7 = load i32, i32* %ki_flags, align 8
  %and26 = and i32 %7, -2
  store i32 %and26, i32* %ki_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then8, %if.end24
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call9, %if.then8 ], [ %call18, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @aio_setup_rw(i32 noundef %rw, %struct.iocb* nocapture noundef readonly %iocb, %struct.iovec** noundef %iovec, i1 noundef %vectored, %struct.iov_iter* noundef %iter) unnamed_addr #1 {
entry:
  %aio_buf = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 6
  %0 = load i64, i64* %aio_buf, align 8
  %aio_nbytes = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 7
  %1 = load i64, i64* %aio_nbytes, align 8
  br i1 %vectored, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = inttoptr i64 %0 to i8*
  %3 = load %struct.iovec*, %struct.iovec** %iovec, align 8
  %call = call i32 @import_single_range(i32 noundef %rw, i8* noundef %2, i64 noundef %1, %struct.iovec* noundef %3, %struct.iov_iter* noundef %iter) #17
  %conv = sext i32 %call to i64
  store %struct.iovec* null, %struct.iovec** %iovec, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = inttoptr i64 %0 to %struct.iovec*
  %conv2 = trunc i64 %1 to i32
  %call4 = call i64 @__import_iovec(i32 noundef %rw, %struct.iovec* noundef %4, i32 noundef %conv2, i32 noundef 8, %struct.iovec** noundef %iovec, %struct.iov_iter* noundef %iter, i1 noundef false) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call4, %if.end ], [ %conv, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rw_verify_area(i32 noundef, %struct.file* noundef, i64* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #12 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @aio_rw_done(%struct.kiocb* noundef %req, i64 noundef %ret) unnamed_addr #1 {
entry:
  switch i64 %ret, label %sw.default [
    i64 -529, label %sw.epilog
    i64 -512, label %sw.bb
    i64 -513, label %sw.bb
    i64 -514, label %sw.bb
    i64 -516, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  %ret.addr.0 = phi i64 [ %ret, %entry ], [ -4, %sw.bb ]
  %ki_complete = getelementptr inbounds %struct.kiocb, %struct.kiocb* %req, i64 0, i32 2
  %0 = load void (%struct.kiocb*, i64, i64)*, void (%struct.kiocb*, i64, i64)** %ki_complete, align 8
  call void %0(%struct.kiocb* noundef %req, i64 noundef %ret.addr.0, i64 noundef 0) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @call_read_iter(%struct.file* nocapture noundef readonly %file, %struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) unnamed_addr #1 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 4
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %call = call i64 %1(%struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @aio_complete_rw(%struct.kiocb* noundef %kiocb, i64 noundef %res, i64 noundef %res2) #1 {
entry:
  %0 = bitcast %struct.kiocb* %kiocb to %struct.aio_kiocb*
  %ki_list = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 3
  %1 = bitcast %struct.kiocb* %ki_list to %struct.list_head*
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %1) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @aio_remove_iocb(%struct.aio_kiocb* noundef %0) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 4
  %2 = load i32, i32* %ki_flags, align 8
  %and = and i32 %2, 262144
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end10, label %if.end8

if.end8:                                          ; preds = %if.end
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 0
  %3 = load %struct.file*, %struct.file** %ki_filp, align 8
  call fastcc void @file_end_write(%struct.file* noundef %3) #18
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end
  %ki_res = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 2, i32 2
  %res11 = getelementptr inbounds void (%struct.kiocb*, i64, i64)*, void (%struct.kiocb*, i64, i64)** %ki_res, i64 2
  %4 = bitcast void (%struct.kiocb*, i64, i64)** %res11 to i64*
  store i64 %res, i64* %4, align 8
  %res213 = getelementptr inbounds void (%struct.kiocb*, i64, i64)*, void (%struct.kiocb*, i64, i64)** %ki_res, i64 3
  %5 = bitcast void (%struct.kiocb*, i64, i64)** %res213 to i64*
  store i64 %res2, i64* %5, align 8
  call fastcc void @iocb_put(%struct.aio_kiocb* noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iocb_flags(%struct.file* nocapture noundef readonly %file) unnamed_addr #12 {
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
define internal fastcc i16 @ki_hint_validate(i32 noundef %hint) unnamed_addr #7 {
entry:
  %0 = icmp ult i32 %hint, 65536
  %retval.05 = select i1 %0, i32 %hint, i32 65536
  %1 = trunc i32 %retval.05 to i16
  ret i16 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @file_write_hint(%struct.file* nocapture noundef readonly %file) unnamed_addr #12 {
entry:
  %f_write_hint = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 5
  %0 = load i32, i32* %f_write_hint, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #18
  %i_write_hint = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 18
  %1 = load i8, i8* %i_write_hint, align 1
  %conv = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ %0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ioprio_check_cap(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @get_current_ioprio() unnamed_addr #13 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @kiocb_set_rw_flags(%struct.kiocb* nocapture noundef %ki, i32 noundef %flags) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp ult i32 %flags, 32
  br i1 %tobool1.not, label %if.end5, label %cleanup, !prof !12

if.end5:                                          ; preds = %if.end
  %and6 = and i32 %flags, 8
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end5
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %ki, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and9 = and i32 %1, 134217728
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end5
  %kiocb_flags.0 = phi i32 [ 0, %if.end5 ], [ 1048576, %if.then8 ]
  %and16 = lshr i32 %flags, 1
  %2 = and i32 %and16, 2
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %ki, i64 0, i32 4
  %3 = load i32, i32* %ki_flags, align 8
  %or15 = or i32 %2, %flags
  %4 = or i32 %or15, %kiocb_flags.0
  %or21 = or i32 %4, %3
  store i32 %or21, i32* %ki_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %entry ], [ -95, %if.end ], [ -95, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #1 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #20, !srcloc !65
  %1 = inttoptr i64 %0 to %struct.list_head*
  %cmp = icmp eq %struct.list_head* %1, %head
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp2 = icmp eq %struct.list_head* %2, %head
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @aio_remove_iocb(%struct.aio_kiocb* nocapture noundef %iocb) unnamed_addr #1 {
entry:
  %ki_ctx = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 1
  %0 = load %struct.kioctx*, %struct.kioctx** %ki_ctx, align 8
  %rlock.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 16, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #18
  %ki_list = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 4
  call fastcc void @list_del(%struct.list_head* noundef %ki_list) #18
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_end_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #18
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @__sb_end_write(%struct.super_block* noundef %2) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #18
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #1 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !66
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #18
  br i1 %call, label %do.body3, label %if.else, !prof !12

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !67
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !68
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !69
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !70
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !71
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #3 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #20, !srcloc !73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, i8* noundef, i64 noundef, %struct.iovec* noundef, %struct.iov_iter* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__import_iovec(i32 noundef, %struct.iovec* noundef, i32 noundef, i32 noundef, %struct.iovec** noundef, %struct.iov_iter* noundef, i1 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #1 {
entry:
  call fastcc void @__sb_start_write(%struct.super_block* noundef %sb) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @call_write_iter(%struct.file* nocapture noundef readonly %file, %struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) unnamed_addr #1 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 5
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %call = call i64 %1(%struct.kiocb* noundef %kio, %struct.iov_iter* noundef %iter) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #1 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !74
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #18
  br i1 %call, label %do.body7, label %if.else, !prof !12

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !75
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !76
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef false) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_creds() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @aio_fsync_work(%struct.work_struct* noundef %work) #1 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -1, i32 2
  %0 = bitcast void (%struct.work_struct*)** %add.ptr to %struct.aio_kiocb*
  %creds = getelementptr inbounds void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 6
  %1 = bitcast void (%struct.work_struct*)** %creds to %struct.cred**
  %2 = load %struct.cred*, %struct.cred** %1, align 8
  %call = call %struct.cred* @override_creds(%struct.cred* noundef %2) #17
  %file = bitcast void (%struct.work_struct*)** %add.ptr to %struct.file**
  %3 = load %struct.file*, %struct.file** %file, align 8
  %datasync = getelementptr inbounds void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 5
  %4 = bitcast void (%struct.work_struct*)** %datasync to i8*
  %5 = load i8, i8* %4, align 8, !range !64
  %6 = zext i8 %5 to i32
  %call3 = call i32 @vfs_fsync(%struct.file* noundef %3, i32 noundef %6) #17
  %conv4 = sext i32 %call3 to i64
  %res = getelementptr inbounds void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 16
  %7 = bitcast void (%struct.work_struct*)** %res to i64*
  store i64 %conv4, i64* %7, align 8
  call void @revert_creds(%struct.cred* noundef %call) #17
  %8 = load %struct.cred*, %struct.cred** %1, align 8
  call fastcc void @put_cred(%struct.cred* noundef %8) #18
  call fastcc void @iocb_put(%struct.aio_kiocb* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @override_creds(%struct.cred* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(%struct.file* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(%struct.cred* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef 1, %struct.atomic_t* noundef %usage) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #17
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(%struct.cred* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #1 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @aio_poll_complete_work(%struct.work_struct* noundef %work) #1 {
entry:
  %pt = alloca %struct.poll_table_struct, align 8
  %add.ptr51 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2
  %0 = bitcast %struct.work_struct* %add.ptr51 to %struct.poll_iocb*
  %1 = bitcast %struct.work_struct* %add.ptr51 to %struct.aio_kiocb*
  %2 = bitcast %struct.poll_table_struct* %pt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #20
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %pt, i64 0, i32 1
  %events = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2, i32 1, i32 1
  %3 = bitcast %struct.list_head** %events to i32*
  %4 = bitcast %struct.poll_table_struct* %pt to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load i32, i32* %3, align 8
  store i32 %5, i32* %_key, align 8
  %ki_ctx = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 1
  %6 = bitcast %struct.work_struct* %ki_ctx to %struct.kioctx**
  %7 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %cancelled = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %0, i64 0, i32 4
  %8 = load volatile i8, i8* %cancelled, align 1, !range !64
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  %rlock.i56 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %7, i64 0, i32 16, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i56) #17
  br label %do.end16

if.end:                                           ; preds = %entry
  %file = bitcast %struct.work_struct* %add.ptr51 to %struct.file**
  %9 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc i32 @vfs_poll(%struct.file* noundef %9, %struct.poll_table_struct* noundef nonnull %pt) #18
  %10 = load i32, i32* %3, align 8
  %and = and i32 %10, %call
  %rlock.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %7, i64 0, i32 16, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.end16, label %if.end24

do.end16:                                         ; preds = %if.end.thread, %if.end
  %rlock.i60 = phi %struct.raw_spinlock* [ %rlock.i56, %if.end.thread ], [ %rlock.i, %if.end ]
  %11 = load volatile i8, i8* %cancelled, align 1, !range !64
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %do.end16
  %head = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2, i32 1
  %12 = bitcast %struct.list_head* %head to %struct.wait_queue_head**
  %13 = load %struct.wait_queue_head*, %struct.wait_queue_head** %12, align 8
  %wait = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2, i32 2
  %14 = bitcast void (%struct.work_struct*)** %wait to %struct.wait_queue_entry*
  call void @add_wait_queue(%struct.wait_queue_head* noundef %13, %struct.wait_queue_entry* noundef %14) #17
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i60) #17
  br label %cleanup

if.end24:                                         ; preds = %do.end16, %if.end
  %rlock.i61 = phi %struct.raw_spinlock* [ %rlock.i60, %do.end16 ], [ %rlock.i, %if.end ]
  %mask.058 = phi i32 [ 0, %do.end16 ], [ %and, %if.end ]
  %ki_list = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 2, i32 1, i32 1
  %15 = bitcast %struct.list_head** %ki_list to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %15) #18
  %call25 = call fastcc i16 @mangle_poll(i32 noundef %mask.058) #18
  %conv = zext i16 %call25 to i64
  %ki_res = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 1, i32 1, i32 1
  %res = getelementptr inbounds %struct.list_head*, %struct.list_head** %ki_res, i64 2
  %16 = bitcast %struct.list_head** %res to i64*
  store i64 %conv, i64* %16, align 8
  %done = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %0, i64 0, i32 3
  store i8 1, i8* %done, align 4
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i61) #17
  call fastcc void @iocb_put(%struct.aio_kiocb* noundef %1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @demangle_poll(i16 noundef %val) unnamed_addr #7 {
entry:
  %0 = and i16 %val, 10239
  %or43 = zext i16 %0 to i32
  ret i32 %or43
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @aio_poll_queue_proc(%struct.file* nocapture noundef readnone %file, %struct.wait_queue_head* noundef %head, %struct.poll_table_struct* nocapture noundef %p) #1 {
entry:
  %iocb = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 1
  %0 = bitcast %struct.poll_table_struct* %iocb to %struct.aio_kiocb**
  %1 = load %struct.aio_kiocb*, %struct.aio_kiocb** %0, align 8
  %head1 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %1, i64 0, i32 0, i32 0, i32 1
  %2 = load %struct.wait_queue_head*, %struct.wait_queue_head** %head1, align 8
  %tobool.not = icmp eq %struct.wait_queue_head* %2, null
  %3 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 1, i32 1
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  store i32 -22, i32* %3, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %3, align 8
  store %struct.wait_queue_head* %head, %struct.wait_queue_head** %head1, align 8
  %4 = load %struct.aio_kiocb*, %struct.aio_kiocb** %0, align 8
  %wait = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %4, i64 0, i32 0, i32 0, i32 5
  call void @add_wait_queue(%struct.wait_queue_head* noundef %head, %struct.wait_queue_entry* noundef %wait) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* nocapture noundef writeonly %wq_entry) unnamed_addr #15 {
entry:
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 0
  store i32 0, i32* %flags, align 8
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 1
  store i8* null, i8** %private, align 8
  %func1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @aio_poll_wake, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @aio_poll_wake(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #1 {
entry:
  %add.ptr = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 -1, i32 2
  %0 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr to %struct.poll_iocb*
  %1 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr to %struct.aio_kiocb*
  %2 = ptrtoint i8* %key to i64
  %conv = trunc i64 %2 to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.else.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %events = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 2
  %3 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %events to i32*
  %4 = load i32, i32* %3, align 8
  %and = and i32 %4, %conv
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %cleanup, label %do.body14

do.body14:                                        ; preds = %land.lhs.true
  %entry9 = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 6
  %5 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %entry9 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %5) #18
  %call = call fastcc i64 @arch_local_irq_save() #18
  %ki_ctx = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 12
  %6 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %ki_ctx to %struct.kioctx**
  %7 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %rlock.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %7, i64 0, i32 16, i32 0, i32 0, i32 0
  %call23 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i) #18
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body26, label %if.then41

do.body26:                                        ; preds = %do.body14
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #18
  br label %if.else

if.then41:                                        ; preds = %do.body14
  %8 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  %ki_list = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 18
  %9 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %ki_list to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %9) #18
  %call43 = call fastcc i16 @mangle_poll(i32 noundef %conv) #18
  %conv44 = zext i16 %call43 to i64
  %res = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 16
  %10 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %res to i64*
  store i64 %conv44, i64* %10, align 8
  %done = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %0, i64 0, i32 3
  store i8 1, i8* %done, align 4
  %ki_eventfd = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 21
  %11 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %ki_eventfd to %struct.eventfd_ctx**
  %12 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %tobool45.not = icmp eq %struct.eventfd_ctx* %12, null
  br i1 %tobool45.not, label %if.end59, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.then41
  %call47 = call fastcc i1 @eventfd_signal_allowed() #18
  br i1 %call47, label %if.end59.thread, label %if.end59

if.end59.thread:                                  ; preds = %land.lhs.true46
  %work = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 8
  %13 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %work to %struct.work_struct*
  %14 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %work to i64*
  store i64 68719476704, i64* %14, align 8
  %entry53 = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 9
  %15 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %entry53 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %15) #18
  %func = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 11
  %16 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @aio_poll_put_work, void (%struct.work_struct*)** %16, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %13) #18
  %rlock.i9699 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %8, i64 0, i32 16, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i9699, i64 noundef %call) #17
  br label %cleanup

if.end59:                                         ; preds = %land.lhs.true46, %if.then41
  %rlock.i96 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %8, i64 0, i32 16, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i96, i64 noundef %call) #17
  %tobool61.not = icmp eq i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, null
  br i1 %tobool61.not, label %cleanup, label %if.then62

if.then62:                                        ; preds = %if.end59
  call fastcc void @iocb_put(%struct.aio_kiocb* noundef nonnull %1) #18
  br label %cleanup

if.else.critedge:                                 ; preds = %entry
  %entry9.c = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 6
  %17 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %entry9.c to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %17) #18
  br label %if.else

if.else:                                          ; preds = %do.body26, %if.else.critedge
  %work64 = getelementptr inbounds i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %add.ptr, i64 8
  %18 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %work64 to %struct.work_struct*
  call fastcc void @schedule_work(%struct.work_struct* noundef %18) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end59.thread, %if.else, %if.then62, %if.end59, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 1, %if.end59 ], [ 1, %if.then62 ], [ 1, %if.else ], [ 1, %if.end59.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pt) unnamed_addr #1 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %poll = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 9
  %1 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %poll, align 8
  %tobool.not = icmp eq i32 (%struct.file*, %struct.poll_table_struct*)* %1, null
  br i1 %tobool.not, label %return, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call = call i32 %1(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pt) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 325, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @aio_poll_cancel(%struct.kiocb* noundef %iocb) #1 {
entry:
  %poll = bitcast %struct.kiocb* %iocb to %struct.poll_iocb*
  %head = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %0 = bitcast i64* %head to %struct.wait_queue_head**
  %1 = load %struct.wait_queue_head*, %struct.wait_queue_head** %0, align 8
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %cancelled = getelementptr inbounds %struct.poll_iocb, %struct.poll_iocb* %poll, i64 0, i32 4
  store volatile i8 1, i8* %cancelled, align 1
  %wait = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 3
  %entry10 = getelementptr inbounds i8*, i8** %wait, i64 3
  %2 = bitcast i8** %entry10 to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %2) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @list_del_init(%struct.list_head* noundef %2) #18
  %work = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 1, i32 2
  %3 = bitcast void (%struct.kiocb*, i64, i64)** %work to %struct.work_struct*
  call fastcc void @schedule_work(%struct.work_struct* noundef %3) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.wait_queue_head*, %struct.wait_queue_head** %0, align 8
  %rlock.i25 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i25) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i16 @mangle_poll(i32 noundef %val) unnamed_addr #7 {
entry:
  %0 = trunc i32 %val to i16
  %conv45 = and i16 %0, 10239
  ret i16 %conv45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !78
  %call = call fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !79
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @eventfd_signal_allowed() unnamed_addr #13 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %in_eventfd_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 47
  %bf.load = load i8, i8* %in_eventfd_signal, align 8
  %2 = and i8 %bf.load, 8
  %tobool.not = icmp eq i8 %2, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @aio_poll_put_work(%struct.work_struct* noundef %work) #1 {
entry:
  %add.ptr11 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2
  %0 = bitcast %struct.work_struct* %add.ptr11 to %struct.aio_kiocb*
  call fastcc void @iocb_put(%struct.aio_kiocb* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !12

if.end.i:                                         ; preds = %entry
  %1 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @aio_complete(%struct.aio_kiocb* nocapture noundef readonly %iocb) unnamed_addr #1 {
entry:
  %ki_ctx = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 1
  %0 = load %struct.kioctx*, %struct.kioctx** %ki_ctx, align 8
  %rlock.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 18, i32 2, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #18
  %tail5 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 18, i32 0
  %1 = load i32, i32* %tail5, align 64
  %add = add i32 %1, 1
  %nr_events = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 7
  %2 = load i32, i32* %nr_events, align 64
  %cmp8.not = icmp ult i32 %add, %2
  %spec.store.select = select i1 %cmp8.not, i32 %add, i32 0
  %ring_pages = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 10
  %3 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %conv10 = zext i32 %add to i64
  %div = lshr i64 %conv10, 7
  %arrayidx = getelementptr %struct.page*, %struct.page** %3, i64 %div
  %4 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call11 = call fastcc i8* @kmap_atomic(%struct.page* noundef %4) #18
  %5 = bitcast i8* %call11 to %struct.io_event*
  %rem = and i64 %conv10, 127
  %add.ptr = getelementptr %struct.io_event, %struct.io_event* %5, i64 %rem
  %ki_res = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 3
  %6 = bitcast %struct.io_event* %add.ptr to i8*
  %7 = bitcast %struct.io_event* %ki_res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(32) %6, i8* noundef align 8 dereferenceable(32) %7, i64 32, i1 false)
  call fastcc void @__kunmap_atomic() #18
  %8 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %arrayidx22 = getelementptr %struct.page*, %struct.page** %8, i64 %div
  %9 = load %struct.page*, %struct.page** %arrayidx22, align 8
  call void @flush_dcache_page(%struct.page* noundef %9) #17
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !80
  store i32 %spec.store.select, i32* %tail5, align 64
  %10 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %11 = load %struct.page*, %struct.page** %10, align 8
  %call27 = call fastcc i8* @kmap_atomic(%struct.page* noundef %11) #18
  %head28 = getelementptr inbounds i8, i8* %call27, i64 8
  %12 = bitcast i8* %head28 to i32*
  %13 = load i32, i32* %12, align 8
  %tail29 = getelementptr inbounds i8, i8* %call27, i64 12
  %14 = bitcast i8* %tail29 to i32*
  store i32 %spec.store.select, i32* %14, align 4
  call fastcc void @__kunmap_atomic() #18
  %15 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %16 = load %struct.page*, %struct.page** %15, align 8
  call void @flush_dcache_page(%struct.page* noundef %16) #17
  %completed_events = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 18, i32 1
  %17 = load i32, i32* %completed_events, align 4
  %inc38 = add i32 %17, 1
  store i32 %inc38, i32* %completed_events, align 4
  %cmp40 = icmp ugt i32 %inc38, 1
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %entry
  call fastcc void @refill_reqs_available(%struct.kioctx* noundef %0, i32 noundef %13, i32 noundef %spec.store.select) #18
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #17
  %ki_eventfd = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %iocb, i64 0, i32 6
  %18 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %ki_eventfd, align 8
  %tobool.not = icmp eq %struct.eventfd_ctx* %18, null
  br i1 %tobool.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end43
  %call48 = call i64 @eventfd_signal(%struct.eventfd_ctx* noundef nonnull %18, i64 noundef 1) #17
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !81
  %wait = getelementptr inbounds %struct.kioctx, %struct.kioctx* %0, i64 0, i32 17, i32 1
  %call50 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wait) #18
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__wake_up(%struct.wait_queue_head* noundef %wait, i32 noundef 3, i32 noundef 1, i8* noundef null) #17
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #17
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #20, !srcloc !82
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !12

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !83
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(%struct.eventfd_ctx* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #3 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #18
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(%struct.eventfd_ctx* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #20, !srcloc !84
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_io_cancel(i64 noundef %ctx_id, %struct.iocb* noundef %iocb) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.iocb* %iocb to i64
  %aio_key = getelementptr inbounds %struct.iocb, %struct.iocb* %iocb, i64 0, i32 1
  %1 = bitcast i32* %aio_key to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 4) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !85

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #18
  %2 = bitcast i8* %call1 to i32*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %2, i32 -14, i32 0) #20, !srcloc !86
  %asmresult = extractvalue { i32, i64 } %3, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end16, label %cleanup, !prof !12

if.end16:                                         ; preds = %if.end
  %asmresult5 = extractvalue { i32, i64 } %3, 1
  %conv = trunc i64 %asmresult5 to i32
  %cmp.not = icmp eq i32 %conv, 0
  br i1 %cmp.not, label %if.end26, label %cleanup, !prof !12

if.end26:                                         ; preds = %if.end16
  %call27 = call fastcc %struct.kioctx* @lookup_ioctx(i64 noundef %ctx_id) #18
  %tobool28.not = icmp eq %struct.kioctx* %call27, null
  br i1 %tobool28.not, label %cleanup, label %if.end39, !prof !8

if.end39:                                         ; preds = %if.end26
  %rlock.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call27, i64 0, i32 16, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %active_reqs = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call27, i64 0, i32 16, i32 1
  %4 = bitcast %struct.list_head* %active_reqs to i8**
  %.pn10 = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn10 to %struct.list_head*
  %cmp45.not11 = icmp eq %struct.list_head* %active_reqs, %5
  br i1 %cmp45.not11, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.inc, %if.end39
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %13

for.body:                                         ; preds = %if.end39, %for.inc
  %.pn12 = phi i8* [ %.pn, %for.inc ], [ %.pn10, %if.end39 ]
  %obj49 = getelementptr i8, i8* %.pn12, i64 -24
  %6 = bitcast i8* %obj49 to i64*
  %7 = load i64, i64* %6, align 8
  %cmp50 = icmp eq i64 %7, %0
  br i1 %cmp50, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = bitcast i8* %.pn12 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp45.not = icmp eq %struct.list_head* %active_reqs, %9
  br i1 %cmp45.not, label %for.end.thread, label %for.body

for.end:                                          ; preds = %for.body
  %kiocb.0.in.le = getelementptr i8, i8* %.pn12, i64 -144
  %10 = bitcast i8* %.pn12 to %struct.list_head*
  %ki_cancel = getelementptr i8, i8* %.pn12, i64 -40
  %11 = bitcast i8* %ki_cancel to i32 (%struct.kiocb*)**
  %12 = load i32 (%struct.kiocb*)*, i32 (%struct.kiocb*)** %11, align 8
  %rw = bitcast i8* %kiocb.0.in.le to %struct.kiocb*
  %call53 = call i32 %12(%struct.kiocb* noundef %rw) #17
  call fastcc void @list_del_init(%struct.list_head* noundef %10) #18
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %tobool65.not = icmp eq i32 %call53, 0
  %spec.select = select i1 %tobool65.not, i32 -115, i32 %call53
  %phi.cast = sext i32 %spec.select to i64
  br label %13

13:                                               ; preds = %for.end, %for.end.thread
  %14 = phi i64 [ -22, %for.end.thread ], [ %phi.cast, %for.end ]
  %users = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call27, i64 0, i32 0
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %users) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end26, %if.end16, %if.end, %13
  %retval.0 = phi i64 [ %14, %13 ], [ -14, %if.end ], [ -22, %if.end16 ], [ -22, %if.end26 ], [ -14, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_io_getevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %events, %struct.__kernel_timespec* noundef %timeout) unnamed_addr #1 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !11
  %tobool.not = icmp eq %struct.__kernel_timespec* %timeout, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %ts, %struct.__kernel_timespec* noundef nonnull %timeout) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup, !prof !12

if.end:                                           ; preds = %land.lhs.true, %entry
  %ts. = phi %struct.timespec64* [ %ts, %land.lhs.true ], [ null, %entry ]
  %call5 = call fastcc i64 @do_io_getevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %events, %struct.timespec64* noundef %ts.) #18
  %conv6 = trunc i64 %call5 to i32
  %tobool7.not = icmp eq i32 %conv6, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end13

land.lhs.true8:                                   ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call10 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %2) #18
  %tobool11.not = icmp eq i32 %call10, 0
  %spec.select = select i1 %tobool11.not, i64 0, i64 -4
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true8, %if.end
  %ret.0 = phi i64 [ %call5, %if.end ], [ %spec.select, %land.lhs.true8 ]
  %sext = shl i64 %ret.0, 32
  %conv14 = ashr exact i64 %sext, 32
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end13
  %retval.0 = phi i64 [ %conv14, %if.end13 ], [ -14, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_io_getevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %events, %struct.timespec64* noundef readonly %ts) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.timespec64* %ts, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %.unpack28 = load i64, i64* %1, align 8
  %2 = insertvalue [2 x i64] %0, i64 %.unpack28, 1
  %call = call fastcc i64 @timespec64_to_ktime([2 x i64] %2) #18
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 9223372036854775807, %entry ]
  %call1 = call fastcc %struct.kioctx* @lookup_ioctx(i64 noundef %ctx_id) #18
  %tobool2.not = icmp eq %struct.kioctx* %call1, null
  br i1 %tobool2.not, label %if.end17, label %if.then, !prof !8

if.then:                                          ; preds = %cond.end
  %cmp = icmp sle i64 %min_nr, %nr
  %cmp6 = icmp sgt i64 %min_nr, -1
  %3 = and i1 %cmp6, %cmp
  br i1 %3, label %if.then15, label %if.end, !prof !12

if.then15:                                        ; preds = %if.then
  %call16 = call fastcc i64 @read_events(%struct.kioctx* noundef nonnull %call1, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %events, i64 noundef %cond) #18
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %ret.0 = phi i64 [ %call16, %if.then15 ], [ -22, %if.then ]
  %users = getelementptr inbounds %struct.kioctx, %struct.kioctx* %call1, i64 0, i32 0
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %users) #18
  br label %if.end17

if.end17:                                         ; preds = %if.end, %cond.end
  %ret.1 = phi i64 [ %ret.0, %if.end ], [ -22, %cond.end ]
  ret i64 %ret.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #7 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @read_events(%struct.kioctx* noundef %ctx, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %event, i64 noundef %until) unnamed_addr #1 {
entry:
  %ret = alloca i64, align 8
  %__t = alloca %struct.hrtimer_sleeper, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast i64* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store i64 0, i64* %ret, align 8
  %cmp = icmp eq i64 %until, 0
  %call = call fastcc i1 @aio_read_events(%struct.kioctx* noundef %ctx, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %event, i64* noundef nonnull %ret) #18
  %brmerge = select i1 %cmp, i1 true, i1 %call
  br i1 %brmerge, label %if.end28, label %if.then5

if.then5:                                         ; preds = %entry
  %1 = bitcast %struct.hrtimer_sleeper* %__t to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 72, i1 false), !annotation !11
  call fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef nonnull %__t) #18
  %cmp7.not = icmp eq i64 %until, 9223372036854775807
  br i1 %cmp7.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then5
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %__t, i64 0, i32 0
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 131
  %4 = load i64, i64* %timer_slack_ns, align 64
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef nonnull %timer, i64 noundef %until, i64 noundef %4, i32 noundef 1) #17
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then5
  %5 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !11
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #17
  %wait = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 17, i32 1
  %call1153 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call1254 = call fastcc i1 @aio_read_events(%struct.kioctx* noundef %ctx, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %event, i64* noundef nonnull %ret) #18
  br i1 %call1254, label %for.end, label %if.end14.lr.ph

if.end14.lr.ph:                                   ; preds = %if.end
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %__t, i64 0, i32 1
  br label %if.end14

if.end14:                                         ; preds = %if.end14.lr.ph, %cleanup
  %call1155 = phi i64 [ %call1153, %if.end14.lr.ph ], [ %call11, %cleanup ]
  %tobool.not = icmp eq i64 %call1155, 0
  br i1 %tobool.not, label %if.end16, label %__out

if.end16:                                         ; preds = %if.end14
  %6 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool17.not = icmp eq %struct.task_struct* %6, null
  br i1 %tobool17.not, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end16
  call void @schedule() #17
  %call11 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call12 = call fastcc i1 @aio_read_events(%struct.kioctx* noundef %ctx, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %event, i64* noundef nonnull %ret) #18
  br i1 %call12, label %for.end, label %if.end14

for.end:                                          ; preds = %if.end16, %cleanup, %if.end
  call void @finish_wait(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #17
  br label %__out

__out:                                            ; preds = %if.end14, %for.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #20
  %timer21 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %__t, i64 0, i32 0
  %call22 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef nonnull %timer21) #17
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %1) #20
  br label %if.end28

if.end28:                                         ; preds = %entry, %__out
  %7 = load i64, i64* %ret, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #7 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !8
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @aio_read_events(%struct.kioctx* noundef %ctx, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %event, i64* nocapture noundef %i) unnamed_addr #1 {
entry:
  %0 = load i64, i64* %i, align 8
  %add.ptr = getelementptr %struct.io_event, %struct.io_event* %event, i64 %0
  %sub = sub i64 %nr, %0
  %call = call fastcc i64 @aio_read_events_ring(%struct.kioctx* noundef %ctx, %struct.io_event* noundef %add.ptr, i64 noundef %sub) #18
  %cmp = icmp sgt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %i, align 8
  %add = add i64 %1, %call
  store i64 %add, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %counter.i = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 1, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end5, label %if.then4, !prof !12

if.then4:                                         ; preds = %if.end
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %ret.0 = phi i64 [ -22, %if.then4 ], [ %call, %if.end ]
  %3 = load i64, i64* %i, align 8
  %tobool6.not = icmp eq i64 %3, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i64 %ret.0, i64* %i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %4 = phi i64 [ %ret.0, %if.then7 ], [ %3, %if.end5 ]
  %cmp9 = icmp slt i64 %ret.0, 0
  %cmp11 = icmp sge i64 %4, %min_nr
  %5 = select i1 %cmp9, i1 true, i1 %cmp11
  ret i1 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef %sl) unnamed_addr #1 {
entry:
  call void @hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef %sl, i32 noundef 1, i32 noundef 1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(%struct.hrtimer* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @aio_read_events_ring(%struct.kioctx* noundef %ctx, %struct.io_event* noundef %event, i64 noundef %nr) unnamed_addr #1 {
entry:
  %ring_lock = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 17, i32 0
  call void @mutex_lock(%struct.mutex* noundef %ring_lock) #17
  %ring_pages = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 10
  %0 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %1 = load %struct.page*, %struct.page** %0, align 8
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %1) #18
  %head1 = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %head1 to i32*
  %3 = load i32, i32* %2, align 8
  %tail2 = getelementptr inbounds i8, i8* %call, i64 12
  %4 = bitcast i8* %tail2 to i32*
  %5 = load i32, i32* %4, align 4
  call fastcc void @__kunmap_atomic() #18
  call void asm sideeffect "dmb ishld", "~{memory}"() #20, !srcloc !87
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %cleanup74, label %if.end

if.end:                                           ; preds = %entry
  %nr_events = getelementptr inbounds %struct.kioctx, %struct.kioctx* %ctx, i64 0, i32 7
  %6 = load i32, i32* %nr_events, align 64
  %rem = urem i32 %3, %6
  %rem10 = urem i32 %5, %6
  %cmp11145 = icmp sgt i64 %nr, 0
  br i1 %cmp11145, label %while.body, label %while.end

while.body:                                       ; preds = %if.end, %cleanup
  %7 = phi i32 [ %15, %cleanup ], [ %6, %if.end ]
  %head.0148 = phi i32 [ %rem57, %cleanup ], [ %rem, %if.end ]
  %ret.0146 = phi i64 [ %add52, %cleanup ], [ 0, %if.end ]
  %cmp12.not = icmp ugt i32 %head.0148, %rem10
  %spec.select = select i1 %cmp12.not, i32 %7, i32 %rem10
  %sub = sub i32 %spec.select, %head.0148
  %conv = zext i32 %sub to i64
  %cmp14 = icmp eq i32 %head.0148, %rem10
  br i1 %cmp14, label %while.end, label %if.end17

if.end17:                                         ; preds = %while.body
  %add = add i32 %head.0148, 1
  %rem24 = and i32 %add, 127
  %sub26 = sub i64 %nr, %ret.0146
  %cmp28 = icmp sgt i64 %sub26, %conv
  %cond33 = select i1 %cmp28, i64 %conv, i64 %sub26
  %conv34 = zext i32 %rem24 to i64
  %sub35 = sub nuw nsw i64 128, %conv34
  %cmp37 = icmp slt i64 %cond33, %sub35
  %cond42 = select i1 %cmp37, i64 %cond33, i64 %sub35
  %mul = shl i64 %cond42, 5
  %cmp11.i.i = icmp ugt i64 %mul, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !8

check_copy_size.exit.i:                           ; preds = %if.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !88
  br label %copy_to_user.exit

if.then.i:                                        ; preds = %if.end17
  %8 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %9 = lshr i32 %add, 7
  %div = zext i32 %9 to i64
  %arrayidx22 = getelementptr %struct.page*, %struct.page** %8, i64 %div
  %10 = load %struct.page*, %struct.page** %arrayidx22, align 8
  %call43 = call fastcc i8* @kmap(%struct.page* noundef %10) #18
  %11 = bitcast i8* %call43 to %struct.io_event*
  %add.ptr44 = getelementptr %struct.io_event, %struct.io_event* %11, i64 %conv34
  %12 = bitcast %struct.io_event* %add.ptr44 to i8*
  %add.ptr = getelementptr %struct.io_event, %struct.io_event* %event, i64 %ret.0146
  %13 = bitcast %struct.io_event* %add.ptr to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %13, i8* noundef %12, i64 noundef %mul) #17
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %n.addr.0.i = phi i64 [ %call2.i, %if.then.i ], [ %mul, %check_copy_size.exit.i ]
  %conv46 = trunc i64 %n.addr.0.i to i32
  %tobool.not = icmp eq i32 %conv46, 0
  br i1 %tobool.not, label %cleanup, label %cleanup74, !prof !12

cleanup:                                          ; preds = %copy_to_user.exit
  %add52 = add i64 %cond42, %ret.0146
  %14 = trunc i64 %cond42 to i32
  %conv55 = add i32 %head.0148, %14
  %15 = load i32, i32* %nr_events, align 64
  %rem57 = urem i32 %conv55, %15
  %cmp11 = icmp slt i64 %add52, %nr
  br i1 %cmp11, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %while.body, %if.end
  %ret.0.lcssa = phi i64 [ 0, %if.end ], [ %ret.0146, %while.body ], [ %add52, %cleanup ]
  %head.0.lcssa = phi i32 [ %rem, %if.end ], [ %rem10, %while.body ], [ %rem57, %cleanup ]
  %16 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %17 = load %struct.page*, %struct.page** %16, align 8
  %call62 = call fastcc i8* @kmap_atomic(%struct.page* noundef %17) #18
  %head63 = getelementptr inbounds i8, i8* %call62, i64 8
  %18 = bitcast i8* %head63 to i32*
  store i32 %head.0.lcssa, i32* %18, align 8
  call fastcc void @__kunmap_atomic() #18
  %19 = load %struct.page**, %struct.page*** %ring_pages, align 8
  %20 = load %struct.page*, %struct.page** %19, align 8
  call void @flush_dcache_page(%struct.page* noundef %20) #17
  br label %cleanup74

cleanup74:                                        ; preds = %copy_to_user.exit, %while.end, %entry
  %ret.3 = phi i64 [ 0, %entry ], [ %ret.0.lcssa, %while.end ], [ -14, %copy_to_user.exit ]
  call void @mutex_unlock(%struct.mutex* noundef %ring_lock) #17
  ret i64 %ret.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #18
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #17
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #18
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #18
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #18
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #3 {
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
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #7 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_io_pgetevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %events, %struct.__kernel_timespec* noundef %timeout, %struct.__aio_sigset* noundef %usig) unnamed_addr #1 {
entry:
  %ksig = alloca %struct.__aio_sigset, align 8
  %ts = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.__aio_sigset* %ksig to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %1 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !11
  %tobool.not = icmp eq %struct.__kernel_timespec* %timeout, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %ts, %struct.__kernel_timespec* noundef nonnull %timeout) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup, !prof !12

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool4.not = icmp eq %struct.__aio_sigset* %usig, null
  br i1 %tobool4.not, label %if.end9, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %2 = bitcast %struct.__aio_sigset* %usig to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 16) #17
  %tobool7.not = icmp eq i64 %call2.i, 0
  br i1 %tobool7.not, label %land.lhs.true5.if.end9_crit_edge, label %cleanup

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  %sigmask.phi.trans.insert = getelementptr inbounds %struct.__aio_sigset, %struct.__aio_sigset* %ksig, i64 0, i32 0
  %.pre = load %struct.sigset_t*, %struct.sigset_t** %sigmask.phi.trans.insert, align 8
  %sigsetsize.phi.trans.insert = getelementptr inbounds %struct.__aio_sigset, %struct.__aio_sigset* %ksig, i64 0, i32 1
  %.pre40 = load i64, i64* %sigsetsize.phi.trans.insert, align 8
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %if.end
  %3 = phi i64 [ %.pre40, %land.lhs.true5.if.end9_crit_edge ], [ 0, %if.end ]
  %4 = phi %struct.sigset_t* [ %.pre, %land.lhs.true5.if.end9_crit_edge ], [ null, %if.end ]
  %call10 = call i32 @set_user_sigmask(%struct.sigset_t* noundef %4, i64 noundef %3) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  %conv13 = sext i32 %call10 to i64
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %ts. = select i1 %tobool.not, %struct.timespec64* null, %struct.timespec64* %ts
  %call16 = call fastcc i64 @do_io_getevents(i64 noundef %ctx_id, i64 noundef %min_nr, i64 noundef %nr, %struct.io_event* noundef %events, %struct.timespec64* noundef %ts.) #18
  %conv17 = trunc i64 %call16 to i32
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %call19 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %6) #18
  %tobool20 = icmp ne i32 %call19, 0
  call fastcc void @restore_saved_sigmask_unless(i1 noundef %tobool20) #18
  %tobool22.not = xor i1 %tobool20, true
  %tobool25 = icmp ne i32 %conv17, 0
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool25
  %sext = shl i64 %call16, 32
  %7 = ashr exact i64 %sext, 32
  %conv28 = select i1 %or.cond, i64 %7, i64 -514
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.end14, %if.then12
  %retval.0 = phi i64 [ %conv13, %if.then12 ], [ %conv28, %if.end14 ], [ -14, %land.lhs.true ], [ -14, %land.lhs.true5 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(%struct.sigset_t* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_saved_sigmask_unless(i1 noundef %interrupted) unnamed_addr #1 {
entry:
  br i1 %interrupted, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #18
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then11, label %if.end19, !prof !8

if.then11:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/sched/signal.h\22; .popsection; .long 14472b - 14470b; .short 515; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !89
  br label %if.end19

if.else:                                          ; preds = %entry
  call fastcc void @restore_saved_sigmask() #18
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.then11, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_saved_sigmask() unnamed_addr #1 {
entry:
  %call = call fastcc i1 @test_and_clear_restore_sigmask() #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %saved_sigmask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 91
  call void @__set_current_blocked(%struct.sigset_t* noundef %saved_sigmask) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_restore_sigmask() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1 = call fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %2) #18
  %tobool = icmp ne i32 %call1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(%struct.sigset_t* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %call = call fastcc i1 @test_and_clear_bit(i64* noundef %flags) #18
  %conv1 = zext i1 %call to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1048576
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #17
  %2 = and i64 %call.i.i.i, 1048576
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1048576, i64* elementtype(i64) %counter) #20, !srcloc !90
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #16

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #20 = { nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind readonly }

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
!9 = !{i64 2155554173}
!10 = !{i64 2149607259}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155619072}
!14 = !{i64 2149379639, i64 2149379686, i64 2149379692, i64 2149379729, i64 2149379747, i64 2149381058, i64 2149381106, i64 2149381154, i64 2149381217, i64 2149381266, i64 2149379825, i64 2149379850, i64 2149379876, i64 2149379882, i64 2149380724, i64 2149380764, i64 2149380782, i64 2149380814, i64 2149380842, i64 2149380896, i64 2149380916, i64 2149381013, i64 2149379905, i64 2149379919, i64 2149379925, i64 2149379975, i64 2149380021, i64 2149380054}
!15 = !{i64 2149381818, i64 2149381865, i64 2149381871, i64 2149381908, i64 2149381926, i64 2149382869, i64 2149382917, i64 2149382965, i64 2149383028, i64 2149383077, i64 2149382004, i64 2149382029, i64 2149382055, i64 2149382061, i64 2149382098, i64 2149382104, i64 2149382154, i64 2149382200, i64 2149382233}
!16 = !{i64 2149373936, i64 2149373983, i64 2149373989, i64 2149374026, i64 2149374044, i64 2149375385, i64 2149375433, i64 2149375481, i64 2149375544, i64 2149375593, i64 2149374122, i64 2149374147, i64 2149374173, i64 2149374179, i64 2149375051, i64 2149375091, i64 2149375109, i64 2149375141, i64 2149375169, i64 2149375223, i64 2149375243, i64 2149375340, i64 2149374202, i64 2149374216, i64 2149374222, i64 2149374272, i64 2149374318, i64 2149374351}
!17 = !{i64 2147872934, i64 2147872967, i64 2147873020, i64 2147873079, i64 2147873113, i64 2147873168, i64 2147873197, i64 2147873217}
!18 = !{i64 2149633102}
!19 = !{i64 2149425832}
!20 = !{i64 2149389713, i64 2149389760, i64 2149389766, i64 2149389803, i64 2149389821, i64 2149391132, i64 2149391180, i64 2149391228, i64 2149391291, i64 2149391340, i64 2149389899, i64 2149389924, i64 2149389950, i64 2149389956, i64 2149390798, i64 2149390838, i64 2149390856, i64 2149390888, i64 2149390916, i64 2149390970, i64 2149390990, i64 2149391087, i64 2149389979, i64 2149389993, i64 2149389999, i64 2149390049, i64 2149390095, i64 2149390128}
!21 = !{i64 2155603682}
!22 = !{i64 2149622260}
!23 = !{i64 2147910851, i64 2147910883, i64 2147910928, i64 2147910976, i64 2147911002}
!24 = !{i64 2149629541}
!25 = !{i64 2147787645, i64 2147788293, i64 2147788323, i64 2147788355, i64 2147788389, i64 2147788425, i64 2147788450}
!26 = !{i64 2155672604, i64 2155672641, i64 2155672658, i64 2155672693, i64 2155672715, i64 2155672741, i64 2155672764, i64 2155672782, i64 2155672941, i64 2155672982, i64 2155673004, i64 2155673050}
!27 = !{i64 2155677358, i64 2155677396, i64 2155677413, i64 2155677447, i64 2155677469, i64 2155677495, i64 2155677513, i64 2155677671, i64 2155677712, i64 2155677734, i64 2155677780}
!28 = !{i64 1459448}
!29 = !{i64 3948996, i64 3949079, i64 3949303, i64 3949523, i64 3949546}
!30 = !{i64 3953698, i64 3953722}
!31 = !{i64 2151506482}
!32 = !{i64 2150776881}
!33 = !{i64 2155578207}
!34 = !{i64 2155589783}
!35 = !{i64 2155596871}
!36 = !{i64 2149611552}
!37 = !{i64 2149636405}
!38 = !{i64 2149364480, i64 2149364527, i64 2149364533, i64 2149364570, i64 2149364588, i64 2149365928, i64 2149365976, i64 2149366024, i64 2149366087, i64 2149366136, i64 2149364666, i64 2149364691, i64 2149364717, i64 2149364723, i64 2149365594, i64 2149365634, i64 2149365652, i64 2149365684, i64 2149365712, i64 2149365766, i64 2149365786, i64 2149365883, i64 2149364746, i64 2149364760, i64 2149364766, i64 2149364816, i64 2149364862, i64 2149364895}
!39 = !{i64 2154984382}
!40 = !{i64 2154986640}
!41 = !{i64 2149855958}
!42 = !{i64 2149856175}
!43 = !{i64 2147846152, i64 2147846663, i64 2147846693, i64 2147846719, i64 2147846751, i64 2147846780}
!44 = !{i64 2151511675}
!45 = !{i64 2151511882}
!46 = !{i64 2152497661}
!47 = !{i64 2152498473}
!48 = !{i64 2149047699, i64 2149047740, i64 2149047796, i64 2149047848}
!49 = !{i64 2149021753, i64 2149021800, i64 2149021806, i64 2149021843, i64 2149021861, i64 2149022788, i64 2149022836, i64 2149022884, i64 2149022947, i64 2149022996, i64 2149021939, i64 2149021964, i64 2149021990, i64 2149021996, i64 2149022033, i64 2149022039, i64 2149022089, i64 2149022135, i64 2149022168}
!50 = !{i64 2147817758, i64 2147818272, i64 2147818302, i64 2147818328, i64 2147818360, i64 2147818389}
!51 = !{i64 2152514453}
!52 = !{i64 2152515265}
!53 = !{i64 2147832339, i64 2147832987, i64 2147833017, i64 2147833048, i64 2147833080, i64 2147833115, i64 2147833140}
!54 = !{i64 2155634307, i64 2155634344, i64 2155634361, i64 2155634396, i64 2155634418, i64 2155634444, i64 2155634467, i64 2155634485, i64 2155634644, i64 2155634685, i64 2155634707, i64 2155634753}
!55 = !{i64 263047, i64 263065}
!56 = !{i64 2147750249}
!57 = !{i64 2152508669}
!58 = !{i64 2152509481}
!59 = !{i64 2147890142, i64 2147890175, i64 2147890227, i64 2147890286, i64 2147890320, i64 2147890376, i64 2147890405, i64 2147890432}
!60 = !{i64 2147891792, i64 2147891825, i64 2147891876, i64 2147891932, i64 2147891965, i64 2147892020, i64 2147892049, i64 2147892076}
!61 = !{i64 2155748312, i64 2155748352, i64 2155748369, i64 2155748404, i64 2155748426, i64 2155748452, i64 2155748475, i64 2155748493, i64 2155748508, i64 2155748549, i64 2155748571, i64 2155748617}
!62 = !{!"branch_weights", i32 4001, i32 4000000}
!63 = !{i64 2155726980, i64 2155727020, i64 2155727037, i64 2155727071, i64 2155727093, i64 2155727119, i64 2155727137, i64 2155727152, i64 2155727193, i64 2155727215, i64 2155727261}
!64 = !{i8 0, i8 2}
!65 = !{i64 2148775826}
!66 = !{i64 2151684921}
!67 = !{i64 2151688782}
!68 = !{i64 2151689624}
!69 = !{i64 2151690878}
!70 = !{i64 2151694701}
!71 = !{i64 2151695543}
!72 = !{i64 2151700856}
!73 = !{i64 2149046643, i64 2149046685, i64 2149046744, i64 2149046797}
!74 = !{i64 2151666561}
!75 = !{i64 2151669984}
!76 = !{i64 2151670826}
!77 = !{i64 2151672012}
!78 = !{i64 2149602718}
!79 = !{i64 2149606775}
!80 = !{i64 2155648890}
!81 = !{i64 2155651073}
!82 = !{i64 2150623765}
!83 = !{i64 2147794818, i64 2147795492, i64 2147795522, i64 2147795554, i64 2147795588, i64 2147795624, i64 2147795649}
!84 = !{i64 2147777072, i64 2147777588, i64 2147777618, i64 2147777645, i64 2147777679, i64 2147777709}
!85 = !{!"branch_weights", i32 1073205, i32 2146410443}
!86 = !{i64 2155766065, i64 2155766105, i64 2155766122, i64 2155766157, i64 2155766179, i64 2155766205, i64 2155766228, i64 2155766246, i64 2155766261, i64 2155766302, i64 2155766324, i64 2155766370}
!87 = !{i64 2155652902}
!88 = !{i64 2148973820}
!89 = !{i64 2151609849}
!90 = !{i64 2147857575, i64 2147858237, i64 2147858267, i64 2147858298, i64 2147858330, i64 2147858365, i64 2147858390}
