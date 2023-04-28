; ModuleID = 'drivers/base/devres.c'
source_filename = "drivers/base/devres.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.devres_node = type { %struct.list_head, void (%struct.device*, i8*)*, i8*, i64 }
%struct.devres = type { %struct.devres_node, [88 x i8], [0 x i8] }
%struct.devres_group = type { [2 x %struct.devres_node], i8*, i32 }
%struct.action_devres = type { i8*, void (i8*)* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.pages_devres = type { i64, i32 }

@.str.1 = private unnamed_addr constant [5 x i8] c"grp<\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"grp>\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"devm_action_release\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"devm_kzalloc_release\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Pointer doesn't point to dynamically allocated memory.\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Memory chunk not managed or managed by a different device.\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"devm_pages_release\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"devm_percpu_release\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef %release, i64 noundef %size, i32 noundef %gfp, i32 %nid, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %tot_size.i = alloca i64, align 8
  %0 = bitcast i64* %tot_size.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 0, i64* %tot_size.i, align 8, !annotation !7
  %call.i = call fastcc i1 @check_dr_size(i64 noundef %size, i64* noundef nonnull %tot_size.i) #16
  br i1 %call.i, label %if.end.i, label %alloc_dr.exit.thread

if.end.i:                                         ; preds = %entry
  %or = or i32 %gfp, 256
  %1 = load i64, i64* %tot_size.i, align 8
  %2 = call i8* @llvm.returnaddress(i32 0) #15
  %3 = ptrtoint i8* %2 to i64
  %and.i = and i64 %3, 36028797018963968
  %tobool.not.i = icmp eq i64 %and.i, 0
  %4 = load i64, i64* @vabits_actual, align 8
  %shl3.neg.i = shl nsw i64 -1, %4
  %or.i = or i64 %shl3.neg.i, %3
  %and6.i = and i64 %shl3.neg.i, 36028797018963967
  %neg.i = xor i64 %and6.i, -1
  %and8.i = and i64 %neg.i, %3
  %cond.i = select i1 %tobool.not.i, i64 %and8.i, i64 %or.i
  %call9.i = call i8* @__kmalloc_track_caller(i64 noundef %1, i32 noundef %or, i64 noundef %cond.i) #16
  %tobool10.not.i = icmp eq i8* %call9.i, null
  br i1 %tobool10.not.i, label %alloc_dr.exit.thread, label %alloc_dr.exit, !prof !8

alloc_dr.exit.thread:                             ; preds = %entry, %if.end.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  br label %cleanup

alloc_dr.exit:                                    ; preds = %if.end.i
  %call16.i = call i8* @memset(i8* noundef nonnull %call9.i, i32 noundef 0, i64 noundef 128) #16
  %entry17.i = bitcast i8* %call9.i to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %entry17.i) #16
  %release19.i = getelementptr inbounds i8, i8* %call9.i, i64 16
  %5 = bitcast i8* %release19.i to void (%struct.device*, i8*)**
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %5, align 16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  %node = bitcast i8* %call9.i to %struct.devres_node*
  call fastcc void @set_node_dbginfo(%struct.devres_node* noundef nonnull %node, i8* noundef %name, i64 noundef %size) #17
  %6 = getelementptr inbounds i8, i8* %call9.i, i64 128
  br label %cleanup

