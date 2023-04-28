; ModuleID = 'drivers/of/of_reserved_mem.c'
source_filename = "drivers/of/of_reserved_mem.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.reserved_mem = type { i8*, i64, i64, %struct.reserved_mem_ops*, i64, i64, i8* }
%struct.reserved_mem_ops = type { i32 (%struct.reserved_mem*, %struct.device*)*, void (%struct.reserved_mem*, %struct.device*)* }
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
%struct.irq_domain = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
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
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kmem_cache = type opaque

@reserved_mem = internal global [64 x %struct.reserved_mem] zeroinitializer, align 8
@reserved_mem_count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"\013OF: reserved mem: not enough space for all defined regions.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"no-map\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\016OF: reserved mem: node %s compatible matching fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@of_rmem_assigned_device_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @of_rmem_assigned_device_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @of_rmem_assigned_device_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@of_rmem_assigned_device_list = internal global %struct.list_head { %struct.list_head* @of_rmem_assigned_device_list, %struct.list_head* @of_rmem_assigned_device_list }, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"assigned reserved memory node %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"memory-region-names\00", align 1
@__rmem_of_table_sentinel = internal constant %struct.of_device_id zeroinitializer, section "__reservedmem_of_table_end", align 8
@.str.8 = private unnamed_addr constant [81 x i8] c"\013OF: reserved mem: OVERLAP DETECTED!\0A%s (%pa--%pa) overlaps with %s (%pa--%pa)\0A\00", align 1
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"\013OF: reserved mem: invalid size property in '%s' node.\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"\013OF: reserved mem: invalid alignment property in '%s' node.\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"alloc-ranges\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"\013OF: reserved mem: invalid alloc-ranges property in '%s', skipping node.\0A\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"\016OF: reserved mem: failed to allocate memory for node '%s'\0A\00", align 1
@__reservedmem_of_table = external dso_local constant [0 x %struct.of_device_id], align 8
@.str.16 = private unnamed_addr constant [59 x i8] c"\016OF: reserved mem: initialized node %s, compatible id %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__rmem_of_table_sentinel, i32 0, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @fdt_reserved_mem_save_node(i64 noundef %node, i8* noundef %uname, i64 noundef %base, i64 noundef %size) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @reserved_mem_count, align 4
  %idxprom = sext i32 %0 to i64
  %cmp = icmp eq i32 %0, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0)) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fdt_node = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %idxprom, i32 1
  store i64 %node, i64* %fdt_node, align 8
  %name = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %idxprom, i32 0
  store i8* %uname, i8** %name, align 8
  %base2 = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %idxprom, i32 4
  store i64 %base, i64* %base2, align 8
  %size3 = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %idxprom, i32 5
  store i64 %size, i64* %size3, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* @reserved_mem_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @fdt_init_reserved_mem() local_unnamed_addr #0 section ".init.text" {
entry:
  %len = alloca i32, align 4
  call fastcc void @__rmem_check_for_overlap() #12
  %0 = load i32, i32* @reserved_mem_count, align 4
  %cmp62 = icmp sgt i32 %0, 0
  br i1 %cmp62, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = bitcast i32* %len to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end31
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end31 ]
  %arrayidx = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv
  %fdt_node = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 1
  %2 = load i64, i64* %fdt_node, align 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call i8* @of_get_flat_dt_prop(i64 noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* noundef null) #14
  %cmp1.not = icmp eq i8* %call, null
  %call2 = call i8* @of_get_flat_dt_prop(i64 noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %len) #14
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %if.end, label %if.then5

if.end:                                           ; preds = %for.body
  %call3 = call i8* @of_get_flat_dt_prop(i64 noundef %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %len) #14
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %for.body, %if.end
  %prop.0.in59 = phi i8* [ %call3, %if.end ], [ %call2, %for.body ]
  %prop.0 = bitcast i8* %prop.0.in59 to i32*
  %3 = load i32, i32* %len, align 4
  %div = sdiv i32 %3, 4
  %call6 = call fastcc i64 @of_read_number(i32* noundef nonnull %prop.0, i32 noundef %div) #15
  %phandle = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 2
  store i64 %call6, i64* %phandle, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %size = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 5
  %4 = load i64, i64* %size, align 8
  %cmp8 = icmp eq i64 %4, 0
  br i1 %cmp8, label %if.end12, label %if.then14

