; ModuleID = 'block/badblocks.c'
source_filename = "block/badblocks.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kmem_cache = type opaque
%struct.badblocks = type { %struct.device*, i32, i32, i32, i64*, i32, %struct.seqlock_t, i64, i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.irq_domain = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.49, %struct.list_head, %struct.list_head, %union.anon.50 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.18, i8* }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.17, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.51 }
%union.anon.51 = type { %struct.wait_page_queue* }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.47, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.46, i32, [12 x i8] }
%union.anon.46 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.48, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.48 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.vm_operations_struct = type opaque
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.22, i32 }
%union.anon.22 = type { %struct.kuid_t }
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
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }

@.str = private unnamed_addr constant [9 x i8] c"%llu %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%llu %d%c\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @badblocks_check(%struct.badblocks* noundef %bb, i64 noundef %s, i32 noundef %sectors, i64* nocapture noundef writeonly %first_bad, i32* nocapture noundef writeonly %bad_sectors) local_unnamed_addr #0 {
entry:
  %page = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  %0 = load i64*, i64** %page, align 8
  %conv = sext i32 %sectors to i64
  %add = add i64 %conv, %s
  %shift = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 3
  %1 = load i32, i32* %shift, align 8
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %s, %sh_prom
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %conv4 = sext i32 %sub to i64
  %add5 = add i64 %add, %conv4
  %shr8 = lshr i64 %add5, %sh_prom
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %target.0 = phi i64 [ %shr8, %if.then ], [ %add, %entry ]
  %s.addr.0 = phi i64 [ %shr, %if.then ], [ %s, %entry ]
  %lock = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 6
  %count = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 1
  br label %retry

retry:                                            ; preds = %if.end64, %if.end
  %call = call fastcc i32 @read_seqbegin(%struct.seqlock_t* noundef %lock) #6
  %2 = load i32, i32* %count, align 8
  %cmp12117 = icmp sgt i32 %2, 1
  br i1 %cmp12117, label %while.body, label %while.end

while.body:                                       ; preds = %retry, %while.body
  %lo.0119 = phi i32 [ %div.lo.0, %while.body ], [ 0, %retry ]
  %hi.0118 = phi i32 [ %hi.0.div, %while.body ], [ %2, %retry ]
  %add14 = add i32 %lo.0119, %hi.0118
  %div = sdiv i32 %add14, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr i64, i64* %0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %and = lshr i64 %3, 9
  %shr15 = and i64 %and, 18014398509481983
  %cmp16 = icmp ult i64 %shr15, %target.0
  %hi.0.div = select i1 %cmp16, i32 %hi.0118, i32 %div
  %div.lo.0 = select i1 %cmp16, i32 %div, i32 %lo.0119
  %sub11 = sub i32 %hi.0.div, %div.lo.0
  %cmp12 = icmp sgt i32 %sub11, 1
  br i1 %cmp12, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %retry
  %hi.0.lcssa = phi i32 [ %2, %retry ], [ %hi.0.div, %while.body ]
  %lo.0.lcssa = phi i32 [ 0, %retry ], [ %div.lo.0, %while.body ]
  %cmp20 = icmp sgt i32 %hi.0.lcssa, %lo.0.lcssa
  %cmp24 = icmp sgt i32 %lo.0.lcssa, -1
  %or.cond = and i1 %cmp20, %cmp24
  br i1 %or.cond, label %land.rhs, label %if.end64

land.rhs:                                         ; preds = %while.end, %if.end62
  %lo.2 = phi i32 [ %dec, %if.end62 ], [ %lo.0.lcssa, %while.end ]
  %rv.0 = phi i32 [ %rv.2, %if.end62 ], [ 0, %while.end ]
  %idxprom26115 = zext i32 %lo.2 to i64
  %arrayidx27 = getelementptr i64, i64* %0, i64 %idxprom26115
  %4 = load i64, i64* %arrayidx27, align 8
  %and28 = lshr i64 %4, 9
  %shr29 = and i64 %and28, 18014398509481983
  %and32 = and i64 %4, 511
  %add33 = add nuw nsw i64 %and32, 1
  %add34 = add nuw nsw i64 %add33, %shr29
  %cmp35 = icmp ugt i64 %add34, %s.addr.0
  br i1 %cmp35, label %while.body37, label %if.end64

while.body37:                                     ; preds = %land.rhs
  %cmp42 = icmp ult i64 %shr29, %target.0
  br i1 %cmp42, label %if.then44, label %if.end62

if.then44:                                        ; preds = %while.body37
  %cmp45.not = icmp eq i32 %rv.0, -1
  %tobool.not = icmp sgt i64 %4, -1
  %or.cond114 = select i1 %cmp45.not, i1 true, i1 %tobool.not
  %rv.1 = select i1 %or.cond114, i32 -1, i32 1
  store i64 %shr29, i64* %first_bad, align 8
  %5 = load i64, i64* %arrayidx27, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 511
  %conv61 = add nuw nsw i32 %7, 1
  store i32 %conv61, i32* %bad_sectors, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then44, %while.body37
  %rv.2 = phi i32 [ %rv.1, %if.then44 ], [ %rv.0, %while.body37 ]
  %dec = add nsw i32 %lo.2, -1
  %cmp24.old = icmp sgt i32 %lo.2, 0
  br i1 %cmp24.old, label %land.rhs, label %if.end64

if.end64:                                         ; preds = %land.rhs, %if.end62, %while.end
  %rv.3 = phi i32 [ 0, %while.end ], [ %rv.0, %land.rhs ], [ %rv.2, %if.end62 ]
  %call66 = call fastcc i32 @read_seqretry(%struct.seqlock_t* noundef %lock, i32 noundef %call) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %retry