cleanup:                                          ; preds = %alloc_dr.exit.thread, %alloc_dr.exit
  %retval.0 = phi i8* [ %6, %alloc_dr.exit ], [ null, %alloc_dr.exit.thread ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_node_dbginfo(%struct.devres_node* nocapture noundef writeonly %node, i8* noundef %name, i64 noundef %size) unnamed_addr #2 {
entry:
  %name1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node, i64 0, i32 2
  store i8* %name, i8** %name1, align 8
  %size2 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node, i64 0, i32 3
  store i64 %size, i64* %size2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devres_for_each_res(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef readnone %release, i32 (%struct.device*, i8*, i8*)* noundef readonly %match, i8* noundef %match_data, void (%struct.device*, i8*, i8*)* noundef readonly %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq void (%struct.device*, i8*, i8*)* %fn, null
  br i1 %tobool.not, label %cleanup50, label %do.body1

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30
  %prev = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30, i32 1
  %0 = bitcast %struct.list_head** %prev to %struct.devres_node**
  %1 = load %struct.devres_node*, %struct.devres_node** %0, align 8
  %entry1879 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %1, i64 0, i32 0
  %cmp20.not80 = icmp eq %struct.list_head* %entry1879, %devres_head
  br i1 %cmp20.not80, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.body1
  %tobool33.not = icmp eq i32 (%struct.device*, i8*, i8*)* %match, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %node.081 = phi %struct.devres_node* [ %1, %for.body.lr.ph ], [ %tmp.083, %cleanup ]
  %tmp.083.in.in = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.081, i64 0, i32 0, i32 1
  %tmp.083.in = bitcast %struct.list_head** %tmp.083.in.in to %struct.devres_node**
  %tmp.083 = load %struct.devres_node*, %struct.devres_node** %tmp.083.in, align 8
  %release28 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.081, i64 0, i32 1
  %2 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release28, align 8
  %cmp29.not = icmp eq void (%struct.device*, i8*)* %2, %release
  br i1 %cmp29.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %for.body
  br i1 %tobool33.not, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end32
  %data34 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.081, i64 3, i32 0, i32 1
  %arraydecay = bitcast %struct.list_head** %data34 to i8*
  %call35 = call i32 %match(%struct.device* noundef %dev, i8* noundef %arraydecay, i8* noundef %match_data) #16
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end32, %land.lhs.true
  %data39 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.081, i64 3, i32 0, i32 1
  %arraydecay40 = bitcast %struct.list_head** %data39 to i8*
  call void %fn(%struct.device* noundef %dev, i8* noundef %arraydecay40, i8* noundef %data) #16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %for.body, %if.end38
  %entry18 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %tmp.083, i64 0, i32 0
  %cmp20.not = icmp eq %struct.list_head* %entry18, %devres_head
  br i1 %cmp20.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %do.body1
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #16
  br label %cleanup50

cleanup50:                                        ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #17
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devres_free(i8* noundef %res) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %res, null
  br i1 %tobool.not, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %res, i64 -128
  %entry2 = bitcast i8* %add.ptr to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %entry2) #17
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body8, label %do.end15, !prof !8

do.body8:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 223; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !10
  unreachable

do.end15:                                         ; preds = %if.then
  call void @kfree(i8* noundef %add.ptr) #16
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devres_add(%struct.device* noundef %dev, i8* noundef %res) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr i8, i8* %res, i64 -128
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %node = bitcast i8* %add.ptr to %struct.devres_node*
  call fastcc void @add_dr(%struct.device* noundef %dev, %struct.devres_node* noundef %node) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_dr(%struct.device* noundef %dev, %struct.devres_node* noundef %node) unnamed_addr #0 {
entry:
  %entry1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %entry1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body5, label %do.end8, !prof !8

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 130; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !11
  unreachable

do.end8:                                          ; preds = %entry
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30
  call fastcc void @list_add_tail(%struct.list_head* noundef %entry1, %struct.list_head* noundef %devres_head) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devres_find(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %call5 = call fastcc %struct.devres* @find_dr(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  %tobool.not = icmp eq %struct.devres* %call5, null
  %arraydecay = getelementptr inbounds %struct.devres, %struct.devres* %call5, i64 0, i32 2, i64 0
  %retval.0 = select i1 %tobool.not, i8* null, i8* %arraydecay
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.devres* @find_dr(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef readnone %release, i32 (%struct.device*, i8*, i8*)* noundef readonly %match, i8* noundef %match_data) unnamed_addr #0 {
entry:
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30
  %prev = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30, i32 1
  %node.0.in43 = bitcast %struct.list_head** %prev to %struct.devres_node**
  %node.044 = load %struct.devres_node*, %struct.devres_node** %node.0.in43, align 8
  %entry145 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.044, i64 0, i32 0
  %cmp.not46 = icmp eq %struct.list_head* %entry145, %devres_head
  br i1 %cmp.not46, label %cleanup22, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq i32 (%struct.device*, i8*, i8*)* %match, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %node.047 = phi %struct.devres_node* [ %node.044, %for.body.lr.ph ], [ %node.0, %for.inc ]
  %release9 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.047, i64 0, i32 1
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release9, align 8
  %cmp10.not = icmp eq void (%struct.device*, i8*)* %0, %release
  br i1 %cmp10.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %tobool.not, label %cleanup22.split.loop.exit38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.047, i64 3, i32 0, i32 1
  %arraydecay = bitcast %struct.list_head** %data to i8*
  %call = call i32 %match(%struct.device* noundef %dev, i8* noundef %arraydecay, i8* noundef %match_data) #16
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %for.inc, label %cleanup22.split.loop.exit

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %prev16 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.047, i64 0, i32 0, i32 1
  %node.0.in = bitcast %struct.list_head** %prev16 to %struct.devres_node**
  %node.0 = load %struct.devres_node*, %struct.devres_node** %node.0.in, align 8
  %entry1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %entry1, %devres_head
  br i1 %cmp.not, label %cleanup22, label %for.body

cleanup22.split.loop.exit:                        ; preds = %land.lhs.true
  %1 = bitcast %struct.devres_node* %node.047 to %struct.devres*
  br label %cleanup22

cleanup22.split.loop.exit38:                      ; preds = %if.end
  %2 = bitcast %struct.devres_node* %node.047 to %struct.devres*
  br label %cleanup22

cleanup22:                                        ; preds = %for.inc, %entry, %cleanup22.split.loop.exit38, %cleanup22.split.loop.exit
  %retval.2 = phi %struct.devres* [ %1, %cleanup22.split.loop.exit ], [ %2, %cleanup22.split.loop.exit38 ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.devres* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devres_get(%struct.device* noundef %dev, i8* noundef %new_res, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr i8, i8* %new_res, i64 -128
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %release = getelementptr i8, i8* %new_res, i64 -112
  %0 = bitcast i8* %release to void (%struct.device*, i8*)**
  %1 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %0, align 16
  %call9 = call fastcc %struct.devres* @find_dr(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %1, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) #17
  %tobool.not = icmp eq %struct.devres* %call9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %node = bitcast i8* %add.ptr to %struct.devres_node*
  %2 = bitcast i8* %add.ptr to %struct.devres*
  call fastcc void @add_dr(%struct.device* noundef %dev, %struct.devres_node* noundef %node) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dr.0 = phi %struct.devres* [ %call9, %entry ], [ %2, %if.then ]
  %new_res.addr.0 = phi i8* [ %new_res, %entry ], [ null, %if.then ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #16
  call void @devres_free(i8* noundef %new_res.addr.0) #17
  %arraydecay = getelementptr inbounds %struct.devres, %struct.devres* %dr.0, i64 0, i32 2, i64 0
  ret i8* %arraydecay
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devres_remove(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %call5 = call fastcc %struct.devres* @find_dr(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) #17
  %tobool.not = icmp eq %struct.devres* %call5, null
  br i1 %tobool.not, label %if.end11.critedge, label %if.then

if.then:                                          ; preds = %entry
  %entry6 = getelementptr inbounds %struct.devres, %struct.devres* %call5, i64 0, i32 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %entry6) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  %arraydecay = getelementptr inbounds %struct.devres, %struct.devres* %call5, i64 0, i32 2, i64 0
  br label %cleanup

if.end11.critedge:                                ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11.critedge, %if.then
  %retval.0 = phi i8* [ %arraydecay, %if.then ], [ null, %if.end11.critedge ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devres_destroy(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) local_unnamed_addr #0 {
entry:
  %call = call i8* @devres_remove(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call void @devres_free(i8* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) local_unnamed_addr #0 {
entry:
  %call = call i8* @devres_remove(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*, i8*)* noundef %match, i8* noundef %match_data) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call void %release(%struct.device* noundef %dev, i8* noundef nonnull %call) #16
  call void @devres_free(i8* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devres_release_all(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %todo = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %todo to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %todo, i64 0, i32 0
  store %struct.list_head* %todo, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %todo, i64 0, i32 1
  store %struct.list_head* %todo, %struct.list_head** %prev, align 8
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %devres_head, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %cmp = icmp eq %struct.list_head* %1, null
  br i1 %cmp, label %if.then, label %if.end17, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 519; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !12
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %devres_head) #17
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %do.body22, label %cleanup

do.body22:                                        ; preds = %if.end17
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call27 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %2 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %call33 = call fastcc i32 @remove_nodes(%struct.list_head* noundef %2, %struct.list_head* noundef %devres_head, %struct.list_head* noundef nonnull %todo) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call27) #16
  call fastcc void @release_nodes(%struct.device* noundef %dev, %struct.list_head* noundef nonnull %todo) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end17, %do.body22
  %retval.0 = phi i32 [ %call33, %do.body22 ], [ -19, %if.then ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @remove_nodes(%struct.list_head* noundef %first, %struct.list_head* noundef readnone %end, %struct.list_head* noundef %todo) unnamed_addr #0 {
entry:
  %cmp.not3 = icmp eq %struct.list_head* %first, %end
  br i1 %cmp.not3, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = bitcast %struct.list_head* %first to %struct.devres_node**
  %1 = bitcast %struct.list_head* %first to %struct.devres_node*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end15
  %entry89 = phi %struct.list_head* [ %entry8, %if.end15 ], [ %first, %for.body.preheader ]
  %n.08.in = phi %struct.devres_node** [ %3, %if.end15 ], [ %0, %for.body.preheader ]
  %first.addr.07 = phi %struct.list_head* [ %first.addr.2, %if.end15 ], [ %first, %for.body.preheader ]
  %node.06 = phi %struct.devres_node* [ %n.08, %if.end15 ], [ %1, %for.body.preheader ]
  %cnt.05 = phi i32 [ %cnt.1, %if.end15 ], [ 0, %for.body.preheader ]
  %nr_groups.04 = phi i32 [ %nr_groups.1, %if.end15 ], [ 0, %for.body.preheader ]
  %n.08 = load %struct.devres_node*, %struct.devres_node** %n.08.in, align 8
  %call = call fastcc %struct.devres_group* @node_to_group(%struct.devres_node* noundef %node.06) #17
  %tobool.not = icmp eq %struct.devres_group* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %color = getelementptr inbounds %struct.devres_group, %struct.devres_group* %call, i64 0, i32 2
  store i32 0, i32* %color, align 8
  %inc = add i32 %nr_groups.04, 1
  br label %if.end15

if.else:                                          ; preds = %for.body
  %2 = getelementptr %struct.devres_node, %struct.devres_node* %n.08, i64 0, i32 0
  %cmp10 = icmp eq %struct.list_head* %entry89, %first.addr.07
  %spec.select = select i1 %cmp10, %struct.list_head* %2, %struct.list_head* %first.addr.07
  call fastcc void @list_move_tail(%struct.list_head* noundef %entry89, %struct.list_head* noundef %todo) #17
  %inc14 = add i32 %cnt.05, 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then
  %nr_groups.1 = phi i32 [ %inc, %if.then ], [ %nr_groups.04, %if.else ]
  %cnt.1 = phi i32 [ %cnt.05, %if.then ], [ %inc14, %if.else ]
  %first.addr.2 = phi %struct.list_head* [ %first.addr.07, %if.then ], [ %spec.select, %if.else ]
  %3 = bitcast %struct.devres_node* %n.08 to %struct.devres_node**
  %entry8 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %n.08, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %entry8, %end
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end15
  %tobool24.not = icmp eq i32 %nr_groups.1, 0
  %cmp43.not14 = icmp eq %struct.list_head* %first.addr.2, %end
  %or.cond = select i1 %tobool24.not, i1 true, i1 %cmp43.not14
  br i1 %or.cond, label %cleanup, label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.end
  %4 = bitcast %struct.list_head* %first.addr.2 to %struct.devres_node**
  %5 = bitcast %struct.list_head* %first.addr.2 to %struct.devres_node*
  br label %for.body45

for.body45:                                       ; preds = %for.body45.preheader, %if.end114
  %n.116.in = phi %struct.devres_node** [ %10, %if.end114 ], [ %4, %for.body45.preheader ]
  %node.115 = phi %struct.devres_node* [ %n.116, %if.end114 ], [ %5, %for.body45.preheader ]
  %n.116 = load %struct.devres_node*, %struct.devres_node** %n.116.in, align 8
  %call47 = call fastcc %struct.devres_group* @node_to_group(%struct.devres_node* noundef %node.115) #17
  %tobool49.not = icmp eq %struct.devres_group* %call47, null
  br i1 %tobool49.not, label %do.body58, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %for.body45
  %entry51 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %call47, i64 0, i32 0, i64 0, i32 0
  %call52 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry51) #17
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.end66, label %do.body58, !prof !13

do.body58:                                        ; preds = %for.body45, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 472; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !14
  unreachable

do.end66:                                         ; preds = %lor.rhs
  %color67 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %call47, i64 0, i32 2
  %6 = load i32, i32* %color67, align 8
  %inc68 = add i32 %6, 1
  store i32 %inc68, i32* %color67, align 8
  %entry71 = getelementptr %struct.devres_group, %struct.devres_group* %call47, i64 0, i32 0, i64 1, i32 0
  %call72 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry71) #17
  %tobool73.not = icmp eq i32 %call72, 0
  %.pr = load i32, i32* %color67, align 8
  br i1 %tobool73.not, label %do.body78, label %if.then74

if.then74:                                        ; preds = %do.end66
  %inc76 = add i32 %.pr, 1
  store i32 %inc76, i32* %color67, align 8
  br label %do.body78

do.body78:                                        ; preds = %do.end66, %if.then74
  %7 = phi i32 [ %inc76, %if.then74 ], [ %.pr, %do.end66 ]
  %8 = add i32 %7, -3
  %9 = icmp ult i32 %8, -2
  br i1 %9, label %do.body95, label %do.end103, !prof !8

do.body95:                                        ; preds = %do.body78
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 478; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !15
  unreachable

do.end103:                                        ; preds = %do.body78
  %cmp105 = icmp eq i32 %7, 2
  br i1 %cmp105, label %if.then107, label %if.end114

if.then107:                                       ; preds = %do.end103
  call fastcc void @list_move_tail(%struct.list_head* noundef %entry51, %struct.list_head* noundef %todo) #17
  call fastcc void @list_del_init(%struct.list_head* noundef %entry71) #17
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %do.end103
  %10 = bitcast %struct.devres_node* %n.116 to %struct.devres_node**
  %entry42 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %n.116, i64 0, i32 0
  %cmp43.not = icmp eq %struct.list_head* %entry42, %end
  br i1 %cmp43.not, label %cleanup, label %for.body45

cleanup:                                          ; preds = %if.end114, %entry, %for.end
  %cnt.0.lcssa21 = phi i32 [ %cnt.1, %for.end ], [ 0, %entry ], [ %cnt.1, %if.end114 ]
  ret i32 %cnt.0.lcssa21
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @release_nodes(%struct.device* noundef %dev, %struct.list_head* noundef readonly %todo) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %todo, i64 0, i32 1
  %0 = bitcast %struct.list_head** %prev to %struct.devres**
  %1 = load %struct.devres*, %struct.devres** %0, align 8
  %entry1136 = getelementptr inbounds %struct.devres, %struct.devres* %1, i64 0, i32 0, i32 0
  %cmp.not37 = icmp eq %struct.list_head* %entry1136, %todo
  br i1 %cmp.not37, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %dr.038 = phi %struct.devres* [ %tmp.0, %for.body ], [ %1, %entry ]
  %tmp.0.in.in = getelementptr inbounds %struct.devres, %struct.devres* %dr.038, i64 0, i32 0, i32 0, i32 1
  %tmp.0.in = bitcast %struct.list_head** %tmp.0.in.in to %struct.devres**
  %tmp.0 = load %struct.devres*, %struct.devres** %tmp.0.in, align 8
  %release = getelementptr inbounds %struct.devres, %struct.devres* %dr.038, i64 0, i32 0, i32 1
  %2 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release, align 16
  %arraydecay = getelementptr inbounds %struct.devres, %struct.devres* %dr.038, i64 0, i32 2, i64 0
  call void %2(%struct.device* noundef %dev, i8* noundef %arraydecay) #16
  %3 = bitcast %struct.devres* %dr.038 to i8*
  call void @kfree(i8* noundef %3) #16
  %entry11 = getelementptr inbounds %struct.devres, %struct.devres* %tmp.0, i64 0, i32 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %entry11, %todo
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devres_open_group(%struct.device* noundef %dev, i8* noundef %id, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %and.i.i = and i32 %gfp, 17
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %kmalloc.exit, label %if.end.i.i, !prof !13

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %gfp, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %entry, %if.end.i.i
  %retval.0.i.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i.i ]
  %arrayidx7.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i.i, i64 7
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %gfp) #16
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %kmalloc.exit
  %arrayidx = bitcast i8* %call.i.i to %struct.devres_node*
  %release = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %1 = bitcast i8* %release to void (%struct.device*, i8*)**
  store void (%struct.device*, i8*)* @group_open_release, void (%struct.device*, i8*)** %1, align 8
  %arrayidx5 = getelementptr i8, i8* %call.i.i, i64 40
  %2 = bitcast i8* %arrayidx5 to %struct.devres_node*
  %release6 = getelementptr i8, i8* %call.i.i, i64 56
  %3 = bitcast i8* %release6 to void (%struct.device*, i8*)**
  store void (%struct.device*, i8*)* @group_close_release, void (%struct.device*, i8*)** %3, align 8
  %entry9 = bitcast i8* %call.i.i to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %entry9) #17
  %entry12 = bitcast i8* %arrayidx5 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry12) #17
  call fastcc void @set_node_dbginfo(%struct.devres_node* noundef nonnull %arrayidx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 0) #17
  call fastcc void @set_node_dbginfo(%struct.devres_node* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 0) #17
  %id17 = getelementptr inbounds i8, i8* %call.i.i, i64 80
  %4 = bitcast i8* %id17 to i8**
  %tobool18.not = icmp eq i8* %id, null
  %spec.select = select i1 %tobool18.not, i8* %call.i.i, i8* %id
  store i8* %spec.select, i8** %4, align 8
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call25 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @add_dr(%struct.device* noundef %dev, %struct.devres_node* noundef nonnull %arrayidx) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call25) #16
  %5 = load i8*, i8** %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %kmalloc.exit, %if.end
  %retval.0 = phi i8* [ %5, %if.end ], [ null, %kmalloc.exit ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @group_open_release(%struct.device* nocapture noundef %dev, i8* nocapture noundef %res) #7 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @group_close_release(%struct.device* nocapture noundef %dev, i8* nocapture noundef %res) #7 {
entry:
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devres_close_group(%struct.device* noundef %dev, i8* noundef %id) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %call5 = call fastcc %struct.devres_group* @find_group(%struct.device* noundef %dev, i8* noundef %id) #17
  %tobool.not = icmp eq %struct.devres_group* %call5, null
  br i1 %tobool.not, label %if.then10, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.devres_group, %struct.devres_group* %call5, i64 0, i32 0, i64 1
  call fastcc void @add_dr(%struct.device* noundef %dev, %struct.devres_node* noundef %arrayidx) #17
  br label %if.end19

if.then10:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 615; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !16
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.devres_group* @find_group(%struct.device* noundef readonly %dev, i8* noundef readnone %id) unnamed_addr #5 {
entry:
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30
  %prev = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30, i32 1
  %node.0.in50 = bitcast %struct.list_head** %prev to %struct.devres_node**
  %node.051 = load %struct.devres_node*, %struct.devres_node** %node.0.in50, align 8
  %entry152 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.051, i64 0, i32 0
  %cmp.not53 = icmp eq %struct.list_head* %entry152, %devres_head
  br i1 %cmp.not53, label %cleanup29, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq i8* %id, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %node.054 = phi %struct.devres_node* [ %node.051, %for.body.lr.ph ], [ %node.0, %for.inc ]
  %release = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.054, i64 0, i32 1
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release, align 8
  %cmp3.not = icmp eq void (%struct.device*, i8*)* %0, @group_open_release
  br i1 %cmp3.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %id11 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.054, i64 2
  %1 = bitcast %struct.devres_node* %id11 to i8**
  %2 = load i8*, i8** %1, align 8
  %cmp12 = icmp eq i8* %2, %id
  br i1 %cmp12, label %cleanup29.split.loop.exit45, label %for.inc

if.else:                                          ; preds = %if.end
  %entry16 = getelementptr %struct.devres_node, %struct.devres_node* %node.054, i64 1, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %entry16) #17
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %for.inc, label %cleanup29.split.loop.exit

for.inc:                                          ; preds = %if.then10, %if.else, %for.body
  %prev23 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.054, i64 0, i32 0, i32 1
  %node.0.in = bitcast %struct.list_head** %prev23 to %struct.devres_node**
  %node.0 = load %struct.devres_node*, %struct.devres_node** %node.0.in, align 8
  %entry1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %entry1, %devres_head
  br i1 %cmp.not, label %cleanup29, label %for.body

cleanup29.split.loop.exit:                        ; preds = %if.else
  %3 = bitcast %struct.devres_node* %node.054 to %struct.devres_group*
  br label %cleanup29

cleanup29.split.loop.exit45:                      ; preds = %if.then10
  %4 = bitcast %struct.devres_node* %node.054 to %struct.devres_group*
  br label %cleanup29

cleanup29:                                        ; preds = %for.inc, %entry, %cleanup29.split.loop.exit45, %cleanup29.split.loop.exit
  %retval.2 = phi %struct.devres_group* [ %3, %cleanup29.split.loop.exit ], [ %4, %cleanup29.split.loop.exit45 ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.devres_group* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devres_remove_group(%struct.device* noundef %dev, i8* noundef %id) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %call5 = call fastcc %struct.devres_group* @find_group(%struct.device* noundef %dev, i8* noundef %id) #17
  %tobool.not = icmp eq %struct.devres_group* %call5, null
  br i1 %tobool.not, label %if.then16, label %if.then

if.then:                                          ; preds = %entry
  %entry6 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %call5, i64 0, i32 0, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %entry6) #17
  %entry9 = getelementptr %struct.devres_group, %struct.devres_group* %call5, i64 0, i32 0, i64 1, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %entry9) #17
  br label %if.end25

if.then16:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 643; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !17
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  %0 = bitcast %struct.devres_group* %call5 to i8*
  call void @kfree(i8* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devres_release_group(%struct.device* noundef %dev, i8* noundef %id) local_unnamed_addr #0 {
entry:
  %todo = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %todo to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %todo, i64 0, i32 0
  store %struct.list_head* %todo, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %todo, i64 0, i32 1
  store %struct.list_head* %todo, %struct.list_head** %prev, align 8
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %call5 = call fastcc %struct.devres_group* @find_group(%struct.device* noundef %dev, i8* noundef %id) #17
  %tobool.not = icmp eq %struct.devres_group* %call5, null
  br i1 %tobool.not, label %if.then23, label %if.then

if.then:                                          ; preds = %entry
  %entry6 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %call5, i64 0, i32 0, i64 0, i32 0
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30
  %entry9 = getelementptr %struct.devres_group, %struct.devres_group* %call5, i64 0, i32 0, i64 1, i32 0
  %call10 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry9) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  %next16 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry9, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then
  %end.0 = phi %struct.list_head* [ %devres_head, %if.then ], [ %1, %if.then12 ]
  %call17 = call fastcc i32 @remove_nodes(%struct.list_head* noundef %entry6, %struct.list_head* noundef %end.0, %struct.list_head* noundef nonnull %todo) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  call fastcc void @release_nodes(%struct.device* noundef %dev, %struct.list_head* noundef nonnull %todo) #17
  br label %if.end34

if.then23:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 685; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !18
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %if.end
  %cnt.0 = phi i32 [ %call17, %if.end ], [ 0, %if.then23 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %cnt.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_add_action(%struct.device* noundef %dev, void (i8*)* noundef %action, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_action_release, i64 noundef 16, i32 noundef 3264, i32 undef, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data1 = bitcast i8* %call to i8**
  store i8* %data, i8** %data1, align 8
  %action2 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %action2 to void (i8*)**
  store void (i8*)* %action, void (i8*)** %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_action_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %action = getelementptr inbounds i8, i8* %res, i64 8
  %0 = bitcast i8* %action to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8
  %data = bitcast i8* %res to i8**
  %2 = load i8*, i8** %data, align 8
  call void %1(i8* noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_remove_action(%struct.device* noundef %dev, void (i8*)* noundef %action, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %devres = alloca %struct.action_devres, align 8
  %0 = bitcast %struct.action_devres* %devres to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %data1 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %devres, i64 0, i32 0
  store i8* %data, i8** %data1, align 8
  %action2 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %devres, i64 0, i32 1
  store void (i8*)* %action, void (i8*)** %action2, align 8
  %call = call i32 @devres_destroy(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_action_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_action_match, i8* noundef nonnull %0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 762; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @devm_action_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* nocapture noundef readonly %p) #8 {
entry:
  %action = getelementptr inbounds i8, i8* %res, i64 8
  %0 = bitcast i8* %action to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8
  %action1 = getelementptr inbounds i8, i8* %p, i64 8
  %2 = bitcast i8* %action1 to void (i8*)**
  %3 = load void (i8*)*, void (i8*)** %2, align 8
  %cmp = icmp eq void (i8*)* %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %data = bitcast i8* %res to i8**
  %4 = load i8*, i8** %data, align 8
  %data2 = bitcast i8* %p to i8**
  %5 = load i8*, i8** %data2, align 8
  %cmp3 = icmp eq i8* %4, %5
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_release_action(%struct.device* noundef %dev, void (i8*)* noundef %action, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %devres = alloca %struct.action_devres, align 8
  %0 = bitcast %struct.action_devres* %devres to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %data1 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %devres, i64 0, i32 0
  store i8* %data, i8** %data1, align 8
  %action2 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %devres, i64 0, i32 1
  store void (i8*)* %action, void (i8*)** %action2, align 8
  %call = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_action_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_action_match, i8* noundef nonnull %0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 784; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef %size, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %tot_size.i = alloca i64, align 8
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %0 = bitcast i64* %tot_size.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 0, i64* %tot_size.i, align 8, !annotation !7
  %call.i = call fastcc i1 @check_dr_size(i64 noundef %size, i64* noundef nonnull %tot_size.i) #16
  br i1 %call.i, label %if.end.i, label %alloc_dr.exit.thread

if.end.i:                                         ; preds = %if.end
  %1 = load i64, i64* %tot_size.i, align 8
  %2 = call i8* @llvm.returnaddress(i32 0) #15
  %3 = ptrtoint i8* %2 to i64
  %and.i = and i64 %3, 36028797018963968
  %tobool.not.i = icmp eq i64 %and.i, 0
  %4 = load i64, i64* @vabits_actual, align 8
  %shl3.neg.i = shl nsw i64 -1, %4
  %or.i = or i64 %shl3.neg.i, %3
  %and6.i = and i64 %shl3.neg.i, 36028797018963967
  %neg.i = xor i64 %and6.i, -1
  %and8.i = and i64 %neg.i, %3
  %cond.i = select i1 %tobool.not.i, i64 %and8.i, i64 %or.i
  %call9.i = call i8* @__kmalloc_track_caller(i64 noundef %1, i32 noundef %gfp, i64 noundef %cond.i) #16
  %tobool10.not.i = icmp eq i8* %call9.i, null
  br i1 %tobool10.not.i, label %alloc_dr.exit.thread, label %alloc_dr.exit, !prof !8

alloc_dr.exit.thread:                             ; preds = %if.end, %if.end.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  br label %cleanup

alloc_dr.exit:                                    ; preds = %if.end.i
  %call16.i = call i8* @memset(i8* noundef nonnull %call9.i, i32 noundef 0, i64 noundef 128) #16
  %entry17.i = bitcast i8* %call9.i to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %entry17.i) #16
  %release19.i = getelementptr inbounds i8, i8* %call9.i, i64 16
  %5 = bitcast i8* %release19.i to void (%struct.device*, i8*)**
  store void (%struct.device*, i8*)* @devm_kmalloc_release, void (%struct.device*, i8*)** %5, align 16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  %node = bitcast i8* %call9.i to %struct.devres_node*
  call fastcc void @set_node_dbginfo(%struct.devres_node* noundef nonnull %node, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 noundef %size) #17
  %6 = getelementptr inbounds i8, i8* %call9.i, i64 128
  call void @devres_add(%struct.device* noundef %dev, i8* noundef %6) #17
  br label %cleanup

cleanup:                                          ; preds = %alloc_dr.exit.thread, %entry, %alloc_dr.exit
  %retval.0 = phi i8* [ %6, %alloc_dr.exit ], [ inttoptr (i64 16 to i8*), %entry ], [ null, %alloc_dr.exit.thread ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @devm_kmalloc_release(%struct.device* nocapture noundef %dev, i8* nocapture noundef %res) #7 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devm_krealloc(%struct.device* noundef %dev, i8* noundef %ptr, i64 noundef %new_size, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %tot_size.i = alloca i64, align 8
  %total_new_size = alloca i64, align 8
  %0 = bitcast i64* %total_new_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 0, i64* %total_new_size, align 8, !annotation !7
  %tobool.not = icmp eq i64 %new_size, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void @devm_kfree(%struct.device* noundef %dev, i8* noundef %ptr) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp ult i8* %ptr, inttoptr (i64 17 to i8*)
  br i1 %cmp, label %if.then12, label %if.end13, !prof !8

if.then12:                                        ; preds = %if.end
  %call = call noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef %new_size, i32 noundef %gfp) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %1 = ptrtoint i8* %ptr to i64
  %call14 = call fastcc i1 @is_kernel_rodata(i64 noundef %1) #17
  br i1 %call14, label %if.then27, label %if.end38, !prof !8

if.then27:                                        ; preds = %if.end13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 867; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !21
  br label %cleanup

if.end38:                                         ; preds = %if.end13
  %call39 = call fastcc i1 @check_dr_size(i64 noundef %new_size, i64* noundef nonnull %total_new_size) #17
  br i1 %call39, label %if.end41, label %cleanup

if.end41:                                         ; preds = %if.end38
  %add.ptr = getelementptr i8, i8* %ptr, i64 -128
  %call43 = call i64 @ksize(i8* noundef %add.ptr) #16
  %cmp44 = icmp eq i64 %call43, 0
  br i1 %cmp44, label %do.end60, label %if.end75

do.end60:                                         ; preds = %if.end41
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0)) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 879; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !22
  br label %cleanup

if.end75:                                         ; preds = %if.end41
  %2 = load i64, i64* %total_new_size, align 8
  %cmp76.not = icmp ugt i64 %2, %call43
  br i1 %cmp76.not, label %if.end79, label %cleanup

if.end79:                                         ; preds = %if.end75
  %3 = bitcast i64* %tot_size.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #15
  store i64 0, i64* %tot_size.i, align 8, !annotation !7
  %call.i = call fastcc i1 @check_dr_size(i64 noundef %2, i64* noundef nonnull %tot_size.i) #16
  br i1 %call.i, label %if.end.i, label %alloc_dr.exit.thread

if.end.i:                                         ; preds = %if.end79
  %4 = load i64, i64* %tot_size.i, align 8
  %5 = call i8* @llvm.returnaddress(i32 0) #15
  %6 = ptrtoint i8* %5 to i64
  %and.i = and i64 %6, 36028797018963968
  %tobool.not.i = icmp eq i64 %and.i, 0
  %7 = load i64, i64* @vabits_actual, align 8
  %shl3.neg.i = shl nsw i64 -1, %7
  %or.i = or i64 %shl3.neg.i, %6
  %and6.i = and i64 %shl3.neg.i, 36028797018963967
  %neg.i = xor i64 %and6.i, -1
  %and8.i = and i64 %neg.i, %6
  %cond.i = select i1 %tobool.not.i, i64 %and8.i, i64 %or.i
  %call9.i = call i8* @__kmalloc_track_caller(i64 noundef %4, i32 noundef %gfp, i64 noundef %cond.i) #16
  %tobool10.not.i = icmp eq i8* %call9.i, null
  br i1 %tobool10.not.i, label %alloc_dr.exit.thread, label %alloc_dr.exit, !prof !8

alloc_dr.exit.thread:                             ; preds = %if.end79, %if.end.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  br label %cleanup

alloc_dr.exit:                                    ; preds = %if.end.i
  %call16.i = call i8* @memset(i8* noundef nonnull %call9.i, i32 noundef 0, i64 noundef 128) #16
  %entry17.i = bitcast i8* %call9.i to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %entry17.i) #16
  %release19.i = getelementptr inbounds i8, i8* %call9.i, i64 16
  %8 = bitcast i8* %release19.i to void (%struct.device*, i8*)**
  store void (%struct.device*, i8*)* @devm_kmalloc_release, void (%struct.device*, i8*)** %8, align 16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  %rlock.i = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0
  %call91 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %call96 = call fastcc %struct.devres* @find_dr(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_kmalloc_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_kmalloc_match, i8* noundef %ptr) #17
  %tobool97.not = icmp eq %struct.devres* %call96, null
  br i1 %tobool97.not, label %if.then98, label %if.end128

if.then98:                                        ; preds = %alloc_dr.exit
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call91) #16
  call void @kfree(i8* noundef nonnull %call9.i) #16
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0)) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 909; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !23
  br label %cleanup