if.end12:                                         ; preds = %if.end7
  %name = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %arrayidx, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %base = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 4
  %call11 = call fastcc i32 @__reserved_mem_alloc_size(i64 noundef %2, i8* noundef %5, i64* noundef %base, i64* noundef %size) #12
  %cmp13 = icmp eq i32 %call11, 0
  br i1 %cmp13, label %if.then14, label %if.end31

if.then14:                                        ; preds = %if.end7, %if.end12
  %call15 = call fastcc i32 @__reserved_mem_init_node(%struct.reserved_mem* noundef %arrayidx) #12
  switch i32 %call15, label %do.end [
    i32 -2, label %if.end31
    i32 0, label %if.end31
  ]

do.end:                                           ; preds = %if.then14
  %name19 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %arrayidx, i64 0, i32 0
  %6 = load i8*, i8** %name19, align 8
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* noundef %6) #11
  %base26 = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 4
  %7 = load i64, i64* %base26, align 8
  %8 = load i64, i64* %size, align 8
  br i1 %cmp1.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %do.end
  %call25 = call i32 @memblock_clear_nomap(i64 noundef %7, i64 noundef %8) #14
  br label %if.end31

if.else:                                          ; preds = %do.end
  %call28 = call i32 @memblock_free(i64 noundef %7, i64 noundef %8) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then14, %if.then14, %if.else, %if.then22, %if.end12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* @reserved_mem_count, align 4
  %10 = sext i32 %9 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end31, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @__rmem_check_for_overlap() unnamed_addr #0 section ".init.text" {
entry:
  %this_end = alloca i64, align 8
  %next_end = alloca i64, align 8
  %0 = load i32, i32* @reserved_mem_count, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv35 = zext i32 %0 to i64
  call void @sort(i8* noundef bitcast ([64 x %struct.reserved_mem]* @reserved_mem to i8*), i64 noundef %conv35, i64 noundef 56, i32 (i8*, i8*)* noundef nonnull @__rmem_cmp, void (i8*, i8*, i32)* noundef null) #14
  %1 = load i32, i32* @reserved_mem_count, align 4
  %sub36 = add i32 %1, -1
  %cmp137 = icmp sgt i32 %sub36, 0
  br i1 %cmp137, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %2 = bitcast i64* %this_end to i8*
  %3 = bitcast i64* %next_end to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end19
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %11, %if.end19 ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end19 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %base = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 4
  %5 = load i64, i64* %base, align 8
  %size = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 5
  %6 = load i64, i64* %size, align 8
  %add5 = add i64 %6, %5
  %base6 = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv.next, i32 4
  %7 = load i64, i64* %base6, align 8
  %cmp7 = icmp ugt i64 %add5, %7
  br i1 %cmp7, label %if.then9, label %if.end19

