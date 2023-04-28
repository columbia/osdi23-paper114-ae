; ModuleID = 'kernel/dma/mapping.c'
source_filename = "kernel/dma/mapping.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
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
%struct.atomic_t = type { i32 }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.dma_devres = type { i64, i8*, i64, i64 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"dmam_release\00", align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@dma_default_coherent = dso_local local_unnamed_addr global i8 0, align 1
@swiotlb_force = external dso_local local_unnamed_addr global i32, align 4
@dma_direct_map_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"%s %s: DMA addr %pad+%zu overflow (mask %llx, bus limit %llx).\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dmam_free_coherent(%struct.device* noundef %dev, i64 noundef %size, i8* noundef %vaddr, i64 noundef %dma_handle) local_unnamed_addr #0 {
entry:
  %match_data = alloca %struct.dma_devres, align 8
  %0 = bitcast %struct.dma_devres* %match_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  %size1 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %match_data, i64 0, i32 0
  store i64 %size, i64* %size1, align 8
  %vaddr2 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %match_data, i64 0, i32 1
  store i8* %vaddr, i8** %vaddr2, align 8
  %dma_handle3 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %match_data, i64 0, i32 2
  store i64 %dma_handle, i64* %dma_handle3, align 8
  %attrs = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %match_data, i64 0, i32 3
  store i64 0, i64* %attrs, align 8
  call fastcc void @dma_free_coherent(%struct.device* noundef %dev, i64 noundef %size, i8* noundef %vaddr, i64 noundef %dma_handle) #8
  %call = call i32 @devres_destroy(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @dmam_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @dmam_match, i8* noundef nonnull %0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 66; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_free_coherent(%struct.device* noundef %dev, i64 noundef %size, i8* noundef %cpu_addr, i64 noundef %dma_handle) unnamed_addr #0 {
entry:
  call void @dma_free_attrs(%struct.device* noundef %dev, i64 noundef %size, i8* noundef %cpu_addr, i64 noundef %dma_handle, i64 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dmam_release(%struct.device* noundef %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %size = bitcast i8* %res to i64*
  %0 = load i64, i64* %size, align 8
  %vaddr = getelementptr inbounds i8, i8* %res, i64 8
  %1 = bitcast i8* %vaddr to i8**
  %2 = load i8*, i8** %1, align 8
  %dma_handle = getelementptr inbounds i8, i8* %res, i64 16
  %3 = bitcast i8* %dma_handle to i64*
  %4 = load i64, i64* %3, align 8
  %attrs = getelementptr inbounds i8, i8* %res, i64 24
  %5 = bitcast i8* %attrs to i64*
  %6 = load i64, i64* %5, align 8
  call void @dma_free_attrs(%struct.device* noundef %dev, i64 noundef %0, i8* noundef %2, i64 noundef %4, i64 noundef %6) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @dmam_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* nocapture noundef readonly %match_data) #0 {
entry:
  %vaddr = getelementptr inbounds i8, i8* %res, i64 8
  %0 = bitcast i8* %vaddr to i8**
  %1 = load i8*, i8** %0, align 8
  %vaddr1 = getelementptr inbounds i8, i8* %match_data, i64 8
  %2 = bitcast i8* %vaddr1 to i8**
  %3 = load i8*, i8** %2, align 8
  %cmp = icmp eq i8* %1, %3
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %size = bitcast i8* %res to i64*
  %4 = load i64, i64* %size, align 8
  %size2 = bitcast i8* %match_data to i64*
  %5 = load i64, i64* %size2, align 8
  %cmp3.not = icmp eq i64 %4, %5
  br i1 %cmp3.not, label %lor.rhs, label %if.then12

lor.rhs:                                          ; preds = %if.then
  %dma_handle = getelementptr inbounds i8, i8* %res, i64 16
  %6 = bitcast i8* %dma_handle to i64*
  %7 = load i64, i64* %6, align 8
  %dma_handle4 = getelementptr inbounds i8, i8* %match_data, i64 16
  %8 = bitcast i8* %dma_handle4 to i64*
  %9 = load i64, i64* %8, align 8
  %cmp5.not = icmp eq i64 %7, %9
  br i1 %cmp5.not, label %cleanup, label %if.then12, !prof !7

if.then12:                                        ; preds = %if.then, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 45; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !9
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.rhs, %if.then12
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 1, %lor.rhs ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @dmam_alloc_attrs(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %gfp, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @dmam_release, i64 noundef 32, i32 noundef %gfp, i32 noundef -1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @dma_alloc_attrs(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %gfp, i64 noundef %attrs) #8
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %vaddr5 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %vaddr5 to i8**
  store i8* %call1, i8** %0, align 8
  %1 = load i64, i64* %dma_handle, align 8
  %dma_handle6 = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %dma_handle6 to i64*
  store i64 %1, i64* %2, align 8
  %size7 = bitcast i8* %call to i64*
  store i64 %size, i64* %size7, align 8
  %attrs8 = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %attrs8 to i64*
  store i64 %attrs, i64* %3, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i8* [ %call1, %if.end4 ], [ null, %if.then3 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @dma_alloc_attrs(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %flag, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %cpu_addr = alloca i8*, align 8
  %0 = bitcast i8** %cpu_addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %cpu_addr, align 8, !annotation !10
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  %1 = load i64, i64* %coherent_dma_mask, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 498; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call i32 @dma_alloc_from_dev_coherent(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i8** noundef nonnull %cpu_addr) #9
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  %retval.0.pre = load i8*, i8** %cpu_addr, align 8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %and = and i32 %flag, -8
  %call22 = call i8* @dma_direct_alloc(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %and, i64 noundef %attrs) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end19
  %retval.0 = phi i8* [ %retval.0.pre, %if.end.cleanup_crit_edge ], [ %call22, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @dma_map_page_attrs(%struct.device* noundef %dev, %struct.page* noundef %page, i64 noundef %offset, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 149; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !13
  unreachable

do.end10:                                         ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %tobool11.not = icmp eq i64* %0, null
  br i1 %tobool11.not, label %if.then26, label %if.end37, !prof !11

if.then26:                                        ; preds = %do.end10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 151; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !14
  br label %cleanup

if.end37:                                         ; preds = %do.end10
  %call41 = call fastcc i64 @dma_direct_map_page(%struct.device* noundef %dev, %struct.page* noundef %page, i64 noundef %offset, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end37
  %retval.0 = phi i64 [ %call41, %if.end37 ], [ -1, %if.then26 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @valid_dma_direction(i32 noundef %dir) unnamed_addr #3 {
entry:
  %0 = icmp ult i32 %dir, 3
  %1 = zext i1 %0 to i32
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @dma_direct_map_page(%struct.device* noundef %dev, %struct.page* noundef %page, i64 noundef %offset, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) unnamed_addr #0 {
entry:
  %dma_addr = alloca i64, align 8
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %add = add i64 %shl, %offset
  %1 = bitcast i64* %dma_addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = call fastcc i64 @phys_to_dma(%struct.device* noundef %dev, i64 noundef %add) #8
  store i64 %call, i64* %dma_addr, align 8
  %call1 = call fastcc i1 @is_swiotlb_force_bounce(%struct.device* noundef %dev) #8
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @swiotlb_map(%struct.device* noundef %dev, i64 noundef %add, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @dma_capable(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %size) #8
  br i1 %call3, label %if.end58, label %if.then6, !prof !7

if.then6:                                         ; preds = %if.end
  %2 = load i32, i32* @swiotlb_force, align 4
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.then6
  %call9 = call i64 @swiotlb_map(%struct.device* noundef %dev, i64 noundef %add, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #9
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %.b88 = load i1, i1* @dma_direct_map_page.__already_done, align 1
  br i1 %.b88, label %cleanup, label %if.then23, !prof !7

if.then23:                                        ; preds = %if.end10
  store i1 true, i1* @dma_direct_map_page.__already_done, align 1
  %call34 = call i8* @dev_driver_string(%struct.device* noundef %dev) #9
  %call35 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #8
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %3 = load i64*, i64** %dma_mask, align 8
  %4 = load i64, i64* %3, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %5 = load i64, i64* %bus_dma_limit, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call34, i8* noundef %call35, i64* noundef nonnull %dma_addr, i64 noundef %size, i64 noundef %4, i64 noundef %5) #9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/direct.h\22; .popsection; .long 14472b - 14470b; .short 99; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !15
  br label %cleanup

if.end58:                                         ; preds = %if.end
  %call59 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #8
  %and = and i64 %attrs, 32
  %tobool60.not = icmp ne i64 %and, 0
  %6 = or i1 %tobool60.not, %call59
  br i1 %6, label %cleanup, label %if.then61

if.then61:                                        ; preds = %if.end58
  call void @arch_sync_dma_for_device(i64 noundef %add, i64 noundef %size, i32 noundef %dir) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then61, %if.end10, %if.then23, %if.then8, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %call9, %if.then8 ], [ -1, %if.then23 ], [ -1, %if.end10 ], [ %call, %if.then61 ], [ %call, %if.end58 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_unmap_page_attrs(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 170; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !16
  unreachable

do.end10:                                         ; preds = %entry
  call fastcc void @dma_direct_unmap_page(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_direct_unmap_page(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %addr) #8
  %and = and i64 %attrs, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @dma_direct_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call fastcc i1 @is_swiotlb_buffer(%struct.device* noundef %dev, i64 noundef %call) #8
  br i1 %call1, label %if.then4, label %if.end5, !prof !11

if.then4:                                         ; preds = %if.end
  call void @swiotlb_tbl_unmap_single(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_map_sg_attrs(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nents, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__dma_map_sg_attrs(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nents, i32 noundef %dir, i64 noundef %attrs) #8
  %0 = icmp sgt i32 %call, 0
  %.call = select i1 %0, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__dma_map_sg_attrs(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nents, i32 noundef %dir, i64 noundef %attrs) unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 186; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !17
  unreachable

do.end10:                                         ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %tobool11.not = icmp eq i64* %0, null
  br i1 %tobool11.not, label %if.then26, label %if.end37, !prof !11

if.then26:                                        ; preds = %do.end10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 188; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !18
  br label %cleanup

if.end37:                                         ; preds = %do.end10
  %call41 = call i32 @dma_direct_map_sg(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nents, i32 noundef %dir, i64 noundef %attrs) #9
  %cmp = icmp sgt i32 %call41, 0
  br i1 %cmp, label %cleanup, label %if.else46

if.else46:                                        ; preds = %if.end37
  switch i32 %call41, label %land.rhs [
    i32 -12, label %cleanup
    i32 -22, label %cleanup
    i32 -5, label %cleanup
  ]

land.rhs:                                         ; preds = %if.else46
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 200; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !19
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.else46, %if.else46, %if.else46, %land.rhs, %if.then26
  %retval.0 = phi i32 [ 0, %if.then26 ], [ -5, %land.rhs ], [ %call41, %if.else46 ], [ %call41, %if.else46 ], [ %call41, %if.else46 ], [ %call41, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_map_sgtable(%struct.device* noundef %dev, %struct.sg_table* nocapture noundef %sgt, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %sgt, i64 0, i32 0
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %sgt, i64 0, i32 2
  %1 = load i32, i32* %orig_nents, align 4
  %call = call fastcc i32 @__dma_map_sg_attrs(%struct.device* noundef %dev, %struct.scatterlist* noundef %0, i32 noundef %1, i32 noundef %dir, i64 noundef %attrs) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nents1 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %sgt, i64 0, i32 1
  store i32 %call, i32* %nents1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_unmap_sg_attrs(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nents, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 278; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !20
  unreachable

do.end10:                                         ; preds = %entry
  call void @dma_direct_unmap_sg(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nents, i32 noundef %dir, i64 noundef %attrs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_direct_unmap_sg(%struct.device* noundef, %struct.scatterlist* noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @dma_map_resource(%struct.device* noundef %dev, i64 noundef %phys_addr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 294; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !21
  unreachable

do.end10:                                         ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %tobool11.not = icmp eq i64* %0, null
  br i1 %tobool11.not, label %if.then26, label %if.end37, !prof !11

if.then26:                                        ; preds = %do.end10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 296; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !22
  br label %cleanup

if.end37:                                         ; preds = %do.end10
  %shr = lshr i64 %phys_addr, 12
  %call39 = call i32 @pfn_valid(i64 noundef %shr) #9
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end65, label %if.then53, !prof !7

if.then53:                                        ; preds = %if.end37
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 300; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !23
  br label %cleanup

if.end65:                                         ; preds = %if.end37
  %call68 = call i64 @dma_direct_map_resource(%struct.device* noundef %dev, i64 noundef %phys_addr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.then26, %if.end65
  %retval.0 = phi i64 [ %call68, %if.end65 ], [ -1, %if.then26 ], [ -1, %if.then53 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_direct_map_resource(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_unmap_resource(%struct.device* nocapture noundef readnone %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 318; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !24
  unreachable

do.end10:                                         ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 330; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !25
  unreachable

do.end10:                                         ; preds = %entry
  call fastcc void @dma_direct_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_direct_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %addr) #8
  %call1 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #8
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @arch_sync_dma_for_cpu(i64 noundef %call, i64 noundef %size, i32 noundef %dir) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call fastcc i1 @is_swiotlb_buffer(%struct.device* noundef %dev, i64 noundef %call) #8
  br i1 %call2, label %if.then4, label %if.end8, !prof !11

if.then4:                                         ; preds = %if.end
  call void @swiotlb_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %size, i32 noundef %dir) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_sync_single_for_device(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 344; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !26
  unreachable

do.end10:                                         ; preds = %entry
  call fastcc void @dma_direct_sync_single_for_device(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_direct_sync_single_for_device(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %addr) #8
  %call1 = call fastcc i1 @is_swiotlb_buffer(%struct.device* noundef %dev, i64 noundef %call) #8
  br i1 %call1, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void @swiotlb_sync_single_for_device(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %size, i32 noundef %dir) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #8
  br i1 %call3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @arch_sync_dma_for_device(i64 noundef %call, i64 noundef %size, i32 noundef %dir) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_sync_sg_for_cpu(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nelems, i32 noundef %dir) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 358; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !27
  unreachable

do.end10:                                         ; preds = %entry
  call void @dma_direct_sync_sg_for_cpu(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nelems, i32 noundef %dir) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_direct_sync_sg_for_cpu(%struct.device* noundef, %struct.scatterlist* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_sync_sg_for_device(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nelems, i32 noundef %dir) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @valid_dma_direction(i32 noundef %dir) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 372; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !28
  unreachable

do.end10:                                         ; preds = %entry
  call void @dma_direct_sync_sg_for_device(%struct.device* noundef %dev, %struct.scatterlist* noundef %sg, i32 noundef %nelems, i32 noundef %dir) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_direct_sync_sg_for_device(%struct.device* noundef, %struct.scatterlist* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_get_sgtable_attrs(%struct.device* noundef %dev, %struct.sg_table* noundef %sgt, i8* noundef %cpu_addr, i64 noundef %dma_addr, i64 noundef %size, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call2 = call i32 @dma_direct_get_sgtable(%struct.device* noundef %dev, %struct.sg_table* noundef %sgt, i8* noundef %cpu_addr, i64 noundef %dma_addr, i64 noundef %size, i64 noundef %attrs) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_direct_get_sgtable(%struct.device* noundef, %struct.sg_table* noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @dma_pgprot(%struct.device* nocapture noundef readonly %dev, i64 %prot.coerce, i64 noundef %attrs) local_unnamed_addr #4 {
entry:
  %call1 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #8
  %and = and i64 %prot.coerce, -27021597764223005
  %or = or i64 %and, 27021597764222984
  %retval.sroa.0.0 = select i1 %call1, i64 %prot.coerce, i64 %or
  ret i64 %retval.sroa.0.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dev_is_dma_coherent(%struct.device* nocapture noundef readonly %dev) unnamed_addr #4 {
entry:
  %dma_coherent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %dma_coherent, align 4
  %0 = and i8 %bf.load, 32
  %bf.cast = icmp ne i8 %0, 0
  ret i1 %bf.cast
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @dma_can_mmap(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call2 = call i1 @dma_direct_can_mmap(%struct.device* noundef %dev) #9
  ret i1 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dma_direct_can_mmap(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_mmap_attrs(%struct.device* noundef %dev, %struct.vm_area_struct* noundef %vma, i8* noundef %cpu_addr, i64 noundef %dma_addr, i64 noundef %size, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %call2 = call i32 @dma_direct_mmap(%struct.device* noundef %dev, %struct.vm_area_struct* noundef %vma, i8* noundef %cpu_addr, i64 noundef %dma_addr, i64 noundef %size, i64 noundef %attrs) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_direct_mmap(%struct.device* noundef, %struct.vm_area_struct* noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @dma_get_required_mask(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call2 = call i64 @dma_direct_get_required_mask(%struct.device* noundef %dev) #9
  ret i64 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_direct_get_required_mask(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_alloc_from_dev_coherent(%struct.device* noundef, i64 noundef, i64* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dma_direct_alloc(%struct.device* noundef, i64 noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_free_attrs(%struct.device* noundef %dev, i64 noundef %size, i8* noundef %cpu_addr, i64 noundef %dma_handle, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %dec.i = add i64 %size, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #7, !range !29
  %1 = trunc i64 %0 to i32
  %conv.i.i = sub nuw nsw i32 64, %1
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %call2 = call i32 @dma_release_from_dev_coherent(%struct.device* noundef %dev, i32 noundef %retval.0.i.i, i8* noundef %cpu_addr) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i64 @arch_local_save_flags() #8
  %call11 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call3) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end22, label %if.then21, !prof !7

if.then21:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 532; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !30
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end
  %tobool31.not = icmp eq i8* %cpu_addr, null
  br i1 %tobool31.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end22
  call void @dma_direct_free(%struct.device* noundef %dev, i64 noundef %size, i8* noundef nonnull %cpu_addr, i64 noundef %dma_handle, i64 noundef %attrs) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry, %if.end33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_release_from_dev_coherent(%struct.device* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #7, !srcloc !31
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #7, !srcloc !32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_direct_free(%struct.device* noundef, i64 noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @dma_alloc_pages(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %dir, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.page* @__dma_alloc_pages(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %dir, i32 noundef %gfp) #8
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__dma_alloc_pages(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %dir, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  %0 = load i64, i64* %coherent_dma_mask, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 550; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !33
  br label %cleanup

if.end18:                                         ; preds = %entry
  %and = and i32 %gfp, 7
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end45, label %if.then33, !prof !7

if.then33:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 552; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !34
  br label %cleanup

if.end45:                                         ; preds = %if.end18
  %add = add i64 %size, 4095
  %and46 = and i64 %add, -4096
  %call49 = call %struct.page* @dma_direct_alloc_pages(%struct.device* noundef %dev, i64 noundef %and46, i64* noundef %dma_handle, i32 noundef %dir, i32 noundef %gfp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.then, %if.end45
  %retval.0 = phi %struct.page* [ %call49, %if.end45 ], [ null, %if.then ], [ null, %if.then33 ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_free_pages(%struct.device* noundef %dev, i64 noundef %size, %struct.page* noundef %page, i64 noundef %dma_handle, i32 noundef %dir) local_unnamed_addr #0 {
entry:
  call fastcc void @__dma_free_pages(%struct.device* noundef %dev, i64 noundef %size, %struct.page* noundef %page, i64 noundef %dma_handle, i32 noundef %dir) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dma_free_pages(%struct.device* noundef %dev, i64 noundef %size, %struct.page* noundef %page, i64 noundef %dma_handle, i32 noundef %dir) unnamed_addr #0 {
entry:
  %add = add i64 %size, 4095
  %and = and i64 %add, -4096
  call void @dma_direct_free_pages(%struct.device* noundef %dev, i64 noundef %and, %struct.page* noundef %page, i64 noundef %dma_handle, i32 noundef %dir) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_mmap_pages(%struct.device* nocapture readnone %dev, %struct.vm_area_struct* noundef %vma, i64 noundef %size, %struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %add = add i64 %size, 4095
  %shr = lshr i64 %add, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %0 = load i64, i64* %vm_pgoff, align 8
  %cmp.not = icmp ugt i64 %shr, %0
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %vma) #8
  %sub = sub i64 %shr, %0
  %cmp2 = icmp ugt i64 %call, %sub
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %2 = load i64, i64* @memstart_addr, align 8
  %shr3 = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr3
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %add5 = add i64 %sub.ptr.div, %0
  %shl = shl i64 %call, 12
  %coerce.dive = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %3 = load i64, i64* %coerce.dive, align 8
  %call7 = call i32 @remap_pfn_range(%struct.vm_area_struct* noundef %vma, i64 noundef %1, i64 noundef %add5, i64 noundef %shl, i64 %3) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call7, %if.end ], [ -6, %lor.lhs.false ], [ -6, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #4 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i64 noundef, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.sg_table* @dma_alloc_noncontiguous(%struct.device* noundef %dev, i64 noundef %size, i32 noundef %dir, i32 noundef %gfp, i64 noundef %attrs) local_unnamed_addr #0 {
entry:
  %and = and i64 %attrs, -129
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/mapping.c\22; .popsection; .long 14472b - 14470b; .short 637; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !35
  br label %cleanup

if.else:                                          ; preds = %entry
  %call23 = call fastcc %struct.sg_table* @alloc_single_sgt(%struct.device* noundef %dev, i64 noundef %size, i32 noundef %dir, i32 noundef %gfp) #8
  %tobool25.not = icmp eq %struct.sg_table* %call23, null
  br i1 %tobool25.not, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.else
  %nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %call23, i64 0, i32 1
  store i32 1, i32* %nents, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.else, %if.then26
  %retval.0 = phi %struct.sg_table* [ null, %if.then ], [ %call23, %if.then26 ], [ null, %if.else ]
  ret %struct.sg_table* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sg_table* @alloc_single_sgt(%struct.device* noundef %dev, i64 noundef %size, i32 noundef %dir, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %and.i.i = and i32 %gfp, 17
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %kmalloc.exit, label %if.end.i.i, !prof !7

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %gfp, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %entry, %if.end.i.i
  %retval.0.i.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i.i ]
  %arrayidx7.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i.i, i64 7
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %gfp) #9
  %1 = bitcast i8* %call.i.i to %struct.sg_table*
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %kmalloc.exit
  %call1 = call i32 @sg_alloc_table(%struct.sg_table* noundef nonnull %1, i32 noundef 1, i32 noundef %gfp) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out_free_sgt

if.end4:                                          ; preds = %if.end
  %sgl = bitcast i8* %call.i.i to %struct.scatterlist**
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %2, i64 0, i32 3
  %call5 = call fastcc %struct.page* @__dma_alloc_pages(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_address, i32 noundef %dir, i32 noundef %gfp) #8
  %tobool6.not = icmp eq %struct.page* %call5, null
  br i1 %tobool6.not, label %out_free_table, label %if.end8

if.end8:                                          ; preds = %if.end4
  %3 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8
  %4 = trunc i64 %size to i32
  %5 = add i32 %4, 4095
  %conv = and i32 %5, -4096
  call fastcc void @sg_set_page(%struct.scatterlist* noundef %3, %struct.page* noundef nonnull %call5, i32 noundef %conv) #8
  %6 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i64 0, i32 2
  %7 = load i32, i32* %length, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i64 0, i32 4
  store i32 %7, i32* %dma_length, align 8
  br label %cleanup

out_free_table:                                   ; preds = %if.end4
  call void @sg_free_table(%struct.sg_table* noundef nonnull %1) #9
  br label %out_free_sgt

out_free_sgt:                                     ; preds = %if.end, %out_free_table
  call void @kfree(i8* noundef nonnull %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %kmalloc.exit, %out_free_sgt, %if.end8
  %retval.0 = phi %struct.sg_table* [ null, %out_free_sgt ], [ %1, %if.end8 ], [ null, %kmalloc.exit ]
  ret %struct.sg_table* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_free_noncontiguous(%struct.device* noundef %dev, i64 noundef %size, %struct.sg_table* noundef %sgt, i32 noundef %dir) local_unnamed_addr #0 {
entry:
  call fastcc void @free_single_sgt(%struct.device* noundef %dev, i64 noundef %size, %struct.sg_table* noundef %sgt, i32 noundef %dir) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_single_sgt(%struct.device* noundef %dev, i64 noundef %size, %struct.sg_table* noundef %sgt, i32 noundef %dir) unnamed_addr #0 {
entry:
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %sgt, i64 0, i32 0
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8
  %call = call fastcc %struct.page* @sg_page(%struct.scatterlist* noundef %0) #8
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i64 0, i32 3
  %1 = load i64, i64* %dma_address, align 8
  call fastcc void @__dma_free_pages(%struct.device* noundef %dev, i64 noundef %size, %struct.page* noundef %call, i64 noundef %1, i32 noundef %dir) #8
  call void @sg_free_table(%struct.sg_table* noundef %sgt) #9
  %2 = bitcast %struct.sg_table* %sgt to i8*
  call void @kfree(i8* noundef %2) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @dma_vmap_noncontiguous(%struct.device* nocapture noundef readnone %dev, i64 noundef %size, %struct.sg_table* nocapture noundef readonly %sgt) local_unnamed_addr #4 {
entry:
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %sgt, i64 0, i32 0
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8
  %call9 = call fastcc %struct.page* @sg_page(%struct.scatterlist* noundef %0) #8
  %1 = ptrtoint %struct.page* %call9 to i64
  %sub.i = shl i64 %1, 6
  %add.i = and i64 %sub.i, -4096
  %2 = inttoptr i64 %add.i to i8*
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.page* @sg_page(%struct.scatterlist* nocapture noundef readonly %sg) unnamed_addr #4 {
entry:
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %and = and i64 %0, -4
  %1 = inttoptr i64 %and to %struct.page*
  ret %struct.page* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @dma_vunmap_noncontiguous(%struct.device* nocapture noundef %dev, i8* nocapture noundef %vaddr) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_mmap_noncontiguous(%struct.device* nocapture noundef readnone %dev, %struct.vm_area_struct* noundef %vma, i64 noundef %size, %struct.sg_table* nocapture noundef readonly %sgt) local_unnamed_addr #0 {
entry:
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %sgt, i64 0, i32 0
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8
  %call8 = call fastcc %struct.page* @sg_page(%struct.scatterlist* noundef %0) #8
  %call9 = call i32 @dma_mmap_pages(%struct.device* undef, %struct.vm_area_struct* noundef %vma, i64 noundef %size, %struct.page* noundef %call8) #8
  ret i32 %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_supported(%struct.device* noundef %dev, i64 noundef %mask) local_unnamed_addr #0 {
entry:
  %call1 = call i32 @dma_direct_supported(%struct.device* noundef %dev, i64 noundef %mask) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_direct_supported(%struct.device* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_set_mask(%struct.device* noundef %dev, i64 noundef %mask) local_unnamed_addr #0 {
entry:
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %tobool.not = icmp eq i64* %0, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @dma_supported(%struct.device* noundef %dev, i64 noundef %mask) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %do.end

do.end:                                           ; preds = %lor.lhs.false
  %1 = load i64*, i64** %dma_mask, align 8
  store i64 %mask, i64* %1, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -5, %lor.lhs.false ], [ -5, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_set_coherent_mask(%struct.device* noundef %dev, i64 noundef %mask) local_unnamed_addr #0 {
entry:
  %call = call i32 @dma_supported(%struct.device* noundef %dev, i64 noundef %mask) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  store i64 %mask, i64* %coherent_dma_mask, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @dma_max_mapping_size(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call2 = call i64 @dma_direct_max_mapping_size(%struct.device* noundef %dev) #9
  ret i64 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_direct_max_mapping_size(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @dma_need_sync(%struct.device* noundef %dev, i64 noundef %dma_addr) local_unnamed_addr #0 {
entry:
  %call2 = call i1 @dma_direct_need_sync(%struct.device* noundef %dev, i64 noundef %dma_addr) #9
  ret i1 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dma_direct_need_sync(%struct.device* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @dma_get_merge_boundary(%struct.device* nocapture noundef readnone %dev) local_unnamed_addr #3 {
entry:
  ret i64 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @phys_to_dma(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @phys_to_dma_unencrypted(%struct.device* noundef %dev, i64 noundef %paddr) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_swiotlb_force_bounce(%struct.device* nocapture noundef readonly %dev) unnamed_addr #4 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %tobool.not = icmp eq %struct.io_tlb_mem* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %force_bounce = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 8
  %1 = load i8, i8* %force_bounce, align 1, !range !36
  %tobool1 = icmp ne i8 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @swiotlb_map(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dma_capable(%struct.device* nocapture noundef readonly %dev, i64 noundef %addr, i64 noundef %size) unnamed_addr #4 {
entry:
  %add = add i64 %addr, -1
  %sub = add i64 %add, %size
  %cmp = icmp eq i64 %addr, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %1 = load i64, i64* %0, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %2 = load i64, i64* %bus_dma_limit, align 8
  %cmp7 = icmp eq i64 %1, 0
  br i1 %cmp7, label %cond.end21, label %cond.false9

cond.false9:                                      ; preds = %if.end
  %cmp10 = icmp eq i64 %2, 0
  br i1 %cmp10, label %cond.end21, label %cond.false12

cond.false12:                                     ; preds = %cond.false9
  %cmp14 = icmp ult i64 %1, %2
  %cond18 = select i1 %cmp14, i64 %1, i64 %2
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false9, %if.end, %cond.false12
  %cond22 = phi i64 [ %cond18, %cond.false12 ], [ %2, %if.end ], [ %1, %cond.false9 ]
  %cmp23 = icmp ule i64 %sub, %cond22
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end21
  %retval.0 = phi i1 [ %cmp23, %cond.end21 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dev_driver_string(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #4 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_sync_dma_for_device(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @phys_to_dma_unencrypted(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #5 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %tobool.not = icmp eq %struct.bus_dma_region* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @translate_phys_to_dma(%struct.device* noundef %dev, i64 noundef %paddr) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ %paddr, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @translate_phys_to_dma(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #5 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %size15 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %0, i64 0, i32 2
  %1 = load i64, i64* %size15, align 8
  %tobool.not16 = icmp eq i64 %1, 0
  br i1 %tobool.not16, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i64 [ %5, %for.inc ], [ %1, %entry ]
  %m.017 = phi %struct.bus_dma_region* [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %cpu_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 0, i32 0
  %3 = load i64, i64* %cpu_start, align 8
  %cmp.not = icmp ule i64 %3, %paddr
  %sub = sub i64 %paddr, %3
  %cmp3 = icmp ult i64 %sub, %2
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 0, i32 3
  %4 = load i64, i64* %offset, align 8
  %sub4 = sub i64 %paddr, %4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 1
  %size = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 1, i32 2
  %5 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i64 [ %sub4, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #4 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @dma_to_phys(%struct.device* nocapture noundef readonly %dev, i64 noundef %dma_addr) unnamed_addr #5 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %tobool.not = icmp eq %struct.bus_dma_region* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @translate_dma_to_phys(%struct.device* noundef %dev, i64 noundef %dma_addr) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %paddr.0 = phi i64 [ %call, %if.then ], [ %dma_addr, %entry ]
  ret i64 %paddr.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_swiotlb_buffer(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #4 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %tobool.not = icmp eq %struct.io_tlb_mem* %0, null
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %start = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %cmp.not = icmp ugt i64 %1, %paddr
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %end = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 1
  %2 = load i64, i64* %end, align 8
  %cmp1 = icmp ugt i64 %2, %paddr
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @swiotlb_tbl_unmap_single(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @translate_dma_to_phys(%struct.device* nocapture noundef readonly %dev, i64 noundef %dma_addr) unnamed_addr #5 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %size14 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %0, i64 0, i32 2
  %1 = load i64, i64* %size14, align 8
  %tobool.not15 = icmp eq i64 %1, 0
  br i1 %tobool.not15, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i64 [ %5, %for.inc ], [ %1, %entry ]
  %m.016 = phi %struct.bus_dma_region* [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %dma_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.016, i64 0, i32 1
  %3 = load i64, i64* %dma_start, align 8
  %cmp.not = icmp ule i64 %3, %dma_addr
  %sub = sub i64 %dma_addr, %3
  %cmp3 = icmp ult i64 %sub, %2
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.016, i64 0, i32 3
  %4 = load i64, i64* %offset, align 8
  %add = add i64 %4, %dma_addr
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.016, i64 1
  %size = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.016, i64 1, i32 2
  %5 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i64 [ %add, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_direct_map_sg(%struct.device* noundef, %struct.scatterlist* noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_sync_dma_for_cpu(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @swiotlb_sync_single_for_cpu(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @swiotlb_sync_single_for_device(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @dma_direct_alloc_pages(%struct.device* noundef, i64 noundef, i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_direct_free_pages(%struct.device* noundef, i64 noundef, %struct.page* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(%struct.sg_table* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_set_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page, i32 noundef %len) unnamed_addr #0 {
entry:
  call fastcc void @sg_assign_page(%struct.scatterlist* noundef %sg, %struct.page* noundef %page) #8
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 1
  store i32 0, i32* %offset1, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 2
  store i32 %len, i32* %length, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(%struct.sg_table* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_assign_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = ptrtoint %struct.page* %page to i64
  %and2 = and i64 %0, 3
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !7

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/scatterlist.h\22; .popsection; .long 14472b - 14470b; .short 95; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !37
  unreachable

do.end10:                                         ; preds = %entry
  %1 = load i64, i64* %page_link1, align 8
  %and = and i64 %1, 3
  %or = or i64 %and, %0
  store i64 %or, i64* %page_link1, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2153793643}
!9 = !{i64 2153792004}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153824911}
!13 = !{i64 2153795716}
!14 = !{i64 2153797403}
!15 = !{i64 2153790023}
!16 = !{i64 2153798915}
!17 = !{i64 2153800418}
!18 = !{i64 2153806166}
!19 = !{i64 2153807903}
!20 = !{i64 2153809485}
!21 = !{i64 2153811001}
!22 = !{i64 2153812688}
!23 = !{i64 2153814500}
!24 = !{i64 2153816000}
!25 = !{i64 2153817491}
!26 = !{i64 2153818992}
!27 = !{i64 2153820499}
!28 = !{i64 2153821992}
!29 = !{i64 0, i64 65}
!30 = !{i64 2153827618}
!31 = !{i64 2149130698, i64 2149130745, i64 2149130751, i64 2149130788, i64 2149130806, i64 2149132117, i64 2149132165, i64 2149132213, i64 2149132276, i64 2149132325, i64 2149130884, i64 2149130909, i64 2149130935, i64 2149130941, i64 2149131783, i64 2149131823, i64 2149131841, i64 2149131873, i64 2149131901, i64 2149131955, i64 2149131975, i64 2149132072, i64 2149130964, i64 2149130978, i64 2149130984, i64 2149131034, i64 2149131080, i64 2149131113}
!32 = !{i64 2149132877, i64 2149132924, i64 2149132930, i64 2149132967, i64 2149132985, i64 2149133928, i64 2149133976, i64 2149134024, i64 2149134087, i64 2149134136, i64 2149133063, i64 2149133088, i64 2149133114, i64 2149133120, i64 2149133157, i64 2149133163, i64 2149133213, i64 2149133259, i64 2149133292}
!33 = !{i64 2153833447}
!34 = !{i64 2153835324}
!35 = !{i64 2153839878}
!36 = !{i8 0, i8 2}
!37 = !{i64 2153673576}
