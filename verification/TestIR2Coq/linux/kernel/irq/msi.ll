; ModuleID = 'kernel/irq/msi.c'
source_filename = "kernel/irq/msi.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.73, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.65 }
%struct.msi_msg = type { %union.anon.62, %union.anon.63, %union.anon.64 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %union.anon.67, %struct.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%struct.anon.68 = type { i16, i16, i32 }
%union.anon.69 = type { i8* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.msi_domain_ops = type { i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, void (%struct.msi_alloc_info*, i32)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)*, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)*, void (%struct.irq_domain*, %struct.device*)* }
%struct.msi_domain_info = type { i32, %struct.msi_domain_ops*, %struct.irq_chip*, i8*, void (%struct.irq_desc*)*, i8*, i8*, i8* }
%struct.msi_alloc_info = type { %struct.msi_desc*, i64, i64, [2 x %union.anon.74] }
%union.anon.74 = type { i64 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"msi_irqs\00", align 1
@msi_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* null, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* @msi_domain_alloc, void (%struct.irq_domain*, i32, i32)* @msi_domain_free, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* @msi_domain_activate, void (%struct.irq_domain*, %struct.irq_data*)* @msi_domain_deactivate, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* null }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@msi_domain_ops_default = internal global %struct.msi_domain_ops { i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)* @msi_domain_ops_get_hwirq, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)* @msi_domain_ops_init, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)* null, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)* @msi_domain_ops_check, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)* @msi_domain_ops_prepare, void (%struct.msi_alloc_info*, i32)* null, void (%struct.msi_alloc_info*, %struct.msi_desc*)* @msi_domain_ops_set_desc, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)* null, i32 (%struct.irq_domain*, %struct.device*, i32)* @__msi_domain_alloc_irqs, void (%struct.irq_domain*, %struct.device*)* @__msi_domain_free_irqs }, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.msi_desc* @alloc_msi_entry(%struct.device* noundef %dev, i32 noundef %nvec, %struct.irq_affinity_desc* noundef %affinity) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 96) #12
  %0 = bitcast i8* %call to %struct.msi_desc*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %list = bitcast i8* %call to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %list) #12
  %dev1 = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %dev1 to %struct.device**
  store %struct.device* %dev, %struct.device** %1, align 8
  %nvec_used = getelementptr inbounds i8, i8* %call, i64 20
  %2 = bitcast i8* %nvec_used to i32*
  store i32 %nvec, i32* %2, align 4
  %tobool2.not = icmp eq %struct.irq_affinity_desc* %affinity, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = bitcast %struct.irq_affinity_desc* %affinity to i8*
  %conv = sext i32 %nvec to i64
  %mul = mul nsw i64 %conv, 40
  %call4 = call i8* @kmemdup(i8* noundef nonnull %3, i64 noundef %mul, i32 noundef 3264) #13
  %affinity5 = getelementptr inbounds i8, i8* %call, i64 48
  %4 = bitcast i8* %affinity5 to i8**
  store i8* %call4, i8** %4, align 8
  %tobool7.not = icmp eq i8* %call4, null
  br i1 %tobool7.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.then3
  call void @kfree(i8* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry, %if.then8
  %retval.0 = phi %struct.msi_desc* [ null, %if.then8 ], [ null, %entry ], [ %0, %if.then3 ], [ %0, %if.end ]
  ret %struct.msi_desc* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #13
  ret i8* %call10.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kmemdup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_msi_entry(%struct.msi_desc* noundef %entry1) local_unnamed_addr #0 {
entry:
  %affinity = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1, i64 0, i32 5
  %0 = bitcast %struct.irq_affinity_desc** %affinity to i8**
  %1 = load i8*, i8** %0, align 8
  call void @kfree(i8* noundef %1) #13
  %2 = bitcast %struct.msi_desc* %entry1 to i8*
  call void @kfree(i8* noundef %2) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__get_cached_msi_msg(%struct.msi_desc* nocapture noundef readonly %entry1, %struct.msi_msg* nocapture noundef writeonly %msg) local_unnamed_addr #4 {
entry:
  %msg2 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1, i64 0, i32 4
  %0 = bitcast %struct.msi_msg* %msg to i8*
  %1 = bitcast %struct.msi_msg* %msg2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(12) %0, i8* noundef align 8 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @get_cached_msi_msg(i32 noundef %irq, %struct.msi_msg* nocapture noundef writeonly %msg) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.msi_desc* @irq_get_msi_desc(i32 noundef %irq) #12
  call void @__get_cached_msi_msg(%struct.msi_desc* noundef %call, %struct.msi_msg* noundef %msg) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.msi_desc* @irq_get_msi_desc(i32 noundef %irq) unnamed_addr #0 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %irq) #13
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %msi_desc = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 2
  %1 = load %struct.msi_desc*, %struct.msi_desc** %msi_desc, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.msi_desc* [ %1, %cond.true ], [ null, %entry ]
  ret %struct.msi_desc* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.attribute_group** @msi_populate_sysfs(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  %0 = bitcast %struct.list_head* %msi_list to %struct.msi_desc**
  %entry1.0162 = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  %list163 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1.0162, i64 0, i32 0
  %cmp.not164 = icmp eq %struct.list_head* %list163, %msi_list
  br i1 %cmp.not164, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %entry1.0166 = phi %struct.msi_desc* [ %entry1.0, %for.body ], [ %entry1.0162, %entry ]
  %num_msi.0165 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %nvec_used = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1.0166, i64 0, i32 2
  %1 = load i32, i32* %nvec_used, align 4
  %add = add i32 %1, %num_msi.0165
  %2 = bitcast %struct.msi_desc* %entry1.0166 to %struct.msi_desc**
  %entry1.0 = load %struct.msi_desc*, %struct.msi_desc** %2, align 8
  %list = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, %msi_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.end
  %add11 = add i32 %add, 1
  %conv = sext i32 %add11 to i64
  %call = call fastcc i8* @kcalloc(i64 noundef %conv) #12
  %3 = bitcast i8* %call to %struct.attribute**
  %tobool12.not = icmp eq i8* %call, null
  br i1 %tobool12.not, label %cleanup.sink.split, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %if.end
  %entry1.1171 = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  %list25172 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1.1171, i64 0, i32 0
  %cmp27.not173 = icmp eq %struct.list_head* %list25172, %msi_list
  br i1 %cmp27.not173, label %for.end64, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond24.preheader, %for.inc55
  %entry1.1175 = phi %struct.msi_desc* [ %entry1.1, %for.inc55 ], [ %entry1.1171, %for.cond24.preheader ]
  %count.0174 = phi i32 [ %count.1.lcssa, %for.inc55 ], [ 0, %for.cond24.preheader ]
  %nvec_used32 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1.1175, i64 0, i32 2
  %4 = load i32, i32* %nvec_used32, align 4
  %cmp33167.not = icmp eq i32 %4, 0
  br i1 %cmp33167.not, label %for.inc55, label %for.body35.lr.ph

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1.1175, i64 0, i32 1
  br label %for.body35

for.body35:                                       ; preds = %for.body35.lr.ph, %if.end50
  %count.1169 = phi i32 [ %count.0174, %for.body35.lr.ph ], [ %inc, %if.end50 ]
  %i.0168 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc53, %if.end50 ]
  %call36 = call fastcc i8* @kzalloc(i64 noundef 32) #12
  %tobool37.not = icmp eq i8* %call36, null
  br i1 %tobool37.not, label %error_attrs, label %if.end39

if.end39:                                         ; preds = %for.body35
  %idxprom = sext i32 %count.1169 to i64
  %arrayidx = getelementptr %struct.attribute*, %struct.attribute** %3, i64 %idxprom
  %5 = bitcast %struct.attribute** %arrayidx to i8**
  store i8* %call36, i8** %5, align 8
  %6 = load i32, i32* %irq, align 8
  %add43 = add i32 %6, %i.0168
  %call44 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %add43) #13
  %name = bitcast i8* %call36 to i8**
  store i8* %call44, i8** %name, align 8
  %tobool48.not = icmp eq i8* %call44, null
  br i1 %tobool48.not, label %error_attrs, label %if.end50

