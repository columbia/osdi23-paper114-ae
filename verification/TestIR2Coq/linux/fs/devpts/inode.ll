; ModuleID = 'fs/devpts/inode.c'
source_filename = "fs/devpts/inode.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_devpts__267_637_init_devpts_fs6:\09\09\09"
module asm ".long\09init_devpts_fs - .\09"
module asm ".previous\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.68, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1, [48 x i8] }
%struct.anon.1 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.2, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.9 }
%union.anon.9 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.61, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.40, %struct.anon.41, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.38, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.38 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
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
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.40 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.41 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.42, %struct.qspinlock }
%union.anon.42 = type { %struct.atomic_t }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.39, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.39 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.44, %union.anon.45, i32 }
%struct.request_queue = type opaque
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.20, %union.anon.37, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.37 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.60, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.60 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.61 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.34, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.35, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.34 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.35 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.19 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.19 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.68 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.64, i32 }
%union.anon.64 = type { %struct.kuid_t }
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
%struct.block_device = type opaque
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
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.71 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.72 = type { %struct.hlist_node }
%struct.module = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.lock_class_key = type {}
%struct.match_token = type { i32, i8* }
%struct.pts_fs_info = type { %struct.ida, %struct.pts_mount_opts, %struct.super_block*, %struct.dentry* }
%struct.ida = type { %struct.xarray }
%struct.pts_mount_opts = type { i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32 }
%struct.substring_t = type { i8*, i8* }

@pty_count = internal global %struct.atomic_t zeroinitializer, align 4
@pty_limit = internal global i32 4096, align 4
@pty_reserve = internal global i32 1024, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__UNIQUE_ID___addressable_init_devpts_fs268 = internal global i8* bitcast (i32 ()* @init_devpts_fs to i8*), section ".discard.addressable", align 8
@devpts_fs_type = internal global %struct.file_system_type { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 8, i32 (%struct.fs_context*)* null, %struct.fs_parameter_spec* null, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @devpts_mount, void (%struct.super_block*)* @devpts_kill_sb, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@pty_root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @pty_kern_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@devpts_sops = internal constant %struct.super_operations { %struct.inode* (%struct.super_block*)* null, void (%struct.inode*)* null, void (%struct.inode*)* null, void (%struct.inode*, i32)* null, i32 (%struct.inode*, %struct.writeback_control*)* null, i32 (%struct.inode*)* null, void (%struct.inode*)* null, void (%struct.super_block*)* null, i32 (%struct.super_block*, i32)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.dentry*, %struct.kstatfs*)* @simple_statfs, i32 (%struct.super_block*, i32*, i8*)* @devpts_remount, void (%struct.super_block*)* null, i32 (%struct.seq_file*, %struct.dentry*)* @devpts_show_options, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null }, align 8
@simple_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"\013devpts: get root dentry failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c",mode=%03o\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c",ptmxmode=%03o\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c",max=%d\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 64
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = internal constant [7 x %struct.match_token] [%struct.match_token { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0) }, %struct.match_token { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0) }, %struct.match_token { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0) }, %struct.match_token { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0) }, %struct.match_token { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, %struct.match_token { i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0) }, %struct.match_token { i32 6, i8* null }], align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"\013devpts: called with bogus options\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"mode=%o\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"ptmxmode=%o\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"newinstance\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"max=%d\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ptmx\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"\013devpts: Unable to alloc dentry for ptmx node\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"\013devpts: Unable to alloc inode for ptmx node\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@pty_kern_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([4 x %struct.ctl_table], [4 x %struct.ctl_table]* @pty_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"pty\00", align 1
@pty_table = internal global [4 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* bitcast (i32* @pty_limit to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @pty_limit_min to i8*), i8* bitcast (i32* @pty_limit_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (i32* @pty_reserve to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @pty_limit_min to i8*), i8* bitcast (i32* @pty_limit_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* bitcast (%struct.atomic_t* @pty_count to i8*), i32 4, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@.str.21 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@pty_limit_min = internal global i32 0, align 4
@pty_limit_max = internal global i32 2147483647, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_devpts_fs268 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @devpts_mntget(%struct.file* nocapture noundef readonly %filp, %struct.pts_fs_info* noundef readnone %fsi) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %f_path = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 1
  %1 = bitcast %struct.path* %f_path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef nonnull %path) #13
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %2, i64 0, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %4 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %cmp = icmp eq %struct.dentry* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @follow_up(%struct.path* noundef nonnull %path) #13
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %while.body.while.end_crit_edge, label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  %.pre = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  br label %while.end

while.end:                                        ; preds = %while.cond, %while.body.while.end_crit_edge
  %5 = phi %struct.vfsmount* [ %.pre, %while.body.while.end_crit_edge ], [ %2, %while.cond ]
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %5, i64 0, i32 1
  %6 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 12
  %7 = load i64, i64* %s_magic, align 32
  %cmp3.not = icmp eq i64 %7, 7377
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end10

lor.lhs.false:                                    ; preds = %while.end
  %call6 = call fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* noundef %6) #14
  %cmp7.not = icmp eq %struct.pts_fs_info* %call6, %fsi
  br i1 %cmp7.not, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %lor.lhs.false
  %8 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %8) #13
  br label %if.then12