if.end69:                                         ; preds = %if.end64
  ret i32 %rv.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqbegin(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %sequence.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %sequence.i, align 4
  %and6 = and i32 %0, 1
  %tobool.not7 = icmp eq i32 %and6, 0
  br i1 %tobool.not7, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #6
  %1 = load volatile i32, i32* %sequence.i, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #7, !srcloc !7
  ret i32 %.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqretry(%struct.seqlock_t* noundef %sl, i32 noundef %start) unnamed_addr #0 {
entry:
  %seqcount.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0
  %call1 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %start) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @badblocks_set(%struct.badblocks* noundef %bb, i64 noundef %s, i32 noundef %sectors, i32 noundef %acknowledged) local_unnamed_addr #0 {
entry:
  %shift = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 3
  %0 = load i32, i32* %shift, align 8
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.end
  %conv = sext i32 %sectors to i64
  %add = add i64 %conv, %s
  %sh_prom = zext i32 %0 to i64
  %shr = lshr i64 %s, %sh_prom
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %conv5 = sext i32 %sub to i64
  %add6 = add i64 %add, %conv5
  %shr9 = lshr i64 %add6, %sh_prom
  %sub10 = sub nsw i64 %shr9, %shr
  %conv11 = trunc i64 %sub10 to i32
  br label %do.body

do.body:                                          ; preds = %if.end, %if.then2
  %sectors.addr.0 = phi i32 [ %conv11, %if.then2 ], [ %sectors, %if.end ]
  %s.addr.0 = phi i64 [ %shr, %if.then2 ], [ %s, %if.end ]
  %lock = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 6
  %call = call fastcc i64 @__write_seqlock_irqsave(%struct.seqlock_t* noundef %lock) #6
  %page = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  %1 = load i64*, i64** %page, align 8
  %count = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 1
  %2 = load i32, i32* %count, align 8
  %cmp14519 = icmp sgt i32 %2, 1
  br i1 %cmp14519, label %while.body, label %while.end

while.body:                                       ; preds = %do.body, %while.body
  %lo.0521 = phi i32 [ %lo.0.div, %while.body ], [ 0, %do.body ]
  %hi.0520 = phi i32 [ %div.hi.0, %while.body ], [ %2, %do.body ]
  %add16 = add i32 %lo.0521, %hi.0520
  %div = sdiv i32 %add16, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr i64, i64* %1, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %and = lshr i64 %3, 9
  %shr17 = and i64 %and, 18014398509481983
  %cmp18.not = icmp ugt i64 %shr17, %s.addr.0
  %div.hi.0 = select i1 %cmp18.not, i32 %div, i32 %hi.0520
  %lo.0.div = select i1 %cmp18.not, i32 %lo.0521, i32 %div
  %sub13 = sub i32 %div.hi.0, %lo.0.div
  %cmp14 = icmp sgt i32 %sub13, 1
  br i1 %cmp14, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %do.body
  %hi.0.lcssa = phi i32 [ %2, %do.body ], [ %div.hi.0, %while.body ]
  %lo.0.lcssa = phi i32 [ 0, %do.body ], [ %lo.0.div, %while.body ]
  %cmp22 = icmp sgt i32 %hi.0.lcssa, %lo.0.lcssa
  br i1 %cmp22, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %while.end
  %idxprom24 = sext i32 %lo.0.lcssa to i64
  %arrayidx25 = getelementptr i64, i64* %1, i64 %idxprom24
  %4 = load i64, i64* %arrayidx25, align 8
  %and26 = lshr i64 %4, 9
  %shr27 = and i64 %and26, 18014398509481983
  %cmp28 = icmp ugt i64 %shr27, %s.addr.0
  %spec.select = select i1 %cmp28, i32 %lo.0.lcssa, i32 %hi.0.lcssa
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true, %while.end
  %hi.2 = phi i32 [ %hi.0.lcssa, %while.end ], [ %spec.select, %land.lhs.true ]
  %cmp32 = icmp sgt i32 %hi.2, %lo.0.lcssa
  br i1 %cmp32, label %if.then34, label %if.end116

if.then34:                                        ; preds = %if.end31
  %idxprom36 = sext i32 %lo.0.lcssa to i64
  %arrayidx37 = getelementptr i64, i64* %1, i64 %idxprom36
  %5 = load i64, i64* %arrayidx37, align 8
  %and38 = lshr i64 %5, 9
  %shr39 = and i64 %and38, 18014398509481983
  %and42 = and i64 %5, 511
  %add43 = add nuw nsw i64 %and42, 1
  %add44 = add nuw nsw i64 %add43, %shr39
  %cmp50.not = icmp ult i64 %add44, %s.addr.0
  br i1 %cmp50.not, label %if.end116, label %if.then52

if.then52:                                        ; preds = %if.then34
  %tobool48 = icmp slt i64 %5, 0
  %cmp53 = icmp ne i64 %s.addr.0, %shr39
  %conv56 = sext i32 %sectors.addr.0 to i64
  %add57 = add i64 %s.addr.0, %conv56
  %cmp58.not = icmp ult i64 %add57, %add44
  %or.cond534 = select i1 %cmp53, i1 true, i1 %cmp58.not
  %tobool63 = icmp ne i32 %acknowledged, 0
  %6 = and i1 %tobool63, %tobool48
  %land.ext = zext i1 %6 to i32
  %ack.0 = select i1 %or.cond534, i32 %land.ext, i32 %acknowledged
  %cmp67 = icmp ult i64 %add44, %add57
  %spec.select499 = select i1 %cmp67, i64 %add57, i64 %add44
  %sub73 = sub i64 %spec.select499, %shr39
  %cmp74 = icmp ult i64 %sub73, 513
  br i1 %cmp74, label %if.then76, label %if.else90

if.then76:                                        ; preds = %if.then52
  %shl77 = shl nuw nsw i64 %shr39, 9
  %sub79 = add nsw i64 %sub73, -1
  %or = or i64 %sub79, %shl77
  %tobool80.not = icmp eq i32 %ack.0, 0
  %shl86 = select i1 %tobool80.not, i64 0, i64 -9223372036854775808
  %or87 = or i64 %or, %shl86
  store i64 %or87, i64* %arrayidx37, align 8
  br label %if.end112

if.else90:                                        ; preds = %if.then52
  %cmp95.not = icmp eq i64 %and42, 511
  br i1 %cmp95.not, label %if.end110, label %if.then97