if.end50:                                         ; preds = %if.end39
  %mode = getelementptr inbounds i8, i8* %call36, i64 8
  %7 = bitcast i8* %mode to i16*
  store i16 292, i16* %7, align 8
  %show = getelementptr inbounds i8, i8* %call36, i64 16
  %8 = bitcast i8* %show to i64 (%struct.device*, %struct.device_attribute*, i8*)**
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @msi_mode_show, i64 (%struct.device*, %struct.device_attribute*, i8*)** %8, align 8
  %inc = add i32 %count.1169, 1
  %inc53 = add nuw i32 %i.0168, 1
  %9 = load i32, i32* %nvec_used32, align 4
  %cmp33 = icmp ult i32 %inc53, %9
  br i1 %cmp33, label %for.body35, label %for.inc55

for.inc55:                                        ; preds = %if.end50, %for.cond31.preheader
  %count.1.lcssa = phi i32 [ %count.0174, %for.cond31.preheader ], [ %inc, %if.end50 ]
  %10 = bitcast %struct.msi_desc* %entry1.1175 to %struct.msi_desc**
  %entry1.1 = load %struct.msi_desc*, %struct.msi_desc** %10, align 8
  %list25 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1.1, i64 0, i32 0
  %cmp27.not = icmp eq %struct.list_head* %list25, %msi_list
  br i1 %cmp27.not, label %for.end64, label %for.cond31.preheader

for.end64:                                        ; preds = %for.inc55, %for.cond24.preheader
  %call65 = call fastcc i8* @kzalloc(i64 noundef 40) #12
  %tobool66.not = icmp eq i8* %call65, null
  br i1 %tobool66.not, label %error_attrs, label %if.end68

if.end68:                                         ; preds = %for.end64
  %name69 = bitcast i8* %call65 to i8**
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %name69, align 8
  %attrs = getelementptr inbounds i8, i8* %call65, i64 24
  %11 = bitcast i8* %attrs to i8**
  store i8* %call, i8** %11, align 8
  %call70 = call fastcc i8* @kcalloc(i64 noundef 2) #12
  %12 = bitcast i8* %call70 to %struct.attribute_group**
  %tobool71.not = icmp eq i8* %call70, null
  br i1 %tobool71.not, label %error_irq_group, label %if.end73

if.end73:                                         ; preds = %if.end68
  %13 = bitcast i8* %call70 to i8**
  store i8* %call65, i8** %13, align 8
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call75 = call i32 @sysfs_create_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef nonnull %12) #13
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %cleanup, label %error_irq_groups

error_irq_groups:                                 ; preds = %if.end73
  call void @kfree(i8* noundef nonnull %call70) #13
  br label %error_irq_group

error_irq_group:                                  ; preds = %if.end68, %error_irq_groups
  %ret.0 = phi i32 [ %call75, %error_irq_groups ], [ -12, %if.end68 ]
  call void @kfree(i8* noundef nonnull %call65) #13
  br label %error_attrs

error_attrs:                                      ; preds = %if.end39, %for.body35, %for.end64, %error_irq_group
  %ret.1 = phi i32 [ %ret.0, %error_irq_group ], [ -12, %for.end64 ], [ -12, %for.body35 ], [ -12, %if.end39 ]
  %msi_attr.0177 = load %struct.attribute*, %struct.attribute** %3, align 8
  %tobool81.not178 = icmp eq %struct.attribute* %msi_attr.0177, null
  br i1 %tobool81.not178, label %while.end, label %while.body

while.body:                                       ; preds = %error_attrs, %while.body
  %msi_attr.0180 = phi %struct.attribute* [ %msi_attr.0, %while.body ], [ %msi_attr.0177, %error_attrs ]
  %count.2179 = phi i32 [ %inc89, %while.body ], [ 0, %error_attrs ]
  %14 = bitcast %struct.attribute* %msi_attr.0180 to i8*
  %name88 = getelementptr inbounds %struct.attribute, %struct.attribute* %msi_attr.0180, i64 0, i32 0
  %15 = load i8*, i8** %name88, align 8
  call void @kfree(i8* noundef %15) #13
  call void @kfree(i8* noundef nonnull %14) #13
  %inc89 = add i32 %count.2179, 1
  %idxprom90 = sext i32 %inc89 to i64
  %arrayidx91 = getelementptr %struct.attribute*, %struct.attribute** %3, i64 %idxprom90
  %msi_attr.0 = load %struct.attribute*, %struct.attribute** %arrayidx91, align 8
  %tobool81.not = icmp eq %struct.attribute* %msi_attr.0, null
  br i1 %tobool81.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %error_attrs
  call void @kfree(i8* noundef nonnull %call) #13
  %conv92 = sext i32 %ret.1 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %while.end
  %conv92.sink = phi i64 [ %conv92, %while.end ], [ -12, %if.end ]
  %call93 = call fastcc i8* @ERR_PTR(i64 noundef %conv92.sink) #12
  %16 = bitcast i8* %call93 to %struct.attribute_group**
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry, %if.end73, %for.end
  %retval.0 = phi %struct.attribute_group** [ null, %for.end ], [ %12, %if.end73 ], [ null, %entry ], [ %16, %cleanup.sink.split ]
  ret %struct.attribute_group** %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #12
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #6 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @msi_mode_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readonly %attr, i8* noundef %buf) #0 {
entry:
  %irq = alloca i64, align 8
  %0 = bitcast i64* %irq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %irq, align 8, !annotation !7
  %name = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call fastcc i32 @kstrtoul(i8* noundef %1, i64* noundef nonnull %irq) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %irq, align 8
  %conv4 = trunc i64 %2 to i32
  %call5 = call fastcc %struct.msi_desc* @irq_get_msi_desc(i32 noundef %conv4) #12
  %tobool6.not = icmp eq %struct.msi_desc* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %call11 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #13
  %conv12 = sext i32 %call11 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end8, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %conv12, %if.end8 ], [ -19, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @msi_destroy_sysfs(%struct.device* noundef %dev, %struct.attribute_group** noundef %msi_irq_groups) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.attribute_group** %msi_irq_groups, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef nonnull %msi_irq_groups) #13
  %0 = load %struct.attribute_group*, %struct.attribute_group** %msi_irq_groups, align 8
  %attrs = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %0, i64 0, i32 3
  %1 = load %struct.attribute**, %struct.attribute*** %attrs, align 8
  %2 = load %struct.attribute*, %struct.attribute** %1, align 8
  %tobool2.not19 = icmp eq %struct.attribute* %2, null
  br i1 %tobool2.not19, label %while.end, label %while.body