if.end10:                                         ; preds = %while.end, %lor.lhs.false
  %call9 = call fastcc i32 @devpts_ptmx_path(%struct.path* noundef nonnull %path) #14
  %9 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %9) #13
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then12, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  %.pre29 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %phi.cast = sext i32 %call9 to i64
  br label %if.end20

if.then12:                                        ; preds = %if.end10.thread, %if.end10
  %10 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_sb14 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %10, i64 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %mnt_sb14, align 8
  %call15 = call fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* noundef %11) #14
  %cmp16 = icmp eq %struct.pts_fs_info* %call15, %fsi
  br i1 %cmp16, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end10.if.end20_crit_edge, %if.then12
  %12 = phi %struct.vfsmount* [ %.pre29, %if.end10.if.end20_crit_edge ], [ %10, %if.then12 ]
  %err.1 = phi i64 [ %phi.cast, %if.end10.if.end20_crit_edge ], [ -19, %if.then12 ]
  call void @mntput(%struct.vfsmount* noundef %12) #13
  %call22 = call fastcc i8* @ERR_PTR(i64 noundef %err.1) #14
  %13 = bitcast i8* %call22 to %struct.vfsmount*
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end20
  %retval.0 = phi %struct.vfsmount* [ %13, %if.end20 ], [ %10, %if.then12 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret %struct.vfsmount* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(%struct.path* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_up(%struct.path* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #5 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.pts_fs_info**
  %1 = load %struct.pts_fs_info*, %struct.pts_fs_info** %0, align 8
  ret %struct.pts_fs_info* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @devpts_ptmx_path(%struct.path* noundef %path) unnamed_addr #0 {
entry:
  %call = call i32 @path_pts(%struct.path* noundef %path) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 12
  %2 = load i64, i64* %s_magic, align 32
  %cmp.not = icmp eq i64 %2, 7377
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 13
  %4 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %cmp2.not = icmp eq %struct.dentry* %3, %4
  %spec.select = select i1 %cmp2.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -19, %if.end ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(%struct.vfsmount* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #6 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pts_fs_info* @devpts_acquire(%struct.file* nocapture noundef readonly %filp) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %f_path = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 1
  %1 = bitcast %struct.path* %f_path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef nonnull %path) #13
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %2, i64 0, i32 1
  %3 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 12
  %4 = load i64, i64* %s_magic, align 32
  %cmp.not = icmp eq i64 %4, 7377
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @devpts_ptmx_path(%struct.path* noundef nonnull %path) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  %.pre = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_sb5.phi.trans.insert = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %.pre, i64 0, i32 1
  %.pre19 = load %struct.super_block*, %struct.super_block** %mnt_sb5.phi.trans.insert, align 8
  br label %if.end3

cleanup:                                          ; preds = %if.then
  %conv = sext i32 %call to i64
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #14
  %5 = bitcast i8* %call2 to %struct.pts_fs_info*
  br label %out

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry
  %6 = phi %struct.super_block* [ %.pre19, %if.then.if.end3_crit_edge ], [ %3, %entry ]
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 16
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %s_active) #13
  %call6 = call fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* noundef %6) #14
  br label %out

out:                                              ; preds = %cleanup, %if.end3
  %result.1 = phi %struct.pts_fs_info* [ %5, %cleanup ], [ %call6, %if.end3 ]
  call void @path_put(%struct.path* noundef nonnull %path) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret %struct.pts_fs_info* %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devpts_release(%struct.pts_fs_info* nocapture noundef readonly %fsi) local_unnamed_addr #0 {
entry:
  %sb = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 2
  %0 = load %struct.super_block*, %struct.super_block** %sb, align 8
  call void @deactivate_super(%struct.super_block* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(%struct.super_block* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devpts_new_index(%struct.pts_fs_info* noundef %fsi) local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return() #13
  %0 = load i32, i32* @pty_limit, align 4
  %reserve = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 1, i32 6
  %1 = load i32, i32* %reserve, align 4
  %tobool.not = icmp eq i32 %1, 0
  %2 = load i32, i32* @pty_reserve, align 4
  %cond = select i1 %tobool.not, i32 %2, i32 0
  %sub = sub i32 %0, %cond
  %cmp.not = icmp slt i32 %call.i.i.i, %sub
  br i1 %cmp.not, label %out, label %if.then5

out:                                              ; preds = %entry
  %allocated_ptys = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 0
  %max = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 1, i32 7
  %3 = load i32, i32* %max, align 8
  %sub2 = add i32 %3, -1
  %call3 = call fastcc i32 @ida_alloc_max(%struct.ida* noundef %allocated_ptys, i32 noundef %sub2) #14
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %entry, %out
  %index.014 = phi i32 [ %call3, %out ], [ -28, %entry ]
  call fastcc void @__ll_sc_atomic_sub() #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %out
  %index.013 = phi i32 [ %index.014, %if.then5 ], [ %call3, %out ]
  ret i32 %index.013
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ida_alloc_max(%struct.ida* noundef %ida, i32 noundef %max) unnamed_addr #0 {
entry:
  %call = call i32 @ida_alloc_range(%struct.ida* noundef %ida, i32 noundef 0, i32 noundef %max, i32 noundef 3264) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devpts_kill_index(%struct.pts_fs_info* noundef %fsi, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %allocated_ptys = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 0
  call void @ida_free(%struct.ida* noundef %allocated_ptys, i32 noundef %idx) #13
  call fastcc void @__ll_sc_atomic_sub() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @devpts_pty_new(%struct.pts_fs_info* nocapture noundef readonly %fsi, i32 noundef %index, i8* noundef %priv) local_unnamed_addr #0 {
entry:
  %s = alloca [12 x i8], align 1
  %sb1 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 2
  %0 = load %struct.super_block*, %struct.super_block** %sb1, align 8
  %1 = getelementptr inbounds [12 x i8], [12 x i8]* %s, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %1, i8 0, i64 12, i1 false), !annotation !7
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 13
  %2 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call = call %struct.inode* @new_inode(%struct.super_block* noundef %0) #13
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -12) #14
  %3 = bitcast i8* %call2 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %index, 3
  %conv = sext i32 %add to i64
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  store i64 %conv, i64* %i_ino, align 8
  %setuid = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 1, i32 0
  %4 = load i32, i32* %setuid, align 4
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %do.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %5 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 1, i32 2, i32 0
  br label %cond.end

do.end:                                           ; preds = %if.end
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 80
  %8 = load %struct.cred*, %struct.cred** %cred, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i64 0, i32 7, i32 0
  br label %cond.end

cond.end:                                         ; preds = %do.end, %cond.true
  %.sink.in = phi i32* [ %9, %do.end ], [ %5, %cond.true ]
  %.sink = load i32, i32* %.sink.in, align 4
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2, i32 0
  store i32 %.sink, i32* %10, align 4
  %setgid = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 1, i32 1
  %11 = load i32, i32* %setgid, align 4
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %do.end10, label %cond.true6

cond.true6:                                       ; preds = %cond.end
  %12 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 1, i32 3, i32 0
  br label %cond.end14

do.end10:                                         ; preds = %cond.end
  %13 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %14 = inttoptr i64 %13 to %struct.task_struct*
  %cred13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i64 0, i32 80
  %15 = load %struct.cred*, %struct.cred** %cred13, align 8
  %16 = getelementptr inbounds %struct.cred, %struct.cred* %15, i64 0, i32 8, i32 0
  br label %cond.end14

cond.end14:                                       ; preds = %do.end10, %cond.true6
  %.sink64.in = phi i32* [ %16, %do.end10 ], [ %12, %cond.true6 ]
  %.sink64 = load i32, i32* %.sink64.in, align 4
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3, i32 0
  store i32 %.sink64, i32* %17, align 8
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call16 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call) #13
  %call16.fca.0.extract = extractvalue [2 x i64] %call16, 0
  %call16.fca.1.extract = extractvalue [2 x i64] %call16, 1
  %tmp15.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call16.fca.0.extract, i64* %tmp15.sroa.0.0..sroa_idx, align 8
  %tmp15.sroa.4.0..sroa_idx34 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call16.fca.1.extract, i64* %tmp15.sroa.4.0..sroa_idx34, align 8
  %18 = bitcast %struct.timespec64* %i_atime to i8*
  %19 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %18, i8* noundef align 8 dereferenceable(16) %19, i64 16, i1 false)
  %20 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %20, i8* noundef align 8 dereferenceable(16) %19, i64 16, i1 false)
  %mode = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 1, i32 4
  %21 = load i16, i16* %mode, align 4
  %22 = or i16 %21, 8192
  %or19 = or i32 %index, 142606336
  call void @init_special_inode(%struct.inode* noundef nonnull %call, i16 noundef %22, i32 noundef %or19) #13
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %index) #13
  %call22 = call %struct.dentry* @d_alloc_name(%struct.dentry* noundef %2, i8* noundef nonnull %1) #13
  %tobool23.not = icmp eq %struct.dentry* %call22, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %cond.end14
  %d_fsdata = getelementptr inbounds %struct.dentry, %struct.dentry* %call22, i64 0, i32 11
  store i8* %priv, i8** %d_fsdata, align 8
  call void @d_add(%struct.dentry* noundef nonnull %call22, %struct.inode* noundef nonnull %call) #13
  %call25 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %2) #14
  call fastcc void @fsnotify_create(%struct.inode* noundef %call25, %struct.dentry* noundef nonnull %call22) #14
  br label %cleanup

