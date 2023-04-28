; ModuleID = 'drivers/of/device.c'
source_filename = "drivers/of/device.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
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
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
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
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type { i64, i64, i64, i64 }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type { i64, i64, i64, i64, i32, %struct.spinlock, %struct.dentry*, i8, i8, i8, %struct.io_tlb_slot* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type opaque
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
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
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.60 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
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
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.io_tlb_slot = type { i64, i64, i32 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.alias_prop = type { %struct.list_head, i8*, %struct.device_node*, i32, [0 x i8] }

@.str = private unnamed_addr constant [38 x i8] c"Invalid size 0x%llx for dma-range(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Adjusted size 0x%llx invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"DMA mask not set\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"OF_NAME=%pOFn\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"OF_FULLNAME=%pOF\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"OF_TYPE=%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"OF_COMPATIBLE_%d=%s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"OF_COMPATIBLE_N=%d\00", align 1
@of_mutex = external dso_local global %struct.mutex, align 8
@aliases_lookup = external dso_local global %struct.list_head, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"OF_ALIAS_%d=%s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"of:N%pOFn%c%s\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"C%s\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.of_device_id* @of_match_device(%struct.of_device_id* noundef %matches, %struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.of_device_id* %matches, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool1.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef nonnull %matches, %struct.device_node* noundef nonnull %0) #7
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.of_device_id* [ %call, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.of_device_id* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef, %struct.device_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_device_add(%struct.platform_device* noundef %ofdev) local_unnamed_addr #0 {
entry:
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %ofdev, i64 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, %struct.platform_device* %ofdev, i64 0, i32 3, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %cmp = icmp eq %struct.device_node* %0, null
  br i1 %cmp, label %do.body2, label %do.end5, !prof !7

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/device.c\22; .popsection; .long 14472b - 14470b; .short 39; .short 0; .popsection; 14471: brk 0x800", ""() #8, !srcloc !8
  unreachable

do.end5:                                          ; preds = %entry
  %call = call fastcc i8* @dev_name(%struct.device* noundef %dev) #9
  %name = getelementptr inbounds %struct.platform_device, %struct.platform_device* %ofdev, i64 0, i32 0
  store i8* %call, i8** %name, align 8
  %id = getelementptr inbounds %struct.platform_device, %struct.platform_device* %ofdev, i64 0, i32 1
  store i32 -1, i32* %id, align 8
  %call12 = call i32 @device_add(%struct.device* noundef %dev) #7
  ret i32 %call12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #2 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_dma_configure_id(%struct.device* noundef %dev, %struct.device_node* noundef %np, i1 noundef %force_dma, i32* nocapture noundef readnone %id) local_unnamed_addr #0 {
entry:
  %map = alloca %struct.bus_dma_region*, align 8
  %0 = bitcast %struct.bus_dma_region** %map to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.bus_dma_region* null, %struct.bus_dma_region** %map, align 8
  %call = call i32 @of_dma_get_range(%struct.device_node* noundef %np, %struct.bus_dma_region** noundef nonnull %map) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %force_dma, label %if.end29, label %if.then1

if.then1:                                         ; preds = %if.then
  %cmp2 = icmp eq i32 %call, -19
  %cond = select i1 %cmp2, i32 0, i32 %call
  br label %cleanup109

if.else:                                          ; preds = %entry
  %1 = load %struct.bus_dma_region*, %struct.bus_dma_region** %map, align 8
  %size3190 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %1, i64 0, i32 2
  %2 = load i64, i64* %size3190, align 8
  %tobool4.not191 = icmp eq i64 %2, 0
  br i1 %tobool4.not191, label %for.end, label %for.body

for.body:                                         ; preds = %if.else, %for.body
  %3 = phi i64 [ %5, %for.body ], [ %2, %if.else ]
  %dma_start.0194 = phi i64 [ %spec.select, %for.body ], [ -1, %if.else ]
  %dma_end.0193 = phi i64 [ %dma_end.1, %for.body ], [ 0, %if.else ]
  %r.0192 = phi %struct.bus_dma_region* [ %incdec.ptr, %for.body ], [ %1, %if.else ]
  %dma_start5 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %r.0192, i64 0, i32 1
  %4 = load i64, i64* %dma_start5, align 8
  %cmp6 = icmp ult i64 %4, %dma_start.0194
  %spec.select = select i1 %cmp6, i64 %4, i64 %dma_start.0194
  %add = add i64 %4, %3
  %cmp12 = icmp ugt i64 %add, %dma_end.0193
  %dma_end.1 = select i1 %cmp12, i64 %add, i64 %dma_end.0193
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %r.0192, i64 1
  %size3 = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %r.0192, i64 1, i32 2
  %5 = load i64, i64* %size3, align 8
  %tobool4.not = icmp eq i64 %5, 0
  br i1 %tobool4.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.else
  %dma_end.0.lcssa = phi i64 [ 0, %if.else ], [ %dma_end.1, %for.body ]
  %dma_start.0.lcssa = phi i64 [ -1, %if.else ], [ %spec.select, %for.body ]
  %sub = sub i64 %dma_end.0.lcssa, %dma_start.0.lcssa
  %and = and i64 %sub, 1
  %tobool18.not = icmp eq i64 %and, 0
  br i1 %tobool18.not, label %if.end21, label %do.end

do.end:                                           ; preds = %for.end
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 noundef %sub) #10
  %add20 = add i64 %sub, 1
  br label %if.end21

if.end21:                                         ; preds = %do.end, %for.end
  %size.0 = phi i64 [ %add20, %do.end ], [ %sub, %for.end ]
  %tobool22.not = icmp eq i64 %size.0, 0
  br i1 %tobool22.not, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end21
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 noundef 0) #10
  %6 = bitcast %struct.bus_dma_region** %map to i8**
  %7 = load i8*, i8** %6, align 8
  call void @kfree(i8* noundef %7) #7
  br label %cleanup109

if.end29:                                         ; preds = %if.end21, %if.then
  %size.1 = phi i64 [ 0, %if.then ], [ %size.0, %if.end21 ]
  %dma_start.2 = phi i64 [ 0, %if.then ], [ %dma_start.0.lcssa, %if.end21 ]
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %8 = load i64*, i64** %dma_mask, align 8
  %tobool30.not = icmp eq i64* %8, null
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end29
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #10
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  store i64* %coherent_dma_mask, i64** %dma_mask, align 8
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end29
  %9 = phi i64* [ %coherent_dma_mask, %do.end34 ], [ %8, %if.end29 ]
  %tobool37.not = icmp eq i64 %size.1, 0
  br i1 %tobool37.not, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.end36
  %coherent_dma_mask38 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  %10 = load i64, i64* %coherent_dma_mask38, align 8
  %tobool39.not = icmp eq i64 %10, 0
  br i1 %tobool39.not, label %if.end53, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  %add43 = add i64 %10, 1
  %cmp44 = icmp ugt i64 %10, %add43
  %cond48 = select i1 %cmp44, i64 %10, i64 %add43
  br label %if.end53

if.end53:                                         ; preds = %if.end36, %land.lhs.true, %if.then40
  %size.2 = phi i64 [ %cond48, %if.then40 ], [ 4294967296, %land.lhs.true ], [ %size.1, %if.end36 ]
  %add54 = add i64 %dma_start.2, -1
  %sub55 = add i64 %add54, %size.2
  %call64 = call fastcc i32 @__ilog2_u64(i64 noundef %sub55) #11
  %cmp68188 = icmp eq i32 %call64, 63
  %add83 = add i32 %call64, 1
  %sh_prom = zext i32 %add83 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub84 = xor i64 %notmask, -1
  %cond86 = select i1 %cmp68188, i64 -1, i64 %sub84
  %coherent_dma_mask87 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  %11 = load i64, i64* %coherent_dma_mask87, align 8
  %and88 = and i64 %11, %cond86
  store i64 %and88, i64* %coherent_dma_mask87, align 8
  %12 = load i64, i64* %9, align 8
  %and90 = and i64 %12, %cond86
  store i64 %and90, i64* %9, align 8
  %tobool91.not = icmp eq i32 %call, 0
  br i1 %tobool91.not, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end53
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  store i64 %sub55, i64* %bus_dma_limit, align 8
  %13 = load %struct.bus_dma_region*, %struct.bus_dma_region** %map, align 8
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  store %struct.bus_dma_region* %13, %struct.bus_dma_region** %dma_range_map, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end53
  %call94 = call i1 @of_dma_is_coherent(%struct.device_node* noundef %np) #7
  call void @arch_setup_dma_ops(%struct.device* noundef %dev, i64 noundef %dma_start.2, i64 noundef %size.2, %struct.iommu_ops* noundef null, i1 noundef %call94) #7
  br label %cleanup109

cleanup109:                                       ; preds = %do.end26, %if.end93, %if.then1
  %retval.1 = phi i32 [ 0, %if.end93 ], [ %cond, %if.then1 ], [ -22, %do.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_get_range(%struct.device_node* noundef, %struct.bus_dma_region** noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #6 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #8, !range !9
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_dma_is_coherent(%struct.device_node* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_setup_dma_ops(%struct.device* noundef, i64 noundef, i64 noundef, %struct.iommu_ops* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_device_register(%struct.platform_device* noundef %pdev) local_unnamed_addr #0 {
entry:
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %pdev, i64 0, i32 3
  call void @device_initialize(%struct.device* noundef %dev) #7
  %call = call i32 @of_device_add(%struct.platform_device* noundef %pdev) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @of_device_unregister(%struct.platform_device* noundef %ofdev) local_unnamed_addr #0 {
entry:
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %ofdev, i64 0, i32 3
  call void @device_unregister(%struct.device* noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @of_device_get_match_data(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %of_match_table = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 6
  %1 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table, align 8
  %call = call %struct.of_device_id* @of_match_device(%struct.of_device_id* noundef %1, %struct.device* noundef %dev) #9
  %tobool.not = icmp eq %struct.of_device_id* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %call, i64 0, i32 3
  %2 = load i8*, i8** %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %2, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_device_request_module(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @of_device_get_modalias(%struct.device* noundef %dev, i8* noundef null, i64 noundef 0) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end9.i

if.then:                                          ; preds = %entry
  %conv = trunc i64 %call to i32
  br label %cleanup

if.end9.i:                                        ; preds = %entry
  %add = add nuw i64 %call, 1
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef 3264) #7
  %tobool.not = icmp eq i8* %call10.i, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end9.i
  %call4 = call fastcc i64 @of_device_get_modalias(%struct.device* noundef %dev, i8* noundef nonnull %call10.i, i64 noundef %call) #9
  %arrayidx = getelementptr i8, i8* %call10.i, i64 %call
  store i8 0, i8* %arrayidx, align 1
  call void @kfree(i8* noundef nonnull %call10.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.end3, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ -38, %if.end3 ], [ -12, %if.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @of_device_get_modalias(%struct.device* noundef readonly %dev, i8* noundef %str, i64 noundef %len) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool1.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc i8* @of_node_get_device_type(%struct.device_node* noundef nonnull %0) #9
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %str, i64 noundef %len, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %struct.device_node* noundef nonnull %0, i32 noundef 84, i8* noundef %call) #7
  %conv = sext i32 %call4 to i64
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call9 = call %struct.property* @of_find_property(%struct.device_node* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* noundef null) #7
  %call10 = call i8* @of_prop_next_string(%struct.property* noundef %call9, i8* noundef null) #7
  %tobool11.not68 = icmp eq i8* %call10, null
  br i1 %tobool11.not68, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %tobool5.not = icmp eq i8* %str, null
  %add.ptr = getelementptr i8, i8* %str, i64 %conv
  %spec.select = select i1 %tobool5.not, i8* null, i8* %add.ptr
  %sub = sub i64 %len, %conv
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %tsize.073 = phi i64 [ %add13, %for.inc ], [ %conv, %for.body.preheader ]
  %compat.072 = phi i8* [ %call28, %for.inc ], [ %call10, %for.body.preheader ]
  %len.addr.071 = phi i64 [ %len.addr.1, %for.inc ], [ %sub, %for.body.preheader ]
  %str.addr.169 = phi i8* [ %str.addr.2, %for.inc ], [ %spec.select, %for.body.preheader ]
  %call12 = call i64 @strlen(i8* noundef nonnull %compat.072) #7
  %add = add i64 %call12, 1
  %add13 = add i64 %add, %tsize.073
  %cmp = icmp sgt i64 %add, %len.addr.071
  br i1 %cmp, label %for.inc, label %if.end16

if.end16:                                         ; preds = %for.body
  %call17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %str.addr.169, i64 noundef %len.addr.071, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %compat.072) #7
  %conv18 = sext i32 %call17 to i64
  %tobool20.not66 = icmp eq i8* %str.addr.169, null
  br i1 %tobool20.not66, label %for.end, label %for.body21

for.body21:                                       ; preds = %if.end16, %if.end25
  %c.067 = phi i8* [ %incdec.ptr, %if.end25 ], [ %str.addr.169, %if.end16 ]
  %call22 = call i8* @strchr(i8* noundef nonnull %c.067, i32 noundef 32) #7
  %tobool23.not = icmp eq i8* %call22, null
  br i1 %tobool23.not, label %for.end, label %if.end25

if.end25:                                         ; preds = %for.body21
  %incdec.ptr = getelementptr i8, i8* %call22, i64 1
  store i8 95, i8* %call22, align 1
  %tobool20.not = icmp eq i8* %incdec.ptr, null
  br i1 %tobool20.not, label %for.end, label %for.body21

for.end:                                          ; preds = %for.body21, %if.end25, %if.end16
  %sub26 = sub i64 %len.addr.071, %conv18
  %add.ptr27 = getelementptr i8, i8* %str.addr.169, i64 %conv18
  br label %for.inc

for.inc:                                          ; preds = %for.body, %for.end
  %str.addr.2 = phi i8* [ %str.addr.169, %for.body ], [ %add.ptr27, %for.end ]
  %len.addr.1 = phi i64 [ %len.addr.071, %for.body ], [ %sub26, %for.end ]
  %call28 = call i8* @of_prop_next_string(%struct.property* noundef %call9, i8* noundef nonnull %compat.072) #7
  %tobool11.not = icmp eq i8* %call28, null
  br i1 %tobool11.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i64 [ -19, %lor.lhs.false ], [ -19, %entry ], [ %conv, %if.end ], [ %add13, %for.inc ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @of_device_modalias(%struct.device* noundef %dev, i8* noundef %str, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %sub = add i64 %len, -2
  %call = call fastcc i64 @of_device_get_modalias(%struct.device* noundef %dev, i8* noundef %str, i64 noundef %sub) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i64 %call, %sub
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %inc = add nuw i64 %call, 1
  %arrayidx = getelementptr i8, i8* %str, i64 %call
  store i8 10, i8* %arrayidx, align 1
  %arrayidx5 = getelementptr i8, i8* %str, i64 %inc
  store i8 0, i8* %arrayidx5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i64 [ %inc, %if.end4 ], [ %call, %entry ], [ -12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @of_device_uevent(%struct.device* noundef readonly %dev, %struct.kobj_uevent_env* noundef %env) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool1.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* noundef nonnull %0) #7
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call4 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* noundef %1) #7
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call6 = call fastcc i8* @of_node_get_device_type(%struct.device_node* noundef %2) #9
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %call6) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %3 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call12 = call %struct.property* @of_find_property(%struct.device_node* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* noundef null) #7
  %call13 = call i8* @of_prop_next_string(%struct.property* noundef %call12, i8* noundef null) #7
  %tobool14.not68 = icmp eq i8* %call13, null
  br i1 %tobool14.not68, label %for.end, label %for.body

for.body:                                         ; preds = %if.end10, %for.body
  %compat.070 = phi i8* [ %call16, %for.body ], [ %call13, %if.end10 ]
  %seen.069 = phi i32 [ %inc, %for.body ], [ 0, %if.end10 ]
  %call15 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 noundef %seen.069, i8* noundef nonnull %compat.070) #7
  %inc = add i32 %seen.069, 1
  %call16 = call i8* @of_prop_next_string(%struct.property* noundef %call12, i8* noundef nonnull %compat.070) #7
  %tobool14.not = icmp eq i8* %call16, null
  br i1 %tobool14.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end10
  %seen.0.lcssa = phi i32 [ 0, %if.end10 ], [ %inc, %for.body ]
  %call17 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 noundef %seen.0.lcssa) #7
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_mutex) #7
  %app.071 = load %struct.alias_prop*, %struct.alias_prop** bitcast (%struct.list_head* @aliases_lookup to %struct.alias_prop**), align 8
  %link72 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.071, i64 0, i32 0
  %cmp.not73 = icmp eq %struct.list_head* %link72, @aliases_lookup
  br i1 %cmp.not73, label %for.end34, label %for.body19

for.body19:                                       ; preds = %for.end, %for.inc26
  %app.075 = phi %struct.alias_prop* [ %app.0, %for.inc26 ], [ %app.071, %for.end ]
  %seen.174 = phi i32 [ %seen.2, %for.inc26 ], [ 0, %for.end ]
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %np = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.075, i64 0, i32 2
  %5 = load %struct.device_node*, %struct.device_node** %np, align 8
  %cmp21 = icmp eq %struct.device_node* %4, %5
  br i1 %cmp21, label %if.then22, label %for.inc26

if.then22:                                        ; preds = %for.body19
  %alias = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.075, i64 0, i32 1
  %6 = load i8*, i8** %alias, align 8
  %call23 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 noundef %seen.174, i8* noundef %6) #7
  %inc24 = add i32 %seen.174, 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19, %if.then22
  %seen.2 = phi i32 [ %inc24, %if.then22 ], [ %seen.174, %for.body19 ]
  %7 = bitcast %struct.alias_prop* %app.075 to %struct.alias_prop**
  %app.0 = load %struct.alias_prop*, %struct.alias_prop** %7, align 8
  %link = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @aliases_lookup
  br i1 %cmp.not, label %for.end34, label %for.body19

for.end34:                                        ; preds = %for.inc26, %for.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %for.end34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @of_node_get_device_type(%struct.device_node* noundef %np) unnamed_addr #0 {
entry:
  %call = call i8* @of_get_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* noundef null) #7
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_prop_next_string(%struct.property* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_device_uevent_modalias(%struct.device* noundef %dev, %struct.kobj_uevent_env* noundef %env) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool1.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #7
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %env, i64 0, i32 4
  %1 = load i32, i32* %buflen, align 4
  %sub = add i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.kobj_uevent_env, %struct.kobj_uevent_env* %env, i64 0, i32 3, i64 %idxprom
  %conv = sext i32 %1 to i64
  %sub6 = sub nsw i64 2048, %conv
  %call7 = call fastcc i64 @of_device_get_modalias(%struct.device* noundef nonnull %dev, i8* noundef %arrayidx, i64 noundef %sub6) #9
  %sext = shl i64 %call7, 32
  %conv9 = ashr exact i64 %sext, 32
  %2 = load i32, i32* %buflen, align 4
  %conv11 = sext i32 %2 to i64
  %sub12 = sub nsw i64 2048, %conv11
  %cmp.not = icmp ult i64 %conv9, %sub12
  br i1 %cmp.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end4
  %conv8 = trunc i64 %call7 to i32
  %add = add i32 %2, %conv8
  store i32 %add, i32* %buflen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %lor.lhs.false, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -19, %lor.lhs.false ], [ -19, %entry ], [ -12, %if.end ], [ -12, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #2 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { cold nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = !{i64 2153402291}
!9 = !{i64 0, i64 65}