while.body:                                       ; preds = %if.then, %while.body
  %3 = phi %struct.attribute* [ %6, %while.body ], [ %2, %if.then ]
  %count.020 = phi i32 [ %inc, %while.body ], [ 0, %if.then ]
  %4 = bitcast %struct.attribute* %3 to i8*
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %3, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void @kfree(i8* noundef %5) #13
  call void @kfree(i8* noundef nonnull %4) #13
  %inc = add i32 %count.020, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx1 = getelementptr %struct.attribute*, %struct.attribute** %1, i64 %idxprom
  %6 = load %struct.attribute*, %struct.attribute** %arrayidx1, align 8
  %tobool2.not = icmp eq %struct.attribute* %6, null
  br i1 %tobool2.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then
  %7 = bitcast %struct.attribute** %1 to i8*
  call void @kfree(i8* noundef %7) #13
  %8 = bitcast %struct.attribute_group** %msi_irq_groups to i8**
  %9 = load i8*, i8** %8, align 8
  call void @kfree(i8* noundef %9) #13
  %10 = bitcast %struct.attribute_group** %msi_irq_groups to i8*
  call void @kfree(i8* noundef nonnull %10) #13
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @msi_domain_set_affinity(%struct.irq_data* noundef %irq_data, %struct.cpumask* noundef %mask, i1 noundef %force) #0 {
entry:
  %msg = alloca [2 x %struct.msi_msg], align 4
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %1 = bitcast [2 x %struct.msi_msg]* %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %2 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %2, i64 0, i32 11
  %3 = load i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  %call = call i32 %3(%struct.irq_data* noundef %0, %struct.cpumask* noundef %mask, i1 noundef %force) #13
  %cmp = icmp sgt i32 %call, -1
  %cmp1 = icmp ne i32 %call, 2
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.msi_msg], [2 x %struct.msi_msg]* %msg, i64 0, i64 0
  %call2 = call i32 @irq_chip_compose_msi_msg(%struct.irq_data* noundef %irq_data, %struct.msi_msg* noundef nonnull %arraydecay) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end12, label %do.body7, !prof !8

do.body7:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/msi.c\22; .popsection; .long 14472b - 14470b; .short 248; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  unreachable

do.end12:                                         ; preds = %do.body
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i64 0, i32 5
  %4 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  call fastcc void @msi_check_level(%struct.irq_domain* noundef %4, %struct.msi_msg* noundef nonnull %arraydecay) #12
  call fastcc void @irq_chip_write_msi_msg(%struct.irq_data* noundef %irq_data, %struct.msi_msg* noundef nonnull %arraydecay) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #14
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_compose_msi_msg(%struct.irq_data* noundef, %struct.msi_msg* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @msi_check_level(%struct.irq_domain* nocapture noundef readonly %domain, %struct.msi_msg* nocapture noundef readonly %msg) unnamed_addr #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.msi_domain_info**
  %1 = load %struct.msi_domain_info*, %struct.msi_domain_info** %0, align 8
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 0
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %chip = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 2
  %3 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %flags1 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %3, i64 0, i32 35
  %4 = load i64, i64* %flags1, align 8
  %and2 = and i64 %4, 128
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %land.lhs.true, %entry
  %address_lo = getelementptr %struct.msi_msg, %struct.msi_msg* %msg, i64 1, i32 0, i32 0
  %5 = load i32, i32* %address_lo, align 4
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.rhs
  %address_hi = getelementptr %struct.msi_msg, %struct.msi_msg* %msg, i64 1, i32 1, i32 0
  %6 = load i32, i32* %address_hi, align 4
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %lor.rhs, label %if.then

lor.rhs:                                          ; preds = %lor.lhs.false
  %data = getelementptr %struct.msi_msg, %struct.msi_msg* %msg, i64 1, i32 2, i32 0
  %7 = load i32, i32* %data, align 4
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %land.rhs, %lor.lhs.false, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/msi.c\22; .popsection; .long 14472b - 14470b; .short 225; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then, %lor.rhs
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_chip_write_msi_msg(%struct.irq_data* noundef %data, %struct.msi_msg* noundef %msg) unnamed_addr #0 {
entry:
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_write_msi_msg = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 27
  %1 = load void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)** %irq_write_msi_msg, align 8
  call void %1(%struct.irq_data* noundef %data, %struct.msi_msg* noundef %msg) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle* noundef %fwnode, %struct.msi_domain_info* noundef %info, %struct.irq_domain* noundef %parent) local_unnamed_addr #0 {
entry:
  call fastcc void @msi_domain_update_dom_ops(%struct.msi_domain_info* noundef %info) #12
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @msi_domain_update_chip_ops(%struct.msi_domain_info* noundef %info) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.msi_domain_info* %info to i8*
  %call = call %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* noundef %parent, i32 noundef 16, i32 noundef 0, %struct.fwnode_handle* noundef %fwnode, %struct.irq_domain_ops* noundef nonnull @msi_domain_ops, i8* noundef %1) #13
  %tobool1.not = icmp eq %struct.irq_domain* %call, null
  br i1 %tobool1.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %call, i64 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %tobool2.not = icmp eq i8* %2, null
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end9

land.lhs.true3:                                   ; preds = %land.lhs.true
  %chip = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 2
  %3 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool4.not = icmp eq %struct.irq_chip* %3, null
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %land.lhs.true3
  %name7 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %3, i64 0, i32 1
  %4 = load i8*, i8** %name7, align 8
  store i8* %4, i8** %name, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %land.lhs.true3, %land.lhs.true, %if.end
  ret %struct.irq_domain* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @msi_domain_update_dom_ops(%struct.msi_domain_info* nocapture noundef %info) unnamed_addr #8 {