if.then9:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  store i64 %add5, i64* %this_end, align 8
  %size14 = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv.next, i32 5
  %8 = load i64, i64* %size14, align 8
  %add15 = add i64 %8, %7
  store i64 %add15, i64* %next_end, align 8
  %name = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 0
  %9 = load i8*, i8** %name, align 8
  %name17 = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv.next, i32 0
  %10 = load i8*, i8** %name17, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0), i8* noundef %9, i64* noundef %base, i64* noundef nonnull %this_end, i8* noundef %10, i64* noundef %base6, i64* noundef nonnull %next_end) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  %.pre = load i32, i32* @reserved_mem_count, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %for.body
  %11 = phi i32 [ %.pre, %if.then9 ], [ %4, %for.body ]
  %sub = add i32 %11, -1
  %12 = sext i32 %sub to i64
  %cmp1 = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp1, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_flat_dt_prop(i64 noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_number(i32* nocapture noundef readonly %cell, i32 noundef %size) unnamed_addr #4 {
entry:
  %tobool.not19 = icmp eq i32 %size, 0
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %dec22.in = phi i32 [ %dec22, %for.body ], [ %size, %entry ]
  %r.021 = phi i64 [ %or9, %for.body ], [ 0, %entry ]
  %cell.addr.020 = phi i32* [ %incdec.ptr, %for.body ], [ %cell, %entry ]
  %dec22 = add i32 %dec22.in, -1
  %shl = shl i64 %r.021, 32
  %0 = load i32, i32* %cell.addr.020, align 4
  %call = call fastcc i32 @__fswab32(i32 noundef %0) #16
  %conv = zext i32 %call to i64
  %or9 = or i64 %shl, %conv
  %incdec.ptr = getelementptr i32, i32* %cell.addr.020, i64 1
  %tobool.not = icmp eq i32 %dec22, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i64 [ 0, %entry ], [ %or9, %for.body ]
  ret i64 %r.0.lcssa
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @__reserved_mem_alloc_size(i64 noundef %node, i8* noundef %uname, i64* nocapture noundef writeonly %res_base, i64* nocapture noundef writeonly %res_size) unnamed_addr #0 section ".init.text" {
entry:
  %base = alloca i64, align 8
  %len = alloca i32, align 4
  %prop = alloca i32*, align 8
  %0 = load i32, i32* @dt_root_addr_cells, align 4
  %1 = load i32, i32* @dt_root_size_cells, align 4
  %add = add i32 %1, %0
  %mul = shl i32 %add, 2
  %2 = bitcast i64* %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store i64 0, i64* %base, align 8
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  store i32 0, i32* %len, align 4, !annotation !7
  %4 = bitcast i32** %prop to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %call = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %len) #14
  %5 = bitcast i32** %prop to i8**
  store i8* %call, i8** %5, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %len, align 4
  %conv2 = sext i32 %6 to i64
  %7 = load i32, i32* @dt_root_size_cells, align 4
  %conv3 = sext i32 %7 to i64
  %mul4 = shl nsw i64 %conv3, 2
  %cmp.not = icmp eq i64 %mul4, %conv2
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i8* noundef %uname) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i64 @dt_mem_next_cell(i32 noundef %7, i32** noundef nonnull %prop) #14
  %call10 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* noundef nonnull %len) #14
  store i8* %call10, i8** %5, align 8
  %tobool11.not = icmp eq i8* %call10, null
  br i1 %tobool11.not, label %if.end26, label %if.then12

if.then12:                                        ; preds = %if.end8
  %8 = load i32, i32* %len, align 4
  %conv13 = sext i32 %8 to i64
  %9 = load i32, i32* @dt_root_addr_cells, align 4
  %conv14 = sext i32 %9 to i64
  %mul15 = shl nsw i64 %conv14, 2
  %cmp16.not = icmp eq i64 %mul15, %conv13
  br i1 %cmp16.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.then12
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i8* noundef %uname) #11
  br label %cleanup

if.end24:                                         ; preds = %if.then12
  %call25 = call i64 @dt_mem_next_cell(i32 noundef %9, i32** noundef nonnull %prop) #14
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end8
  %align.0 = phi i64 [ %call25, %if.end24 ], [ 0, %if.end8 ]
  %call27 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* noundef null) #14
  %cmp28 = icmp ne i8* %call27, null
  %call30 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull %len) #14
  store i8* %call30, i8** %5, align 8
  %tobool31.not = icmp eq i8* %call30, null
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end26
  %10 = load i32, i32* %len, align 4
  %rem = srem i32 %10, %mul
  %cmp33.not = icmp eq i32 %rem, 0
  br i1 %cmp33.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.then32
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i64 0, i64 0), i8* noundef %uname) #11
  br label %cleanup

if.end41:                                         ; preds = %if.then32
  store i64 0, i64* %base, align 8
  %cmp4299 = icmp sgt i32 %10, 0
  br i1 %cmp4299, label %while.body, label %do.end67