if.then97:                                        ; preds = %if.else90
  %shl98 = shl nuw nsw i64 %shr39, 9
  %tobool100.not = icmp eq i32 %ack.0, 0
  %shl106 = select i1 %tobool100.not, i64 0, i64 -9223372036854775808
  %or99 = or i64 %shl106, %shl98
  %or107 = or i64 %or99, 511
  store i64 %or107, i64* %arrayidx37, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then97, %if.else90
  %add111 = add nuw nsw i64 %shr39, 512
  br label %if.end112

if.end112:                                        ; preds = %if.end110, %if.then76
  %s.addr.1 = phi i64 [ %spec.select499, %if.then76 ], [ %add111, %if.end110 ]
  %sub113 = sub i64 %spec.select499, %s.addr.1
  %conv114 = trunc i64 %sub113 to i32
  br label %if.end116

if.end116:                                        ; preds = %if.then34, %if.end112, %if.end31
  %sectors.addr.2 = phi i32 [ %sectors.addr.0, %if.end31 ], [ %conv114, %if.end112 ], [ %sectors.addr.0, %if.then34 ]
  %s.addr.3 = phi i64 [ %s.addr.0, %if.end31 ], [ %s.addr.1, %if.end112 ], [ %s.addr.0, %if.then34 ]
  %tobool117.not = icmp eq i32 %sectors.addr.2, 0
  br i1 %tobool117.not, label %land.lhs.true201, label %land.lhs.true118

land.lhs.true118:                                 ; preds = %if.end116
  %7 = load i32, i32* %count, align 8
  %cmp120 = icmp slt i32 %hi.2, %7
  br i1 %cmp120, label %if.then122, label %while.body279.lr.ph

if.then122:                                       ; preds = %land.lhs.true118
  %idxprom124 = sext i32 %hi.2 to i64
  %arrayidx125 = getelementptr i64, i64* %1, i64 %idxprom124
  %8 = load i64, i64* %arrayidx125, align 8
  %and126 = lshr i64 %8, 9
  %shr127 = and i64 %and126, 18014398509481983
  %and131 = and i64 %8, 511
  %add132 = add nuw nsw i64 %and131, 1
  %add133 = add nuw nsw i64 %add132, %shr127
  %conv143 = sext i32 %sectors.addr.2 to i64
  %add144 = add i64 %s.addr.3, %conv143
  %cmp145.not = icmp ugt i64 %shr127, %add144
  br i1 %cmp145.not, label %while.body279.lr.ph, label %if.then147

if.then147:                                       ; preds = %if.then122
  %tobool138 = icmp slt i64 %8, 0
  %cmp150.not = icmp ugt i64 %add133, %add144
  %tobool158 = icmp ne i32 %acknowledged, 0
  %9 = and i1 %tobool158, %tobool138
  %land.ext160 = zext i1 %9 to i32
  %e128.0 = select i1 %cmp150.not, i64 %add133, i64 %add144
  %ack134.0 = select i1 %cmp150.not, i32 %land.ext160, i32 %acknowledged
  %sub162 = sub i64 %e128.0, %s.addr.3
  %cmp163 = icmp ult i64 %sub162, 513
  %shl166 = shl i64 %s.addr.3, 9
  br i1 %cmp163, label %if.then165, label %if.else180

if.then165:                                       ; preds = %if.then147
  %sub168 = add nsw i64 %sub162, -1
  %or169 = or i64 %sub168, %shl166
  %tobool170.not = icmp eq i32 %ack134.0, 0
  %shl176 = select i1 %tobool170.not, i64 0, i64 -9223372036854775808
  %or177 = or i64 %or169, %shl176
  store i64 %or177, i64* %arrayidx125, align 8
  br label %if.end198

if.else180:                                       ; preds = %if.then147
  %tobool183.not = icmp eq i32 %ack134.0, 0
  %shl189 = select i1 %tobool183.not, i64 0, i64 -9223372036854775808
  %or182 = or i64 %shl166, %shl189
  %or190 = or i64 %or182, 511
  store i64 %or190, i64* %arrayidx125, align 8
  %add193 = add i64 %s.addr.3, 512
  br label %if.end198

if.end198:                                        ; preds = %if.then165, %if.else180
  %s.addr.4 = phi i64 [ %e128.0, %if.then165 ], [ %add193, %if.else180 ]
  %sub195 = sub i64 %e128.0, %s.addr.4
  %conv196 = trunc i64 %sub195 to i32
  %inc = add nsw i32 %hi.2, 1
  %cmp199 = icmp eq i32 %conv196, 0
  br i1 %cmp199, label %land.lhs.true201, label %while.body279.lr.ph

land.lhs.true201:                                 ; preds = %if.end116, %if.end198
  %s.addr.6518 = phi i64 [ %s.addr.4, %if.end198 ], [ %s.addr.3, %if.end116 ]
  %lo.3516 = phi i32 [ %hi.2, %if.end198 ], [ %lo.0.lcssa, %if.end116 ]
  %hi.4515 = phi i32 [ %inc, %if.end198 ], [ %hi.2, %if.end116 ]
  %10 = load i32, i32* %count, align 8
  %cmp203 = icmp slt i32 %hi.4515, %10
  br i1 %cmp203, label %if.then205, label %while.end320

if.then205:                                       ; preds = %land.lhs.true201
  %idxprom207 = sext i32 %hi.4515 to i64
  %arrayidx208 = getelementptr i64, i64* %1, i64 %idxprom207
  %11 = load i64, i64* %arrayidx208, align 8
  %and209 = lshr i64 %11, 9
  %shr210 = and i64 %and209, 18014398509481983
  %idxprom211 = sext i32 %lo.3516 to i64
  %arrayidx212 = getelementptr i64, i64* %1, i64 %idxprom211
  %12 = load i64, i64* %arrayidx212, align 8
  %13 = and i64 %12, 511
  %14 = and i64 %11, 511
  %sub223.neg = sub i64 %and209, %s.addr.6518
  %conv220 = add nuw nsw i64 %14, 2
  %add221 = add nuw nsw i64 %conv220, %13
  %sub224 = add i64 %add221, %sub223.neg
  %conv225 = trunc i64 %sub224 to i32
  %cmp226 = icmp uge i64 %s.addr.6518, %shr210
  %cmp229 = icmp slt i32 %conv225, 512
  %or.cond = select i1 %cmp226, i1 %cmp229, i1 false
  br i1 %or.cond, label %if.then231, label %while.end320