entry:
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 1
  %0 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8
  %cmp = icmp eq %struct.msi_domain_ops* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.msi_domain_ops* @msi_domain_ops_default, %struct.msi_domain_ops** %ops1, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %domain_alloc_irqs = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 8
  %1 = load i32 (%struct.irq_domain*, %struct.device*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)** %domain_alloc_irqs, align 8
  %cmp3 = icmp eq i32 (%struct.irq_domain*, %struct.device*, i32)* %1, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %2 = load i32 (%struct.irq_domain*, %struct.device*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)** getelementptr inbounds (%struct.msi_domain_ops, %struct.msi_domain_ops* @msi_domain_ops_default, i64 0, i32 8), align 8
  store i32 (%struct.irq_domain*, %struct.device*, i32)* %2, i32 (%struct.irq_domain*, %struct.device*, i32)** %domain_alloc_irqs, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %domain_free_irqs = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 9
  %3 = load void (%struct.irq_domain*, %struct.device*)*, void (%struct.irq_domain*, %struct.device*)** %domain_free_irqs, align 8
  %cmp7 = icmp eq void (%struct.irq_domain*, %struct.device*)* %3, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %4 = load void (%struct.irq_domain*, %struct.device*)*, void (%struct.irq_domain*, %struct.device*)** getelementptr inbounds (%struct.msi_domain_ops, %struct.msi_domain_ops* @msi_domain_ops_default, i64 0, i32 9), align 8
  store void (%struct.irq_domain*, %struct.device*)* %4, void (%struct.irq_domain*, %struct.device*)** %domain_free_irqs, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 0
  %5 = load i32, i32* %flags, align 8
  %and = and i32 %5, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end10
  %get_hwirq = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 0
  %6 = load i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)*, i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)** %get_hwirq, align 8
  %cmp13 = icmp eq i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)* %6, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %7 = load i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)*, i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)** getelementptr inbounds (%struct.msi_domain_ops, %struct.msi_domain_ops* @msi_domain_ops_default, i64 0, i32 0), align 8
  store i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)* %7, i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)** %get_hwirq, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %msi_init = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 1
  %8 = load i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)** %msi_init, align 8
  %cmp17 = icmp eq i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)* %8, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %9 = load i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)** getelementptr inbounds (%struct.msi_domain_ops, %struct.msi_domain_ops* @msi_domain_ops_default, i64 0, i32 1), align 8
  store i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)* %9, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)** %msi_init, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %msi_check = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 3
  %10 = load i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)** %msi_check, align 8
  %cmp21 = icmp eq i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)* %10, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %11 = load i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)** getelementptr inbounds (%struct.msi_domain_ops, %struct.msi_domain_ops* @msi_domain_ops_default, i64 0, i32 3), align 8
  store i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)* %11, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)** %msi_check, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  %msi_prepare = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 4
  %12 = load i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)** %msi_prepare, align 8
  %cmp25 = icmp eq i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)* %12, null
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %13 = load i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)** getelementptr inbounds (%struct.msi_domain_ops, %struct.msi_domain_ops* @msi_domain_ops_default, i64 0, i32 4), align 8
  store i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)* %13, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)** %msi_prepare, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %0, i64 0, i32 6
  %14 = load void (%struct.msi_alloc_info*, %struct.msi_desc*)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)** %set_desc, align 8
  %cmp29 = icmp eq void (%struct.msi_alloc_info*, %struct.msi_desc*)* %14, null
  br i1 %cmp29, label %if.then30, label %cleanup

if.then30:                                        ; preds = %if.end28
  %15 = load void (%struct.msi_alloc_info*, %struct.msi_desc*)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)** getelementptr inbounds (%struct.msi_domain_ops, %struct.msi_domain_ops* @msi_domain_ops_default, i64 0, i32 6), align 8
  store void (%struct.msi_alloc_info*, %struct.msi_desc*)* %15, void (%struct.msi_alloc_info*, %struct.msi_desc*)** %set_desc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then30, %if.end10, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @msi_domain_update_chip_ops(%struct.msi_domain_info* nocapture noundef readonly %info) unnamed_addr #0 {
entry:
  %chip1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 2
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip1, align 8
  %tobool.not = icmp eq %struct.irq_chip* %0, null
  br i1 %tobool.not, label %do.body7, label %lor.lhs.false, !prof !11

lor.lhs.false:                                    ; preds = %entry
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 7
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  %tobool2.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool2.not, label %do.body7, label %lor.rhs, !prof !11

lor.rhs:                                          ; preds = %lor.lhs.false
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 9
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  %tobool3.not = icmp eq void (%struct.irq_data*)* %2, null
  br i1 %tobool3.not, label %do.body7, label %do.end12, !prof !11

do.body7:                                         ; preds = %entry, %lor.lhs.false, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/msi.c\22; .popsection; .long 14472b - 14470b; .short 412; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !12
  unreachable

do.end12:                                         ; preds = %lor.rhs
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 11
  %3 = load i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  %tobool13.not = icmp eq i32 (%struct.irq_data*, %struct.cpumask*, i1)* %3, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end12
  store i32 (%struct.irq_data*, %struct.cpumask*, i1)* @msi_domain_set_affinity, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.end12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* noundef, i32 noundef, i32 noundef, %struct.fwnode_handle* noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @msi_domain_prepare_irqs(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev, i32 noundef %nvec, %struct.msi_alloc_info* noundef %arg) local_unnamed_addr #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.msi_domain_info**
  %1 = load %struct.msi_domain_info*, %struct.msi_domain_info** %0, align 8
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 1
  %2 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8
  %msi_check = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 3
  %3 = load i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)** %msi_check, align 8
  %call = call i32 %3(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* noundef %1, %struct.device* noundef %dev) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %msi_prepare = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 4
  %4 = load i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)** %msi_prepare, align 8
  %call2 = call i32 %4(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev, i32 noundef %nvec, %struct.msi_alloc_info* noundef %arg) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @msi_domain_populate_irqs(%struct.irq_domain* noundef %domain, %struct.device* noundef readonly %dev, i32 noundef %virq, i32 noundef %nvec, %struct.msi_alloc_info* noundef %arg) local_unnamed_addr #0 {
entry:
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  %0 = bitcast %struct.list_head* %msi_list to %struct.msi_desc**
  %desc.0128 = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  %list129 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0128, i64 0, i32 0
  %cmp.not130 = icmp eq %struct.list_head* %list129, %msi_list
  br i1 %cmp.not130, label %if.end84, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %1 = bitcast i8** %host_data to %struct.msi_domain_info**
  %2 = load %struct.msi_domain_info*, %struct.msi_domain_info** %1, align 8
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %2, i64 0, i32 1
  %3 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8
  %add = add i32 %nvec, %virq
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %3, i64 0, i32 6
  %4 = bitcast %struct.msi_alloc_info* %arg to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %desc.0131 = phi %struct.msi_desc* [ %desc.0128, %for.body.lr.ph ], [ %desc.0, %for.inc ]
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0131, i64 0, i32 1
  %5 = load i32, i32* %irq, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %nvec_used = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0131, i64 0, i32 2
  %6 = load i32, i32* %nvec_used, align 4
  %cmp3.not = icmp eq i32 %6, 1
  br i1 %cmp3.not, label %if.end22, label %if.then, !prof !8

if.then:                                          ; preds = %for.body, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/msi.c\22; .popsection; .long 14472b - 14470b; .short 468; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  br label %if.then46

if.end22:                                         ; preds = %lor.rhs
  %cmp24.not = icmp uge i32 %5, %virq
  %cmp27 = icmp ult i32 %5, %add
  %or.cond = and i1 %cmp24.not, %cmp27
  br i1 %or.cond, label %if.end30, label %for.inc

if.end30:                                         ; preds = %if.end22
  %7 = load void (%struct.msi_alloc_info*, %struct.msi_desc*)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)** %set_desc, align 8
  call void %7(%struct.msi_alloc_info* noundef %arg, %struct.msi_desc* noundef %desc.0131) #13
  %8 = load i32, i32* %irq, align 8
  %call = call i32 @irq_domain_alloc_irqs_hierarchy(%struct.irq_domain* noundef %domain, i32 noundef %8, i32 noundef 1, i8* noundef %4) #13
  %tobool32.not = icmp eq i32 %call, 0
  br i1 %tobool32.not, label %if.end34, label %if.then46