if.end128:                                        ; preds = %alloc_dr.exit
  %node = getelementptr inbounds %struct.devres, %struct.devres* %call96, i64 0, i32 0
  %node129 = bitcast i8* %call9.i to %struct.devres_node*
  call fastcc void @replace_dr(%struct.devres_node* noundef %node, %struct.devres_node* noundef nonnull %node129) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call91) #16
  %9 = getelementptr inbounds i8, i8* %call9.i, i64 128
  %arraydecay132 = getelementptr inbounds %struct.devres, %struct.devres* %call96, i64 0, i32 2, i64 0
  %sub = add i64 %call43, -128
  %call133 = call i8* @memcpy(i8* noundef %9, i8* noundef %arraydecay132, i64 noundef %sub) #16
  %10 = bitcast %struct.devres* %call96 to i8*
  call void @kfree(i8* noundef nonnull %10) #16
  br label %cleanup

cleanup:                                          ; preds = %alloc_dr.exit.thread, %if.then27, %if.end75, %if.end38, %if.end128, %if.then98, %do.end60, %if.then12, %if.then
  %retval.0 = phi i8* [ inttoptr (i64 16 to i8*), %if.then ], [ %call, %if.then12 ], [ null, %do.end60 ], [ %9, %if.end128 ], [ null, %if.then98 ], [ null, %if.then27 ], [ null, %if.end38 ], [ %ptr, %if.end75 ], [ null, %alloc_dr.exit.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_kfree(%struct.device* noundef %dev, i8* noundef %p) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %p to i64
  %call = call fastcc i1 @is_kernel_rodata(i64 noundef %0) #17
  %cmp = icmp ult i8* %p, inttoptr (i64 17 to i8*)
  %1 = or i1 %cmp, %call
  br i1 %1, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call2 = call i32 @devres_destroy(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_kmalloc_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_kmalloc_match, i8* noundef %p) #17
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.then16, !prof !13

if.then16:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 1058; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then16, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_kernel_rodata(i64 noundef %addr) unnamed_addr #7 {
entry:
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @__start_rodata to i64)
  %cmp1 = icmp ult i64 %addr, ptrtoint ([0 x i8]* @__end_rodata to i64)
  %0 = and i1 %cmp, %cmp1
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i1 @check_dr_size(i64 noundef %size, i64* nocapture noundef writeonly %tot_size) unnamed_addr #9 {
entry:
  %0 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %size, i64 128)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  store i64 %2, i64* %tot_size, align 8
  %3 = xor i1 %1, true
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ksize(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @devm_kmalloc_match(%struct.device* nocapture noundef readnone %dev, i8* noundef readnone %res, i8* noundef readnone %data) #7 {
entry:
  %cmp = icmp eq i8* %res, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @replace_dr(%struct.devres_node* nocapture noundef readonly %old, %struct.devres_node* noundef %new) unnamed_addr #0 {
entry:
  %entry1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %new, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %entry1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body5, label %do.end8, !prof !8

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 138; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !25
  unreachable

do.end8:                                          ; preds = %entry
  %entry9 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %old, i64 0, i32 0
  call fastcc void @list_replace(%struct.list_head* noundef %entry9, %struct.list_head* noundef %entry1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @devm_kstrdup(%struct.device* noundef %dev, i8* noundef %s, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %s, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @strlen(i8* noundef nonnull %s) #16
  %add = add i64 %call, 1
  %call1 = call noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef %add, i32 noundef %gfp) #17
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @memcpy(i8* noundef nonnull %call1, i8* noundef nonnull %s, i64 noundef %add) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call1, %if.then3 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devm_kstrdup_const(%struct.device* noundef %dev, i8* noundef %s, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %s to i64
  %call = call fastcc i1 @is_kernel_rodata(i64 noundef %0) #17
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @devm_kstrdup(%struct.device* noundef %dev, i8* noundef %s, i32 noundef %gfp) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call1, %if.end ], [ %s, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @devm_kvasprintf(%struct.device* noundef %dev, i32 noundef %gfp, i8* noundef %fmt, %"struct.std::__va_list"* noundef %ap) local_unnamed_addr #0 {
entry:
  %aq = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %byval-temp5 = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %aq to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.va_copy(i8* nonnull %0, i8* %1)
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef null, i64 noundef 0, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #15
  call void @llvm.va_end(i8* nonnull %0)
  %add = add i32 %call, 1
  %conv = zext i32 %add to i64
  %call2 = call noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef %conv, i32 noundef %gfp) #17
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = bitcast %"struct.std::__va_list"* %byval-temp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %3, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call6 = call i32 @vsnprintf(i8* noundef nonnull %call2, i64 noundef %conv, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp5) #16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #15
  ret i8* %call2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @devm_kasprintf(%struct.device* noundef %dev, i32 noundef %gfp, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call noalias i8* @devm_kvasprintf(%struct.device* noundef %dev, i32 noundef %gfp, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #15
  ret i8* %call
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @devm_kmemdup(%struct.device* noundef %dev, i8* noundef %src, i64 noundef %len, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @devm_kmalloc(%struct.device* noundef %dev, i64 noundef %len, i32 noundef %gfp) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %src, i64 noundef %len) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @devm_get_free_pages(%struct.device* noundef %dev, i32 noundef %gfp_mask, i32 noundef %order) local_unnamed_addr #0 {
entry:
  %call = call i64 @__get_free_pages(i32 noundef %gfp_mask, i32 noundef %order) #16
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call4 = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_pages_release, i64 noundef 16, i32 noundef 3264, i32 undef, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #17
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %if.then15, label %if.end16, !prof !8

if.then15:                                        ; preds = %if.end
  call void @free_pages(i64 noundef %call, i32 noundef %order) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %addr17 = bitcast i8* %call4 to i64*
  store i64 %call, i64* %addr17, align 8
  %order18 = getelementptr inbounds i8, i8* %call4, i64 8
  %0 = bitcast i8* %order18 to i32*
  store i32 %order, i32* %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call4) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end16, %if.then15
  %retval.0 = phi i64 [ 0, %if.then15 ], [ %call, %if.end16 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_pages_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %addr = bitcast i8* %res to i64*
  %0 = load i64, i64* %addr, align 8
  %order = getelementptr inbounds i8, i8* %res, i64 8
  %1 = bitcast i8* %order to i32*
  %2 = load i32, i32* %1, align 8
  call void @free_pages(i64 noundef %0, i32 noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_free_pages(%struct.device* noundef %dev, i64 noundef %addr) local_unnamed_addr #0 {
entry:
  %devres = alloca %struct.pages_devres, align 8
  %0 = bitcast %struct.pages_devres* %devres to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %1 = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %devres, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %addr1 = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %devres, i64 0, i32 0
  store i64 %addr, i64* %addr1, align 8
  %call = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_pages_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_pages_match, i8* noundef nonnull %0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 1155; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @devm_pages_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* nocapture noundef readonly %p) #8 {
entry:
  %addr = bitcast i8* %res to i64*
  %0 = load i64, i64* %addr, align 8
  %addr1 = bitcast i8* %p to i64*
  %1 = load i64, i64* %addr1, align 8
  %cmp = icmp eq i64 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__devm_alloc_percpu(%struct.device* noundef %dev, i64 noundef %size, i64 noundef %align) local_unnamed_addr #0 {
entry:
  %call = call i8* @__alloc_percpu(i64 noundef %size, i64 noundef %align) #16
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_percpu_release, i64 noundef 8, i32 noundef 3264, i32 undef, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #17
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @free_percpu(i8* noundef nonnull %call) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = bitcast i8* %call1 to i8**
  store i8* %call, i8** %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i8* [ %call, %if.end4 ], [ null, %if.then3 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_percpu_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %pdata) #0 {
entry:
  %0 = bitcast i8* %pdata to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_free_percpu(%struct.device* noundef %dev, i8* noundef %pdata) local_unnamed_addr #0 {
entry:
  %call = call i32 @devres_destroy(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_percpu_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_percpu_match, i8* noundef %pdata) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/devres.c\22; .popsection; .long 14472b - 14470b; .short 1220; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @devm_percpu_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %data, i8* noundef readnone %p) #8 {
entry:
  %0 = bitcast i8* %data to i8**
  %1 = load i8*, i8** %0, align 128
  %cmp = icmp eq i8* %1, %p
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__kmalloc_track_caller(i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #17
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #15, !srcloc !28
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #15, !srcloc !29
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #15, !srcloc !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #15, !srcloc !31
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #17
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #15, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #15, !srcloc !34
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.devres_group* @node_to_group(%struct.devres_node* noundef readonly %node) unnamed_addr #8 {
entry:
  %release = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node, i64 0, i32 1
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release, align 8
  %cmp = icmp eq void (%struct.device*, i8*)* %0, @group_open_release
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.devres_node* %node to %struct.devres_group*
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq void (%struct.device*, i8*)* %0, @group_close_release
  br i1 %cmp2, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  %add.ptr916 = getelementptr %struct.devres_node, %struct.devres_node* %node, i64 -1
  %2 = bitcast %struct.devres_node* %add.ptr916 to %struct.devres_group*
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi %struct.devres_group* [ %1, %if.then ], [ %2, %if.then3 ], [ null, %if.end ]
  ret %struct.devres_group* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #17
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_replace(%struct.list_head* nocapture noundef readonly %old, %struct.list_head* noundef %new) unnamed_addr #14 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %old, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %old, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev3, align 8
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev4, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nobuiltin "no-builtins" }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149739133}
!10 = !{i64 2152480499}
!11 = !{i64 2152465624}
!12 = !{i64 2152519905}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2152509239}
!15 = !{i64 2152510656}
!16 = !{i64 2152530054}
!17 = !{i64 2152532181}
!18 = !{i64 2152534396}
!19 = !{i64 2152540749}
!20 = !{i64 2152542521}
!21 = !{i64 2152544650}
!22 = !{i64 2152548539}
!23 = !{i64 2152550974}
!24 = !{i64 2152553523}
!25 = !{i64 2152467023}
!26 = !{i64 2152555959}
!27 = !{i64 2152560209}
!28 = !{i64 2148993681, i64 2148993728, i64 2148993734, i64 2148993771, i64 2148993789, i64 2148995100, i64 2148995148, i64 2148995196, i64 2148995259, i64 2148995308, i64 2148993867, i64 2148993892, i64 2148993918, i64 2148993924, i64 2148994766, i64 2148994806, i64 2148994824, i64 2148994856, i64 2148994884, i64 2148994938, i64 2148994958, i64 2148995055, i64 2148993947, i64 2148993961, i64 2148993967, i64 2148994017, i64 2148994063, i64 2148994096}
!29 = !{i64 2148995860, i64 2148995907, i64 2148995913, i64 2148995950, i64 2148995968, i64 2148996911, i64 2148996959, i64 2148997007, i64 2148997070, i64 2148997119, i64 2148996046, i64 2148996071, i64 2148996097, i64 2148996103, i64 2148996140, i64 2148996146, i64 2148996196, i64 2148996242, i64 2148996275}
!30 = !{i64 2148987978, i64 2148988025, i64 2148988031, i64 2148988068, i64 2148988086, i64 2148989427, i64 2148989475, i64 2148989523, i64 2148989586, i64 2148989635, i64 2148988164, i64 2148988189, i64 2148988215, i64 2148988221, i64 2148989093, i64 2148989133, i64 2148989151, i64 2148989183, i64 2148989211, i64 2148989265, i64 2148989285, i64 2148989382, i64 2148988244, i64 2148988258, i64 2148988264, i64 2148988314, i64 2148988360, i64 2148988393}
!31 = !{i64 2148101229, i64 2148101262, i64 2148101315, i64 2148101374, i64 2148101408, i64 2148101463, i64 2148101492, i64 2148101512}
!32 = !{i64 2149764976}
!33 = !{i64 2149708263}
!34 = !{i64 2148999694, i64 2148999741, i64 2148999747, i64 2148999784, i64 2148999802, i64 2149001113, i64 2149001161, i64 2149001209, i64 2149001272, i64 2149001321, i64 2148999880, i64 2148999905, i64 2148999931, i64 2148999937, i64 2149000779, i64 2149000819, i64 2149000837, i64 2149000869, i64 2149000897, i64 2149000951, i64 2149000971, i64 2149001068, i64 2148999960, i64 2148999974, i64 2148999980, i64 2149000030, i64 2149000076, i64 2149000109}