if.then231:                                       ; preds = %if.then205
  %and240.lobit = and i64 %11, -9223372036854775808
  %tobool236.not.inv = icmp slt i64 %12, 0
  %spec.select500 = select i1 %tobool236.not.inv, i64 %and240.lobit, i64 0
  %shr251 = and i64 %12, 9223372036854775296
  %sub253 = shl i64 %sub224, 32
  %sext = add i64 %sub253, -4294967296
  %conv254 = ashr exact i64 %sext, 32
  %or255 = or i64 %spec.select500, %shr251
  %or263 = or i64 %or255, %conv254
  store i64 %or263, i64* %arrayidx212, align 8
  %15 = bitcast i64* %arrayidx208 to i8*
  %add.ptr268 = getelementptr i64, i64* %arrayidx208, i64 1
  %16 = bitcast i64* %add.ptr268 to i8*
  %17 = load i32, i32* %count, align 8
  %18 = xor i32 %hi.4515, -1
  %sub271 = add i32 %17, %18
  %mul = shl i32 %sub271, 3
  %conv272 = sext i32 %mul to i64
  %call273 = call i8* @memmove(i8* noundef %15, i8* noundef %16, i64 noundef %conv272) #8
  %19 = load i32, i32* %count, align 8
  %dec = add i32 %19, -1
  store i32 %dec, i32* %count, align 8
  br label %while.end320

while.body279.lr.ph:                              ; preds = %if.end198, %land.lhs.true118, %if.then122
  %s.addr.6508 = phi i64 [ %s.addr.4, %if.end198 ], [ %s.addr.3, %land.lhs.true118 ], [ %s.addr.3, %if.then122 ]
  %sectors.addr.4507 = phi i32 [ %conv196, %if.end198 ], [ %sectors.addr.2, %land.lhs.true118 ], [ %sectors.addr.2, %if.then122 ]
  %hi.4506 = phi i32 [ %inc, %if.end198 ], [ %hi.2, %land.lhs.true118 ], [ %hi.2, %if.then122 ]
  %idx.ext286 = sext i32 %hi.4506 to i64
  %add.ptr287 = getelementptr i64, i64* %1, i64 %idx.ext286
  %add.ptr288 = getelementptr i64, i64* %add.ptr287, i64 1
  %20 = bitcast i64* %add.ptr288 to i8*
  %21 = bitcast i64* %add.ptr287 to i8*
  %tobool306.not = icmp eq i32 %acknowledged, 0
  %shl312 = select i1 %tobool306.not, i64 0, i64 -9223372036854775808
  br label %while.body279

while.body279:                                    ; preds = %while.body279.lr.ph, %if.else285
  %s.addr.7525 = phi i64 [ %s.addr.6508, %while.body279.lr.ph ], [ %add318, %if.else285 ]
  %sectors.addr.5524 = phi i32 [ %sectors.addr.4507, %while.body279.lr.ph ], [ %sub316, %if.else285 ]
  %22 = load i32, i32* %count, align 8
  %cmp282 = icmp ugt i32 %22, 511
  br i1 %cmp282, label %while.end320, label %if.else285

if.else285:                                       ; preds = %while.body279
  %sub292 = sub i32 %22, %hi.4506
  %mul293 = shl i32 %sub292, 3
  %conv294 = sext i32 %mul293 to i64
  %call295 = call i8* @memmove(i8* noundef %20, i8* noundef %21, i64 noundef %conv294) #8
  %23 = load i32, i32* %count, align 8
  %inc297 = add i32 %23, 1
  store i32 %inc297, i32* %count, align 8
  %24 = icmp slt i32 %sectors.addr.5524, 512
  %spec.store.select = select i1 %24, i32 %sectors.addr.5524, i32 512
  %shl302 = shl i64 %s.addr.7525, 9
  %sub303 = add i32 %spec.store.select, -1
  %conv304 = sext i32 %sub303 to i64
  %or305 = or i64 %shl302, %shl312
  %or313 = or i64 %or305, %conv304
  store i64 %or313, i64* %add.ptr287, align 8
  %sub316 = sub i32 %sectors.addr.5524, %spec.store.select
  %conv317 = sext i32 %spec.store.select to i64
  %add318 = add i64 %s.addr.7525, %conv317
  %tobool278.not = icmp eq i32 %sub316, 0
  br i1 %tobool278.not, label %while.end320, label %while.body279

while.end320:                                     ; preds = %if.else285, %while.body279, %land.lhs.true201, %if.then231, %if.then205
  %rv.0 = phi i32 [ 0, %if.then205 ], [ 0, %if.then231 ], [ 0, %land.lhs.true201 ], [ 1, %while.body279 ], [ 0, %if.else285 ]
  %changed = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 5
  store i32 1, i32* %changed, align 8
  %tobool321.not = icmp eq i32 %acknowledged, 0
  br i1 %tobool321.not, label %if.then322, label %if.else323

if.then322:                                       ; preds = %while.end320
  %unacked_exist = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 2
  store i32 1, i32* %unacked_exist, align 4
  br label %if.end324

if.else323:                                       ; preds = %while.end320
  call fastcc void @badblocks_update_acked(%struct.badblocks* noundef %bb) #6
  br label %if.end324