if.end34:                                         ; preds = %if.end30
  %9 = load i32, i32* %irq, align 8
  %call36 = call i32 @irq_set_msi_desc_off(i32 noundef %9, i32 noundef 0, %struct.msi_desc* noundef %desc.0131) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %if.end34
  %10 = bitcast %struct.msi_desc* %desc.0131 to %struct.msi_desc**
  %desc.0 = load %struct.msi_desc*, %struct.msi_desc** %10, align 8
  %list = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, %msi_list
  br i1 %cmp.not, label %if.end84, label %for.body

if.then46:                                        ; preds = %if.end30, %if.then
  %ret.2.ph = phi i32 [ -22, %if.then ], [ %call, %if.end30 ]
  %desc.1133 = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  %list56134 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.1133, i64 0, i32 0
  %cmp58.not135 = icmp eq %struct.list_head* %list56134, %msi_list
  br i1 %cmp58.not135, label %if.end84, label %for.body62

for.body62:                                       ; preds = %if.then46, %for.inc74
  %desc.1136 = phi %struct.msi_desc* [ %desc.1, %for.inc74 ], [ %desc.1133, %if.then46 ]
  %irq63 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.1136, i64 0, i32 1
  %11 = load i32, i32* %irq63, align 8
  %cmp64.not = icmp uge i32 %11, %virq
  %cmp69 = icmp ult i32 %11, %add
  %or.cond122 = and i1 %cmp64.not, %cmp69
  br i1 %or.cond122, label %if.end72, label %for.inc74

if.end72:                                         ; preds = %for.body62
  call void @irq_domain_free_irqs_common(%struct.irq_domain* noundef %domain, i32 noundef %11, i32 noundef 1) #13
  br label %for.inc74

for.inc74:                                        ; preds = %for.body62, %if.end72
  %12 = bitcast %struct.msi_desc* %desc.1136 to %struct.msi_desc**
  %desc.1 = load %struct.msi_desc*, %struct.msi_desc** %12, align 8
  %list56 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.1, i64 0, i32 0
  %cmp58.not = icmp eq %struct.list_head* %list56, %msi_list
  br i1 %cmp58.not, label %if.end84, label %for.body62

if.end84:                                         ; preds = %for.inc, %for.inc74, %entry, %if.then46
  %ret.2126 = phi i32 [ %ret.2.ph, %if.then46 ], [ 0, %entry ], [ %ret.2.ph, %for.inc74 ], [ 0, %for.inc ]
  ret i32 %ret.2126
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_hierarchy(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_msi_desc_off(i32 noundef, i32 noundef, %struct.msi_desc* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(%struct.irq_domain* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__msi_domain_alloc_irqs(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev, i32 noundef %nvec) #0 {
entry:
  %arg = alloca %struct.msi_alloc_info, align 8
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.msi_domain_info**
  %1 = load %struct.msi_domain_info*, %struct.msi_domain_info** %0, align 8
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 1
  %2 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8
  %3 = bitcast %struct.msi_alloc_info* %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %call = call i32 @msi_domain_prepare_irqs(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev, i32 noundef %nvec, %struct.msi_alloc_info* noundef nonnull %arg) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup139

if.end:                                           ; preds = %entry
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  %4 = bitcast %struct.list_head* %msi_list to %struct.msi_desc**
  %desc.0238 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %list239 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0238, i64 0, i32 0
  %cmp.not240 = icmp eq %struct.list_head* %list239, %msi_list
  br i1 %cmp.not240, label %for.end31, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc22
  %desc.0241 = phi %struct.msi_desc* [ %desc.0238, %for.body.lr.ph ], [ %desc.0, %for.inc22 ]
  %5 = load void (%struct.msi_alloc_info*, %struct.msi_desc*)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)** %set_desc, align 8
  call void %5(%struct.msi_alloc_info* noundef nonnull %arg, %struct.msi_desc* noundef %desc.0241) #13
  %nvec_used = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0241, i64 0, i32 2
  %6 = load i32, i32* %nvec_used, align 4
  %affinity = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0241, i64 0, i32 5
  %7 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %affinity, align 8
  %call4 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef %domain, i32 noundef -1, i32 noundef %6, i32 noundef -1, i8* noundef nonnull %3, i1 noundef false, %struct.irq_affinity_desc* noundef %7) #13
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.body
  %8 = load i32, i32* %nvec_used, align 4
  %cmp19236.not = icmp eq i32 %8, 0
  br i1 %cmp19236.not, label %for.inc22, label %for.body20

if.then6:                                         ; preds = %for.body
  %handle_error = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 7
  %9 = load i32 (%struct.irq_domain*, %struct.msi_desc*, i32)*, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)** %handle_error, align 8
  %tobool7.not = icmp eq i32 (%struct.irq_domain*, %struct.msi_desc*, i32)* %9, null
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.then6
  %call10 = call i32 %9(%struct.irq_domain* noundef %domain, %struct.msi_desc* noundef %desc.0241, i32 noundef -28) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then6
  %ret.0 = phi i32 [ %call10, %if.then8 ], [ -28, %if.then6 ]
  %msi_finish = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 5
  %10 = load void (%struct.msi_alloc_info*, i32)*, void (%struct.msi_alloc_info*, i32)** %msi_finish, align 8
  %tobool12.not = icmp eq void (%struct.msi_alloc_info*, i32)* %10, null
  br i1 %tobool12.not, label %cleanup139, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void %10(%struct.msi_alloc_info* noundef nonnull %arg, i32 noundef %ret.0) #13
  br label %cleanup139

for.body20:                                       ; preds = %for.cond17.preheader, %for.body20
  %i.0237 = phi i32 [ %inc, %for.body20 ], [ 0, %for.cond17.preheader ]
  %call21 = call i32 @irq_set_msi_desc_off(i32 noundef %call4, i32 noundef %i.0237, %struct.msi_desc* noundef %desc.0241) #13
  %inc = add nuw i32 %i.0237, 1
  %11 = load i32, i32* %nvec_used, align 4
  %cmp19 = icmp ult i32 %inc, %11
  br i1 %cmp19, label %for.body20, label %for.inc22

for.inc22:                                        ; preds = %for.body20, %for.cond17.preheader
  %12 = bitcast %struct.msi_desc* %desc.0241 to %struct.msi_desc**
  %desc.0 = load %struct.msi_desc*, %struct.msi_desc** %12, align 8
  %list = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, %msi_list
  br i1 %cmp.not, label %for.end31, label %for.body

for.end31:                                        ; preds = %for.inc22, %if.end
  %msi_finish32 = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 5
  %13 = load void (%struct.msi_alloc_info*, i32)*, void (%struct.msi_alloc_info*, i32)** %msi_finish32, align 8
  %tobool33.not = icmp eq void (%struct.msi_alloc_info*, i32)* %13, null
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %for.end31
  call void %13(%struct.msi_alloc_info* noundef nonnull %arg, i32 noundef 0) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %for.end31
  %call37 = call fastcc i1 @msi_check_reservation_mode(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* noundef %1, %struct.device* noundef %dev) #12
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 0
  %14 = load i32, i32* %flags, align 8
  %and = and i32 %14, 16
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %skip_activate, label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %if.end36
  %desc.1246 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %list50247 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.1246, i64 0, i32 0
  %cmp52.not248 = icmp eq %struct.list_head* %list50247, %msi_list
  br i1 %cmp52.not248, label %skip_activate, label %for.body54.lr.ph

for.body54.lr.ph:                                 ; preds = %for.cond49.preheader
  %flags72 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  br label %for.body54

