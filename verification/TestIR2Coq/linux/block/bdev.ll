; ModuleID = 'block/bdev.c'
source_filename = "block/bdev.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.85, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.7, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.8 }
%union.anon.8 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.9, %union.anon.68, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.68 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.69, %union.anon.70 }
%union.anon.69 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.70 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.23, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.22, [0 x i64] }
%struct.anon.22 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.64, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.39, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.40, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.40 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.43, %union.anon.44, %union.anon.45, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.48, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.42, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.42 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%union.anon.43 = type { %struct.hlist_node }
%union.anon.44 = type { %struct.rb_node }
%union.anon.45 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.48 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.49, %union.anon.50, i32 }
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.41, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.41 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
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
%union.anon.39 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.55 }
%struct.anon.55 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.63, i32, [12 x i8] }
%union.anon.63 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.65, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.65 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.23 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.24, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.25, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.24 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.25 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.74 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.72, %struct.qspinlock }
%union.anon.72 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.74 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.83 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.84 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.85 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%union.anon.80 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.81 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.6, i64, i32 }
%union.anon.6 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.76, i32 }
%union.anon.76 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.fid = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i16, i16, i32, i32, i32 }
%struct.iomap = type opaque
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
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35, [48 x i8] }
%struct.anon.35 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.bdev_inode = type { %struct.block_device, %struct.inode }
%struct.pseudo_fs_context = type { %struct.super_operations*, %struct.xattr_handler**, %struct.dentry_operations*, i64 }