if.end324:                                        ; preds = %if.else323, %if.then322
  call fastcc void @write_sequnlock_irqrestore(%struct.seqlock_t* noundef %lock, i64 noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end324
  %retval.0 = phi i32 [ %rv.0, %if.end324 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__write_seqlock_irqsave(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #6
  %seqcount5 = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0
  call fastcc void @do_write_seqcount_begin(%struct.seqcount* noundef %seqcount5) #6
  ret i64 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @badblocks_update_acked(%struct.badblocks* nocapture noundef %bb) unnamed_addr #3 {
entry:
  %page = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  %0 = load i64*, i64** %page, align 8
  %unacked_exist = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 2
  %1 = load i32, i32* %unacked_exist, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 1
  %2 = load i32, i32* %count, align 8
  %cmp17 = icmp sgt i32 %2, 0
  br i1 %cmp17, label %for.body.preheader, label %if.then5

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %2 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then5, label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr i64, i64* %0, i64 %indvars.iv
  %3 = load i64, i64* %arrayidx, align 8
  %tobool1.not = icmp sgt i64 %3, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool1.not, label %cleanup, label %for.cond

if.then5:                                         ; preds = %for.cond, %for.cond.preheader
  store i32 0, i32* %unacked_exist, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.then5, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_sequnlock_irqrestore(%struct.seqlock_t* noundef %sl, i64 noundef %flags) unnamed_addr #0 {
entry:
  %seqcount1 = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0
  call fastcc void @do_write_seqcount_end(%struct.seqcount* noundef %seqcount1) #6
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @badblocks_clear(%struct.badblocks* noundef %bb, i64 noundef %s, i32 noundef %sectors) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %sectors to i64
  %add = add i64 %conv, %s
  %shift = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 3
  %0 = load i32, i32* %shift, align 8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %conv3 = sext i32 %sub to i64
  %add4 = add i64 %conv3, %s
  %sh_prom = zext i32 %0 to i64
  %shr = lshr i64 %add4, %sh_prom
  %shr8 = lshr i64 %add, %sh_prom
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %target.0 = phi i64 [ %shr8, %if.then ], [ %add, %entry ]
  %s.addr.0 = phi i64 [ %shr, %if.then ], [ %s, %entry ]
  %lock = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 6
  call fastcc void @write_seqlock_irq(%struct.seqlock_t* noundef %lock) #6
  %page = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  %1 = load i64*, i64** %page, align 8
  %count = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 1
  %2 = load i32, i32* %count, align 8
  %cmp12303 = icmp sgt i32 %2, 1
  br i1 %cmp12303, label %while.body, label %while.end

while.body:                                       ; preds = %if.end, %while.body
  %hi.0305 = phi i32 [ %hi.0.div, %while.body ], [ %2, %if.end ]
  %lo.0304 = phi i32 [ %div.lo.0, %while.body ], [ 0, %if.end ]
  %add14 = add i32 %hi.0305, %lo.0304
  %div = sdiv i32 %add14, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr i64, i64* %1, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %and = lshr i64 %3, 9
  %shr15 = and i64 %and, 18014398509481983
  %cmp16 = icmp ult i64 %shr15, %target.0
  %div.lo.0 = select i1 %cmp16, i32 %div, i32 %lo.0304
  %hi.0.div = select i1 %cmp16, i32 %hi.0305, i32 %div
  %sub11 = sub i32 %hi.0.div, %div.lo.0
  %cmp12 = icmp sgt i32 %sub11, 1
  br i1 %cmp12, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end
  %lo.0.lcssa = phi i32 [ 0, %if.end ], [ %div.lo.0, %while.body ]
  %hi.0.lcssa = phi i32 [ %2, %if.end ], [ %hi.0.div, %while.body ]
  %cmp20 = icmp sgt i32 %hi.0.lcssa, %lo.0.lcssa
  br i1 %cmp20, label %if.then22, label %if.end183

if.then22:                                        ; preds = %while.end
  %idxprom23 = sext i32 %lo.0.lcssa to i64
  %arrayidx24 = getelementptr i64, i64* %1, i64 %idxprom23
  %4 = load i64, i64* %arrayidx24, align 8
  %and25 = lshr i64 %4, 9
  %shr26 = and i64 %and25, 18014398509481983
  %and29 = and i64 %4, 511
  %add30 = add nuw nsw i64 %and29, 1
  %add31 = add nuw nsw i64 %add30, %shr26
  %cmp32 = icmp ugt i64 %add31, %target.0
  %cmp38 = icmp ult i64 %shr26, %target.0
  %or.cond = and i1 %cmp38, %cmp32
  br i1 %or.cond, label %if.then40, label %if.end102

if.then40:                                        ; preds = %if.then22
  %.lobit292 = and i64 %4, -9223372036854775808
  %cmp55 = icmp ugt i64 %s.addr.0, %shr26
  br i1 %cmp55, label %if.then57, label %cleanup.thread

if.then57:                                        ; preds = %if.then40
  %cmp60 = icmp ugt i32 %2, 511
  br i1 %cmp60, label %out, label %if.end63

if.end63:                                         ; preds = %if.then57
  %add.ptr64 = getelementptr i64, i64* %arrayidx24, i64 1
  %5 = bitcast i64* %add.ptr64 to i8*
  %6 = bitcast i64* %arrayidx24 to i8*
  %sub68 = sub i32 %2, %lo.0.lcssa
  %mul = shl i32 %sub68, 3
  %conv69 = sext i32 %mul to i64
  %call = call i8* @memmove(i8* noundef %5, i8* noundef %6, i64 noundef %conv69) #8
  %7 = load i32, i32* %count, align 8
  %inc = add i32 %7, 1
  store i32 %inc, i32* %count, align 8
  %shl71 = shl nuw nsw i64 %shr26, 9
  %8 = xor i64 %shr26, -1
  %sub73 = add i64 %s.addr.0, %8
  %or = or i64 %sub73, %.lobit292
  %or81 = or i64 %or, %shl71
  store i64 %or81, i64* %arrayidx24, align 8
  %inc84 = add nsw i32 %lo.0.lcssa, 1
  %.pre = sext i32 %inc84 to i64
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then40, %if.end63
  %idxprom98.pre-phi = phi i64 [ %idxprom23, %if.then40 ], [ %.pre, %if.end63 ]
  %lo.2 = phi i32 [ %lo.0.lcssa, %if.then40 ], [ %inc84, %if.end63 ]
  %shl86 = shl i64 %target.0, 9
  %9 = xor i64 %target.0, -1
  %sub88 = add i64 %add31, %9
  %or89 = or i64 %.lobit292, %shl86
  %or97 = or i64 %or89, %sub88
  %arrayidx99 = getelementptr i64, i64* %1, i64 %idxprom98.pre-phi
  store i64 %or97, i64* %arrayidx99, align 8
  %dec = add i32 %lo.2, -1
  br label %if.end102

if.end102:                                        ; preds = %cleanup.thread, %if.then22
  %lo.4 = phi i32 [ %lo.0.lcssa, %if.then22 ], [ %dec, %cleanup.thread ]
  %hi.3 = phi i32 [ %hi.0.lcssa, %if.then22 ], [ %lo.2, %cleanup.thread ]
  %cmp104308 = icmp sgt i32 %lo.4, -1
  br i1 %cmp104308, label %land.lhs.true106, label %while.end163

land.lhs.true106:                                 ; preds = %if.end102, %if.end161
  %lo.5309 = phi i32 [ %dec162, %if.end161 ], [ %lo.4, %if.end102 ]
  %idxprom107300 = zext i32 %lo.5309 to i64
  %arrayidx108 = getelementptr i64, i64* %1, i64 %idxprom107300
  %10 = load i64, i64* %arrayidx108, align 8
  %and109 = lshr i64 %10, 9
  %shr110 = and i64 %and109, 18014398509481983
  %and113 = and i64 %10, 511
  %add114 = add nuw nsw i64 %and113, 1
  %add115 = add nuw nsw i64 %add114, %shr110
  %cmp116 = icmp ugt i64 %add115, %s.addr.0
  %cmp122 = icmp ult i64 %shr110, %target.0
  %or.cond294 = select i1 %cmp116, i1 %cmp122, i1 false
  br i1 %or.cond294, label %while.body124, label %while.end163

while.body124:                                    ; preds = %land.lhs.true106
  %cmp129 = icmp ugt i64 %s.addr.0, %shr110
  br i1 %cmp129, label %if.then131, label %if.end161

if.then131:                                       ; preds = %while.body124
  %idxprom107300.le = zext i32 %lo.5309 to i64
  %arrayidx108.le = getelementptr i64, i64* %1, i64 %idxprom107300.le
  %.lobit = and i64 %10, -9223372036854775808
  %shl145 = shl nuw nsw i64 %shr110, 9
  %11 = xor i64 %shr110, -1
  %sub147 = add i64 %s.addr.0, %11
  %or148 = or i64 %sub147, %.lobit
  %or156 = or i64 %or148, %shl145
  store i64 %or156, i64* %arrayidx108.le, align 8
  br label %while.end163

if.end161:                                        ; preds = %while.body124
  %dec162 = add nsw i32 %lo.5309, -1
  %cmp104 = icmp sgt i32 %lo.5309, 0
  br i1 %cmp104, label %land.lhs.true106, label %while.end163

while.end163:                                     ; preds = %land.lhs.true106, %if.end161, %if.end102, %if.then131
  %lo.5302 = phi i32 [ %lo.5309, %if.then131 ], [ %lo.4, %if.end102 ], [ %lo.5309, %land.lhs.true106 ], [ -1, %if.end161 ]
  %sub164 = sub i32 %hi.3, %lo.5302
  %cmp165 = icmp sgt i32 %sub164, 1
  br i1 %cmp165, label %if.then167, label %if.end183

if.then167:                                       ; preds = %while.end163
  %idx.ext168 = sext i32 %lo.5302 to i64
  %add.ptr169 = getelementptr i64, i64* %1, i64 %idx.ext168
  %add.ptr170 = getelementptr i64, i64* %add.ptr169, i64 1
  %12 = bitcast i64* %add.ptr170 to i8*
  %idx.ext171 = sext i32 %hi.3 to i64
  %add.ptr172 = getelementptr i64, i64* %1, i64 %idx.ext171
  %13 = bitcast i64* %add.ptr172 to i8*
  %14 = load i32, i32* %count, align 8
  %sub174 = sub i32 %14, %hi.3
  %mul175 = shl i32 %sub174, 3
  %conv176 = sext i32 %mul175 to i64
  %call177 = call i8* @memmove(i8* noundef %12, i8* noundef %13, i64 noundef %conv176) #8
  %15 = load i32, i32* %count, align 8
  %sub179.neg = sub nsw i32 1, %sub164
  %sub181 = add i32 %sub179.neg, %15
  store i32 %sub181, i32* %count, align 8
  br label %if.end183

if.end183:                                        ; preds = %while.end163, %if.then167, %while.end
  call fastcc void @badblocks_update_acked(%struct.badblocks* noundef %bb) #6
  %changed = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 5
  store i32 1, i32* %changed, align 8
  br label %out

out:                                              ; preds = %if.then57, %if.end183
  %rv.3 = phi i32 [ 0, %if.end183 ], [ -28, %if.then57 ]
  call fastcc void @write_sequnlock_irq(%struct.seqlock_t* noundef %lock) #6
  ret i32 %rv.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_seqlock_irq(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %seqcount1 = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0
  call fastcc void @do_write_seqcount_begin(%struct.seqcount* noundef %seqcount1) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_sequnlock_irq(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %seqcount1 = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0
  call fastcc void @do_write_seqcount_end(%struct.seqcount* noundef %seqcount1) #6
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ack_all_badblocks(%struct.badblocks* noundef %bb) local_unnamed_addr #0 {
entry:
  %page = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  %0 = load i64*, i64** %page, align 8
  %cmp = icmp eq i64* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %changed = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 5
  %1 = load i32, i32* %changed, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 6
  call fastcc void @write_seqlock_irq(%struct.seqlock_t* noundef %lock) #6
  %2 = load i32, i32* %changed, align 8
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %unacked_exist = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 2
  %3 = load i32, i32* %unacked_exist, align 4
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end21, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %4 = load i64*, i64** %page, align 8
  %count = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 1
  %5 = load i32, i32* %count, align 8
  %cmp643 = icmp sgt i32 %5, 0
  br i1 %cmp643, label %for.body, label %for.end

for.body:                                         ; preds = %if.then4, %for.inc
  %6 = phi i32 [ %8, %for.inc ], [ %5, %if.then4 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then4 ]
  %arrayidx = getelementptr i64, i64* %4, i64 %indvars.iv
  %7 = load i64, i64* %arrayidx, align 8
  %tobool7.not = icmp sgt i64 %7, -1
  br i1 %tobool7.not, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body
  %or16 = or i64 %7, -9223372036854775808
  store i64 %or16, i64* %arrayidx, align 8
  %.pre = load i32, i32* %count, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8
  %8 = phi i32 [ %6, %for.body ], [ %.pre, %if.then8 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = sext i32 %8 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp6, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then4
  store i32 0, i32* %unacked_exist, align 4
  br label %if.end21

if.end21:                                         ; preds = %for.end, %land.lhs.true, %if.end
  call fastcc void @write_sequnlock_irq(%struct.seqlock_t* noundef %lock) #6
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @badblocks_show(%struct.badblocks* noundef %bb, i8* noundef %page, i32 noundef %unack) local_unnamed_addr #0 {
entry:
  %page1 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  %0 = load i64*, i64** %page1, align 8
  %shift = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 3
  %1 = load i32, i32* %shift, align 8
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cleanup34, label %retry.preheader

retry.preheader:                                  ; preds = %entry
  %lock = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 6
  %count = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 1
  %tobool11 = icmp ne i32 %unack, 0
  %unacked_exist = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 2
  br label %retry

retry:                                            ; preds = %retry.preheader, %if.end28
  %call = call fastcc i32 @read_seqbegin(%struct.seqlock_t* noundef %lock) #6
  br label %land.rhs

land.rhs:                                         ; preds = %retry, %cleanup
  %indvars.iv = phi i64 [ 0, %retry ], [ %indvars.iv.next, %cleanup ]
  %len.070 = phi i64 [ 0, %retry ], [ %len.1, %cleanup ]
  %2 = load i32, i32* %count, align 8
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %arrayidx = getelementptr i64, i64* %0, i64 %indvars.iv
  %4 = load i64, i64* %arrayidx, align 8
  %tobool = icmp slt i64 %4, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %or.cond = select i1 %tobool11, i1 %tobool, i1 false
  br i1 %or.cond, label %cleanup, label %if.end14

if.end14:                                         ; preds = %while.body
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 511
  %conv = add nuw nsw i32 %6, 1
  %and = lshr i64 %4, 9
  %shr = and i64 %and, 18014398509481983
  %add.ptr = getelementptr i8, i8* %page, i64 %len.070
  %sub = sub nuw nsw i64 4096, %len.070
  %7 = load i32, i32* %shift, align 8
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 %shr, %sh_prom
  %shl17 = shl i32 %conv, %7
  %call18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef %shl, i32 noundef %shl17) #8
  %conv19 = sext i32 %call18 to i64
  %add20 = add nsw i64 %len.070, %conv19
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end14
  %len.1 = phi i64 [ %add20, %if.end14 ], [ %len.070, %while.body ]
  %cmp2 = icmp ult i64 %len.1, 4096
  br i1 %cmp2, label %land.rhs, label %if.end28

while.end:                                        ; preds = %land.rhs
  %cmp25 = icmp eq i64 %len.070, 0
  %or.cond38 = select i1 %tobool11, i1 %cmp25, i1 false
  br i1 %or.cond38, label %if.then27, label %if.end28

if.then27:                                        ; preds = %while.end
  store i32 0, i32* %unacked_exist, align 4
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.then27, %while.end
  %len.069 = phi i64 [ 0, %if.then27 ], [ %len.070, %while.end ], [ %len.1, %cleanup ]
  %call30 = call fastcc i32 @read_seqretry(%struct.seqlock_t* noundef %lock, i32 noundef %call) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup34, label %retry

cleanup34:                                        ; preds = %if.end28, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %len.069, %if.end28 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @badblocks_store(%struct.badblocks* noundef %bb, i8* noundef %page, i64 noundef %len, i32 noundef %unack) local_unnamed_addr #0 {
entry:
  %sector = alloca i64, align 8
  %length = alloca i32, align 4
  %newline = alloca i8, align 4
  %0 = bitcast i64* %sector to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %sector, align 8, !annotation !8
  %1 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %length, align 4, !annotation !8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %newline) #7
  store i8 0, i8* %newline, align 4, !annotation !8
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %page, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* noundef nonnull %sector, i32* noundef nonnull %length, i8* noundef nonnull %newline) #8
  switch i32 %call, label %cleanup [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8, i8* %newline, align 4
  %cmp.not = icmp eq i8 %2, 10
  br i1 %cmp.not, label %sw.bb2, label %cleanup

sw.bb2:                                           ; preds = %sw.bb, %entry
  %3 = load i32, i32* %length, align 4
  %cmp3 = icmp slt i32 %3, 1
  br i1 %cmp3, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2
  %4 = load i64, i64* %sector, align 8
  %tobool.not = icmp eq i32 %unack, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call7 = call i32 @badblocks_set(%struct.badblocks* noundef %bb, i64 noundef %4, i32 noundef %3, i32 noundef %lnot.ext) #6
  %tobool8.not = icmp eq i32 %call7, 0
  %len. = select i1 %tobool8.not, i64 %len, i64 -28
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry, %sw.bb2, %sw.bb
  %retval.0 = phi i64 [ -22, %sw.bb ], [ -22, %sw.bb2 ], [ -22, %entry ], [ %len., %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %newline) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @badblocks_init(%struct.badblocks* nocapture noundef %bb, i32 noundef %enable) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__badblocks_init(%struct.device* noundef null, %struct.badblocks* noundef %bb, i32 noundef %enable) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__badblocks_init(%struct.device* noundef %dev, %struct.badblocks* nocapture noundef %bb, i32 noundef %enable) unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 0
  store %struct.device* %dev, %struct.device** %dev1, align 8
  %count = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 1
  store i32 0, i32* %count, align 8
  %tobool.not = icmp eq i32 %enable, 0
  %spec.select = sext i1 %tobool.not to i32
  %0 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 3
  store i32 %spec.select, i32* %0, align 8
  %tobool3.not = icmp eq %struct.device* %dev, null
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %entry
  %call = call fastcc i8* @devm_kzalloc(%struct.device* noundef nonnull %dev) #6
  br label %if.end8

if.else5:                                         ; preds = %entry
  %call6 = call fastcc i8* @kzalloc() #6
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then4
  %call6.sink = phi i8* [ %call6, %if.else5 ], [ %call, %if.then4 ]
  %page7 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  %1 = bitcast i64** %page7 to i8**
  store i8* %call6.sink, i8** %1, align 8
  %tobool10.not = icmp eq i8* %call6.sink, null
  br i1 %tobool10.not, label %if.then11, label %do.body14

if.then11:                                        ; preds = %if.end8
  store i32 -1, i32* %0, align 8
  br label %return

do.body14:                                        ; preds = %if.end8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 6, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %seqcount21 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount21) #6
  br label %return

return:                                           ; preds = %do.body14, %if.then11
  %retval.0 = phi i32 [ 0, %do.body14 ], [ -12, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_init_badblocks(%struct.device* noundef %dev, %struct.badblocks* noundef %bb) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.badblocks* %bb, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @__badblocks_init(%struct.device* noundef %dev, %struct.badblocks* noundef nonnull %bb, i32 noundef 1) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @badblocks_exit(%struct.badblocks* noundef %bb) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.badblocks* %bb, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 0
  %0 = load %struct.device*, %struct.device** %dev, align 8
  %tobool1.not = icmp eq %struct.device* %0, null
  %page4 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  %1 = bitcast i64** %page4 to i8**
  %2 = load i8*, i8** %1, align 8
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @devm_kfree(%struct.device* noundef nonnull %0, i8* noundef %2) #8
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @kfree(i8* noundef %2) #8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %page6 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %bb, i64 0, i32 4
  store i64* null, i64** %page6, align 8
  br label %return

return:                                           ; preds = %entry, %if.end5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(%struct.device* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #7, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #7, !srcloc !10
  %call = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #4 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #6
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* noundef %s) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #6
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #7, !srcloc !13
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #7, !srcloc !14
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #6
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !15

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #7, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #7, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* noundef %s) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_end(%struct.seqcount* noundef %s) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !19
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #6
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #6
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #7, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #7, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #6
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #6
  call fastcc void @arch_local_irq_enable() #6
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #7, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @devm_kzalloc(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %call = call noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef 4096, i32 noundef 3520) #8
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 12), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #8
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__seqcount_init(%struct.seqcount* nocapture noundef writeonly %s) unnamed_addr #5 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  store i32 0, i32* %sequence, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @devm_kmalloc(%struct.device* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149659680}
!8 = !{!"auto-init"}
!9 = !{i64 1519411}
!10 = !{i64 2149640422}
!11 = !{i64 2149429982}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149380469, i64 2149380516, i64 2149380522, i64 2149380559, i64 2149380577, i64 2149381888, i64 2149381936, i64 2149381984, i64 2149382047, i64 2149382096, i64 2149380655, i64 2149380680, i64 2149380706, i64 2149380712, i64 2149381554, i64 2149381594, i64 2149381612, i64 2149381644, i64 2149381672, i64 2149381726, i64 2149381746, i64 2149381843, i64 2149380735, i64 2149380749, i64 2149380755, i64 2149380805, i64 2149380851, i64 2149380884}
!14 = !{i64 2149382648, i64 2149382695, i64 2149382701, i64 2149382738, i64 2149382756, i64 2149383699, i64 2149383747, i64 2149383795, i64 2149383858, i64 2149383907, i64 2149382834, i64 2149382859, i64 2149382885, i64 2149382891, i64 2149382928, i64 2149382934, i64 2149382984, i64 2149383030, i64 2149383063}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2149374766, i64 2149374813, i64 2149374819, i64 2149374856, i64 2149374874, i64 2149376215, i64 2149376263, i64 2149376311, i64 2149376374, i64 2149376423, i64 2149374952, i64 2149374977, i64 2149375003, i64 2149375009, i64 2149375881, i64 2149375921, i64 2149375939, i64 2149375971, i64 2149375999, i64 2149376053, i64 2149376073, i64 2149376170, i64 2149375032, i64 2149375046, i64 2149375052, i64 2149375102, i64 2149375148, i64 2149375181}
!17 = !{i64 2147947771, i64 2147947804, i64 2147947857, i64 2147947916, i64 2147947950, i64 2147948005, i64 2147948034, i64 2147948054}
!18 = !{i64 2149640663}
!19 = !{i64 2149640904}
!20 = !{i64 2149455825}
!21 = !{i64 2149399124}
!22 = !{i64 2149386482, i64 2149386529, i64 2149386535, i64 2149386572, i64 2149386590, i64 2149387901, i64 2149387949, i64 2149387997, i64 2149388060, i64 2149388109, i64 2149386668, i64 2149386693, i64 2149386719, i64 2149386725, i64 2149387567, i64 2149387607, i64 2149387625, i64 2149387657, i64 2149387685, i64 2149387739, i64 2149387759, i64 2149387856, i64 2149386748, i64 2149386762, i64 2149386768, i64 2149386818, i64 2149386864, i64 2149386897}
!23 = !{i64 2149434275}
!24 = !{i64 2149459128}
!25 = !{i64 2149361249, i64 2149361296, i64 2149361302, i64 2149361339, i64 2149361357, i64 2149362697, i64 2149362745, i64 2149362793, i64 2149362856, i64 2149362905, i64 2149361435, i64 2149361460, i64 2149361486, i64 2149361492, i64 2149362363, i64 2149362403, i64 2149362421, i64 2149362453, i64 2149362481, i64 2149362535, i64 2149362555, i64 2149362652, i64 2149361515, i64 2149361529, i64 2149361535, i64 2149361585, i64 2149361631, i64 2149361664}