for.body54:                                       ; preds = %for.body54.lr.ph, %for.inc87
  %desc.1249 = phi %struct.msi_desc* [ %desc.1246, %for.body54.lr.ph ], [ %desc.1, %for.inc87 ]
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.1249, i64 0, i32 1
  %15 = load i32, i32* %irq, align 8
  %tobool55.not = icmp eq i32 %15, 0
  br i1 %tobool55.not, label %for.inc87, label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %for.body54
  %nvec_used60 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.1249, i64 0, i32 2
  %16 = load i32, i32* %nvec_used60, align 4
  %add61243 = add i32 %16, %15
  %cmp62244 = icmp ult i32 %15, %add61243
  br i1 %cmp62244, label %for.body63, label %for.inc87

for.cond58:                                       ; preds = %if.end77
  %17 = load i32, i32* %irq, align 8
  %18 = load i32, i32* %nvec_used60, align 4
  %add61 = add i32 %18, %17
  %cmp62 = icmp ult i32 %inc84, %add61
  br i1 %cmp62, label %for.body63, label %for.inc87

for.body63:                                       ; preds = %for.cond58.preheader, %for.cond58
  %i.1245 = phi i32 [ %inc84, %for.cond58 ], [ %15, %for.cond58.preheader ]
  %call69 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %i.1245) #13
  br i1 %call37, label %if.end77, label %if.then71

if.then71:                                        ; preds = %for.body63
  call fastcc void @irqd_clr_can_reserve(%struct.irq_data* noundef %call69) #12
  %19 = load i32, i32* %flags72, align 8
  %and73 = and i32 %19, 64
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.then71
  call fastcc void @irqd_set_msi_nomask_quirk(%struct.irq_data* noundef %call69) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %if.then75, %for.body63
  %call79 = call i32 @irq_domain_activate_irq(%struct.irq_data* noundef %call69, i1 noundef %call37) #13
  %tobool80.not = icmp eq i32 %call79, 0
  %inc84 = add nuw i32 %i.1245, 1
  br i1 %tobool80.not, label %for.cond58, label %cleanup

for.inc87:                                        ; preds = %for.cond58, %for.cond58.preheader, %for.body54
  %20 = bitcast %struct.msi_desc* %desc.1249 to %struct.msi_desc**
  %desc.1 = load %struct.msi_desc*, %struct.msi_desc** %20, align 8
  %list50 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.1, i64 0, i32 0
  %cmp52.not = icmp eq %struct.list_head* %list50, %msi_list
  br i1 %cmp52.not, label %skip_activate, label %for.body54

skip_activate:                                    ; preds = %for.inc87, %for.cond49.preheader, %if.end36
  br i1 %call37, label %for.cond107.preheader, label %cleanup139

for.cond107.preheader:                            ; preds = %skip_activate
  %desc.2254 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %list108255 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.2254, i64 0, i32 0
  %cmp110.not256 = icmp eq %struct.list_head* %list108255, %msi_list
  br i1 %cmp110.not256, label %cleanup139, label %for.body112

for.body112:                                      ; preds = %for.cond107.preheader, %for.inc128
  %desc.2257 = phi %struct.msi_desc* [ %desc.2, %for.inc128 ], [ %desc.2254, %for.cond107.preheader ]
  %irq113 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.2257, i64 0, i32 1
  %21 = load i32, i32* %irq113, align 8
  %tobool114.not = icmp eq i32 %21, 0
  br i1 %tobool114.not, label %for.inc128, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %for.body112
  %nvec_used119 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.2257, i64 0, i32 2
  %22 = load i32, i32* %nvec_used119, align 4
  %add120251 = add i32 %22, %21
  %cmp121252 = icmp ult i32 %21, %add120251
  br i1 %cmp121252, label %for.body122, label %for.inc128

for.body122:                                      ; preds = %for.cond117.preheader, %for.body122
  %i.2253 = phi i32 [ %inc125, %for.body122 ], [ %21, %for.cond117.preheader ]
  %call123 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %i.2253) #13
  call fastcc void @irqd_clr_activated(%struct.irq_data* noundef %call123) #12
  %inc125 = add nuw i32 %i.2253, 1
  %23 = load i32, i32* %irq113, align 8
  %24 = load i32, i32* %nvec_used119, align 4
  %add120 = add i32 %24, %23
  %cmp121 = icmp ult i32 %inc125, %add120
  br i1 %cmp121, label %for.body122, label %for.inc128

for.inc128:                                       ; preds = %for.body122, %for.cond117.preheader, %for.body112
  %25 = bitcast %struct.msi_desc* %desc.2257 to %struct.msi_desc**
  %desc.2 = load %struct.msi_desc*, %struct.msi_desc** %25, align 8
  %list108 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.2, i64 0, i32 0
  %cmp110.not = icmp eq %struct.list_head* %list108, %msi_list
  br i1 %cmp110.not, label %cleanup139, label %for.body112

cleanup:                                          ; preds = %if.end77
  call void @msi_domain_free_irqs(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev) #12
  br label %cleanup139