if.else:                                          ; preds = %cond.end14
  call void @iput(%struct.inode* noundef nonnull %call) #13
  %call26 = call fastcc i8* @ERR_PTR(i64 noundef -12) #14
  %23 = bitcast i8* %call26 to %struct.dentry*
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.else, %if.then
  %retval.0 = phi %struct.dentry* [ %3, %if.then ], [ %call22, %if.then24 ], [ %23, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %1) #12
  ret %struct.dentry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode(%struct.super_block* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(%struct.inode* noundef, i16 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(%struct.dentry* noundef, %struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_create(%struct.inode* nocapture noundef readonly %inode, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #7 {
entry:
  call fastcc void @fsnotify_dirent(%struct.inode* noundef %inode, %struct.dentry* noundef %dentry) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #5 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @devpts_get_priv(%struct.dentry* nocapture noundef readonly %dentry) local_unnamed_addr #5 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 12
  %1 = load i64, i64* %s_magic, align 32
  %cmp.not = icmp eq i64 %1, 7377
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %d_fsdata = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 11
  %2 = load i8*, i8** %d_fsdata, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %2, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devpts_pty_kill(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 12
  %1 = load i64, i64* %s_magic, align 32
  %cmp.not = icmp eq i64 %1, 7377
  br i1 %cmp.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/devpts/inode.c\22; .popsection; .long 14472b - 14470b; .short 620; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %d_fsdata = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 11
  store i8* null, i8** %d_fsdata, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call void @drop_nlink(%struct.inode* noundef %2) #13
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %3 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %3) #14
  call fastcc void @fsnotify_unlink(%struct.inode* noundef %call, %struct.dentry* noundef %dentry) #14
  call void @d_drop(%struct.dentry* noundef %dentry) #13
  call void @dput(%struct.dentry* noundef %dentry) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(%struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fsnotify_unlink(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #14
  br i1 %call, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/fsnotify.h\22; .popsection; .long 14472b - 14470b; .short 223; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @fsnotify_dirent(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(%struct.dentry* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_devpts_fs() #8 section ".init.text" {
entry:
  %call = call i32 @register_filesystem(%struct.file_system_type* noundef nonnull @devpts_fs_type) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @pty_root_table, i64 0, i64 0)) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_pts(%struct.path* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @pty_count, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @pty_count, i64 0, i32 0)) #12, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @pty_count, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @pty_count, i64 0, i32 0)) #12, !srcloc !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_dirent(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  call fastcc void @fsnotify_name(%struct.inode* noundef %dir, %struct.inode* noundef %call) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_name(%struct.inode* nocapture noundef readonly %dir, %struct.inode* nocapture noundef readnone %child) unnamed_addr #7 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_negative(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @d_is_miss(%struct.dentry* noundef %dentry) #14
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_miss(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #14
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__d_entry_type(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #5 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 7340032
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @devpts_mount(%struct.file_system_type* noundef %fs_type, i32 noundef %flags, i8* nocapture noundef readnone %dev_name, i8* noundef %data) #0 {
entry:
  %call = call %struct.dentry* @mount_nodev(%struct.file_system_type* noundef %fs_type, i32 noundef %flags, i8* noundef %data, i32 (%struct.super_block*, i8*, i32)* noundef nonnull @devpts_fill_super) #13
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devpts_kill_sb(%struct.super_block* noundef %sb) #0 {
entry:
  %call = call fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* noundef %sb) #14
  %tobool.not = icmp eq %struct.pts_fs_info* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %allocated_ptys = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 0
  call void @ida_destroy(%struct.ida* noundef %allocated_ptys) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast %struct.pts_fs_info* %call to i8*
  call void @kfree(i8* noundef %0) #13
  call void @kill_litter_super(%struct.super_block* noundef %sb) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @mount_nodev(%struct.file_system_type* noundef, i32 noundef, i8* noundef, i32 (%struct.super_block*, i8*, i32)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devpts_fill_super(%struct.super_block* noundef %s, i8* noundef %data, i32 noundef %silent) #0 {
entry:
  %s_iflags = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 11
  %0 = load i64, i64* %s_iflags, align 8
  %and = and i64 %0, -5
  store i64 %and, i64* %s_iflags, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 3
  store i64 1024, i64* %s_blocksize, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 2
  store i8 10, i8* %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 12
  store i64 7377, i64* %s_magic, align 32
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 6
  store %struct.super_operations* @devpts_sops, %struct.super_operations** %s_op, align 16
  %s_d_op = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 37
  store %struct.dentry_operations* @simple_dentry_operations, %struct.dentry_operations** %s_d_op, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 28
  store i32 1, i32* %s_time_gran, align 16
  %call = call fastcc i8* @new_pts_fs_info(%struct.super_block* noundef %s) #14
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 27
  store i8* %call, i8** %s_fs_info, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* noundef %s) #14
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call2, i64 0, i32 1
  %call3 = call fastcc i32 @parse_mount_options(i8* noundef %data, i32 noundef 0, %struct.pts_mount_opts* noundef %mount_opts) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.inode* @new_inode(%struct.super_block* noundef %s) #13
  %tobool8.not = icmp eq %struct.inode* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 8
  store i64 1, i64* %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 14
  %call11 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call7) #13
  %call11.fca.0.extract = extractvalue [2 x i64] %call11, 0
  %call11.fca.1.extract = extractvalue [2 x i64] %call11, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 14, i32 0
  store i64 %call11.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx27 = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 14, i32 1
  store i64 %call11.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx27, align 8
  %1 = bitcast %struct.timespec64* %i_atime to i8*
  %2 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %1, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  %3 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %3, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 0
  store i16 16877, i16* %i_mode, align 8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 5
  store %struct.inode_operations* @simple_dir_inode_operations, %struct.inode_operations** %i_op, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call7, i64 0, i32 36, i32 0
  store %struct.file_operations* @simple_dir_operations, %struct.file_operations** %i_fop, align 8
  call void @set_nlink(%struct.inode* noundef nonnull %call7, i32 noundef 2) #13
  %call12 = call %struct.dentry* @d_make_root(%struct.inode* noundef nonnull %call7) #13
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %s, i64 0, i32 13
  store %struct.dentry* %call12, %struct.dentry** %s_root, align 8
  %tobool14.not = icmp eq %struct.dentry* %call12, null
  br i1 %tobool14.not, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end10
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = call fastcc i32 @mknod_ptmx(%struct.super_block* noundef %s) #14
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %fail_dput

fail_dput:                                        ; preds = %if.end18
  %4 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  call void @dput(%struct.dentry* noundef %4) #13
  store %struct.dentry* null, %struct.dentry** %s_root, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %fail_dput, %entry, %if.end, %if.end6, %if.end18
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call3, %if.end ], [ %call19, %fail_dput ], [ -12, %do.end ], [ -12, %if.end6 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @new_pts_fs_info(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #14
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %allocated_ptys = bitcast i8* %call to %struct.ida*
  call fastcc void @ida_init(%struct.ida* noundef nonnull %allocated_ptys) #14
  %mode = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %mode to i16*
  store i16 384, i16* %0, align 8
  %ptmxmode = getelementptr inbounds i8, i8* %call, i64 34
  %1 = bitcast i8* %ptmxmode to i16*
  store i16 0, i16* %1, align 2
  %sb2 = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast i8* %sb2 to %struct.super_block**
  store %struct.super_block* %sb, %struct.super_block** %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @parse_mount_options(i8* noundef %data, i32 noundef %op, %struct.pts_mount_opts* nocapture noundef writeonly %opts) unnamed_addr #0 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [3 x %struct.substring_t], align 8
  %option = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %setuid = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %opts, i64 0, i32 0
  store i32 0, i32* %setuid, align 4
  %setgid = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %opts, i64 0, i32 1
  store i32 0, i32* %setgid, align 4
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %opts, i64 0, i32 2, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %.compoundliteral3.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %opts, i64 0, i32 3, i32 0
  store i32 0, i32* %.compoundliteral3.sroa.0.0..sroa_idx, align 4
  %mode = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %opts, i64 0, i32 4
  store i16 384, i16* %mode, align 4
  %ptmxmode = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %opts, i64 0, i32 5
  store i16 0, i16* %ptmxmode, align 2
  %max = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %opts, i64 0, i32 7
  store i32 1048576, i32* %max, align 4
  %cmp = icmp eq i32 %op, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 3
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %4 = load %struct.nsproxy*, %struct.nsproxy** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 86), align 64
  %mnt_ns5 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %4, i64 0, i32 3
  %5 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns5, align 8
  %cmp6 = icmp eq %struct.mnt_namespace* %3, %5
  %conv = zext i1 %cmp6 to i32
  %reserve = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %opts, i64 0, i32 6
  store i32 %conv, i32* %reserve, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call7104 = call i8* @strsep(i8** noundef nonnull %data.addr, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #13
  %cmp8.not105 = icmp eq i8* %call7104, null
  br i1 %cmp8.not105, label %cleanup75, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %6 = bitcast [3 x %struct.substring_t]* %args to i8*
  %7 = bitcast i32* %option to i8*
  %arraydecay = getelementptr inbounds [3 x %struct.substring_t], [3 x %struct.substring_t]* %args, i64 0, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %call7106 = phi i8* [ %call7104, %while.body.lr.ph ], [ %call7, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %6) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #12
  store i32 0, i32* %option, align 4, !annotation !7
  %8 = load i8, i8* %call7106, align 1
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %while.body
  %call12 = call i32 @match_token(i8* noundef nonnull %call7106, %struct.match_token* noundef getelementptr inbounds ([7 x %struct.match_token], [7 x %struct.match_token]* @tokens, i64 0, i64 0), %struct.substring_t* noundef nonnull %arraydecay) #13
  switch i32 %call12, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb42
    i32 3, label %sw.bb50
    i32 4, label %cleanup
    i32 5, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.end11
  %call13 = call i32 @match_int(%struct.substring_t* noundef nonnull %arraydecay, i32* noundef nonnull %option) #13
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup.thread

if.end16:                                         ; preds = %sw.bb
  %9 = load i32, i32* %option, align 4
  %coerce.val.ii = zext i32 %9 to i64
  %call20 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #14
  br i1 %call20, label %if.end22, label %cleanup.thread

if.end22:                                         ; preds = %if.end16
  store i32 %9, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  store i32 1, i32* %setuid, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end11
  %call27 = call i32 @match_int(%struct.substring_t* noundef nonnull %arraydecay, i32* noundef nonnull %option) #13
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %cleanup.thread

if.end30:                                         ; preds = %sw.bb25
  %10 = load i32, i32* %option, align 4
  %coerce.val.ii36 = zext i32 %10 to i64
  %call37 = call fastcc i1 @gid_valid(i64 %coerce.val.ii36) #14
  br i1 %call37, label %if.end39, label %cleanup.thread

if.end39:                                         ; preds = %if.end30
  store i32 %10, i32* %.compoundliteral3.sroa.0.0..sroa_idx, align 4
  store i32 1, i32* %setgid, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end11
  %call44 = call i32 @match_octal(%struct.substring_t* noundef nonnull %arraydecay, i32* noundef nonnull %option) #13
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %cleanup.thread

if.end47:                                         ; preds = %sw.bb42
  %11 = load i32, i32* %option, align 4
  %12 = trunc i32 %11 to i16
  %conv48 = and i16 %12, 4095
  store i16 %conv48, i16* %mode, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.end11
  %call52 = call i32 @match_octal(%struct.substring_t* noundef nonnull %arraydecay, i32* noundef nonnull %option) #13
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %cleanup.thread

if.end55:                                         ; preds = %sw.bb50
  %13 = load i32, i32* %option, align 4
  %14 = trunc i32 %13 to i16
  %conv57 = and i16 %14, 4095
  store i16 %conv57, i16* %ptmxmode, align 2
  br label %cleanup

sw.bb59:                                          ; preds = %if.end11
  %call61 = call i32 @match_int(%struct.substring_t* noundef nonnull %arraydecay, i32* noundef nonnull %option) #13
  %tobool62 = icmp ne i32 %call61, 0
  %15 = load i32, i32* %option, align 4
  %cmp63 = icmp slt i32 %15, 0
  %or.cond = select i1 %tobool62, i1 true, i1 %cmp63
  %cmp66 = icmp sgt i32 %15, 1048576
  %or.cond78 = select i1 %or.cond, i1 true, i1 %cmp66
  br i1 %or.cond78, label %cleanup.thread, label %if.end69

if.end69:                                         ; preds = %sw.bb59
  store i32 %15, i32* %max, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end11
  %call72 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0)) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.bb, %if.end16, %sw.bb25, %if.end30, %sw.bb42, %sw.bb50, %sw.bb59, %do.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %6) #12
  br label %cleanup75

cleanup:                                          ; preds = %if.end22, %if.end39, %if.end47, %if.end55, %if.end11, %if.end69, %while.body
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %6) #12
  %call7 = call i8* @strsep(i8** noundef nonnull %data.addr, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #13
  %cmp8.not = icmp eq i8* %call7, null
  br i1 %cmp8.not, label %cleanup75, label %while.body

cleanup75:                                        ; preds = %cleanup, %if.end, %cleanup.thread
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ 0, %if.end ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(%struct.inode* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_make_root(%struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mknod_ptmx(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %0 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call = call fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* noundef %sb) #14
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %ptmx_uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 7, i32 0
  %ptmx_uid.sroa.0.0.copyload = load i32, i32* %ptmx_uid.sroa.0.0..sroa_idx, align 4
  %ptmx_gid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 8, i32 0
  %ptmx_gid.sroa.0.0.copyload = load i32, i32* %ptmx_gid.sroa.0.0..sroa_idx, align 8
  %call8 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #14
  call fastcc void @inode_lock(%struct.inode* noundef %call8) #14
  %ptmx_dentry = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 3
  %4 = load %struct.dentry*, %struct.dentry** %ptmx_dentry, align 8
  %tobool.not = icmp eq %struct.dentry* %4, null
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call9 = call %struct.dentry* @d_alloc_name(%struct.dentry* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #13
  %tobool10.not = icmp eq %struct.dentry* %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0)) #16
  br label %out

if.end17:                                         ; preds = %if.end
  %call18 = call %struct.inode* @new_inode(%struct.super_block* noundef %sb) #13
  %tobool19.not = icmp eq %struct.inode* %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end17
  %call25 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0)) #16
  call void @dput(%struct.dentry* noundef nonnull %call9) #13
  br label %out

if.end26:                                         ; preds = %if.end17
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call18, i64 0, i32 8
  store i64 2, i64* %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call18, i64 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call18, i64 0, i32 12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call18, i64 0, i32 14
  %call28 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call18) #13
  %call28.fca.0.extract = extractvalue [2 x i64] %call28, 0
  %call28.fca.1.extract = extractvalue [2 x i64] %call28, 1
  %tmp27.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call18, i64 0, i32 14, i32 0
  store i64 %call28.fca.0.extract, i64* %tmp27.sroa.0.0..sroa_idx, align 8
  %tmp27.sroa.4.0..sroa_idx33 = getelementptr inbounds %struct.inode, %struct.inode* %call18, i64 0, i32 14, i32 1
  store i64 %call28.fca.1.extract, i64* %tmp27.sroa.4.0..sroa_idx33, align 8
  %5 = bitcast %struct.timespec64* %i_atime to i8*
  %6 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %5, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  %7 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %7, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  %ptmxmode = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1, i32 5
  %8 = load i16, i16* %ptmxmode, align 2
  %9 = or i16 %8, 8192
  call void @init_special_inode(%struct.inode* noundef nonnull %call18, i16 noundef %9, i32 noundef 5242882) #13
  %ptmx_uid.sroa.0.0..sroa_idx38 = getelementptr inbounds %struct.inode, %struct.inode* %call18, i64 0, i32 2, i32 0
  store i32 %ptmx_uid.sroa.0.0.copyload, i32* %ptmx_uid.sroa.0.0..sroa_idx38, align 4
  %ptmx_gid.sroa.0.0..sroa_idx35 = getelementptr inbounds %struct.inode, %struct.inode* %call18, i64 0, i32 3, i32 0
  store i32 %ptmx_gid.sroa.0.0.copyload, i32* %ptmx_gid.sroa.0.0..sroa_idx35, align 8
  call void @d_add(%struct.dentry* noundef nonnull %call9, %struct.inode* noundef nonnull %call18) #13
  store %struct.dentry* %call9, %struct.dentry** %ptmx_dentry, align 8
  br label %out

out:                                              ; preds = %entry, %if.end26, %do.end23, %do.end14
  %rc.0 = phi i32 [ 0, %if.end26 ], [ -12, %do.end23 ], [ -12, %do.end14 ], [ 0, %entry ]
  %call31 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #14
  call fastcc void @inode_unlock(%struct.inode* noundef %call31) #14
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(%struct.dentry* noundef, %struct.kstatfs* noundef) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devpts_remount(%struct.super_block* nocapture noundef readonly %sb, i32* nocapture noundef readnone %flags, i8* noundef %data) #0 {
entry:
  %call = call fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* noundef %sb) #14
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1
  %call1 = call fastcc i32 @parse_mount_options(i8* noundef %data, i32 noundef 1, %struct.pts_mount_opts* noundef %mount_opts) #14
  call fastcc void @update_ptmx_mode(%struct.pts_fs_info* noundef %call) #14
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devpts_show_options(%struct.seq_file* noundef %seq, %struct.dentry* nocapture noundef readonly %root) #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %root, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call fastcc %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* noundef %0) #14
  %setuid = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1, i32 0
  %1 = load i32, i32* %setuid, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %coerce.dive = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1, i32 2, i32 0
  %2 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %2 to i64
  %call1 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #14
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %setgid = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1, i32 1
  %3 = load i32, i32* %setgid, align 4
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %coerce.dive4 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1, i32 3, i32 0
  %4 = load i32, i32* %coerce.dive4, align 4
  %coerce.val.ii5 = zext i32 %4 to i64
  %call6 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii5) #14
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call6) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %mode = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1, i32 4
  %5 = load i16, i16* %mode, align 4
  %conv = zext i16 %5 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #13
  %ptmxmode = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1, i32 5
  %6 = load i16, i16* %ptmxmode, align 2
  %conv8 = zext i16 %6 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv8) #13
  %max = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %call, i64 0, i32 1, i32 7
  %7 = load i32, i32* %max, align 4
  %cmp = icmp slt i32 %7, 1048576
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %7) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_ptmx_mode(%struct.pts_fs_info* nocapture noundef readonly %fsi) unnamed_addr #10 {
entry:
  %ptmx_dentry = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %ptmx_dentry, align 8
  %tobool.not = icmp eq %struct.dentry* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef nonnull %0) #14
  %ptmxmode = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %fsi, i64 0, i32 1, i32 5
  %1 = load i16, i16* %ptmxmode, align 2
  %2 = or i16 %1, 8192
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 %2, i16* %i_mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kuid_munged(i64 %kuid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #14
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowuid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kgid_munged(i64 %kgid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #14
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowgid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #13
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ida_init(%struct.ida* nocapture noundef writeonly %ida) unnamed_addr #11 {
entry:
  %xa = getelementptr inbounds %struct.ida, %struct.ida* %ida, i64 0, i32 0
  call fastcc void @xa_init_flags(%struct.xarray* noundef %xa) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init_flags(%struct.xarray* nocapture noundef writeonly %xa) unnamed_addr #11 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  store i32 33554437, i32* %xa_flags, align 4
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  store i8* null, i8** %xa_head, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strsep(i8** noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(i8* noundef, %struct.match_token* noundef, %struct.substring_t* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(%struct.substring_t* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #14
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #14
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(%struct.substring_t* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(%struct.ida* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(%struct.super_block* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 1452684}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153341697}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153331249}
!13 = !{i64 2147791585, i64 2147792101, i64 2147792131, i64 2147792158, i64 2147792192, i64 2147792222}
!14 = !{i64 2147792437, i64 2147793085, i64 2147793115, i64 2147793147, i64 2147793181, i64 2147793217, i64 2147793242}
!15 = !{i64 2147801306, i64 2147801822, i64 2147801852, i64 2147801879, i64 2147801913, i64 2147801943}