while.body:                                       ; preds = %if.end41, %if.end53
  %11 = load i32, i32* @dt_root_addr_cells, align 4
  %call44 = call i64 @dt_mem_next_cell(i32 noundef %11, i32** noundef nonnull %prop) #14
  %12 = load i32, i32* @dt_root_size_cells, align 4
  %call45 = call i64 @dt_mem_next_cell(i32 noundef %12, i32** noundef nonnull %prop) #14
  %add46 = add i64 %call45, %call44
  %call48 = call fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i64 noundef %call9, i64 noundef %align.0, i64 noundef %call44, i64 noundef %add46, i1 noundef %cmp28, i64* noundef nonnull %base) #12
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.end61, label %if.end53

if.end53:                                         ; preds = %while.body
  %13 = load i32, i32* %len, align 4
  %sub = sub i32 %13, %mul
  store i32 %sub, i32* %len, align 4
  %cmp42 = icmp sgt i32 %sub, 0
  br i1 %cmp42, label %while.body, label %if.end61

if.else:                                          ; preds = %if.end26
  %call55 = call fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i64 noundef %call9, i64 noundef %align.0, i64 noundef 0, i64 noundef 0, i1 noundef %cmp28, i64* noundef nonnull %base) #12
  br label %if.end61

if.end61:                                         ; preds = %if.end53, %while.body, %if.else
  %.pr = load i64, i64* %base, align 8
  %cmp62 = icmp eq i64 %.pr, 0
  br i1 %cmp62, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end41, %if.end61
  %call69 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i8* noundef %uname) #11
  br label %cleanup

if.end70:                                         ; preds = %if.end61
  store i64 %.pr, i64* %res_base, align 8
  store i64 %call9, i64* %res_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end70, %do.end67, %do.end38, %do.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ -22, %do.end38 ], [ -12, %do.end67 ], [ 0, %if.end70 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @__reserved_mem_init_node(%struct.reserved_mem* noundef %rmem) unnamed_addr #0 section ".init.text" {
entry:
  br i1 icmp ult (%struct.of_device_id* getelementptr inbounds ([0 x %struct.of_device_id], [0 x %struct.of_device_id]* @__reservedmem_of_table, i64 0, i64 0), %struct.of_device_id* @__rmem_of_table_sentinel), label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fdt_node = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.027 = phi %struct.of_device_id* [ getelementptr inbounds ([0 x %struct.of_device_id], [0 x %struct.of_device_id]* @__reservedmem_of_table, i64 0, i64 0), %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %ret.026 = phi i32 [ -2, %for.body.lr.ph ], [ %ret.1.ph, %for.inc ]
  %data = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %i.027, i64 0, i32 3
  %0 = bitcast i8** %data to i32 (%struct.reserved_mem*)**
  %1 = load i32 (%struct.reserved_mem*)*, i32 (%struct.reserved_mem*)** %0, align 8
  %arraydecay = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %i.027, i64 0, i32 2, i64 0
  %2 = load i64, i64* %fdt_node, align 8
  %call = call i32 @of_flat_dt_is_compatible(i64 noundef %2, i8* noundef %arraydecay) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call1 = call i32 %1(%struct.reserved_mem* noundef %rmem) #14
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %for.inc

cleanup:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0), i8* noundef %3, i8* noundef %arraydecay) #11
  br label %for.end