cleanup139:                                       ; preds = %for.inc128, %for.cond107.preheader, %skip_activate, %if.end11, %if.then13, %entry, %cleanup
  %retval.0 = phi i32 [ %call79, %cleanup ], [ %call, %entry ], [ %ret.0, %if.then13 ], [ %ret.0, %if.end11 ], [ 0, %skip_activate ], [ 0, %for.cond107.preheader ], [ 0, %for.inc128 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i1 noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @msi_check_reservation_mode(%struct.irq_domain* nocapture noundef readonly %domain, %struct.msi_domain_info* nocapture noundef readonly %info, %struct.device* nocapture noundef readonly %dev) unnamed_addr #9 {
entry:
  %bus_token = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 7
  %0 = load i32, i32* %bus_token, align 8
  switch i32 %0, label %cleanup [
    i32 3, label %sw.epilog
    i32 10, label %sw.epilog
  ]

sw.epilog:                                        ; preds = %entry, %entry
  %flags = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 0
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.epilog
  %next = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15, i32 0
  %2 = bitcast %struct.list_head** %next to %struct.msi_desc**
  %3 = load %struct.msi_desc*, %struct.msi_desc** %2, align 8
  %4 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %3, i64 0, i32 8, i32 0, i32 1, i32 0
  %bf.load = load i16, i16* %4, align 4
  %5 = and i16 %bf.load, 129
  %6 = icmp ne i16 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry, %if.end
  %retval.0 = phi i1 [ %6, %if.end ], [ false, %entry ], [ false, %sw.epilog ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clr_can_reserve(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #8 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -67108865
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_msi_nomask_quirk(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #8 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 134217728
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_activate_irq(%struct.irq_data* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clr_activated(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #8 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -513
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @msi_domain_free_irqs(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.msi_domain_info**
  %1 = load %struct.msi_domain_info*, %struct.msi_domain_info** %0, align 8
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 1
  %2 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8
  %domain_free_irqs = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 9
  %3 = load void (%struct.irq_domain*, %struct.device*)*, void (%struct.irq_domain*, %struct.device*)** %domain_free_irqs, align 8
  call void %3(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @msi_domain_alloc_irqs(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev, i32 noundef %nvec) local_unnamed_addr #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.msi_domain_info**
  %1 = load %struct.msi_domain_info*, %struct.msi_domain_info** %0, align 8
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 1
  %2 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8
  %domain_alloc_irqs = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 8
  %3 = load i32 (%struct.irq_domain*, %struct.device*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)** %domain_alloc_irqs, align 8
  %call = call i32 %3(%struct.irq_domain* noundef %domain, %struct.device* noundef %dev, i32 noundef %nvec) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__msi_domain_free_irqs(%struct.irq_domain* noundef %domain, %struct.device* noundef readonly %dev) #0 {
entry:
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  %0 = bitcast %struct.list_head* %msi_list to %struct.msi_desc**
  %desc.079 = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  %list80 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.079, i64 0, i32 0
  %cmp.not81 = icmp eq %struct.list_head* %list80, %msi_list
  br i1 %cmp.not81, label %for.cond28.preheader, label %for.body

for.cond28.preheader.loopexit:                    ; preds = %for.inc10
  %desc.184.pre = load %struct.msi_desc*, %struct.msi_desc** %0, align 8
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond28.preheader.loopexit, %entry
  %desc.184 = phi %struct.msi_desc* [ %desc.184.pre, %for.cond28.preheader.loopexit ], [ %desc.079, %entry ]
  %list2985 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.184, i64 0, i32 0
  %cmp31.not86 = icmp eq %struct.list_head* %list2985, %msi_list
  br i1 %cmp31.not86, label %for.end50, label %for.body33

for.body:                                         ; preds = %entry, %for.inc10
  %desc.082 = phi %struct.msi_desc* [ %desc.0, %for.inc10 ], [ %desc.079, %entry ]
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.082, i64 0, i32 1
  %1 = load i32, i32* %irq, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.inc10, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.body
  %nvec_used = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.082, i64 0, i32 2
  %2 = load i32, i32* %nvec_used, align 4
  %add76 = add i32 %2, %1
  %cmp577 = icmp ult i32 %1, %add76
  br i1 %cmp577, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond3.preheader, %for.inc
  %i.078 = phi i32 [ %inc, %for.inc ], [ %1, %for.cond3.preheader ]
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %i.078) #13
  %call7 = call fastcc i1 @irqd_is_activated(%struct.irq_data* noundef %call) #12
  br i1 %call7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body6
  call void @irq_domain_deactivate_irq(%struct.irq_data* noundef %call) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then8
  %inc = add nuw i32 %i.078, 1
  %3 = load i32, i32* %irq, align 8
  %4 = load i32, i32* %nvec_used, align 4
  %add = add i32 %4, %3
  %cmp5 = icmp ult i32 %inc, %add
  br i1 %cmp5, label %for.body6, label %for.inc10

for.inc10:                                        ; preds = %for.inc, %for.cond3.preheader, %for.body
  %5 = bitcast %struct.msi_desc* %desc.082 to %struct.msi_desc**
  %desc.0 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %list = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, %msi_list
  br i1 %cmp.not, label %for.cond28.preheader.loopexit, label %for.body

for.body33:                                       ; preds = %for.cond28.preheader, %for.inc41
  %desc.187 = phi %struct.msi_desc* [ %desc.1, %for.inc41 ], [ %desc.184, %for.cond28.preheader ]
  %irq34 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.187, i64 0, i32 1
  %6 = load i32, i32* %irq34, align 8
  %tobool35.not = icmp eq i32 %6, 0
  br i1 %tobool35.not, label %for.inc41, label %if.then36

if.then36:                                        ; preds = %for.body33
  %nvec_used38 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.187, i64 0, i32 2
  %7 = load i32, i32* %nvec_used38, align 4
  call void @irq_domain_free_irqs(i32 noundef %6, i32 noundef %7) #13
  store i32 0, i32* %irq34, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %for.body33, %if.then36
  %8 = bitcast %struct.msi_desc* %desc.187 to %struct.msi_desc**
  %desc.1 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %list29 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %desc.1, i64 0, i32 0
  %cmp31.not = icmp eq %struct.list_head* %list29, %msi_list
  br i1 %cmp31.not, label %for.end50, label %for.body33

for.end50:                                        ; preds = %for.inc41, %for.cond28.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_activated(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #9 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 512
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_deactivate_irq(%struct.irq_data* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.msi_domain_info* @msi_get_domain_info(%struct.irq_domain* nocapture noundef readonly %domain) local_unnamed_addr #9 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.msi_domain_info**
  %1 = load %struct.msi_domain_info*, %struct.msi_domain_info** %0, align 8
  ret %struct.msi_domain_info* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s, i64* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 10, i64* noundef %res) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i64 @msi_domain_ops_get_hwirq(%struct.msi_domain_info* nocapture noundef readnone %info, %struct.msi_alloc_info* nocapture noundef readonly %arg) #9 {
entry:
  %hwirq = getelementptr inbounds %struct.msi_alloc_info, %struct.msi_alloc_info* %arg, i64 0, i32 1
  %0 = load i64, i64* %hwirq, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @msi_domain_ops_init(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* nocapture noundef readonly %info, i32 noundef %virq, i64 noundef %hwirq, %struct.msi_alloc_info* nocapture noundef readnone %arg) #0 {
entry:
  %chip = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 2
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %chip_data = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 3
  %1 = load i8*, i8** %chip_data, align 8
  %call = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq, %struct.irq_chip* noundef %0, i8* noundef %1) #13
  %handler = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 4
  %2 = load void (%struct.irq_desc*)*, void (%struct.irq_desc*)** %handler, align 8
  %tobool.not = icmp eq void (%struct.irq_desc*)* %2, null
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %handler_name = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 6
  %3 = load i8*, i8** %handler_name, align 8
  %tobool1.not = icmp eq i8* %3, null
  br i1 %tobool1.not, label %if.end8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__irq_set_handler(i32 noundef %virq, void (%struct.irq_desc*)* noundef nonnull %2, i32 noundef 0, i8* noundef nonnull %3) #13
  %handler_data = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %info, i64 0, i32 5
  %4 = load i8*, i8** %handler_data, align 8
  %tobool4.not = icmp eq i8* %4, null
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.then
  %call7 = call i32 @irq_set_handler_data(i32 noundef %virq, i8* noundef nonnull %4) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then5, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @msi_domain_ops_check(%struct.irq_domain* nocapture noundef readnone %domain, %struct.msi_domain_info* nocapture noundef readnone %info, %struct.device* nocapture noundef readnone %dev) #6 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @msi_domain_ops_prepare(%struct.irq_domain* nocapture noundef readnone %domain, %struct.device* nocapture noundef readnone %dev, i32 noundef %nvec, %struct.msi_alloc_info* noundef %arg) #0 {
entry:
  %0 = bitcast %struct.msi_alloc_info* %arg to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 40) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal void @msi_domain_ops_set_desc(%struct.msi_alloc_info* nocapture noundef writeonly %arg, %struct.msi_desc* noundef %desc) #11 {
entry:
  %desc1 = getelementptr inbounds %struct.msi_alloc_info, %struct.msi_alloc_info* %arg, i64 0, i32 0
  store %struct.msi_desc* %desc, %struct.msi_desc** %desc1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef, i32 noundef, i64 noundef, %struct.irq_chip* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, void (%struct.irq_desc*)* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @msi_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* noundef %arg) #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.msi_domain_info**
  %1 = load %struct.msi_domain_info*, %struct.msi_domain_info** %0, align 8
  %ops1 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 1
  %2 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops1, align 8
  %get_hwirq = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 0
  %3 = load i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)*, i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)** %get_hwirq, align 8
  %4 = bitcast i8* %arg to %struct.msi_alloc_info*
  %call = call i64 %3(%struct.msi_domain_info* noundef %1, %struct.msi_alloc_info* noundef %4) #13
  %call2 = call fastcc i32 @irq_find_mapping(%struct.irq_domain* noundef %domain, i64 noundef %call) #12
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 9
  %5 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %tobool.not = icmp eq %struct.irq_domain* %5, null
  br i1 %tobool.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* noundef %arg) #13
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %cmp968.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp968.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end8
  %msi_init = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc26
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc26 ]
  %6 = load i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)** %msi_init, align 8
  %add = add i32 %i.069, %virq
  %conv = sext i32 %i.069 to i64
  %add10 = add i64 %call, %conv
  %call11 = call i32 %6(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* noundef %1, i32 noundef %add, i64 noundef %add10, %struct.msi_alloc_info* noundef %4) #13
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %for.inc26