@bdev_cache_init.bd_mnt = internal unnamed_addr global %struct.vfsmount* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"bdev_cache\00", align 1
@bdev_cachep = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@bd_type = internal global %struct.file_system_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 (%struct.fs_context*)* @bd_init_fs_context, %struct.fs_parameter_spec* null, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* null, void (%struct.super_block*)* @kill_anon_super, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot register bdev pseudo-fs\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot create bdev pseudo-fs\00", align 1
@blockdev_superblock = dso_local local_unnamed_addr global %struct.super_block* null, section ".data..read_mostly", align 8
@def_blk_aops = external dso_local constant %struct.address_space_operations, align 8
@bdev_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"&bdev->bd_fsfreeze_mutex\00", align 1
@bdev_lock = internal global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [5 x i8] c"bdev\00", align 1
@bdev_sops = internal constant %struct.super_operations { %struct.inode* (%struct.super_block*)* @bdev_alloc_inode, void (%struct.inode*)* null, void (%struct.inode*)* @bdev_free_inode, void (%struct.inode*, i32)* null, i32 (%struct.inode*, %struct.writeback_control*)* null, i32 (%struct.inode*)* @generic_delete_inode, void (%struct.inode*)* @bdev_evict_inode, void (%struct.super_block*)* null, i32 (%struct.super_block*, i32)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.dentry*, %struct.kstatfs*)* @simple_statfs, i32 (%struct.super_block*, i32*, i8*)* null, void (%struct.super_block*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null }, align 8
@bdev_write_inode._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.bdev_write_inode = private unnamed_addr constant [17 x i8] c"bdev_write_inode\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"\014VFS: Dirty inode writeback failed for block device %s (err=%d).\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef readnone %inode) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.bdev_inode* @BDEV_I(%struct.inode* noundef %inode) #14
  %bdev = getelementptr inbounds %struct.bdev_inode, %struct.bdev_inode* %call, i64 0, i32 0
  ret %struct.block_device* %bdev
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.bdev_inode* @BDEV_I(%struct.inode* noundef readnone %inode) unnamed_addr #0 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -2, i32 38, i32 13
  %0 = bitcast %struct.list_head* %add.ptr to %struct.bdev_inode*
  ret %struct.bdev_inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @invalidate_bdev(%struct.block_device* nocapture noundef readonly %bdev) local_unnamed_addr #1 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 7
  %2 = load i64, i64* %nrpages, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @invalidate_bh_lrus() #15
  call void @lru_add_drain_all() #15
  %call = call i64 @invalidate_mapping_pages(%struct.address_space* noundef %1, i64 noundef 0, i64 noundef -1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bh_lrus() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @invalidate_mapping_pages(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @truncate_bdev_range(%struct.block_device* noundef %bdev, i32 noundef %mode, i64 noundef %lstart, i64 noundef %lend) #1 {
entry:
  %and = and i32 %mode, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end7.critedge

if.then:                                          ; preds = %entry
  %call = call i32 @bd_prepare_to_claim(%struct.block_device* noundef %bdev, i8* noundef bitcast (i32 (%struct.block_device*, i32, i64, i64)* @truncate_bdev_range to i8*)) #14
  %tobool1.not = icmp eq i32 %call, 0
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  br i1 %tobool1.not, label %if.then6, label %invalidate

if.then6:                                         ; preds = %if.then
  call void @truncate_inode_pages_range(%struct.address_space* noundef %1, i64 noundef %lstart, i64 noundef %lend) #15
  call void @bd_abort_claiming(%struct.block_device* noundef %bdev, i8* noundef bitcast (i32 (%struct.block_device*, i32, i64, i64)* @truncate_bdev_range to i8*)) #14
  br label %return

if.end7.critedge:                                 ; preds = %entry
  %bd_inode.c = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %2 = load %struct.inode*, %struct.inode** %bd_inode.c, align 8
  %i_mapping.c = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 7
  %3 = load %struct.address_space*, %struct.address_space** %i_mapping.c, align 8
  call void @truncate_inode_pages_range(%struct.address_space* noundef %3, i64 noundef %lstart, i64 noundef %lend) #15
  br label %return

invalidate:                                       ; preds = %if.then
  %shr = ashr i64 %lstart, 12
  %shr10 = ashr i64 %lend, 12
  %call11 = call i32 @invalidate_inode_pages2_range(%struct.address_space* noundef %1, i64 noundef %shr, i64 noundef %shr10) #15
  br label %return

return:                                           ; preds = %if.then6, %if.end7.critedge, %invalidate
  %retval.0 = phi i32 [ %call11, %invalidate ], [ 0, %if.end7.critedge ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bd_prepare_to_claim(%struct.block_device* noundef %bdev, i8* noundef %holder) local_unnamed_addr #1 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 7
  %1 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %tobool.not = icmp eq i8* %holder, null
  br i1 %tobool.not, label %if.then, label %retry.preheader, !prof !7

retry.preheader:                                  ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  %call42 = call i1 @bd_may_claim(%struct.block_device* noundef %bdev, %struct.block_device* noundef %1, i8* noundef nonnull %holder) #14
  br i1 %call42, label %if.end20.lr.ph, label %if.then19

if.end20.lr.ph:                                   ; preds = %retry.preheader
  %bd_claiming = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 8
  %2 = bitcast i8** %bd_claiming to i8*
  %3 = bitcast %struct.wait_queue_entry* %wait to i8*
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %4 = bitcast i8** %private to %struct.task_struct**
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  %entry26 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry26, i64 0, i32 0
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  %5 = bitcast %struct.wait_queue_entry* %wait to i64*
  br label %if.end20

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bdev.c\22; .popsection; .long 14472b - 14470b; .short 573; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !8
  br label %cleanup

if.then19:                                        ; preds = %if.then22, %retry.preheader
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end20.lr.ph, %if.then22
  %6 = load i8*, i8** %bd_claiming, align 8
  %tobool21.not = icmp eq i8* %6, null
  br i1 %tobool21.not, label %if.end29, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call24 = call %struct.wait_queue_head* @bit_waitqueue(i8* noundef %2, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #16
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %8 = inttoptr i64 %7 to %struct.task_struct*
  store i64 0, i64* %5, align 8
  store %struct.task_struct* %8, %struct.task_struct** %4, align 8
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  store %struct.list_head* %entry26, %struct.list_head** %next, align 8
  store %struct.list_head* %entry26, %struct.list_head** %prev, align 8
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %call24, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 2) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  call void @schedule() #15
  call void @finish_wait(%struct.wait_queue_head* noundef %call24, %struct.wait_queue_entry* noundef nonnull %wait) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #16
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  %call = call i1 @bd_may_claim(%struct.block_device* noundef %bdev, %struct.block_device* noundef %1, i8* noundef nonnull %holder) #14
  br i1 %call, label %if.end20, label %if.then19

if.end29:                                         ; preds = %if.end20
  store i8* %holder, i8** %bd_claiming, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end29, %if.then19
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -16, %if.then19 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bd_abort_claiming(%struct.block_device* nocapture noundef readonly %bdev, i8* noundef %holder) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 7
  %1 = load %struct.block_device*, %struct.block_device** %part0, align 8
  call fastcc void @bd_clear_claiming(%struct.block_device* noundef %1, i8* noundef %holder) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_blocksize(%struct.block_device* noundef %bdev, i32 noundef %size) local_unnamed_addr #1 {
entry:
  %0 = add i32 %size, -4097
  %1 = icmp ult i32 %0, -3585
  br i1 %1, label %return, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %conv31 = zext i32 %size to i64
  %call = call fastcc i1 @is_power_of_2(i64 noundef %conv31) #18
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false4
  %call6 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #14
  %cmp7 = icmp ugt i32 %call6, %size
  br i1 %cmp7, label %return, label %if.end10

if.end10:                                         ; preds = %if.end
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %2 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 17
  %3 = load i8, i8* %i_blkbits, align 2
  %conv11 = zext i8 %3 to i32
  %call12 = call fastcc i32 @blksize_bits(i32 noundef %size) #14
  %cmp13.not = icmp eq i32 %call12, %conv11
  br i1 %cmp13.not, label %return, label %if.then15

if.then15:                                        ; preds = %if.end10
  %call16 = call i32 @sync_blockdev(%struct.block_device* noundef %bdev) #14
  %conv18 = trunc i32 %call12 to i8
  %4 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_blkbits20 = getelementptr inbounds %struct.inode, %struct.inode* %4, i64 0, i32 17
  store i8 %conv18, i8* %i_blkbits20, align 2
  call fastcc void @kill_bdev(%struct.block_device* noundef %bdev) #14
  br label %return

return:                                           ; preds = %if.end10, %if.then15, %if.end, %entry, %lor.lhs.false4
  %retval.0 = phi i32 [ -22, %lor.lhs.false4 ], [ -22, %entry ], [ -22, %if.end ], [ 0, %if.then15 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #4 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !10
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_logical_block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #14
  %call1 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %call) #14
  ret i32 %call1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i32 @blksize_bits(i32 noundef %size) unnamed_addr #6 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %size.addr.0 = phi i32 [ %size, %entry ], [ %shr, %do.body ]
  %bits.0 = phi i32 [ 8, %entry ], [ %inc, %do.body ]
  %inc = add nuw nsw i32 %bits.0, 1
  %shr = lshr i32 %size.addr.0, 1
  %cmp = icmp ugt i32 %size.addr.0, 513
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  ret i32 %inc
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sync_blockdev(%struct.block_device* noundef %bdev) local_unnamed_addr #1 {
entry:
  %call = call i32 @__sync_blockdev(%struct.block_device* noundef %bdev, i32 noundef 1) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kill_bdev(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #1 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc i1 @mapping_empty(%struct.address_space* noundef %1) #14
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @invalidate_bh_lrus() #15
  call void @truncate_inode_pages(%struct.address_space* noundef %1, i64 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sb_set_blocksize(%struct.super_block* nocapture noundef %sb, i32 noundef %size) local_unnamed_addr #1 {
entry:
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 20
  %0 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %call = call i32 @set_blocksize(%struct.block_device* noundef %0, i32 noundef %size) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %conv = sext i32 %size to i64
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 3
  store i64 %conv, i64* %s_blocksize, align 8
  %call1 = call fastcc i32 @blksize_bits(i32 noundef %size) #14
  %conv2 = trunc i32 %call1 to i8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 2
  store i8 %conv2, i8* %s_blocksize_bits, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %size, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sb_min_blocksize(%struct.super_block* nocapture noundef %sb, i32 noundef %size) local_unnamed_addr #1 {
entry:
  %s_bdev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 20
  %0 = load %struct.block_device*, %struct.block_device** %s_bdev, align 64
  %call = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %0) #14
  %cmp = icmp sgt i32 %call, %size
  %spec.select = select i1 %cmp, i32 %call, i32 %size
  %call1 = call i32 @sb_set_blocksize(%struct.super_block* noundef %sb, i32 noundef %spec.select) #14
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__sync_blockdev(%struct.block_device* noundef readonly %bdev, i32 noundef %wait) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.block_device* %bdev, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32 %wait, 0
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = call i32 @filemap_flush(%struct.address_space* noundef %1) #15
  br label %return

if.end3:                                          ; preds = %if.end
  %call6 = call fastcc i32 @filemap_write_and_wait(%struct.address_space* noundef %1) #14
  br label %return

return:                                           ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ %call, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_flush(%struct.address_space* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_write_and_wait(%struct.address_space* noundef %mapping) unnamed_addr #1 {
entry:
  %call = call i32 @filemap_write_and_wait_range(%struct.address_space* noundef %mapping, i64 noundef 0, i64 noundef 9223372036854775807) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fsync_bdev(%struct.block_device* noundef %bdev) local_unnamed_addr #1 {
entry:
  %call = call %struct.super_block* @get_super(%struct.block_device* noundef %bdev) #15
  %tobool.not = icmp eq %struct.super_block* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @sync_filesystem(%struct.super_block* noundef nonnull %call) #15
  call void @drop_super(%struct.super_block* noundef nonnull %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @sync_blockdev(%struct.block_device* noundef %bdev) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.super_block* @get_super(%struct.block_device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_super(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freeze_bdev(%struct.block_device* noundef %bdev) local_unnamed_addr #1 {
entry:
  %bd_fsfreeze_mutex = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 18
  call void @mutex_lock(%struct.mutex* noundef %bd_fsfreeze_mutex) #15
  %bd_fsfreeze_count = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 17
  %0 = load i32, i32* %bd_fsfreeze_count, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %bd_fsfreeze_count, align 8
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.super_block* @get_active_super(%struct.block_device* noundef %bdev) #15
  %tobool.not = icmp eq %struct.super_block* %call, null
  br i1 %tobool.not, label %sync, label %if.end2

if.end2:                                          ; preds = %if.end
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %call, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %freeze_super = getelementptr inbounds %struct.super_operations, %struct.super_operations* %1, i64 0, i32 9
  %2 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %freeze_super, align 8
  %tobool3.not = icmp eq i32 (%struct.super_block*)* %2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call7 = call i32 %2(%struct.super_block* noundef nonnull %call) #15
  br label %if.end9

if.else:                                          ; preds = %if.end2
  %call8 = call i32 @freeze_super(%struct.super_block* noundef nonnull %call) #15
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %error.0 = phi i32 [ %call7, %if.then4 ], [ %call8, %if.else ]
  call void @deactivate_super(%struct.super_block* noundef nonnull %call) #15
  %tobool10.not = icmp eq i32 %error.0, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %3 = load i32, i32* %bd_fsfreeze_count, align 8
  %dec = add i32 %3, -1
  store i32 %dec, i32* %bd_fsfreeze_count, align 8
  br label %done

if.end13:                                         ; preds = %if.end9
  %bd_fsfreeze_sb = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 19
  store %struct.super_block* %call, %struct.super_block** %bd_fsfreeze_sb, align 8
  br label %sync

sync:                                             ; preds = %if.end, %if.end13
  %call14 = call i32 @sync_blockdev(%struct.block_device* noundef %bdev) #14
  br label %done

done:                                             ; preds = %entry, %sync, %if.then11
  %error.2 = phi i32 [ 0, %entry ], [ %error.0, %if.then11 ], [ 0, %sync ]
  call void @mutex_unlock(%struct.mutex* noundef %bd_fsfreeze_mutex) #15
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.super_block* @get_active_super(%struct.block_device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_super(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @thaw_bdev(%struct.block_device* noundef %bdev) local_unnamed_addr #1 {
entry:
  %bd_fsfreeze_mutex = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 18
  call void @mutex_lock(%struct.mutex* noundef %bd_fsfreeze_mutex) #15
  %bd_fsfreeze_count = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 17
  %0 = load i32, i32* %bd_fsfreeze_count, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %dec = add i32 %0, -1
  store i32 %dec, i32* %bd_fsfreeze_count, align 8
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %out, label %if.end3

if.end3:                                          ; preds = %if.end
  %bd_fsfreeze_sb = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 19
  %1 = load %struct.super_block*, %struct.super_block** %bd_fsfreeze_sb, align 8
  %tobool4.not = icmp eq %struct.super_block* %1, null
  br i1 %tobool4.not, label %out, label %if.end6

if.end6:                                          ; preds = %if.end3
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 6
  %2 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %thaw_super = getelementptr inbounds %struct.super_operations, %struct.super_operations* %2, i64 0, i32 11
  %3 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %thaw_super, align 8
  %tobool7.not = icmp eq i32 (%struct.super_block*)* %3, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call = call i32 %3(%struct.super_block* noundef nonnull %1) #15
  br label %if.end12

if.else:                                          ; preds = %if.end6
  %call11 = call i32 @thaw_super(%struct.super_block* noundef nonnull %1) #15
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %error.0 = phi i32 [ %call, %if.then8 ], [ %call11, %if.else ]
  %tobool13.not = icmp eq i32 %error.0, 0
  br i1 %tobool13.not, label %if.else16, label %if.then14

if.then14:                                        ; preds = %if.end12
  %4 = load i32, i32* %bd_fsfreeze_count, align 8
  %inc = add i32 %4, 1
  store i32 %inc, i32* %bd_fsfreeze_count, align 8
  br label %out

if.else16:                                        ; preds = %if.end12
  store %struct.super_block* null, %struct.super_block** %bd_fsfreeze_sb, align 8
  br label %out

out:                                              ; preds = %if.then14, %if.else16, %if.end3, %if.end, %entry
  %error.1 = phi i32 [ 0, %if.end ], [ %error.0, %if.then14 ], [ 0, %if.else16 ], [ 0, %if.end3 ], [ -22, %entry ]
  call void @mutex_unlock(%struct.mutex* noundef %bd_fsfreeze_mutex) #15
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_super(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdev_read_page(%struct.block_device* noundef %bdev, i64 noundef %sector, %struct.page* noundef %page) local_unnamed_addr #1 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %1 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %rw_page = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %1, i64 0, i32 3
  %2 = load i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)** %rw_page, align 8
  %tobool.not = icmp eq i32 (%struct.block_device*, i64, %struct.page*, i32)* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call3 = call i32 @blk_queue_enter(%struct.request_queue* noundef %3, i32 noundef 0) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %4 = load i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)** %rw_page, align 8
  %call8 = call fastcc i64 @get_start_sect(%struct.block_device* noundef %bdev) #14
  %add = add i64 %call8, %sector
  %call9 = call i32 %4(%struct.block_device* noundef %bdev, i64 noundef %add, %struct.page* noundef %page, i32 noundef 0) #15
  %5 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i64 0, i32 9
  %6 = load %struct.request_queue*, %struct.request_queue** %queue11, align 8
  call void @blk_queue_exit(%struct.request_queue* noundef %6) #15
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end6
  %retval.0 = phi i32 [ %call9, %if.end6 ], [ -95, %entry ], [ %call3, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_queue_enter(%struct.request_queue* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_start_sect(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #5 {
entry:
  %bd_start_sect = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 0
  %0 = load i64, i64* %bd_start_sect, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_exit(%struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdev_write_page(%struct.block_device* noundef %bdev, i64 noundef %sector, %struct.page* noundef %page, %struct.writeback_control* nocapture noundef readnone %wbc) local_unnamed_addr #1 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %1 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %rw_page = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %1, i64 0, i32 3
  %2 = load i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)** %rw_page, align 8
  %tobool.not = icmp eq i32 (%struct.block_device*, i64, %struct.page*, i32)* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call3 = call i32 @blk_queue_enter(%struct.request_queue* noundef %3, i32 noundef 0) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call fastcc void @set_page_writeback(%struct.page* noundef %page) #14
  %4 = load i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)** %rw_page, align 8
  %call8 = call fastcc i64 @get_start_sect(%struct.block_device* noundef %bdev) #14
  %add = add i64 %call8, %sector
  %call9 = call i32 %4(%struct.block_device* noundef %bdev, i64 noundef %add, %struct.page* noundef %page, i32 noundef 1) #15
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end6
  call void @end_page_writeback(%struct.page* noundef %page) #15
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @clean_page_buffers(%struct.page* noundef %page) #15
  call void @unlock_page(%struct.page* noundef %page) #15
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %5 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i64 0, i32 9
  %6 = load %struct.request_queue*, %struct.request_queue** %queue14, align 8
  call void @blk_queue_exit(%struct.request_queue* noundef %6) #15
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end12
  %retval.0 = phi i32 [ %call9, %if.end12 ], [ -95, %entry ], [ %call3, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_page_writeback(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call i32 @__test_set_page_writeback(%struct.page* noundef %page, i1 noundef false) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_page_buffers(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @bdev_cache_init() local_unnamed_addr #7 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 1200, i32 noundef 0, i32 noundef 1449984, void (i8*)* noundef nonnull @init_once) #15
  store %struct.kmem_cache* %call, %struct.kmem_cache** @bdev_cachep, align 8
  %call1 = call i32 @register_filesystem(%struct.file_system_type* noundef nonnull @bd_type) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #19
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef nonnull @bd_type) #15
  store %struct.vfsmount* %call2, %struct.vfsmount** @bdev_cache_init.bd_mnt, align 8
  %0 = bitcast %struct.vfsmount* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %0) #14
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #19
  unreachable

if.end5:                                          ; preds = %if.end
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %call2, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  store %struct.super_block* %1, %struct.super_block** @blockdev_superblock, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @init_once(i8* noundef %data) #1 {
entry:
  %vfs_inode = getelementptr inbounds i8, i8* %data, i64 632
  %0 = bitcast i8* %vfs_inode to %struct.inode*
  call void @inode_init_once(%struct.inode* noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #0 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.block_device* @bdev_alloc(%struct.gendisk* noundef %disk, i8 noundef %partno) local_unnamed_addr #1 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %call = call %struct.inode* @new_inode(%struct.super_block* noundef %0) #15
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 24576, i16* %i_mode, align 8
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 10
  store i32 0, i32* %i_rdev, align 4
  %i_data = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 38
  %a_ops = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 38, i32 9
  store %struct.address_space_operations* @def_blk_aops, %struct.address_space_operations** %a_ops, align 8
  call fastcc void @mapping_set_gfp_mask(%struct.address_space* noundef %i_data) #14
  %call2 = call %struct.block_device* @I_BDEV(%struct.inode* noundef nonnull %call) #14
  %bd_fsfreeze_mutex = getelementptr inbounds %struct.block_device, %struct.block_device* %call2, i64 0, i32 18
  call void @__mutex_init(%struct.mutex* noundef %bd_fsfreeze_mutex, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @bdev_alloc.__key) #15
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.block_device, %struct.block_device* %call2, i64 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %call2, i64 0, i32 14
  store i8 %partno, i8* %bd_partno, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %call2, i64 0, i32 6
  store %struct.inode* %call, %struct.inode** %bd_inode, align 8
  %call8 = call i8* @__alloc_percpu(i64 noundef 152, i64 noundef 8) #15
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %call2, i64 0, i32 1
  %1 = bitcast %struct.disk_stats** %bd_stats to i8**
  store i8* %call8, i8** %1, align 8
  %tobool10.not = icmp eq i8* %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @iput(%struct.inode* noundef nonnull %call) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %call2, i64 0, i32 16
  store %struct.gendisk* %disk, %struct.gendisk** %bd_disk, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then11
  %retval.0 = phi %struct.block_device* [ %call2, %if.end12 ], [ null, %if.then11 ], [ null, %entry ]
  ret %struct.block_device* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @mapping_set_gfp_mask(%struct.address_space* nocapture noundef writeonly %m) unnamed_addr #9 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %m, i64 0, i32 3
  store i32 1051840, i32* %gfp_mask, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bdev_add(%struct.block_device* nocapture noundef %bdev, i32 noundef %dev) local_unnamed_addr #1 {
entry:
  %bd_dev = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 4
  store i32 %dev, i32* %bd_dev, align 4
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 10
  store i32 %dev, i32* %i_rdev, align 4
  %conv = zext i32 %dev to i64
  %1 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 8
  store i64 %conv, i64* %i_ino, align 8
  %2 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  call fastcc void @insert_inode_hash(%struct.inode* noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @insert_inode_hash(%struct.inode* noundef %inode) unnamed_addr #1 {
entry:
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 8
  %0 = load i64, i64* %i_ino, align 8
  call void @__insert_inode_hash(%struct.inode* noundef %inode, i64 noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @nr_blockdev_pages() local_unnamed_addr #1 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %1 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %next = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 55, i32 0
  %2 = bitcast %struct.list_head** %next to i8**
  %s_inodes1 = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 55
  %.pn19 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn19 to %struct.list_head*
  %cmp.not20 = icmp eq %struct.list_head* %s_inodes1, %3
  br i1 %cmp.not20, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn22 = phi i8* [ %.pn, %for.body ], [ %.pn19, %entry ]
  %ret.021 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %i_mapping = getelementptr i8, i8* %.pn22, i64 -208
  %4 = bitcast i8* %i_mapping to %struct.address_space**
  %5 = load %struct.address_space*, %struct.address_space** %4, align 8
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i64 0, i32 7
  %6 = load i64, i64* %nrpages, align 8
  %add = add i64 %6, %ret.021
  %7 = bitcast i8* %.pn22 to i8**
  %.pn = load i8*, i8** %7, align 8
  %8 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %s_inodes1, %8
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %ret.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ]
  %rlock.i18 = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i18) #15
  ret i64 %ret.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i1 @bd_may_claim(%struct.block_device* noundef readonly %bdev, %struct.block_device* noundef readonly %whole, i8* noundef readnone %holder) #5 {
entry:
  %bd_holder = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 10
  %0 = load i8*, i8** %bd_holder, align 8
  %cmp = icmp eq i8* %0, %holder
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp2.not = icmp eq i8* %0, null
  br i1 %cmp2.not, label %if.else4, label %return

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp eq %struct.block_device* %whole, %bdev
  br i1 %cmp5, label %return, label %if.else7

if.else7:                                         ; preds = %if.else4
  %bd_holder8 = getelementptr inbounds %struct.block_device, %struct.block_device* %whole, i64 0, i32 10
  %1 = load i8*, i8** %bd_holder8, align 8
  %cmp9 = icmp eq i8* %1, bitcast (i1 (%struct.block_device*, %struct.block_device*, i8*)* @bd_may_claim to i8*)
  %cmp13.not = icmp eq i8* %1, null
  %spec.select = or i1 %cmp9, %cmp13.not
  br label %return

return:                                           ; preds = %if.else7, %if.else4, %if.else, %entry
  %retval.0 = phi i1 [ true, %entry ], [ false, %if.else ], [ true, %if.else4 ], [ %spec.select, %if.else7 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.wait_queue_head* @bit_waitqueue(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bd_clear_claiming(%struct.block_device* noundef %whole, i8* noundef readnone %holder) unnamed_addr #1 {
entry:
  %bd_claiming = getelementptr inbounds %struct.block_device, %struct.block_device* %whole, i64 0, i32 8
  %0 = load i8*, i8** %bd_claiming, align 8
  %cmp.not = icmp eq i8* %0, %holder
  br i1 %cmp.not, label %do.end7, label %do.body3, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bdev.c\22; .popsection; .long 14472b - 14470b; .short 606; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !12
  unreachable

do.end7:                                          ; preds = %entry
  store i8* null, i8** %bd_claiming, align 8
  %1 = bitcast i8** %bd_claiming to i8*
  call void @wake_up_bit(i8* noundef %1, i32 noundef 0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.block_device* @blkdev_get_no_open(i32 noundef %dev) local_unnamed_addr #1 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %conv = zext i32 %dev to i64
  %call = call %struct.inode* @ilookup(%struct.super_block* noundef %0, i64 noundef %conv) #15
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @blk_request_module(i32 noundef %dev) #15
  %1 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %call2 = call %struct.inode* @ilookup(%struct.super_block* noundef %1, i64 noundef %conv) #15
  %tobool3.not = icmp eq %struct.inode* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %inode.0 = phi %struct.inode* [ %call, %entry ], [ %call2, %if.then ]
  %call6 = call fastcc %struct.bdev_inode* @BDEV_I(%struct.inode* noundef nonnull %inode.0) #14
  %bdev7 = getelementptr inbounds %struct.bdev_inode, %struct.bdev_inode* %call6, i64 0, i32 0
  %kobj = getelementptr inbounds %struct.bdev_inode, %struct.bdev_inode* %call6, i64 0, i32 0, i32 9, i32 0
  %call8 = call %struct.kobject* @kobject_get_unless_zero(%struct.kobject* noundef %kobj) #15
  %tobool9.not = icmp eq %struct.kobject* %call8, null
  %spec.select = select i1 %tobool9.not, %struct.block_device* null, %struct.block_device* %bdev7
  call void @iput(%struct.inode* noundef nonnull %inode.0) #15
  %tobool12.not = icmp eq %struct.block_device* %spec.select, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end5
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %spec.select, i64 0, i32 16
  %2 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 11
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 1024
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end14
  %bd_device19 = getelementptr inbounds %struct.block_device, %struct.block_device* %spec.select, i64 0, i32 9
  call void @put_device(%struct.device* noundef %bd_device19) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end5, %if.then, %if.then18
  %retval.0 = phi %struct.block_device* [ null, %if.then18 ], [ null, %if.then ], [ null, %if.end5 ], [ %spec.select, %if.end14 ]
  ret %struct.block_device* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @ilookup(%struct.super_block* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_request_module(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get_unless_zero(%struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blkdev_put_no_open(%struct.block_device* noundef %bdev) local_unnamed_addr #1 {
entry:
  %bd_device = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 9
  call void @put_device(%struct.device* noundef %bd_device) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.block_device* @blkdev_get_by_dev(i32 noundef %dev, i32 noundef %mode, i8* noundef %holder) local_unnamed_addr #1 {
entry:
  %and2 = and i32 %mode, 2
  %tobool3.not = icmp eq i32 %and2, 0
  %call8 = call %struct.block_device* @blkdev_get_no_open(i32 noundef %dev) #14
  %tobool9.not = icmp eq %struct.block_device* %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %entry
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -6) #14
  %0 = bitcast i8* %call11 to %struct.block_device*
  br label %cleanup

if.end12:                                         ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %call8, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %and13 = and i32 %mode, 128
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end20, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = call i32 @bd_prepare_to_claim(%struct.block_device* noundef nonnull %call8, i8* noundef %holder) #14
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %put_blkdev

if.end20:                                         ; preds = %if.then15, %if.end12
  call void @disk_block_events(%struct.gendisk* noundef %1) #15
  %open_mutex = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %open_mutex) #15
  %call21 = call fastcc i1 @disk_live(%struct.gendisk* noundef %1) #14
  br i1 %call21, label %if.end23, label %abort_claiming

if.end23:                                         ; preds = %if.end20
  %call24 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef nonnull %call8) #14
  br i1 %call24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  %call26 = call fastcc i32 @blkdev_get_part(%struct.block_device* noundef nonnull %call8, i32 noundef %mode) #14
  br label %if.end28

if.else:                                          ; preds = %if.end23
  %call27 = call fastcc i32 @blkdev_get_whole(%struct.block_device* noundef nonnull %call8, i32 noundef %mode) #14
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  %ret.0 = phi i32 [ %call26, %if.then25 ], [ %call27, %if.else ]
  %tobool29.not = icmp eq i32 %ret.0, 0
  br i1 %tobool29.not, label %if.end31, label %abort_claiming

if.end31:                                         ; preds = %if.end28
  br i1 %tobool14.not, label %if.then47, label %if.then34

if.then34:                                        ; preds = %if.end31
  call fastcc void @bd_finish_claiming(%struct.block_device* noundef nonnull %call8, i8* noundef %holder) #14
  br i1 %tobool3.not, label %if.then47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then34
  %bd_write_holder = getelementptr inbounds %struct.block_device, %struct.block_device* %call8, i64 0, i32 12
  %2 = load i8, i8* %bd_write_holder, align 4, !range !13
  %tobool37.not = icmp eq i8 %2, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %if.then47

land.lhs.true38:                                  ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 11
  %3 = load i32, i32* %flags, align 8
  %and39 = and i32 %3, 256
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then47, label %if.then41

if.then41:                                        ; preds = %land.lhs.true38
  store i8 1, i8* %bd_write_holder, align 4
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex) #15
  br label %cleanup

if.then47:                                        ; preds = %land.lhs.true, %if.end31, %land.lhs.true38, %if.then34
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex) #15
  call void @disk_unblock_events(%struct.gendisk* noundef %1) #15
  br label %cleanup

abort_claiming:                                   ; preds = %if.end28, %if.end20
  %ret.1 = phi i32 [ %ret.0, %if.end28 ], [ -6, %if.end20 ]
  br i1 %tobool14.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %abort_claiming
  call void @bd_abort_claiming(%struct.block_device* noundef nonnull %call8, i8* noundef %holder) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %abort_claiming
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex) #15
  call void @disk_unblock_events(%struct.gendisk* noundef %1) #15
  br label %put_blkdev

put_blkdev:                                       ; preds = %if.then15, %if.end52
  %ret.2 = phi i32 [ %call16, %if.then15 ], [ %ret.1, %if.end52 ]
  call void @blkdev_put_no_open(%struct.block_device* noundef nonnull %call8) #14
  %conv54 = sext i32 %ret.2 to i64
  %call55 = call fastcc i8* @ERR_PTR(i64 noundef %conv54) #14
  %4 = bitcast i8* %call55 to %struct.block_device*
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.then41, %put_blkdev, %if.then10
  %retval.0 = phi %struct.block_device* [ %4, %put_blkdev ], [ %0, %if.then10 ], [ %call8, %if.then41 ], [ %call8, %if.then47 ]
  ret %struct.block_device* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_block_events(%struct.gendisk* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @disk_live(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #5 {
entry:
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 6
  %1 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i32 @inode_unhashed(%struct.inode* noundef %1) #14
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bdev_is_partition(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #5 {
entry:
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 14
  %0 = load i8, i8* %bd_partno, align 8
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_get_part(%struct.block_device* nocapture noundef %part, i32 noundef %mode) unnamed_addr #1 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %bd_openers = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 5
  %1 = load i32, i32* %bd_openers, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %done

if.end:                                           ; preds = %entry
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 7
  %2 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call = call fastcc i32 @blkdev_get_whole(%struct.block_device* noundef %2, i32 noundef %mode) #14
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i64 @bdev_nr_sectors(%struct.block_device* noundef %part) #14
  %tobool6.not = icmp eq i64 %call5, 0
  br i1 %tobool6.not, label %out_blkdev_put, label %if.end8

if.end8:                                          ; preds = %if.end4
  %open_partitions = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 14
  %3 = load i32, i32* %open_partitions, align 8
  %inc = add i32 %3, 1
  store i32 %inc, i32* %open_partitions, align 8
  call fastcc void @set_init_blocksize(%struct.block_device* noundef %part) #14
  %.pre = load i32, i32* %bd_openers, align 8
  br label %done

done:                                             ; preds = %entry, %if.end8
  %4 = phi i32 [ %1, %entry ], [ %.pre, %if.end8 ]
  %inc10 = add i32 %4, 1
  store i32 %inc10, i32* %bd_openers, align 8
  br label %cleanup

out_blkdev_put:                                   ; preds = %if.end4
  %5 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part012 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i64 0, i32 7
  %6 = load %struct.block_device*, %struct.block_device** %part012, align 8
  call fastcc void @blkdev_put_whole(%struct.block_device* noundef %6, i32 noundef %mode) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %out_blkdev_put, %done
  %retval.0 = phi i32 [ 0, %done ], [ -6, %out_blkdev_put ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blkdev_get_whole(%struct.block_device* noundef %bdev, i32 noundef %mode) unnamed_addr #1 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %1 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %open = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %1, i64 0, i32 1
  %2 = load i32 (%struct.block_device*, i32)*, i32 (%struct.block_device*, i32)** %open, align 8
  %tobool.not = icmp eq i32 (%struct.block_device*, i32)* %2, null
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %2(%struct.block_device* noundef %bdev, i32 noundef %mode) #15
  switch i32 %call, label %cleanup [
    i32 0, label %if.end10
    i32 -123, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %if.then
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 12
  %3 = load volatile i64, i64* %state, align 8
  %conv.i36 = and i64 %3, 1
  %tobool6.not = icmp eq i64 %conv.i36, 0
  br i1 %tobool6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call i32 @bdev_disk_changed(%struct.gendisk* noundef %0, i1 noundef true) #15
  br label %cleanup

if.end10:                                         ; preds = %if.then, %entry
  %bd_openers = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 5
  %4 = load i32, i32* %bd_openers, align 8
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  call fastcc void @set_init_blocksize(%struct.block_device* noundef %bdev) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %state14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 12
  %5 = load volatile i64, i64* %state14, align 8
  %conv.i3537 = and i64 %5, 1
  %tobool16.not = icmp eq i64 %conv.i3537, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  %call18 = call i32 @bdev_disk_changed(%struct.gendisk* noundef %0, i1 noundef false) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  %6 = load i32, i32* %bd_openers, align 8
  %inc = add i32 %6, 1
  store i32 %inc, i32* %bd_openers, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.then7, %if.then, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call, %if.then ], [ -123, %if.then7 ], [ -123, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bd_finish_claiming(%struct.block_device* noundef %bdev, i8* noundef %holder) unnamed_addr #1 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 7
  %1 = load %struct.block_device*, %struct.block_device** %part0, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  %call = call i1 @bd_may_claim(%struct.block_device* noundef %bdev, %struct.block_device* noundef %1, i8* noundef %holder) #14
  br i1 %call, label %do.end8, label %do.body3, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bdev.c\22; .popsection; .long 14472b - 14470b; .short 624; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !14
  unreachable

do.end8:                                          ; preds = %entry
  %bd_holders = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 11
  %2 = load i32, i32* %bd_holders, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %bd_holders, align 8
  %bd_holder = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 10
  store i8* bitcast (i1 (%struct.block_device*, %struct.block_device*, i8*)* @bd_may_claim to i8*), i8** %bd_holder, align 8
  %bd_holders9 = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 11
  %3 = load i32, i32* %bd_holders9, align 8
  %inc10 = add i32 %3, 1
  store i32 %inc10, i32* %bd_holders9, align 8
  %bd_holder11 = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 10
  store i8* %holder, i8** %bd_holder11, align 8
  call fastcc void @bd_clear_claiming(%struct.block_device* noundef %1, i8* noundef %holder) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_unblock_events(%struct.gendisk* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.block_device* @blkdev_get_by_path(i8* noundef %path, i32 noundef %mode, i8* noundef %holder) local_unnamed_addr #1 {
entry:
  %dev = alloca i32, align 4
  %0 = bitcast i32* %dev to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %dev, align 4, !annotation !15
  %call = call i32 @lookup_bdev(i8* noundef %path, i32* noundef nonnull %dev) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %dev, align 4
  %call2 = call %struct.block_device* @blkdev_get_by_dev(i32 noundef %1, i32 noundef %mode, i8* noundef %holder) #14
  %2 = bitcast %struct.block_device* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #14
  %and = and i32 %mode, 2
  %tobool4.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool4.not, %call3
  br i1 %or.cond, label %cleanup, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %call6 = call i32 @bdev_read_only(%struct.block_device* noundef %call2) #15
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %land.lhs.true5
  call void @blkdev_put(%struct.block_device* noundef %call2, i32 noundef %mode) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then8
  %.sink = phi i64 [ -13, %if.then8 ], [ %conv, %if.then ]
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #14
  %3 = bitcast i8* %call9 to %struct.block_device*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %land.lhs.true5
  %retval.0 = phi %struct.block_device* [ %call2, %land.lhs.true5 ], [ %call2, %if.end ], [ %3, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret %struct.block_device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lookup_bdev(i8* noundef %pathname, i32* nocapture noundef writeonly %dev) local_unnamed_addr #1 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !15
  %tobool.not = icmp eq i8* %pathname, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %pathname, align 1
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @kern_path(i8* noundef nonnull %pathname, i32 noundef 1, %struct.path* noundef nonnull %path) #15
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call5 = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %2) #14
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call5, i64 0, i32 0
  %3 = load i16, i16* %i_mode, align 8
  %4 = and i16 %3, -4096
  %cmp = icmp eq i16 %4, 24576
  br i1 %cmp, label %if.end8, label %out_path_put

if.end8:                                          ; preds = %if.end4
  %call9 = call i1 @may_open_dev(%struct.path* noundef nonnull %path) #15
  br i1 %call9, label %if.end11, label %out_path_put

if.end11:                                         ; preds = %if.end8
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %call5, i64 0, i32 10
  %5 = load i32, i32* %i_rdev, align 4
  store i32 %5, i32* %dev, align 4
  br label %out_path_put

out_path_put:                                     ; preds = %if.end8, %if.end4, %if.end11
  %error.0 = phi i32 [ 0, %if.end11 ], [ -13, %if.end8 ], [ -15, %if.end4 ]
  call void @path_put(%struct.path* noundef nonnull %path) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %out_path_put
  %retval.0 = phi i32 [ %error.0, %out_path_put ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_only(%struct.block_device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blkdev_put(%struct.block_device* noundef %bdev, i32 noundef %mode) local_unnamed_addr #1 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %bd_openers = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 5
  %1 = load i32, i32* %bd_openers, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sync_blockdev(%struct.block_device* noundef %bdev) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %open_mutex = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %open_mutex) #15
  %and = and i32 %mode, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end65, label %if.then1

if.then1:                                         ; preds = %if.end
  %2 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 7
  %3 = load %struct.block_device*, %struct.block_device** %part0, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  %bd_holders = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 11
  %4 = load i32, i32* %bd_holders, align 8
  %dec = add i32 %4, -1
  store i32 %dec, i32* %bd_holders, align 8
  %cmp3 = icmp slt i32 %dec, 0
  br i1 %cmp3, label %if.then11, label %if.end12, !prof !7

if.then11:                                        ; preds = %if.then1
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bdev.c\22; .popsection; .long 14472b - 14470b; .short 923; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !16
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then1
  %bd_holders21 = getelementptr inbounds %struct.block_device, %struct.block_device* %3, i64 0, i32 11
  %5 = load i32, i32* %bd_holders21, align 8
  %dec22 = add i32 %5, -1
  store i32 %dec22, i32* %bd_holders21, align 8
  %cmp23 = icmp slt i32 %dec22, 0
  br i1 %cmp23, label %if.then37, label %if.end38, !prof !7

if.then37:                                        ; preds = %if.end12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bdev.c\22; .popsection; .long 14472b - 14470b; .short 924; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !17
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end12
  %6 = load i32, i32* %bd_holders, align 8
  %tobool48.not = icmp eq i32 %6, 0
  br i1 %tobool48.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end38
  %bd_holder = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 10
  store i8* null, i8** %bd_holder, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end38
  %7 = load i32, i32* %bd_holders21, align 8
  %tobool54.not = icmp eq i32 %7, 0
  br i1 %tobool54.not, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  %bd_holder56 = getelementptr inbounds %struct.block_device, %struct.block_device* %3, i64 0, i32 10
  store i8* null, i8** %bd_holder56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdev_lock, i64 0, i32 0, i32 0)) #15
  br i1 %tobool48.not, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %if.end57
  %bd_write_holder = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 12
  %8 = load i8, i8* %bd_write_holder, align 4, !range !13
  %tobool60.not = icmp eq i8 %8, 0
  br i1 %tobool60.not, label %if.end65, label %if.then62

if.then62:                                        ; preds = %land.lhs.true
  call void @disk_unblock_events(%struct.gendisk* noundef %0) #15
  store i8 0, i8* %bd_write_holder, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end57, %land.lhs.true, %if.then62, %if.end
  call void @disk_flush_events(%struct.gendisk* noundef %0, i32 noundef 1) #15
  %call66 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef %bdev) #14
  br i1 %call66, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end65
  call fastcc void @blkdev_put_part(%struct.block_device* noundef %bdev, i32 noundef %mode) #14
  br label %if.end68

if.else:                                          ; preds = %if.end65
  call fastcc void @blkdev_put_whole(%struct.block_device* noundef %bdev, i32 noundef %mode) #14
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then67
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex) #15
  call void @blkdev_put_no_open(%struct.block_device* noundef %bdev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_flush_events(%struct.gendisk* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blkdev_put_part(%struct.block_device* noundef %part, i32 noundef %mode) unnamed_addr #1 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 7
  %1 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_openers = getelementptr inbounds %struct.block_device, %struct.block_device* %part, i64 0, i32 5
  %2 = load i32, i32* %bd_openers, align 8
  %dec = add i32 %2, -1
  store i32 %dec, i32* %bd_openers, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @blkdev_flush_mapping(%struct.block_device* noundef %part) #14
  %bd_disk1 = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 16
  %3 = load %struct.gendisk*, %struct.gendisk** %bd_disk1, align 8
  %open_partitions = getelementptr inbounds %struct.gendisk, %struct.gendisk* %3, i64 0, i32 14
  %4 = load i32, i32* %open_partitions, align 8
  %dec2 = add i32 %4, -1
  store i32 %dec2, i32* %open_partitions, align 8
  call fastcc void @blkdev_put_whole(%struct.block_device* noundef %1, i32 noundef %mode) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blkdev_put_whole(%struct.block_device* noundef %bdev, i32 noundef %mode) unnamed_addr #1 {
entry:
  %bd_openers = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 5
  %0 = load i32, i32* %bd_openers, align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* %bd_openers, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @blkdev_flush_mapping(%struct.block_device* noundef %bdev) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 8
  %2 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %release = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %2, i64 0, i32 2
  %3 = load void (%struct.gendisk*, i32)*, void (%struct.gendisk*, i32)** %release, align 8
  %tobool1.not = icmp eq void (%struct.gendisk*, i32)* %3, null
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  call void %3(%struct.gendisk* noundef %1, i32 noundef %mode) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(i8* noundef, i32 noundef, %struct.path* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_backing_inode(%struct.dentry* nocapture noundef readonly %upper) unnamed_addr #5 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %upper, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @may_open_dev(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__invalidate_device(%struct.block_device* noundef %bdev, i1 noundef %kill_dirty) local_unnamed_addr #1 {
entry:
  %call = call %struct.super_block* @get_super(%struct.block_device* noundef %bdev) #15
  %tobool.not = icmp eq %struct.super_block* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @shrink_dcache_sb(%struct.super_block* noundef nonnull %call) #15
  %call2 = call i32 @invalidate_inodes(%struct.super_block* noundef nonnull %call, i1 noundef %kill_dirty) #15
  call void @drop_super(%struct.super_block* noundef nonnull %call) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  call void @invalidate_bdev(%struct.block_device* noundef %bdev) #14
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_sb(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inodes(%struct.super_block* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @iterate_bdevs(void (%struct.block_device*, i8*)* nocapture noundef readonly %func, i8* noundef %arg) local_unnamed_addr #1 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %rlock.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %1 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %next = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 55, i32 0
  %2 = bitcast %struct.list_head** %next to i8**
  %.pn47 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn47 to %struct.list_head*
  %s_inodes150 = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 55
  %cmp.not51 = icmp eq %struct.list_head* %s_inodes150, %3
  br i1 %cmp.not51, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %.pn54 = phi i8* [ %.pn, %cleanup ], [ %.pn47, %entry ]
  %old_inode.052 = phi %struct.inode* [ %old_inode.1, %cleanup ], [ null, %entry ]
  %inode.055.in = getelementptr i8, i8* %.pn54, i64 -240
  %inode.055 = bitcast i8* %inode.055.in to %struct.inode*
  %i_mapping = getelementptr i8, i8* %.pn54, i64 -208
  %4 = bitcast i8* %i_mapping to %struct.address_space**
  %5 = load %struct.address_space*, %struct.address_space** %4, align 8
  %i_lock = getelementptr i8, i8* %.pn54, i64 -128
  %rlock.i41 = bitcast i8* %i_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i41) #15
  %i_state = getelementptr i8, i8* %.pn54, i64 -112
  %6 = bitcast i8* %i_state to i64*
  %7 = load i64, i64* %6, align 8
  %and = and i64 %7, 56
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i64 0, i32 7
  %8 = load i64, i64* %nrpages, align 8
  %cmp2 = icmp eq i64 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i41) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__iget(%struct.inode* noundef %inode.055) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i41) #15
  %9 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %rlock.i44 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i44) #15
  call void @iput(%struct.inode* noundef %old_inode.052) #15
  %call = call %struct.block_device* @I_BDEV(%struct.inode* noundef %inode.055) #14
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 16
  %10 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %open_mutex = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %open_mutex) #15
  %bd_openers = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 5
  %11 = load i32, i32* %bd_openers, align 8
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void %func(%struct.block_device* noundef %call, i8* noundef %arg) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %12 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %open_mutex10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i64 0, i32 13
  call void @mutex_unlock(%struct.mutex* noundef %open_mutex10) #15
  %13 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %rlock.i45 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i45) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %old_inode.1 = phi %struct.inode* [ %old_inode.052, %if.then ], [ %inode.055, %if.end8 ]
  %14 = bitcast i8* %.pn54 to i8**
  %.pn = load i8*, i8** %14, align 8
  %15 = bitcast i8* %.pn to %struct.list_head*
  %16 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %s_inodes1 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i64 0, i32 55
  %cmp.not = icmp eq %struct.list_head* %s_inodes1, %15
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  %old_inode.0.lcssa = phi %struct.inode* [ null, %entry ], [ %old_inode.1, %cleanup ]
  %.lcssa = phi %struct.super_block* [ %1, %entry ], [ %16, %cleanup ]
  %rlock.i46 = getelementptr inbounds %struct.super_block, %struct.super_block* %.lcssa, i64 0, i32 54, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i46) #15
  call void @iput(%struct.inode* noundef %old_inode.0.lcssa) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(%struct.inode* noundef) local_unnamed_addr #3

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #5 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  ret %struct.request_queue* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mapping_empty(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #5 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %call = call fastcc i1 @xa_empty(%struct.xarray* noundef %i_pages) #14
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(%struct.address_space* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_empty(%struct.xarray* nocapture noundef readonly %xa) unnamed_addr #5 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  %0 = load i8*, i8** %xa_head, align 8
  %cmp = icmp eq i8* %0, null
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__test_set_page_writeback(%struct.page* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @bd_init_fs_context(%struct.fs_context* noundef %fc) #1 {
entry:
  %call = call %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef %fc, i64 noundef 1650746742) #15
  %tobool.not = icmp eq %struct.pseudo_fs_context* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %s_iflags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 15
  %0 = load i32, i32* %s_iflags, align 8
  %or = or i32 %0, 1
  store i32 %or, i32* %s_iflags, align 8
  %ops = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %call, i64 0, i32 0
  store %struct.super_operations* @bdev_sops, %struct.super_operations** %ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(%struct.super_block* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.inode* @bdev_alloc_inode(%struct.super_block* nocapture noundef readnone %sb) #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @bdev_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef 632) #15
  %vfs_inode = getelementptr inbounds i8, i8* %call, i64 632
  %1 = bitcast i8* %vfs_inode to %struct.inode*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.inode* [ %1, %if.end ], [ null, %entry ]
  ret %struct.inode* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bdev_free_inode(%struct.inode* noundef %inode) #1 {
entry:
  %call = call %struct.block_device* @I_BDEV(%struct.inode* noundef %inode) #14
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 1
  %0 = bitcast %struct.disk_stats** %bd_stats to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #15
  %bd_meta_info = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 20
  %2 = bitcast %struct.partition_meta_info** %bd_meta_info to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #15
  %call1 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef %call) #14
  br i1 %call1, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 16
  %4 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %4, null
  %5 = bitcast %struct.gendisk* %4 to i8*
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i64 0, i32 15
  %6 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %tobool3.not = icmp eq %struct.backing_dev_info* %6, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call void @bdi_put(%struct.backing_dev_info* noundef nonnull %6) #15
  %.phi.trans.insert = bitcast %struct.gendisk** %bd_disk to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  %7 = phi i8* [ %.pre, %if.then4 ], [ %5, %land.lhs.true ], [ %5, %if.then ]
  call void @kfree(i8* noundef %7) #15
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %bd_dev = getelementptr inbounds %struct.block_device, %struct.block_device* %call, i64 0, i32 4
  %8 = load i32, i32* %bd_dev, align 4
  %shr.mask = and i32 %8, -1048576
  %cmp = icmp eq i32 %shr.mask, 271581184
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end8
  %and = and i32 %8, 1048575
  call void @blk_free_ext_minor(i32 noundef %and) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end8
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** @bdev_cachep, align 8
  %call12 = call fastcc %struct.bdev_inode* @BDEV_I(%struct.inode* noundef %inode) #14
  %10 = bitcast %struct.bdev_inode* %call12 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %9, i8* noundef %10) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(%struct.inode* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bdev_evict_inode(%struct.inode* noundef %inode) #1 {
entry:
  %i_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38
  call void @truncate_inode_pages_final(%struct.address_space* noundef %i_data) #15
  call void @invalidate_inode_buffers(%struct.inode* noundef %inode) #15
  call void @clear_inode(%struct.inode* noundef %inode) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(%struct.dentry* noundef, %struct.kstatfs* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(%struct.backing_dev_info* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_ext_minor(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(%struct.address_space* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(%struct.inode* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !18
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @inode_unhashed(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #5 {
entry:
  %i_hash = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 24
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %i_hash) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #5 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @bdev_nr_sectors(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #5 {
entry:
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #14
  %shr = ashr i64 %call, 9
  ret i64 %shr
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @set_init_blocksize(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #14
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %call1 = call fastcc i64 @i_size_read(%struct.inode* noundef %0) #14
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %bsize.0 = phi i32 [ %call, %entry ], [ %shl, %while.cond ]
  %cmp = icmp ult i32 %bsize.0, 4096
  %conv = zext i32 %bsize.0 to i64
  %and = and i64 %call1, %conv
  %tobool.not = icmp eq i64 %and, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  %shl = shl nuw nsw i32 %bsize.0, 1
  br i1 %or.cond, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %call4 = call fastcc i32 @blksize_bits(i32 noundef %bsize.0) #14
  %conv5 = trunc i32 %call4 to i8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 17
  store i8 %conv5, i8* %i_blkbits, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #5 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_disk_changed(%struct.gendisk* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blkdev_flush_mapping(%struct.block_device* noundef %bdev) unnamed_addr #1 {
entry:
  %bd_holders = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 11
  %0 = load i32, i32* %bd_holders, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/bdev.c\22; .popsection; .long 14472b - 14470b; .short 656; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @sync_blockdev(%struct.block_device* noundef %bdev) #14
  call fastcc void @kill_bdev(%struct.block_device* noundef %bdev) #14
  call fastcc void @bdev_write_inode(%struct.block_device* noundef %bdev) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bdev_write_inode(%struct.block_device* noundef %bdev) unnamed_addr #1 {
entry:
  %name = alloca [32 x i8], align 1
  %bd_inode = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 6
  %0 = load %struct.inode*, %struct.inode** %bd_inode, align 8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 20
  %1 = load i64, i64* %i_state, align 8
  %and23 = and i64 %1, 7
  %tobool.not24 = icmp eq i64 %and23, 0
  br i1 %tobool.not24, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  %call = call i32 @write_inode_now(%struct.inode* noundef %0, i32 noundef 1) #15
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end8, label %if.then

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !15
  %call3 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @bdev_write_inode._rs, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.bdev_write_inode, i64 0, i64 0)) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  %call6 = call i8* @bdevname(%struct.block_device* noundef %bdev, i8* noundef nonnull %2) #15
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call6, i32 noundef %call) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #16
  br label %if.end8

if.end8:                                          ; preds = %if.end, %while.body
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %3 = load i64, i64* %i_state, align 8
  %and = and i64 %3, 7
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end8, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @bdevname(%struct.block_device* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #19 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2155376485}
!9 = !{i64 1376608}
!10 = !{i64 0, i64 65}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155382358}
!13 = !{i8 0, i8 2}
!14 = !{i64 2155383775}
!15 = !{!"auto-init"}
!16 = !{i64 2155387925}
!17 = !{i64 2155389577}
!18 = !{i64 2149563034}
!19 = !{i64 2148073311, i64 2148073344, i64 2148073397, i64 2148073456, i64 2148073490, i64 2148073545, i64 2148073574, i64 2148073594}
!20 = !{i64 2149570315}
!21 = !{i64 2149362545}
!22 = !{i64 2155385548}