for.inc:                                          ; preds = %for.body, %if.end
  %ret.1.ph = phi i32 [ %call1, %if.end ], [ %ret.026, %for.body ]
  %incdec.ptr = getelementptr %struct.of_device_id, %struct.of_device_id* %i.027, i64 1
  %cmp = icmp ult %struct.of_device_id* %incdec.ptr, @__rmem_of_table_sentinel
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry, %cleanup
  %ret.2 = phi i32 [ 0, %cleanup ], [ -2, %entry ], [ %ret.1.ph, %for.inc ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_clear_nomap(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_free(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_reserved_mem_device_init_by_idx(%struct.device* noundef %dev, %struct.device_node* noundef %np, i32 noundef %idx) local_unnamed_addr #5 {
entry:
  %tobool = icmp ne %struct.device_node* %np, null
  %tobool1 = icmp ne %struct.device* %dev, null
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef nonnull %np, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 noundef %idx) #14
  %tobool2.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %call) #14
  br i1 %call5, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = call fastcc %struct.reserved_mem* @__find_rmem(%struct.device_node* noundef nonnull %call) #15
  %tobool9.not = icmp eq %struct.reserved_mem* %call8, null
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end7
  %ops = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %call8, i64 0, i32 3
  %0 = load %struct.reserved_mem_ops*, %struct.reserved_mem_ops** %ops, align 8
  %tobool11.not = icmp eq %struct.reserved_mem_ops* %0, null
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %device_init = getelementptr inbounds %struct.reserved_mem_ops, %struct.reserved_mem_ops* %0, i64 0, i32 0
  %1 = load i32 (%struct.reserved_mem*, %struct.device*)*, i32 (%struct.reserved_mem*, %struct.device*)** %device_init, align 8
  %tobool14.not = icmp eq i32 (%struct.reserved_mem*, %struct.device*)* %1, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false12
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #14
  %tobool18.not = icmp eq i8* %call.i.i, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end16
  %3 = load %struct.reserved_mem_ops*, %struct.reserved_mem_ops** %ops, align 8
  %device_init22 = getelementptr inbounds %struct.reserved_mem_ops, %struct.reserved_mem_ops* %3, i64 0, i32 0
  %4 = load i32 (%struct.reserved_mem*, %struct.device*)*, i32 (%struct.reserved_mem*, %struct.device*)** %device_init22, align 8
  %call23 = call i32 %4(%struct.reserved_mem* noundef nonnull %call8, %struct.device* noundef nonnull %dev) #14
  %cmp = icmp eq i32 %call23, 0
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end20
  %dev25 = bitcast i8* %call.i.i to %struct.device**
  store %struct.device* %dev, %struct.device** %dev25, align 8
  %rmem26 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %5 = bitcast i8* %rmem26 to %struct.reserved_mem**
  store %struct.reserved_mem* %call8, %struct.reserved_mem** %5, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_rmem_assigned_device_mutex) #14
  %list = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %6 = bitcast i8* %list to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %6) #15
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_rmem_assigned_device_mutex) #14
  %name = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %call8, i64 0, i32 0
  %7 = load i8*, i8** %name, align 8
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef nonnull %dev, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %7) #11
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @kfree(i8* noundef nonnull %call.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then24, %if.else, %if.end16, %if.end7, %lor.lhs.false10, %lor.lhs.false12, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -19, %if.end ], [ -22, %lor.lhs.false12 ], [ -22, %lor.lhs.false10 ], [ -22, %if.end7 ], [ -12, %if.end16 ], [ %call23, %if.else ], [ 0, %if.then24 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_device_is_available(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.reserved_mem* @__find_rmem(%struct.device_node* nocapture noundef readonly %node) unnamed_addr #6 {
entry:
  %phandle = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 1
  %0 = load i32, i32* %phandle, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, i32* @reserved_mem_count, align 4
  %cmp14.not = icmp eq i32 %1, 0
  br i1 %cmp14.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = zext i32 %0 to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %phandle1 = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv, i32 2
  %2 = load i64, i64* %phandle1, align 8
  %cmp3 = icmp eq i64 %2, %conv
  br i1 %cmp3, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %arrayidx = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %idxprom.le
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %entry, %if.then5
  %retval.0 = phi %struct.reserved_mem* [ %arrayidx, %if.then5 ], [ null, %entry ], [ null, %for.cond.preheader ], [ null, %for.inc ]
  ret %struct.reserved_mem* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #7 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @of_rmem_assigned_device_list, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef nonnull @of_rmem_assigned_device_list, %struct.list_head* noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_reserved_mem_device_init_by_name(%struct.device* noundef %dev, %struct.device_node* noundef %np, i8* noundef %name) local_unnamed_addr #5 {
entry:
  %call = call i32 @of_property_match_string(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %name) #14
  %call1 = call i32 @of_reserved_mem_device_init_by_idx(%struct.device* noundef %dev, %struct.device_node* noundef %np, i32 noundef %call) #15
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(%struct.device_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @of_reserved_mem_device_release(%struct.device* noundef %dev) local_unnamed_addr #5 {
entry:
  %release_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %release_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %release_list, i64 0, i32 0
  store %struct.list_head* %release_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %release_list, i64 0, i32 1
  store %struct.list_head* %release_list, %struct.list_head** %prev, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_rmem_assigned_device_mutex) #14
  %1 = load i8*, i8** bitcast (%struct.list_head* @of_rmem_assigned_device_list to i8**), align 8
  %cmp.not93 = icmp eq i8* %1, bitcast (%struct.list_head* @of_rmem_assigned_device_list to i8*)
  br i1 %cmp.not93, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn.in.in94 = phi i8* [ %.pn95, %for.inc ], [ %1, %entry ]
  %.pn95.in = bitcast i8* %.pn.in.in94 to i8**
  %.pn95 = load i8*, i8** %.pn95.in, align 8
  %rd.0.in = getelementptr i8, i8* %.pn.in.in94, i64 -16
  %dev10 = bitcast i8* %rd.0.in to %struct.device**
  %2 = load %struct.device*, %struct.device** %dev10, align 8
  %cmp11 = icmp eq %struct.device* %2, %dev
  br i1 %cmp11, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn.in.in94 to %struct.list_head*
  call fastcc void @list_move_tail(%struct.list_head* noundef %3, %struct.list_head* noundef nonnull %release_list) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %cmp.not = icmp eq i8* %.pn95, bitcast (%struct.list_head* @of_rmem_assigned_device_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_rmem_assigned_device_mutex) #14
  %4 = bitcast %struct.list_head* %release_list to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.list_head*
  %cmp38.not99 = icmp eq %struct.list_head* %release_list, %6
  br i1 %cmp38.not99, label %for.end62, label %for.body40

for.body40:                                       ; preds = %for.end, %if.end52
  %.pn88.in.in100 = phi i8* [ %.pn88102, %if.end52 ], [ %5, %for.end ]
  %rd.1.in101 = getelementptr i8, i8* %.pn88.in.in100, i64 -16
  %.pn88102.in = bitcast i8* %.pn88.in.in100 to i8**
  %.pn88102 = load i8*, i8** %.pn88102.in, align 8
  %rmem = getelementptr i8, i8* %.pn88.in.in100, i64 -8
  %7 = bitcast i8* %rmem to %struct.reserved_mem**
  %8 = load %struct.reserved_mem*, %struct.reserved_mem** %7, align 8
  %tobool.not = icmp eq %struct.reserved_mem* %8, null
  br i1 %tobool.not, label %if.end52, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body40
  %ops = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %8, i64 0, i32 3
  %9 = load %struct.reserved_mem_ops*, %struct.reserved_mem_ops** %ops, align 8
  %tobool42.not = icmp eq %struct.reserved_mem_ops* %9, null
  br i1 %tobool42.not, label %if.end52, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true
  %device_release = getelementptr inbounds %struct.reserved_mem_ops, %struct.reserved_mem_ops* %9, i64 0, i32 1
  %10 = load void (%struct.reserved_mem*, %struct.device*)*, void (%struct.reserved_mem*, %struct.device*)** %device_release, align 8
  %tobool46.not = icmp eq void (%struct.reserved_mem*, %struct.device*)* %10, null
  br i1 %tobool46.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %land.lhs.true43
  call void %10(%struct.reserved_mem* noundef nonnull %8, %struct.device* noundef %dev) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %land.lhs.true43, %land.lhs.true, %for.body40
  call void @kfree(i8* noundef %rd.1.in101) #14
  %11 = bitcast i8* %.pn88102 to %struct.list_head*
  %cmp38.not = icmp eq %struct.list_head* %release_list, %11
  br i1 %cmp38.not, label %for.end62, label %for.body40

for.end62:                                        ; preds = %if.end52, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #15
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.reserved_mem* @of_reserved_mem_lookup(%struct.device_node* nocapture noundef readonly %np) local_unnamed_addr #5 {
entry:
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %0 = load i8*, i8** %full_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kbasename(i8* noundef nonnull %0) #15
  %1 = load i32, i32* @reserved_mem_count, align 4
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %2 = load i32, i32* @reserved_mem_count, align 4
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end ]
  %arrayidx = getelementptr [64 x %struct.reserved_mem], [64 x %struct.reserved_mem]* @reserved_mem, i64 0, i64 %indvars.iv
  %name2 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %arrayidx, i64 0, i32 0
  %4 = load i8*, i8** %name2, align 8
  %call3 = call i32 @strcmp(i8* noundef %4, i8* noundef %call) #14
  %tobool4.not = icmp eq i32 %call3, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool4.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %if.end, %entry
  %retval.0 = phi %struct.reserved_mem* [ null, %entry ], [ null, %if.end ], [ %arrayidx, %for.body ], [ null, %for.cond ]
  ret %struct.reserved_mem* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kbasename(i8* noundef %path) unnamed_addr #5 {
entry:
  %call = call i8* @strrchr(i8* noundef %path, i32 noundef 47) #14
  %tobool.not = icmp eq i8* %call, null
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %cond = select i1 %tobool.not, i8* %path, i8* %add.ptr
  ret i8* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn
define internal i32 @__rmem_cmp(i8* nocapture noundef readonly %a, i8* nocapture noundef readonly %b) #8 section ".init.text" {
entry:
  %base = getelementptr inbounds i8, i8* %a, i64 32
  %0 = bitcast i8* %base to i64*
  %1 = load i64, i64* %0, align 8
  %base1 = getelementptr inbounds i8, i8* %b, i64 32
  %2 = bitcast i8* %base1 to i64*
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp ugt i64 %1, %3
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %size = getelementptr inbounds i8, i8* %a, i64 40
  %4 = bitcast i8* %size to i64*
  %5 = load i64, i64* %4, align 8
  %size7 = getelementptr inbounds i8, i8* %b, i64 40
  %6 = bitcast i8* %size7 to i64*
  %7 = load i64, i64* %6, align 8
  %cmp8 = icmp ult i64 %5, %7
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %cmp13 = icmp ugt i64 %5, %7
  %. = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 1, %if.end ], [ -1, %if.end6 ], [ %., %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #9 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dt_mem_next_cell(i32 noundef, i32** noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @early_init_dt_alloc_reserved_memory_arch(i64 noundef %size, i64 noundef %align, i64 noundef %start, i64 noundef %end, i1 noundef %nomap, i64* nocapture noundef writeonly %res_base) unnamed_addr #0 section ".init.text" {
entry:
  %tobool.not = icmp eq i64 %end, 0
  %cond = select i1 %tobool.not, i64 -1, i64 %end
  %tobool1.not = icmp eq i64 %align, 0
  %cond5 = select i1 %tobool1.not, i64 64, i64 %align
  %call = call i64 @memblock_phys_alloc_range(i64 noundef %size, i64 noundef %cond5, i64 noundef %start, i64 noundef %cond) #14
  %tobool6.not = icmp eq i64 %call, 0
  br i1 %tobool6.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i64 %call, i64* %res_base, align 8
  br i1 %nomap, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @memblock_mark_nomap(i64 noundef %call, i64 noundef %size) #14
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.then8
  %call12 = call i32 @memblock_free(i64 noundef %call, i64 noundef %size) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then11, %if.end, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %if.end ], [ %call9, %if.then11 ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memblock_phys_alloc_range(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_flat_dt_is_compatible(i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
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
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
attributes #12 = { cold nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