if.then14:                                        ; preds = %for.body
  %msi_free = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 2
  %7 = load void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)** %msi_free, align 8
  %tobool15.not = icmp ne void (%struct.irq_domain*, %struct.msi_domain_info*, i32)* %7, null
  %i.170 = add i32 %i.069, -1
  %cmp1871 = icmp sgt i32 %i.170, 0
  %or.cond = select i1 %tobool15.not, i1 %cmp1871, i1 false
  br i1 %or.cond, label %for.body20.preheader, label %if.end24

for.body20.preheader:                             ; preds = %if.then14
  %add2279 = add i32 %i.170, %virq
  call void %7(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* noundef %1, i32 noundef %add2279) #13
  %i.180 = add i32 %i.069, -2
  %cmp1881 = icmp sgt i32 %i.180, 0
  br i1 %cmp1881, label %for.body20.for.body20_crit_edge, label %if.end24

for.body20.for.body20_crit_edge:                  ; preds = %for.body20.preheader, %for.body20.for.body20_crit_edge
  %i.182 = phi i32 [ %i.1, %for.body20.for.body20_crit_edge ], [ %i.180, %for.body20.preheader ]
  %.pre = load void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)** %msi_free, align 8
  %add22 = add i32 %i.182, %virq
  call void %.pre(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* noundef %1, i32 noundef %add22) #13
  %i.1 = add i32 %i.182, -1
  %cmp18 = icmp sgt i32 %i.1, 0
  br i1 %cmp18, label %for.body20.for.body20_crit_edge, label %if.end24

if.end24:                                         ; preds = %for.body20.for.body20_crit_edge, %for.body20.preheader, %if.then14
  call void @irq_domain_free_irqs_top(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #13
  br label %cleanup

for.inc26:                                        ; preds = %for.body
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc26, %if.end8, %if.then3, %entry, %if.end24
  %retval.0 = phi i32 [ %call11, %if.end24 ], [ -17, %entry ], [ %call4, %if.then3 ], [ 0, %if.end8 ], [ 0, %for.inc26 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @msi_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 {
entry:
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %0 = bitcast i8** %host_data to %struct.msi_domain_info**
  %1 = load %struct.msi_domain_info*, %struct.msi_domain_info** %0, align 8
  %ops = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %1, i64 0, i32 1
  %2 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops, align 8
  %msi_free = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %2, i64 0, i32 2
  %3 = load void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)** %msi_free, align 8
  %tobool.not = icmp ne void (%struct.irq_domain*, %struct.msi_domain_info*, i32)* %3, null
  %cmp13 = icmp ne i32 %nr_irqs, 0
  %or.cond = and i1 %tobool.not, %cmp13
  br i1 %or.cond, label %for.body.preheader, label %if.end

for.body.preheader:                               ; preds = %entry
  call void %3(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* noundef %1, i32 noundef %virq) #13
  %exitcond.not16 = icmp eq i32 %nr_irqs, 1
  br i1 %exitcond.not16, label %if.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc17 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %ops, align 8
  %msi_free2.phi.trans.insert = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %.pre, i64 0, i32 2
  %.pre15 = load void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)** %msi_free2.phi.trans.insert, align 8
  %add = add i32 %inc17, %virq
  call void %.pre15(%struct.irq_domain* noundef %domain, %struct.msi_domain_info* noundef %1, i32 noundef %add) #13
  %inc = add nuw i32 %inc17, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %if.end, label %for.body.for.body_crit_edge

if.end:                                           ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %entry
  call void @irq_domain_free_irqs_top(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @msi_domain_activate(%struct.irq_domain* nocapture noundef readnone %domain, %struct.irq_data* noundef %irq_data, i1 noundef %early) #0 {
entry:
  %msg = alloca [2 x %struct.msi_msg], align 4
  %0 = bitcast [2 x %struct.msi_msg]* %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %arraydecay = getelementptr inbounds [2 x %struct.msi_msg], [2 x %struct.msi_msg]* %msg, i64 0, i64 0
  %call = call i32 @irq_chip_compose_msi_msg(%struct.irq_data* noundef %irq_data, %struct.msi_msg* noundef nonnull %arraydecay) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/msi.c\22; .popsection; .long 14472b - 14470b; .short 261; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  unreachable

do.end8:                                          ; preds = %entry
  %domain9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i64 0, i32 5
  %1 = load %struct.irq_domain*, %struct.irq_domain** %domain9, align 8
  call fastcc void @msi_check_level(%struct.irq_domain* noundef %1, %struct.msi_msg* noundef nonnull %arraydecay) #12
  call fastcc void @irq_chip_write_msi_msg(%struct.irq_data* noundef %irq_data, %struct.msi_msg* noundef nonnull %arraydecay) #12
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #14
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @msi_domain_deactivate(%struct.irq_domain* nocapture noundef readnone %domain, %struct.irq_data* noundef %irq_data) #0 {
entry:
  %msg = alloca [2 x %struct.msi_msg], align 4
  %0 = bitcast [2 x %struct.msi_msg]* %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %arraydecay = getelementptr inbounds [2 x %struct.msi_msg], [2 x %struct.msi_msg]* %msg, i64 0, i64 0
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 24) #13
  call fastcc void @irq_chip_write_msi_msg(%struct.irq_data* noundef %irq_data, %struct.msi_msg* noundef nonnull %arraydecay) #12
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_find_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq) unnamed_addr #0 {
entry:
  %irq = alloca i32, align 4
  %0 = bitcast i32* %irq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %irq, align 4, !annotation !7
  %call = call %struct.irq_desc* @__irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq, i32* noundef nonnull %irq) #13
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  %1 = load i32, i32* %irq, align 4
  %retval.0 = select i1 %tobool.not, i32 0, i32 %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_top(%struct.irq_domain* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @__irq_resolve_mapping(%struct.irq_domain* noundef, i64 noundef, i32* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }

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
!9 = !{i64 2153806813}
!10 = !{i64 2153805424}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153809732}
!13 = !{i64 2153820846}
!14 = !{i64 2153808217}
