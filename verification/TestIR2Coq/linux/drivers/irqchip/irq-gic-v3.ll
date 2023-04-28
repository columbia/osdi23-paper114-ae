; ModuleID = 'drivers/irqchip/irq-gic-v3.c'
source_filename = "drivers/irqchip/irq-gic-v3.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.gic_quirk = type { i8*, i8*, i1 (i8*)*, i32, i32 }
%struct.gic_chip_data = type { %struct.fwnode_handle*, i8*, %struct.redist_region*, %struct.rdists, %struct.irq_domain*, i64, i32, i64, i8, i32, %struct.partition_desc** }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_dir }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.68, i32, i8* }
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
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.54, %union.anon.55 }
%union.anon.54 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.55 = type { i64 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.63 = type { %struct.atomic_t }
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.57, %struct.qspinlock }
%union.anon.57 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
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
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.66 = type { %struct.callback_head }
%union.anon.67 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.redist_region = type { i8*, i64, i8 }
%struct.rdists = type { %struct.anon.69*, i64, i8*, i64, i32, i32, i8, i8, i8, i8 }
%struct.anon.69 = type { %struct.raw_spinlock, i8*, %struct.page*, i64, i8, %struct.cpumask*, i8* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.partition_desc = type opaque
%struct.static_key_true = type { %struct.static_key }
%struct.gic_kvm_info = type { i32, %struct.resource, i32, i8, %struct.resource, i8, i8, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.partition_affinity = type { %struct.cpumask, i8* }
%struct.pt_regs = type { %union.anon.70, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.70 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }

@gic_pmr_sync = dso_local local_unnamed_addr global %struct.static_key_false zeroinitializer, align 4
@gic_nonsecure_priorities = dso_local local_unnamed_addr global %struct.static_key_false zeroinitializer, align 4
@__setup_str_gicv3_nolpi_cfg = internal constant [20 x i8] c"irqchip.gicv3_nolpi\00", section ".init.rodata", align 1
@__setup_gicv3_nolpi_cfg = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__setup_str_gicv3_nolpi_cfg, i32 0, i32 0), i32 (i8*)* @gicv3_nolpi_cfg, i32 1 }, section ".init.setup", align 8
@__of_table_gic_v3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @gic_of_init to i8*) }, section "__irqchip_of_table", align 8
@gicv3_nolpi = internal global i8 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"\013GICv3: %pOF: unable to map gic dist registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\013GICv3: %pOF: no distributor detected, giving up\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"#redistributor-regions\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\013GICv3: %pOF: couldn't map region %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"redistributor-stride\00", align 1
@gic_quirks = internal constant [5 x %struct.gic_quirk] [%struct.gic_quirk { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i1 (i8*)* @gic_enable_quirk_msm8996, i32 0, i32 0 }, %struct.gic_quirk { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* null, i1 (i8*)* @gic_enable_quirk_hip06_07, i32 33817659, i32 -1 }, %struct.gic_quirk { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* null, i1 (i8*)* @gic_enable_quirk_hip06_07, i32 0, i32 -1 }, %struct.gic_quirk { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* null, i1 (i8*)* @gic_enable_quirk_cavium_38539, i32 -1610611892, i32 -386920449 }, %struct.gic_quirk zeroinitializer], align 8
@gic_data = internal global %struct.gic_chip_data zeroinitializer, section ".data..read_mostly", align 8
@supports_deactivate_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"GICv3: Qualcomm MSM8996 broken firmware\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"qcom,msm8996-gic-v3\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"GICv3: HIP06 erratum 161010803\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"GICv3: HIP07 erratum 161010803\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"GICv3: Cavium erratum 38539\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\016GICv3: GIC: Using split EOI/Deactivate mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\016GICv3: %d SPIs implemented\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"\016GICv3: %d Extended SPIs implemented\0A\00", align 1
@gic_irq_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* @gic_irq_domain_select, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* @gic_irq_domain_alloc, void (%struct.irq_domain*, i32, i32)* @gic_irq_domain_free, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* null, void (%struct.irq_domain*, %struct.irq_data*)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @gic_irq_domain_translate }, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"\016GICv3: Distributor has %sRange Selector support\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"\013GICv3: Failed to initialize MBIs\0A\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global [2 x i32], align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@gic_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @gic_mask_irq, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @gic_unmask_irq, void (%struct.irq_data*)* @gic_eoi_irq, i32 (%struct.irq_data*, %struct.cpumask*, i1)* @gic_set_affinity, i32 (%struct.irq_data*)* @gic_retrigger, i32 (%struct.irq_data*, i32)* @gic_set_type, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* @gic_irq_get_irqchip_state, i32 (%struct.irq_data*, i32, i1)* @gic_irq_set_irqchip_state, i32 (%struct.irq_data*, i8*)* null, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* @gic_ipi_send_mask, i32 (%struct.irq_data*)* @gic_irq_nmi_setup, void (%struct.irq_data*)* @gic_irq_nmi_teardown, i64 21 }, align 8
@gic_eoimode1_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @gic_eoimode1_mask_irq, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @gic_unmask_irq, void (%struct.irq_data*)* @gic_eoimode1_eoi_irq, i32 (%struct.irq_data*, %struct.cpumask*, i1)* @gic_set_affinity, i32 (%struct.irq_data*)* @gic_retrigger, i32 (%struct.irq_data*, i32)* @gic_set_type, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* @gic_irq_get_irqchip_state, i32 (%struct.irq_data*, i32, i1)* @gic_irq_set_irqchip_state, i32 (%struct.irq_data*, i8*)* @gic_irq_set_vcpu_affinity, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* @gic_ipi_send_mask, i32 (%struct.irq_data*)* @gic_irq_nmi_setup, void (%struct.irq_data*)* @gic_irq_nmi_teardown, i64 21 }, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"GICv3\00", align 1
@gic_do_wait_for_rwp._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.gic_do_wait_for_rwp = private unnamed_addr constant [20 x i8] c"gic_do_wait_for_rwp\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"\013GICv3: RWP timeout, gone fishing\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@.str.20 = private unnamed_addr constant [54 x i8] c"\014GICv3: GIC: PPI INTID%d is secure or misconfigured\0A\00", align 1
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@gic_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Unexpected interrupt received!\0A\00", align 1
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@.str.23 = private unnamed_addr constant [30 x i8] c"\016GICv3: %d PPIs implemented\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\016GICv3: GICv4 features: %s%s%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"DirectLPI \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"RVPEID \00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Valid+Dirty \00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"\014GICv3: No redistributor present @%p\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"\016GICv3: Enabling SGIs without active state\0A\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.30 = private unnamed_addr constant [52 x i8] c"Distributor has extended ranges, but CPU%d doesn't\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"CPU%d: mpidr %lx has no re-distributor!\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"\016GICv3: CPU%d: found redistributor %lx region %d:%pa\0A\00", align 1
@gic_enable_redist._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.gic_enable_redist = private unnamed_addr constant [18 x i8] c"gic_enable_redist\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"\013GICv3: redistributor failed to %s...\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.36 = private unnamed_addr constant [64 x i8] c"\013GICv3: GIC: unable to set SRE (disabled at EL2), panic ahead\0A\00", align 1
@has_rss = internal global i8 0, section ".data..percpu", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.37 = private unnamed_addr constant [52 x i8] c"\012GICv3: CPU%d (%lx) can't SGI CPU%d (%lx), no RSS\0A\00", align 1
@gic_cpu_sys_reg_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"\012GICv3: RSS is required but GICD doesn't support it\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"irqchip/arm/gicv3:starting\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"ppi-partitions\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"\016GICv3: GIC: PPI partition %pOFn[%d] { \00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"affinity\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"\01c%pOF[%d] \00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\01c}\0A\00", align 1
@partition_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* @gic_irq_domain_select, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* null, void (%struct.irq_domain*, i32, i32)* null, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* null, void (%struct.irq_domain*, %struct.irq_data*)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @partition_domain_translate }, align 8
@gic_v3_kvm_info = internal unnamed_addr global %struct.gic_kvm_info zeroinitializer, section ".init.data", align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_gic_v3, i32 0, i32 0, i32 0), i8* bitcast (%struct.obs_kernel_param* @__setup_gicv3_nolpi_cfg to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @gicv3_nolpi_cfg(i8* noundef %buf) #0 section ".init.text" {
entry:
  %call = call fastcc i32 @strtobool(i8* noundef %buf) #15
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @gic_of_init(%struct.device_node* noundef %node, %struct.device_node* nocapture noundef readnone %parent) #0 section ".init.text" {
entry:
  %redist_stride = alloca i64, align 8
  %nr_redist_regions = alloca i32, align 4
  %res = alloca %struct.resource, align 8
  %0 = bitcast i64* %redist_stride to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %redist_stride, align 8, !annotation !8
  %1 = bitcast i32* %nr_redist_regions to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  store i32 0, i32* %nr_redist_regions, align 4, !annotation !8
  %call = call i8* @of_iomap(%struct.device_node* noundef %node, i32 noundef 0) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.device_node* noundef %node) #18
  br label %cleanup72

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @gic_validate_dist_version(i8* noundef nonnull %call) #19
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* noundef %node) #18
  br label %out_unmap_dist

if.end10:                                         ; preds = %if.end
  %call11 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %node, i32* noundef nonnull %nr_redist_regions) #15
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  %.pre = load i32, i32* %nr_redist_regions, align 4
  %phi.cast = zext i32 %.pre to i64
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 1, i32* %nr_redist_regions, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end10.if.end14_crit_edge, %if.then13
  %2 = phi i64 [ %phi.cast, %if.end10.if.end14_crit_edge ], [ 1, %if.then13 ]
  %call15 = call fastcc i8* @kcalloc(i64 noundef %2, i64 noundef 24) #15
  %3 = bitcast i8* %call15 to %struct.redist_region*
  %tobool16.not = icmp eq i8* %call15, null
  br i1 %tobool16.not, label %out_unmap_dist, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  %4 = load i32, i32* %nr_redist_regions, align 4
  %cmp121.not = icmp eq i32 %4, 0
  br i1 %cmp121.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = bitcast %struct.resource* %res to i8*
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false), !annotation !8
  %add = add nuw i32 %i.0122, 1
  %call20 = call i32 @of_address_to_resource(%struct.device_node* noundef %node, i32 noundef %add, %struct.resource* noundef nonnull %res) #17
  %call22 = call i8* @of_iomap(%struct.device_node* noundef %node, i32 noundef %add) #17
  %idxprom = sext i32 %i.0122 to i64
  %redist_base = getelementptr %struct.redist_region, %struct.redist_region* %3, i64 %idxprom, i32 0
  store i8* %call22, i8** %redist_base, align 8
  %tobool23.not = icmp ne i32 %call20, 0
  %tobool27.not = icmp eq i8* %call22, null
  %or.cond = select i1 %tobool23.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* noundef %node, i32 noundef %i.0122) #18
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #16
  br label %out_unmap_rdist

cleanup:                                          ; preds = %for.body
  %6 = load i64, i64* %start, align 8
  %phys_base = getelementptr %struct.redist_region, %struct.redist_region* %3, i64 %idxprom, i32 1
  store i64 %6, i64* %phys_base, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #16
  %7 = load i32, i32* %nr_redist_regions, align 4
  %cmp = icmp ult i32 %add, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %call38 = call i32 @of_property_read_u64(%struct.device_node* noundef %node, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64* noundef nonnull %redist_stride) #17
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %for.end
  store i64 0, i64* %redist_stride, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.end
  call void @gic_enable_of_quirks(%struct.device_node* noundef %node, %struct.gic_quirk* noundef getelementptr inbounds ([5 x %struct.gic_quirk], [5 x %struct.gic_quirk]* @gic_quirks, i64 0, i64 0), i8* noundef bitcast (%struct.gic_chip_data* @gic_data to i8*)) #17
  %8 = load i32, i32* %nr_redist_regions, align 4
  %9 = load i64, i64* %redist_stride, align 8
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 3
  %call42 = call fastcc i32 @gic_init_bases(i8* noundef nonnull %call, %struct.redist_region* noundef nonnull %3, i32 noundef %8, i64 noundef %9, %struct.fwnode_handle* noundef %fwnode) #19
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %out_unmap_rdist

if.end45:                                         ; preds = %if.end41
  call fastcc void @gic_populate_ppi_partitions(%struct.device_node* noundef %node) #19
  %call47 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #15
  %cmp48 = icmp sgt i32 %call47, 0
  br i1 %cmp48, label %if.then54, label %cleanup72, !prof !9

if.then54:                                        ; preds = %if.end45
  call fastcc void @gic_of_setup_kvm_info(%struct.device_node* noundef %node) #19
  br label %cleanup72

out_unmap_rdist:                                  ; preds = %cleanup.thread, %if.end41
  %err.2 = phi i32 [ %call42, %if.end41 ], [ -19, %cleanup.thread ]
  %10 = load i32, i32* %nr_redist_regions, align 4
  %cmp57123.not = icmp eq i32 %10, 0
  br i1 %cmp57123.not, label %for.end71, label %for.body59

for.body59:                                       ; preds = %out_unmap_rdist, %for.inc69
  %11 = phi i32 [ %13, %for.inc69 ], [ %10, %out_unmap_rdist ]
  %i.1124 = phi i32 [ %inc70, %for.inc69 ], [ 0, %out_unmap_rdist ]
  %idxprom60 = sext i32 %i.1124 to i64
  %redist_base62 = getelementptr %struct.redist_region, %struct.redist_region* %3, i64 %idxprom60, i32 0
  %12 = load i8*, i8** %redist_base62, align 8
  %tobool63.not = icmp eq i8* %12, null
  br i1 %tobool63.not, label %for.inc69, label %if.then64

if.then64:                                        ; preds = %for.body59
  call void @iounmap(i8* noundef nonnull %12) #17
  %.pre126 = load i32, i32* %nr_redist_regions, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body59, %if.then64
  %13 = phi i32 [ %11, %for.body59 ], [ %.pre126, %if.then64 ]
  %inc70 = add nuw i32 %i.1124, 1
  %cmp57 = icmp ult i32 %inc70, %13
  br i1 %cmp57, label %for.body59, label %for.end71

for.end71:                                        ; preds = %for.inc69, %out_unmap_rdist
  call void @kfree(i8* noundef nonnull %call15) #17
  br label %out_unmap_dist

out_unmap_dist:                                   ; preds = %if.end14, %for.end71, %do.end7
  %err.3 = phi i32 [ %call2, %do.end7 ], [ %err.2, %for.end71 ], [ -12, %if.end14 ]
  call void @iounmap(i8* noundef nonnull %call) #17
  br label %cleanup72

cleanup72:                                        ; preds = %if.end45, %if.then54, %out_unmap_dist, %do.end
  %retval.0 = phi i32 [ %err.3, %out_unmap_dist ], [ -6, %do.end ], [ 0, %if.then54 ], [ 0, %if.end45 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s) unnamed_addr #1 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef nonnull @gicv3_nolpi) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_iomap(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @gic_validate_dist_version(i8* noundef %dist_base) unnamed_addr #0 section ".init.text" {
entry:
  %add.ptr = getelementptr i8, i8* %dist_base, i64 65512
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %and = and i32 %0, 240
  %switch.selectcmp.case1 = icmp eq i32 %and, 64
  %switch.selectcmp.case2 = icmp eq i32 %and, 48
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %1 = select i1 %switch.selectcmp, i32 0, i32 -19
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i32* noundef %out_value) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i32* noundef %out_value) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n, i64 noundef %size) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) #15
  ret i8* %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(%struct.device_node* noundef, i32 noundef, %struct.resource* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u64(%struct.device_node* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_of_quirks(%struct.device_node* noundef, %struct.gic_quirk* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @gic_init_bases(i8* noundef %dist_base, %struct.redist_region* noundef %rdist_regs, i32 noundef %nr_redist_regions, i64 noundef %redist_stride, %struct.fwnode_handle* noundef %handle) unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i1 @is_hyp_mode_available() #15
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @static_key_disable() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #15
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end8, !prof !9

do.end:                                           ; preds = %if.end
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0)) #18
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end
  store %struct.fwnode_handle* %handle, %struct.fwnode_handle** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 0), align 8
  store i8* %dist_base, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  store %struct.redist_region* %rdist_regs, %struct.redist_region** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 2), align 8
  store i32 %nr_redist_regions, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 6), align 8
  store i64 %redist_stride, i64* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 5), align 8
  %add.ptr = getelementptr i8, i8* %dist_base, i64 4
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  store i32 %0, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %1 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  %add.ptr12 = getelementptr i8, i8* %1, i64 8
  %2 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr12) #16, !srcloc !10
  call void @gic_enable_quirks(i32 noundef %2, %struct.gic_quirk* noundef getelementptr inbounds ([5 x %struct.gic_quirk], [5 x %struct.gic_quirk]* @gic_quirks, i64 0, i64 0), i8* noundef bitcast (%struct.gic_chip_data* @gic_data to i8*)) #17
  %3 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and = shl i32 %3, 5
  %add = and i32 %and, 992
  %4 = icmp ult i32 %add, 988
  %5 = select i1 %4, i32 %add, i32 988
  %call22 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 noundef %5) #18
  %6 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and27 = and i32 %6, 256
  %tobool28.not = icmp eq i32 %and27, 0
  %7 = lshr i32 %6, 22
  %add31 = and i32 %7, 992
  %mul32 = add nuw nsw i32 %add31, 32
  %cond35 = select i1 %tobool28.not, i32 0, i32 %mul32
  %call36 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 noundef %cond35) #18
  %8 = load i64, i64* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 7), align 8
  %and37 = and i64 %8, 2
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end8
  %9 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  %add.ptr41 = getelementptr i8, i8* %9, i64 12
  %10 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr41) #16, !srcloc !10
  store i32 %10, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 5), align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end8
  %call45 = call fastcc %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* noundef %handle) #15
  store %struct.irq_domain* %call45, %struct.irq_domain** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 4), align 8
  %call46 = call i8* @__alloc_percpu(i64 noundef 56, i64 noundef 8) #17
  store i8* %call46, i8** bitcast (%struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0) to i8**), align 8
  store i8 1, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 7), align 1
  store i8 1, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 6), align 8
  store i8 1, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 8), align 2
  store i8 1, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 9), align 1
  %11 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 4), align 8
  %tobool47.not = icmp eq %struct.irq_domain* %11, null
  br i1 %tobool47.not, label %if.then62, label %lor.lhs.false, !prof !11

if.then62:                                        ; preds = %if.end44
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1776; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !12
  br label %if.then100

lor.lhs.false:                                    ; preds = %if.end44
  %tobool74.not = icmp eq i8* %call46, null
  br i1 %tobool74.not, label %if.then89, label %if.end101, !prof !11

if.then89:                                        ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1776; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !13
  br label %if.then100

if.then100:                                       ; preds = %if.then89, %if.then62
  %12 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 4), align 8
  %tobool136.not = icmp eq %struct.irq_domain* %12, null
  br i1 %tobool136.not, label %if.end138, label %if.then137

if.end101:                                        ; preds = %lor.lhs.false
  call void @irq_domain_update_bus_token(%struct.irq_domain* noundef nonnull %11, i32 noundef 1) #17
  %and102 = and i32 %0, 67108864
  %tobool103.not = icmp eq i32 %and102, 0
  %and102.lobit = lshr exact i32 %and102, 26
  %13 = trunc i32 %and102.lobit to i8
  store i8 %13, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 8), align 8
  %cond114 = select i1 %tobool103.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %call115 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* noundef %cond114) #18
  %and116 = and i32 %0, 65536
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end128, label %if.then118

if.then118:                                       ; preds = %if.end101
  %14 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 4), align 8
  %call119 = call i32 @mbi_init(%struct.fwnode_handle* noundef %handle, %struct.irq_domain* noundef %14) #17
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end128, label %do.end124

do.end124:                                        ; preds = %if.then118
  %call126 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #18
  br label %if.end128

if.end128:                                        ; preds = %if.then118, %do.end124, %if.end101
  %call129 = call i32 @set_handle_irq(void (%struct.pt_regs*)* noundef nonnull @gic_handle_irq) #17
  call fastcc void @gic_update_rdist_properties() #15
  call fastcc void @gic_dist_init() #19
  call fastcc void @gic_cpu_init() #15
  call fastcc void @gic_smp_init() #19
  %call130 = call fastcc i32 @gic_dist_supports_lpis() #15
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %cleanup, label %if.then132

if.then132:                                       ; preds = %if.end128
  %15 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 4), align 8
  %call133 = call i32 @its_init(%struct.fwnode_handle* noundef %handle, %struct.rdists* noundef getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3), %struct.irq_domain* noundef %15) #17
  %call134 = call i32 @its_cpu_init() #17
  br label %cleanup

if.then137:                                       ; preds = %if.then100
  call void @irq_domain_remove(%struct.irq_domain* noundef nonnull %12) #17
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.then100
  %16 = load i8*, i8** bitcast (%struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0) to i8**), align 8
  call void @free_percpu(i8* noundef %16) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %if.end128, %if.end138
  %retval.0 = phi i32 [ -12, %if.end138 ], [ 0, %if.end128 ], [ 0, %if.then132 ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @gic_populate_ppi_partitions(%struct.device_node* noundef %gic_node) unnamed_addr #0 section ".init.text" {
entry:
  %cpu_phandle = alloca i32, align 4
  %ppi_fwspec = alloca %struct.irq_fwspec, align 8
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %gic_node, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0)) #17
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %cleanup247, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %conv = zext i32 %0 to i64
  %call1 = call fastcc i8* @kcalloc(i64 noundef %conv, i64 noundef 8) #15
  store i8* %call1, i8** bitcast (%struct.partition_desc*** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 10) to i8**), align 8
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %cleanup247, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @of_get_child_count(%struct.device_node* noundef nonnull %call) #15
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup247, label %if.end8

if.end8:                                          ; preds = %if.end4
  %conv9 = sext i32 %call5 to i64
  %call10 = call fastcc i8* @kcalloc(i64 noundef %conv9, i64 noundef 40) #15
  %1 = bitcast i8* %call10 to %struct.partition_affinity*
  %tobool11.not = icmp eq i8* %call10, null
  br i1 %tobool11.not, label %if.then21, label %if.end32, !prof !11

if.then21:                                        ; preds = %if.end8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1853; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !14
  br label %cleanup247

if.end32:                                         ; preds = %if.end8
  %call33 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef nonnull %call, %struct.device_node* noundef null) #17
  %cmp.not313 = icmp eq %struct.device_node* %call33, null
  br i1 %cmp.not313, label %for.cond172.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end32
  %2 = bitcast i32* %cpu_phandle to i8*
  br label %for.body

for.cond172.preheader:                            ; preds = %do.end165, %if.end32
  %3 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %cmp173317.not = icmp eq i32 %3, 0
  br i1 %cmp173317.not, label %cleanup247, label %for.body175.lr.ph

for.body175.lr.ph:                                ; preds = %for.cond172.preheader
  %4 = bitcast %struct.irq_fwspec* %ppi_fwspec to i8*
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %ppi_fwspec, i64 0, i32 0
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %ppi_fwspec, i64 0, i32 1
  %arrayinit.begin = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %ppi_fwspec, i64 0, i32 2, i64 0
  %arrayinit.element = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %ppi_fwspec, i64 0, i32 2, i64 1
  %arrayinit.element176 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %ppi_fwspec, i64 0, i32 2, i64 2
  %5 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %ppi_fwspec, i64 0, i32 2, i64 15
  %6 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %ppi_fwspec, i64 0, i32 2, i64 3
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i32* %5 to i64*, !annotation !8
  br label %for.body175

for.body:                                         ; preds = %for.body.lr.ph, %do.end165
  %child_part.0315 = phi %struct.device_node* [ %call33, %for.body.lr.ph ], [ %call170, %do.end165 ]
  %part_idx.0314 = phi i32 [ 0, %for.body.lr.ph ], [ %inc168, %do.end165 ]
  %idxprom = sext i32 %part_idx.0314 to i64
  %call35 = call fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef nonnull %child_part.0315) #15
  %partition_id = getelementptr %struct.partition_affinity, %struct.partition_affinity* %1, i64 %idxprom, i32 1
  %9 = bitcast i8** %partition_id to %struct.fwnode_handle**
  store %struct.fwnode_handle* %call35, %struct.fwnode_handle** %9, align 8
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0), %struct.device_node* noundef nonnull %child_part.0315, i32 noundef %part_idx.0314) #18
  %call38 = call i32 @of_property_count_elems_of_size(%struct.device_node* noundef nonnull %child_part.0315, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i32 noundef 4) #17
  %cmp40 = icmp slt i32 %call38, 1
  br i1 %cmp40, label %if.end55, label %for.body67.lr.ph, !prof !11

if.end55:                                         ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1869; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !15
  br label %do.end165

for.body67.lr.ph:                                 ; preds = %for.body
  %mask = getelementptr %struct.partition_affinity, %struct.partition_affinity* %1, i64 %idxprom, i32 0
  br label %for.body67

for.body67:                                       ; preds = %for.body67.lr.ph, %cleanup
  %i.0312 = phi i32 [ 0, %for.body67.lr.ph ], [ %inc, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #16
  store i32 0, i32* %cpu_phandle, align 4, !annotation !8
  %call68 = call i32 @of_property_read_u32_index(%struct.device_node* noundef nonnull %child_part.0315, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i32 noundef %i.0312, i32* noundef nonnull %cpu_phandle) #17
  %tobool70.not = icmp eq i32 %call68, 0
  br i1 %tobool70.not, label %if.end95, label %if.then83, !prof !9

if.then83:                                        ; preds = %for.body67
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1878; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !16
  br label %cleanup

if.end95:                                         ; preds = %for.body67
  %10 = load i32, i32* %cpu_phandle, align 4
  %call96 = call %struct.device_node* @of_find_node_by_phandle(i32 noundef %10) #17
  %tobool98.not = icmp eq %struct.device_node* %call96, null
  br i1 %tobool98.not, label %if.then113, label %if.end125, !prof !11

if.then113:                                       ; preds = %if.end95
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1882; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !17
  br label %cleanup

if.end125:                                        ; preds = %if.end95
  %call126 = call i32 @of_cpu_node_to_id(%struct.device_node* noundef nonnull %call96) #17
  %cmp128 = icmp slt i32 %call126, 0
  br i1 %cmp128, label %if.then142, label %do.end157, !prof !11

if.then142:                                       ; preds = %if.end125
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1886; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !18
  br label %cleanup

do.end157:                                        ; preds = %if.end125
  %call159 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), %struct.device_node* noundef nonnull %call96, i32 noundef %call126) #18
  call fastcc void @cpumask_set_cpu(i32 noundef %call126, %struct.cpumask* noundef %mask) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then142, %if.then113, %if.then83, %do.end157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #16
  %inc = add nuw nsw i32 %i.0312, 1
  %exitcond.not = icmp eq i32 %inc, %call38
  br i1 %exitcond.not, label %do.end165, label %for.body67

do.end165:                                        ; preds = %cleanup, %if.end55
  %call167 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #18
  %inc168 = add i32 %part_idx.0314, 1
  %call170 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef nonnull %call, %struct.device_node* noundef nonnull %child_part.0315) #17
  %cmp.not = icmp eq %struct.device_node* %call170, null
  br i1 %cmp.not, label %for.cond172.preheader, label %for.body

for.body175:                                      ; preds = %for.body175.lr.ph, %cleanup239
  %i.1318 = phi i32 [ 0, %for.body175.lr.ph ], [ %inc245, %cleanup239 ]
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #16
  store i64 0, i64* %8, align 8, !annotation !8
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 0), align 8
  store %struct.fwnode_handle* %11, %struct.fwnode_handle** %fwnode, align 8
  store i32 3, i32* %param_count, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(64) %7, i8 0, i64 52, i1 false)
  store i32 -1592735506, i32* %arrayinit.begin, align 4
  store i32 %i.1318, i32* %arrayinit.element, align 8
  store i32 0, i32* %arrayinit.element176, align 4
  %call177 = call i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* noundef nonnull %ppi_fwspec) #17
  %tobool179.not = icmp eq i32 %call177, 0
  br i1 %tobool179.not, label %if.then194, label %if.end206, !prof !11

if.then194:                                       ; preds = %for.body175
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1912; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !19
  br label %cleanup239

if.end206:                                        ; preds = %for.body175
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 0), align 8
  %call207 = call %struct.partition_desc* @partition_create_desc(%struct.fwnode_handle* noundef %12, %struct.partition_affinity* noundef nonnull %1, i32 noundef %call5, i32 noundef %call177, %struct.irq_domain_ops* noundef nonnull @partition_domain_ops) #17
  %tobool209.not = icmp eq %struct.partition_desc* %call207, null
  br i1 %tobool209.not, label %if.then224, label %if.end236, !prof !11

if.then224:                                       ; preds = %if.end206
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1916; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !20
  br label %cleanup239

if.end236:                                        ; preds = %if.end206
  %13 = load %struct.partition_desc**, %struct.partition_desc*** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 10), align 8
  %idxprom237 = sext i32 %i.1318 to i64
  %arrayidx238 = getelementptr %struct.partition_desc*, %struct.partition_desc** %13, i64 %idxprom237
  store %struct.partition_desc* %call207, %struct.partition_desc** %arrayidx238, align 8
  br label %cleanup239

cleanup239:                                       ; preds = %if.then224, %if.then194, %if.end236
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #16
  %inc245 = add nuw i32 %i.1318, 1
  %14 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %cmp173 = icmp ult i32 %inc245, %14
  br i1 %cmp173, label %for.body175, label %cleanup247

cleanup247:                                       ; preds = %cleanup239, %for.cond172.preheader, %if.end4, %if.then21, %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @gic_of_setup_kvm_info(%struct.device_node* noundef %node) unnamed_addr #0 section ".init.text" {
entry:
  %r = alloca %struct.resource, align 8
  %gicv_idx = alloca i32, align 4
  %0 = bitcast %struct.resource* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !8
  %1 = bitcast i32* %gicv_idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  store i32 0, i32* %gicv_idx, align 4, !annotation !8
  store i32 1, i32* getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v3_kvm_info, i64 0, i32 0), align 8
  %call = call i32 @irq_of_parse_and_map(%struct.device_node* noundef %node, i32 noundef 0) #17
  store i32 %call, i32* getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v3_kvm_info, i64 0, i32 2), align 8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %node, i32* noundef nonnull %gicv_idx) #15
  %tobool2.not = icmp eq i32 %call1, 0
  %.pre = load i32, i32* %gicv_idx, align 4
  %phi.bo = add i32 %.pre, 3
  %2 = select i1 %tobool2.not, i32 %phi.bo, i32 4
  store i32 %2, i32* %gicv_idx, align 4
  %call5 = call i32 @of_address_to_resource(%struct.device_node* noundef %node, i32 noundef %2, %struct.resource* noundef nonnull %r) #17
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(64) bitcast (%struct.resource* getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v3_kvm_info, i64 0, i32 1) to i8*), i8* noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %3 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 6), align 8, !range !21
  store i8 %3, i8* getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v3_kvm_info, i64 0, i32 5), align 8
  %4 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 7), align 1, !range !21
  store i8 %4, i8* getelementptr inbounds (%struct.gic_kvm_info, %struct.gic_kvm_info* @gic_v3_kvm_info, i64 0, i32 6), align 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i32* noundef %out_values) unnamed_addr #1 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* noundef %out_values, i64 noundef 1, i64 noundef 0) #17
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i1 @gic_enable_quirk_msm8996(i8* nocapture noundef %data) #8 {
entry:
  %flags = getelementptr inbounds i8, i8* %data, i64 96
  %0 = bitcast i8* %flags to i64*
  %1 = load i64, i64* %0, align 8
  %or = or i64 %1, 1
  store i64 %or, i64* %0, align 8
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i1 @gic_enable_quirk_hip06_07(i8* nocapture noundef %data) #8 {
entry:
  %gicd_typer = getelementptr inbounds i8, i8* %data, i64 56
  %0 = bitcast i8* %gicd_typer to i32*
  %1 = load i32, i32* %0, align 8
  %and = and i32 %1, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %2 = and i32 %1, -769
  store i32 %2, i32* %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %3 = xor i1 %tobool.not, true
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i1 @gic_enable_quirk_cavium_38539(i8* nocapture noundef %data) #8 {
entry:
  %flags = getelementptr inbounds i8, i8* %data, i64 96
  %0 = bitcast i8* %flags to i64*
  %1 = load i64, i64* %0, align 8
  %or = or i64 %1, 2
  store i64 %or, i64* %0, align 8
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_hyp_mode_available() unnamed_addr #9 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 0), align 4
  %cmp = icmp eq i32 %0, 3602
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 1), align 4
  %cmp1 = icmp eq i32 %1, 3602
  %2 = select i1 %cmp, i1 %cmp1, i1 false
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_disable() unnamed_addr #1 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !21
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !11

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.static_key_disable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 329; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %return, label %if.then41, !prof !9

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !23
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 0, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_quirks(i32 noundef, %struct.gic_quirk* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #1 {
entry:
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef 0, i64 noundef -1, i32 noundef 0, %struct.irq_domain_ops* noundef nonnull @gic_irq_domain_ops, i8* noundef bitcast (%struct.gic_chip_data* @gic_data to i8*)) #17
  ret %struct.irq_domain* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbi_init(%struct.fwnode_handle* noundef, %struct.irq_domain* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_handle_irq(void (%struct.pt_regs*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_handle_irq(%struct.pt_regs* noundef %regs) #1 {
entry:
  %call = call fastcc i32 @do_read_iar() #15
  %0 = and i32 %call, -4
  %1 = icmp eq i32 %0, 1020
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call28 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #15
  %cmp29 = icmp sgt i32 %call28, 0
  br i1 %cmp29, label %if.then39, label %if.else, !prof !9

if.then39:                                        ; preds = %if.end
  call fastcc void @gic_write_eoir(i32 noundef %call) #15
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !24
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then39
  %2 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 4), align 8
  %call41 = call i32 @handle_domain_irq(%struct.irq_domain* noundef %2, i32 noundef %call, %struct.pt_regs* noundef %regs) #17
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end40
  %.b104 = load i1, i1* @gic_handle_irq.__already_done, align 1
  br i1 %.b104, label %if.end81, label %if.then56, !prof !9

if.then56:                                        ; preds = %if.then43
  store i1 true, i1* @gic_handle_irq.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 732; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !25
  br label %if.end81

if.end81:                                         ; preds = %if.then56, %if.then43
  call fastcc void @gic_deactivate_unhandled(i32 noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end81, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_update_rdist_properties() unnamed_addr #1 {
entry:
  store i32 -1, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %call = call fastcc i32 @gic_iterate_rdists(i32 (%struct.redist_region*, i8*)* noundef nonnull @__gic_update_rdist_properties) #15
  %0 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %do.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 947; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !26
  store i32 0, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  br label %do.end

do.end:                                           ; preds = %entry, %if.then
  %1 = phi i32 [ %0, %entry ], [ 0, %if.then ]
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i32 noundef %1) #18
  %2 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 6), align 8, !range !21
  %tobool19.not = icmp eq i8 %2, 0
  br i1 %tobool19.not, label %if.end33, label %do.end22

do.end22:                                         ; preds = %do.end
  %3 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 8), align 2, !range !21
  %tobool24.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool24.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0)
  %4 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 7), align 1, !range !21
  %tobool26.not = icmp eq i8 %4, 0
  %cond28 = select i1 %tobool26.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)
  %5 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 9), align 1, !range !21
  %tobool29.not = icmp eq i8 %5, 0
  %cond31 = select i1 %tobool29.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond28, i8* noundef %cond31) #18
  br label %if.end33

if.end33:                                         ; preds = %do.end22, %do.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @gic_dist_init() unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 0, i8* %0) #16, !srcloc !27
  call void @gic_dist_wait_for_rwp() #15
  %1 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %2 = and i32 %1, 31
  %cmp1200.not242 = icmp eq i32 %2, 0
  br i1 %cmp1200.not242, label %for.cond5.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr2 = getelementptr i8, i8* %0, i64 128
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body, %entry
  %3 = phi i32 [ %1, %entry ], [ %5, %for.body ]
  %and6202 = and i32 %3, 256
  %tobool.not203 = icmp eq i32 %and6202, 0
  br i1 %tobool.not203, label %for.end85, label %for.body15.lr.ph

for.body15.lr.ph:                                 ; preds = %for.cond5.preheader
  %add.ptr16 = getelementptr i8, i8* %0, i64 5120
  %add.ptr20 = getelementptr i8, i8* %0, i64 7168
  br label %for.body15

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 32, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %4 = lshr exact i64 %indvars.iv, 3
  %add.ptr3 = getelementptr i8, i8* %add.ptr2, i64 %4
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr3) #16, !srcloc !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %5 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and = shl i32 %5, 5
  %add = and i32 %and, 992
  %6 = icmp ult i32 %add, 988
  %7 = select i1 %6, i32 %add, i32 988
  %cond = add nuw nsw i32 %7, 32
  %8 = zext i32 %cond to i64
  %cmp1 = icmp ult i64 %indvars.iv.next, %8
  br i1 %cmp1, label %for.body, label %for.cond5.preheader

for.cond27.preheader:                             ; preds = %for.body15
  %tobool29.not210 = icmp eq i32 %and6, 0
  br i1 %tobool29.not210, label %for.end85, label %for.body39.lr.ph

for.body39.lr.ph:                                 ; preds = %for.cond27.preheader
  %add.ptr40 = getelementptr i8, i8* %0, i64 4096
  br label %for.body39

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv247 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next248, %for.body15 ]
  %9 = lshr exact i64 %indvars.iv247, 3
  %add.ptr19 = getelementptr i8, i8* %add.ptr16, i64 %9
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr19) #16, !srcloc !27
  %add.ptr23 = getelementptr i8, i8* %add.ptr20, i64 %9
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr23) #16, !srcloc !27
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 32
  %10 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and6 = and i32 %10, 256
  %tobool.not = icmp eq i32 %and6, 0
  %11 = lshr i32 %10, 22
  %add9 = and i32 %11, 992
  %mul10 = add nuw nsw i32 %add9, 32
  %cond13 = select i1 %tobool.not, i32 0, i32 %mul10
  %12 = zext i32 %cond13 to i64
  %cmp14 = icmp ult i64 %indvars.iv.next248, %12
  br i1 %cmp14, label %for.body15, label %for.cond27.preheader

for.cond47.preheader:                             ; preds = %for.body39
  %tobool49.not217 = icmp eq i32 %and28, 0
  br i1 %tobool49.not217, label %for.end85, label %for.body59.lr.ph

for.body59.lr.ph:                                 ; preds = %for.cond47.preheader
  %add.ptr60 = getelementptr i8, i8* %0, i64 12288
  br label %for.body59

for.body39:                                       ; preds = %for.body39.lr.ph, %for.body39
  %indvars.iv251 = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next252, %for.body39 ]
  %13 = lshr exact i64 %indvars.iv251, 3
  %add.ptr43 = getelementptr i8, i8* %add.ptr40, i64 %13
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr43) #16, !srcloc !27
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 32
  %14 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and28 = and i32 %14, 256
  %tobool29.not = icmp eq i32 %and28, 0
  %15 = lshr i32 %14, 22
  %add33 = and i32 %15, 992
  %mul34 = add nuw nsw i32 %add33, 32
  %cond37 = select i1 %tobool29.not, i32 0, i32 %mul34
  %16 = zext i32 %cond37 to i64
  %cmp38 = icmp ult i64 %indvars.iv.next252, %16
  br i1 %cmp38, label %for.body39, label %for.cond47.preheader

for.cond67.preheader:                             ; preds = %for.body59
  %tobool69.not224 = icmp eq i32 %and48, 0
  br i1 %tobool69.not224, label %for.end85, label %for.body79.lr.ph

for.body79.lr.ph:                                 ; preds = %for.cond67.preheader
  %add.ptr80 = getelementptr i8, i8* %0, i64 8192
  br label %for.body79

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv255 = phi i64 [ 0, %for.body59.lr.ph ], [ %indvars.iv.next256, %for.body59 ]
  %17 = lshr exact i64 %indvars.iv255, 2
  %add.ptr63 = getelementptr i8, i8* %add.ptr60, i64 %17
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 0, i8* %add.ptr63) #16, !srcloc !27
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 16
  %18 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and48 = and i32 %18, 256
  %tobool49.not = icmp eq i32 %and48, 0
  %19 = lshr i32 %18, 22
  %add53 = and i32 %19, 992
  %mul54 = add nuw nsw i32 %add53, 32
  %cond57 = select i1 %tobool49.not, i32 0, i32 %mul54
  %20 = zext i32 %cond57 to i64
  %cmp58 = icmp ult i64 %indvars.iv.next256, %20
  br i1 %cmp58, label %for.body59, label %for.cond67.preheader

for.body79:                                       ; preds = %for.body79.lr.ph, %for.body79
  %indvars.iv259 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next260, %for.body79 ]
  %add.ptr82 = getelementptr i8, i8* %add.ptr80, i64 %indvars.iv259
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1600085856, i8* %add.ptr82) #16, !srcloc !27
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 4
  %21 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and68 = and i32 %21, 256
  %tobool69.not = icmp eq i32 %and68, 0
  %22 = lshr i32 %21, 22
  %add73 = and i32 %22, 992
  %mul74 = add nuw nsw i32 %add73, 32
  %cond77 = select i1 %tobool69.not, i32 0, i32 %mul74
  %23 = zext i32 %cond77 to i64
  %cmp78 = icmp ult i64 %indvars.iv.next260, %23
  br i1 %cmp78, label %for.body79, label %for.end85

for.end85:                                        ; preds = %for.body79, %for.cond5.preheader, %for.cond27.preheader, %for.cond47.preheader, %for.cond67.preheader
  %.lcssa = phi i32 [ %18, %for.cond67.preheader ], [ %14, %for.cond47.preheader ], [ %10, %for.cond27.preheader ], [ %3, %for.cond5.preheader ], [ %21, %for.body79 ]
  %and86 = shl i32 %.lcssa, 5
  %add87 = and i32 %and86, 992
  %24 = icmp ult i32 %add87, 988
  %25 = select i1 %24, i32 %add87, i32 988
  %cond94 = add nuw nsw i32 %25, 32
  call void @gic_dist_config(i8* noundef %0, i32 noundef %cond94, void ()* noundef nonnull @gic_dist_wait_for_rwp) #17
  %26 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 5), align 4
  %and95 = and i32 %26, 256
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.end85
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0)) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end85
  %val.0 = phi i32 [ 275, %do.end ], [ 19, %for.end85 ]
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %val.0, i8* %0) #16, !srcloc !27
  %call104 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add105 = add i64 %call104, ptrtoint (i32* @cpu_number to i64)
  %27 = inttoptr i64 %add105 to i32*
  %28 = load i32, i32* %27, align 4
  %call106 = call i64 @cpu_logical_map(i32 noundef %28) #17
  %call107 = call fastcc i64 @gic_mpidr_to_affinity(i64 noundef %call106) #15
  %29 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %30 = and i32 %29, 31
  %cmp118233.not243 = icmp eq i32 %30, 0
  br i1 %cmp118233.not243, label %for.cond126.preheader, label %for.body119.lr.ph

for.body119.lr.ph:                                ; preds = %if.end
  %add.ptr120 = getelementptr i8, i8* %0, i64 24576
  br label %for.body119

for.cond126.preheader:                            ; preds = %for.body119, %if.end
  %31 = phi i32 [ %29, %if.end ], [ %33, %for.body119 ]
  %and127235 = and i32 %31, 256
  %tobool128.not236 = icmp eq i32 %and127235, 0
  br i1 %tobool128.not236, label %for.end145, label %for.body138.lr.ph

for.body138.lr.ph:                                ; preds = %for.cond126.preheader
  %add.ptr139 = getelementptr i8, i8* %0, i64 32768
  br label %for.body138

for.body119:                                      ; preds = %for.body119.lr.ph, %for.body119
  %indvars.iv262 = phi i64 [ 32, %for.body119.lr.ph ], [ %indvars.iv.next263, %for.body119 ]
  %32 = shl i64 %indvars.iv262, 3
  %add.ptr123 = getelementptr i8, i8* %add.ptr120, i64 %32
  call fastcc void @__raw_writeq(i64 noundef %call107, i8* noundef %add.ptr123) #15
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1
  %33 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and109 = shl i32 %33, 5
  %add110 = and i32 %and109, 992
  %34 = icmp ult i32 %add110, 988
  %35 = select i1 %34, i32 %add110, i32 988
  %cond117 = add nuw nsw i32 %35, 32
  %36 = zext i32 %cond117 to i64
  %cmp118 = icmp ult i64 %indvars.iv.next263, %36
  br i1 %cmp118, label %for.body119, label %for.cond126.preheader

for.body138:                                      ; preds = %for.body138.lr.ph, %for.body138
  %indvars.iv266 = phi i64 [ 0, %for.body138.lr.ph ], [ %indvars.iv.next267, %for.body138 ]
  %37 = shl i64 %indvars.iv266, 3
  %add.ptr142 = getelementptr i8, i8* %add.ptr139, i64 %37
  call fastcc void @__raw_writeq(i64 noundef %call107, i8* noundef %add.ptr142) #15
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1
  %38 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and127 = and i32 %38, 256
  %tobool128.not = icmp eq i32 %and127, 0
  %39 = lshr i32 %38, 22
  %add132 = and i32 %39, 992
  %mul133 = add nuw nsw i32 %add132, 32
  %cond136 = select i1 %tobool128.not, i32 0, i32 %mul133
  %40 = zext i32 %cond136 to i64
  %cmp137 = icmp ult i64 %indvars.iv.next267, %40
  br i1 %cmp137, label %for.body138, label %for.end145

for.end145:                                       ; preds = %for.body138, %for.cond126.preheader
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_cpu_init() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @gic_populate_rdist() #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @gic_enable_redist() #15
  %0 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %cmp = icmp ugt i32 %0, 16
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 4), align 8
  %and = and i32 %1, 256
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end28, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %if.end
  %call4 = call fastcc i32 @gic_read_ctlr() #15
  %and5 = and i32 %call4, 524288
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body17, label %if.end28, !prof !11

do.body17:                                        ; preds = %land.rhs
  %call21 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add22 = add i64 %call21, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add22 to i32*
  %3 = load i32, i32* %2, align 4
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0), i32 noundef %3) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1112; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !28
  br label %if.end28

if.end28:                                         ; preds = %lor.lhs.false, %do.body17, %land.rhs
  %4 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %5 = ptrtoint %struct.anon.69* %4 to i64
  %call44 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add45 = add i64 %call44, %5
  %6 = inttoptr i64 %add45 to %struct.anon.69*
  %rd_base = getelementptr inbounds %struct.anon.69, %struct.anon.69* %6, i64 0, i32 1
  %7 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 65536
  %8 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %cmp4766.not = icmp eq i32 %8, -16
  br i1 %cmp4766.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end28
  %add.ptr49 = getelementptr i8, i8* %7, i64 65664
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %add51, %for.body ]
  %div = sdiv i32 %i.067, 8
  %idx.ext = sext i32 %div to i64
  %add.ptr50 = getelementptr i8, i8* %add.ptr49, i64 %idx.ext
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 -1, i8* %add.ptr50) #16, !srcloc !27
  %add51 = add i32 %i.067, 32
  %9 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %add46 = add i32 %9, 16
  %cmp47 = icmp ult i32 %add51, %add46
  br i1 %cmp47, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end28
  %add46.lcssa = phi i32 [ 0, %if.end28 ], [ %add46, %for.body ]
  call void @gic_cpu_config(i8* noundef %add.ptr, i32 noundef %add46.lcssa, void ()* noundef nonnull @gic_redist_wait_for_rwp) #17
  call fastcc void @gic_cpu_sys_reg_init() #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @gic_smp_init() unnamed_addr #0 section ".init.text" {
entry:
  %sgi_fwspec = alloca %struct.irq_fwspec, align 8
  %0 = bitcast %struct.irq_fwspec* %sgi_fwspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %sgi_fwspec, i64 0, i32 0
  %1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %sgi_fwspec, i64 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 0), align 8
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %fwnode, align 8
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %sgi_fwspec, i64 0, i32 1
  store i32 1, i32* %param_count, align 8
  call fastcc void @cpuhp_setup_state_nocalls() #15
  %4 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 4), align 8
  %call1 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef %4, i32 noundef -1, i32 noundef 8, i32 noundef -1, i8* noundef nonnull %0, i1 noundef false, %struct.irq_affinity_desc* noundef null) #17
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.end17, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1228; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !29
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @set_smp_ipi_range(i32 noundef %call1, i32 noundef 8) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end17
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_dist_supports_lpis() unnamed_addr #1 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  %add.ptr = getelementptr i8, i8* %0, i64 4
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %and = and i32 %1, 131072
  %tobool = icmp ne i32 %and, 0
  %2 = load i8, i8* @gicv3_nolpi, align 4
  %3 = and i8 %2, 1
  %tobool1.not = icmp eq i8 %3, 0
  %4 = select i1 %tobool, i1 %tobool1.not, i1 false
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @its_init(%struct.fwnode_handle* noundef, %struct.rdists* noundef, %struct.irq_domain* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @its_cpu_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(%struct.irq_domain* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef, i32 noundef, i64 noundef, i32 noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_domain_select(%struct.irq_domain* noundef readonly %d, %struct.irq_fwspec* nocapture noundef readonly %fwspec, i32 noundef %bus_token) #1 {
entry:
  %type = alloca i32, align 4
  %hwirq = alloca i64, align 8
  %0 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  %1 = bitcast i64* %hwirq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store i64 0, i64* %hwirq, align 8, !annotation !8
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %fwnode1 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %d, i64 0, i32 6
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8
  %cmp.not = icmp eq %struct.fwnode_handle* %2, %3
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %2) #15
  br i1 %call, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @gic_irq_domain_translate(%struct.irq_domain* noundef %d, %struct.irq_fwspec* noundef %fwspec, i64* noundef nonnull %hwirq, i32* noundef nonnull %type) #15
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end24, label %if.then13, !prof !9

if.then13:                                        ; preds = %if.end4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1533; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !30
  br label %cleanup

if.end24:                                         ; preds = %if.end4
  %4 = load i64, i64* %hwirq, align 8
  %call25 = call fastcc i1 @fwspec_is_partitioned_ppi(%struct.irq_fwspec* noundef %fwspec, i64 noundef %4) #15
  br i1 %call25, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end24
  %5 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 4), align 8
  %cmp27 = icmp eq %struct.irq_domain* %5, %d
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = call fastcc i32 @__gic_get_ppi_index(i64 noundef %4) #15
  %6 = load %struct.partition_desc**, %struct.partition_desc*** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 10), align 8
  %idxprom = zext i32 %call30 to i64
  %arrayidx = getelementptr %struct.partition_desc*, %struct.partition_desc** %6, i64 %idxprom
  %7 = load %struct.partition_desc*, %struct.partition_desc** %arrayidx, align 8
  %call31 = call %struct.irq_domain* @partition_get_domain(%struct.partition_desc* noundef %7) #17
  %cmp32 = icmp eq %struct.irq_domain* %call31, %d
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end, %entry, %if.end29, %if.then26
  %retval.0.shrunk = phi i1 [ %cmp32, %if.end29 ], [ %cmp27, %if.then26 ], [ false, %entry ], [ true, %if.end ], [ false, %if.then13 ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* nocapture noundef readonly %arg) #1 {
entry:
  %hwirq = alloca i64, align 8
  %type = alloca i32, align 4
  %0 = bitcast i64* %hwirq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %hwirq, align 8, !annotation !8
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  %2 = bitcast i8* %arg to %struct.irq_fwspec*
  %call = call i32 @gic_irq_domain_translate(%struct.irq_domain* noundef %domain, %struct.irq_fwspec* noundef %2, i64* noundef nonnull %hwirq, i32* noundef nonnull %type) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cmp20.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp20.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load i64, i64* %hwirq, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %add = add i32 %i.021, %virq
  %conv = sext i32 %i.021 to i64
  %add1 = add i64 %3, %conv
  %call2 = call fastcc i32 @gic_irq_domain_map(%struct.irq_domain* noundef %domain, i32 noundef %add, i64 noundef %add1) #15
  %tobool3.not = icmp eq i32 %call2, 0
  %inc = add nuw i32 %i.021, 1
  br i1 %tobool3.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %for.cond.preheader ], [ %call2, %for.body ], [ 0, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_irq_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #1 {
entry:
  %cmp8.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp8.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.09 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %add = add i32 %i.09, %virq
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %add) #17
  call fastcc void @irq_set_handler(i32 noundef %add) #15
  call void @irq_domain_reset_irq_data(%struct.irq_data* noundef %call) #17
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_domain_translate(%struct.irq_domain* nocapture noundef readnone %d, %struct.irq_fwspec* nocapture noundef readonly %fwspec, i64* nocapture noundef writeonly %hwirq, i32* nocapture noundef writeonly %type) #1 {
entry:
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %0 = load i32, i32* %param_count, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ult i32 %1, 16
  br i1 %cmp1, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %hwirq, align 8
  store i32 1, i32* %type, align 4
  br label %return

if.end:                                           ; preds = %entry
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %2) #15
  br i1 %call, label %if.then4, label %if.end70

if.then4:                                         ; preds = %if.end
  %cmp6 = icmp slt i32 %0, 3
  br i1 %cmp6, label %return, label %if.end9

if.end9:                                          ; preds = %if.then4
  %arrayidx11 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %3 = load i32, i32* %arrayidx11, align 4
  switch i32 %3, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb20
    i32 3, label %sw.bb25
    i32 -1592735507, label %sw.bb30
    i32 -1592735506, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end9
  %arrayidx13 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %4 = load i32, i32* %arrayidx13, align 4
  %add = add i32 %4, 32
  %conv14 = zext i32 %add to i64
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end9
  %arrayidx17 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %5 = load i32, i32* %arrayidx17, align 4
  %add18 = add i32 %5, 16
  %conv19 = zext i32 %add18 to i64
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end9
  %arrayidx22 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %6 = load i32, i32* %arrayidx22, align 4
  %add23 = add i32 %6, 4096
  %conv24 = zext i32 %add23 to i64
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end9
  %arrayidx27 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %7 = load i32, i32* %arrayidx27, align 4
  %add28 = add i32 %7, 1056
  %conv29 = zext i32 %add28 to i64
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end9
  %arrayidx32 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %8 = load i32, i32* %arrayidx32, align 4
  %conv33 = zext i32 %8 to i64
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end9
  %arrayidx36 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %9 = load i32, i32* %arrayidx36, align 4
  %conv37 = zext i32 %9 to i64
  store i64 %conv37, i64* %hwirq, align 8
  %10 = load i32, i32* %arrayidx36, align 4
  %cmp40 = icmp ugt i32 %10, 15
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %sw.bb34
  %add43 = add nuw nsw i64 %conv37, 1040
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb34
  %add44 = add nuw nsw i64 %conv37, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then42, %if.else, %sw.bb30, %sw.bb25, %sw.bb20, %sw.bb15, %sw.bb
  %add43.sink = phi i64 [ %add43, %if.then42 ], [ %add44, %if.else ], [ %conv33, %sw.bb30 ], [ %conv29, %sw.bb25 ], [ %conv24, %sw.bb20 ], [ %conv19, %sw.bb15 ], [ %conv14, %sw.bb ]
  store i64 %add43.sink, i64* %hwirq, align 8
  %arrayidx47 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 2
  %11 = load i32, i32* %arrayidx47, align 4
  %and = and i32 %11, 15
  store i32 %and, i32* %type, align 4
  %cmp48 = icmp eq i32 %and, 0
  br i1 %cmp48, label %land.rhs, label %return

land.rhs:                                         ; preds = %sw.epilog
  %12 = load i32, i32* %arrayidx11, align 4
  %cmp52.not = icmp eq i32 %12, -1592735506
  br i1 %cmp52.not, label %return, label %if.then61, !prof !9

if.then61:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1445; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !31
  br label %return

if.end70:                                         ; preds = %if.end
  %call72 = call fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef %2) #15
  %cmp75.not = icmp eq i32 %0, 2
  %or.cond = select i1 %call72, i1 %cmp75.not, i1 false
  br i1 %or.cond, label %if.end78, label %return

if.end78:                                         ; preds = %if.end70
  %arrayidx80 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %13 = load i32, i32* %arrayidx80, align 4
  %conv81 = zext i32 %13 to i64
  store i64 %conv81, i64* %hwirq, align 8
  %arrayidx83 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %14 = load i32, i32* %arrayidx83, align 4
  store i32 %14, i32* %type, align 4
  %cmp85 = icmp eq i32 %14, 0
  br i1 %cmp85, label %if.then99, label %return, !prof !11

if.then99:                                        ; preds = %if.end78
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1456; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !32
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end70, %if.end78, %if.then99, %land.rhs, %if.then61, %sw.epilog, %if.end9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then4 ], [ -22, %if.end9 ], [ 0, %sw.epilog ], [ 0, %if.then61 ], [ 0, %land.rhs ], [ 0, %if.then99 ], [ 0, %if.end78 ], [ -22, %if.end70 ], [ -22, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #9 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #15
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %1, @of_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @fwspec_is_partitioned_ppi(%struct.irq_fwspec* nocapture noundef readonly %fwspec, i64 noundef %hwirq) unnamed_addr #9 {
entry:
  %0 = load %struct.partition_desc**, %struct.partition_desc*** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 10), align 8
  %tobool.not = icmp eq %struct.partition_desc** %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %1) #15
  br i1 %call, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %2 = load i32, i32* %param_count, align 8
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %arrayidx = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 3
  %3 = load i32, i32* %arrayidx, align 4
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = call fastcc i32 @__get_intid_range(i64 noundef %hwirq) #15
  %4 = and i32 %call6, -3
  %.not = icmp eq i32 %4, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2, %lor.lhs.false, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ false, %lor.lhs.false ], [ false, %if.end2 ], [ %.not, %if.end5 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__gic_get_ppi_index(i64 noundef %hwirq) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @__get_intid_range(i64 noundef %hwirq) #15
  %switch = icmp eq i32 %call, 1
  %0 = trunc i64 %hwirq to i32
  %retval.0.v = select i1 %switch, i32 -16, i32 -1040
  %retval.0 = add i32 %retval.0.v, %0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @partition_get_domain(%struct.partition_desc* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__get_intid_range(i64 noundef %hwirq) unnamed_addr #10 {
entry:
  switch i64 %hwirq, label %sw.caserange8 [
    i64 0, label %return
    i64 1, label %return
    i64 2, label %return
    i64 3, label %return
    i64 4, label %return
    i64 5, label %return
    i64 6, label %return
    i64 7, label %return
    i64 8, label %return
    i64 9, label %return
    i64 10, label %return
    i64 11, label %return
    i64 12, label %return
    i64 13, label %return
    i64 14, label %return
    i64 15, label %return
    i64 16, label %sw.bb1
    i64 17, label %sw.bb1
    i64 18, label %sw.bb1
    i64 19, label %sw.bb1
    i64 20, label %sw.bb1
    i64 21, label %sw.bb1
    i64 22, label %sw.bb1
    i64 23, label %sw.bb1
    i64 24, label %sw.bb1
    i64 25, label %sw.bb1
    i64 26, label %sw.bb1
    i64 27, label %sw.bb1
    i64 28, label %sw.bb1
    i64 29, label %sw.bb1
    i64 30, label %sw.bb1
    i64 31, label %sw.bb1
    i64 1056, label %sw.bb3
    i64 1057, label %sw.bb3
    i64 1058, label %sw.bb3
    i64 1059, label %sw.bb3
    i64 1060, label %sw.bb3
    i64 1061, label %sw.bb3
    i64 1062, label %sw.bb3
    i64 1063, label %sw.bb3
    i64 1064, label %sw.bb3
    i64 1065, label %sw.bb3
    i64 1066, label %sw.bb3
    i64 1067, label %sw.bb3
    i64 1068, label %sw.bb3
    i64 1069, label %sw.bb3
    i64 1070, label %sw.bb3
    i64 1071, label %sw.bb3
    i64 1072, label %sw.bb3
    i64 1073, label %sw.bb3
    i64 1074, label %sw.bb3
    i64 1075, label %sw.bb3
    i64 1076, label %sw.bb3
    i64 1077, label %sw.bb3
    i64 1078, label %sw.bb3
    i64 1079, label %sw.bb3
    i64 1080, label %sw.bb3
    i64 1081, label %sw.bb3
    i64 1082, label %sw.bb3
    i64 1083, label %sw.bb3
    i64 1084, label %sw.bb3
    i64 1085, label %sw.bb3
    i64 1086, label %sw.bb3
    i64 1087, label %sw.bb3
    i64 1088, label %sw.bb3
    i64 1089, label %sw.bb3
    i64 1090, label %sw.bb3
    i64 1091, label %sw.bb3
    i64 1092, label %sw.bb3
    i64 1093, label %sw.bb3
    i64 1094, label %sw.bb3
    i64 1095, label %sw.bb3
    i64 1096, label %sw.bb3
    i64 1097, label %sw.bb3
    i64 1098, label %sw.bb3
    i64 1099, label %sw.bb3
    i64 1100, label %sw.bb3
    i64 1101, label %sw.bb3
    i64 1102, label %sw.bb3
    i64 1103, label %sw.bb3
    i64 1104, label %sw.bb3
    i64 1105, label %sw.bb3
    i64 1106, label %sw.bb3
    i64 1107, label %sw.bb3
    i64 1108, label %sw.bb3
    i64 1109, label %sw.bb3
    i64 1110, label %sw.bb3
    i64 1111, label %sw.bb3
    i64 1112, label %sw.bb3
    i64 1113, label %sw.bb3
    i64 1114, label %sw.bb3
    i64 1115, label %sw.bb3
    i64 1116, label %sw.bb3
    i64 1117, label %sw.bb3
    i64 1118, label %sw.bb3
    i64 1119, label %sw.bb3
  ]

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %return

sw.caserange:                                     ; preds = %sw.caserange5
  %0 = add i64 %hwirq, -32
  %inbounds = icmp ult i64 %0, 988
  %spec.select = select i1 %inbounds, i32 2, i32 6
  br label %return

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %return

sw.caserange5:                                    ; preds = %sw.caserange8
  %1 = and i64 %hwirq, -1024
  %inbounds6 = icmp eq i64 %1, 4096
  br i1 %inbounds6, label %return, label %sw.caserange

sw.caserange8:                                    ; preds = %entry
  %2 = add i64 %hwirq, -8192
  %inbounds9 = icmp ult i64 %2, 16769024
  br i1 %inbounds9, label %return, label %sw.caserange5

return:                                           ; preds = %sw.caserange, %sw.caserange8, %sw.caserange5, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb3, %sw.bb1
  %retval.0 = phi i32 [ 3, %sw.bb3 ], [ 1, %sw.bb1 ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 4, %sw.caserange5 ], [ 5, %sw.caserange8 ], [ %spec.select, %sw.caserange ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_irq_domain_map(%struct.irq_domain* noundef %d, i32 noundef %irq, i64 noundef %hw) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #17
  %call1 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %call) #15
  %call2 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #15
  %cmp = icmp sgt i32 %call2, 0
  %spec.select = select i1 %cmp, %struct.irq_chip* @gic_eoimode1_chip, %struct.irq_chip* @gic_chip, !prof !9
  %call6 = call fastcc i32 @__get_intid_range(i64 noundef %hw) #15
  switch i32 %call6, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb8
    i32 4, label %sw.bb8
    i32 5, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %call7 = call i32 @irq_set_percpu_devid(i32 noundef %irq) #17
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %d, i64 0, i32 3
  %0 = load i8*, i8** %host_data, align 8
  call void @irq_domain_set_info(%struct.irq_domain* noundef %d, i32 noundef %irq, i64 noundef %hw, %struct.irq_chip* noundef nonnull %spec.select, i8* noundef %0, void (%struct.irq_desc*)* noundef nonnull @handle_percpu_devid_irq, i8* noundef null, i8* noundef null) #17
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry, %entry
  %host_data9 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %d, i64 0, i32 3
  %1 = load i8*, i8** %host_data9, align 8
  call void @irq_domain_set_info(%struct.irq_domain* noundef %d, i32 noundef %irq, i64 noundef %hw, %struct.irq_chip* noundef nonnull %spec.select, i8* noundef %1, void (%struct.irq_desc*)* noundef nonnull @handle_fasteoi_irq, i8* noundef null, i8* noundef null) #17
  call fastcc void @irq_set_probe(i32 noundef %irq) #15
  call fastcc void @irqd_set_single_target(%struct.irq_data* noundef %call1) #15
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %call11 = call fastcc i32 @gic_dist_supports_lpis() #15
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %sw.bb10
  %host_data15 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %d, i64 0, i32 3
  %2 = load i8*, i8** %host_data15, align 8
  call void @irq_domain_set_info(%struct.irq_domain* noundef %d, i32 noundef %irq, i64 noundef %hw, %struct.irq_chip* noundef nonnull %spec.select, i8* noundef %2, void (%struct.irq_desc*)* noundef nonnull @handle_fasteoi_irq, i8* noundef null, i8* noundef null) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end14, %sw.bb8, %sw.bb
  call fastcc void @irqd_set_handle_enforce_irqctx(%struct.irq_data* noundef %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb10, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %sw.bb10 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef readnone %desc) unnamed_addr #10 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  ret %struct.irq_data* %irq_data
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(%struct.irq_domain* noundef, i32 noundef, i64 noundef, %struct.irq_chip* noundef, i8* noundef, void (%struct.irq_desc*)* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(%struct.irq_desc* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(%struct.irq_desc* noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_probe(i32 noundef %irq) unnamed_addr #1 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 1024, i64 noundef 0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_single_target(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #8 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 16777216
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_handle_enforce_irqctx(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #8 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 268435456
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_mask_irq(%struct.irq_data* nocapture noundef readonly %d) #1 {
entry:
  call fastcc void @gic_poke_irq(%struct.irq_data* noundef %d, i32 noundef 384) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_unmask_irq(%struct.irq_data* nocapture noundef readonly %d) #1 {
entry:
  call fastcc void @gic_poke_irq(%struct.irq_data* noundef %d, i32 noundef 256) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_eoi_irq(%struct.irq_data* nocapture noundef readonly %d) #1 {
entry:
  %call = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #15
  call fastcc void @gic_write_eoir(i32 noundef %call) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_set_affinity(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %mask_val, i1 noundef %force) #1 {
entry:
  %index = alloca i32, align 4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %index, align 4, !annotation !8
  br i1 %force, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %mask_val) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %mask_val, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cpu.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %cpu.0, %1
  br i1 %cmp.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i1 @gic_irq_in_rdist(%struct.irq_data* noundef %d) #15
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = call fastcc i32 @gic_peek_irq(%struct.irq_data* noundef %d, i32 noundef 256) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @gic_mask_irq(%struct.irq_data* noundef %d) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %call11 = call fastcc i32 @convert_offset_index(%struct.irq_data* noundef %d, i32 noundef 24576, i32* noundef nonnull %index) #15
  %call12 = call fastcc i8* @gic_dist_base(%struct.irq_data* noundef %d) #15
  %idx.ext = zext i32 %call11 to i64
  %add.ptr = getelementptr i8, i8* %call12, i64 %idx.ext
  %2 = load i32, i32* %index, align 4
  %mul = shl i32 %2, 3
  %idx.ext13 = zext i32 %mul to i64
  %add.ptr14 = getelementptr i8, i8* %add.ptr, i64 %idx.ext13
  %call15 = call i64 @cpu_logical_map(i32 noundef %cpu.0) #17
  %call16 = call fastcc i64 @gic_mpidr_to_affinity(i64 noundef %call15) #15
  call fastcc void @__raw_writeq(i64 noundef %call16, i8* noundef %add.ptr14) #15
  br i1 %tobool8.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.end10
  call void @gic_unmask_irq(%struct.irq_data* noundef %d) #15
  br label %if.end20

if.else19:                                        ; preds = %if.end10
  call void @gic_dist_wait_for_rwp() #15
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  %call21 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu.0) #15
  call fastcc void @irq_data_update_effective_affinity(%struct.irq_data* noundef %d, %struct.cpumask* noundef nonnull %call21) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %if.end20
  %retval.0 = phi i32 [ 2, %if.end20 ], [ -22, %if.end ], [ -22, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_retrigger(%struct.irq_data* nocapture noundef readonly %data) #1 {
entry:
  %call = call i32 @gic_irq_set_irqchip_state(%struct.irq_data* noundef %data, i32 noundef 0, i1 noundef true) #15
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_set_type(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %type) #1 {
entry:
  %index = alloca i32, align 4
  %call = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #15
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %index, align 4, !annotation !8
  %call1 = call fastcc i32 @get_intid_range(%struct.irq_data* noundef %d) #15
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp2.not = icmp eq i32 %type, 1
  %cond = select i1 %cmp2.not, i32 0, i32 -22
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i32 %call1, 2
  %cmp4 = icmp eq i32 %call1, 4
  %or.cond = or i1 %cmp3, %cmp4
  %1 = freeze i1 %or.cond
  br i1 %1, label %switch.early.test, label %if.end9

switch.early.test:                                ; preds = %if.end
  switch i32 %type, label %cleanup [
    i32 4, label %if.end9
    i32 1, label %if.end9
  ]

if.end9:                                          ; preds = %switch.early.test, %switch.early.test, %if.end
  %call10 = call fastcc i1 @gic_irq_in_rdist(%struct.irq_data* noundef %d) #15
  br i1 %call10, label %do.body, label %if.else

do.body:                                          ; preds = %if.end9
  %2 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %3 = ptrtoint %struct.anon.69* %2 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call13, %3
  %4 = inttoptr i64 %add to %struct.anon.69*
  %rd_base = getelementptr inbounds %struct.anon.69, %struct.anon.69* %4, i64 0, i32 1
  %5 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 65536
  br label %if.end14

if.else:                                          ; preds = %if.end9
  %6 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %do.body
  %base.0 = phi i8* [ %add.ptr, %do.body ], [ %6, %if.else ]
  %rwp_wait.0 = phi void ()* [ @gic_redist_wait_for_rwp, %do.body ], [ @gic_dist_wait_for_rwp, %if.else ]
  %call15 = call fastcc i32 @convert_offset_index(%struct.irq_data* noundef %d, i32 noundef 3072, i32* noundef nonnull %index) #15
  %7 = load i32, i32* %index, align 4
  %idx.ext = zext i32 %call15 to i64
  %add.ptr16 = getelementptr i8, i8* %base.0, i64 %idx.ext
  %call17 = call i32 @gic_configure_irq(i32 noundef %7, i32 noundef %type, i8* noundef %add.ptr16, void ()* noundef nonnull %rwp_wait.0) #17
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end14
  %8 = and i32 %call1, -3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %do.end25, label %cleanup

do.end25:                                         ; preds = %land.lhs.true18
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end25, %land.lhs.true18, %switch.early.test, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ -22, %switch.early.test ], [ 0, %do.end25 ], [ %call17, %land.lhs.true18 ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_get_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i8* nocapture noundef writeonly %val) #1 {
entry:
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  %cmp = icmp ugt i64 %0, 8191
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %which, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %call = call fastcc i32 @gic_peek_irq(%struct.irq_data* noundef %d, i32 noundef 512) #15
  %tobool = icmp ne i32 %call, 0
  br label %return.sink.split

sw.bb1:                                           ; preds = %if.end
  %call2 = call fastcc i32 @gic_peek_irq(%struct.irq_data* noundef %d, i32 noundef 768) #15
  %tobool3 = icmp ne i32 %call2, 0
  br label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  %call6 = call fastcc i32 @gic_peek_irq(%struct.irq_data* noundef %d, i32 noundef 256) #15
  %tobool7.not = icmp eq i32 %call6, 0
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb5, %sw.bb1, %sw.bb
  %tobool.sink = phi i1 [ %tobool, %sw.bb ], [ %tobool3, %sw.bb1 ], [ %tobool7.not, %sw.bb5 ]
  %frombool = zext i1 %tobool.sink to i8
  store i8 %frombool, i8* %val, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.end ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_set_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i1 noundef %val) #1 {
entry:
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  %cmp = icmp ugt i64 %0, 8191
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %which, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %cond = select i1 %val, i32 512, i32 640
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %cond3 = select i1 %val, i32 768, i32 896
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %cond6 = select i1 %val, i32 384, i32 256
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %reg.0 = phi i32 [ %cond6, %sw.bb4 ], [ %cond3, %sw.bb1 ], [ %cond, %sw.bb ]
  call fastcc void @gic_poke_irq(%struct.irq_data* noundef %d, i32 noundef %reg.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_ipi_send_mask(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %mask) #1 {
entry:
  %cpu = alloca i32, align 4
  %0 = bitcast i32* %cpu to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %1 = load i64, i64* %hwirq, align 8
  %cmp = icmp ugt i64 %1, 15
  br i1 %cmp, label %if.then, label %if.end16, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1191; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !33
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !34
  %call30 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %mask) #20
  store i32 %call30, i32* %cpu, align 4
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1731 = icmp ult i32 %call30, %2
  br i1 %cmp1731, label %for.body, label %for.end

for.body:                                         ; preds = %if.end16, %for.body
  %call32 = phi i32 [ %call, %for.body ], [ %call30, %if.end16 ]
  %call19 = call i64 @cpu_logical_map(i32 noundef %call32) #17
  %and = and i64 %call19, -16
  %call20 = call fastcc i16 @gic_compute_target_list(i32* noundef nonnull %cpu, %struct.cpumask* noundef %mask, i64 noundef %and) #15
  %3 = load i64, i64* %hwirq, align 8
  %conv22 = trunc i64 %3 to i32
  call fastcc void @gic_send_sgi(i64 noundef %and, i16 noundef %call20, i32 noundef %conv22) #15
  %4 = load i32, i32* %cpu, align 4
  %call = call i32 @cpumask_next(i32 noundef %4, %struct.cpumask* noundef %mask) #20
  store i32 %call, i32* %cpu, align 4
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp17 = icmp ult i32 %call, %5
  br i1 %cmp17, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end16
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_irq_nmi_setup(%struct.irq_data* nocapture noundef readonly %d) #1 {
entry:
  %irq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 1
  %0 = load i32, i32* %irq, align 4
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %0) #17
  ret i32 -22
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_irq_nmi_teardown(%struct.irq_data* nocapture noundef readonly %d) #1 {
entry:
  %irq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 1
  %0 = load i32, i32* %irq, align 4
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %0) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 528; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_poke_irq(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %offset) unnamed_addr #1 {
entry:
  %index = alloca i32, align 4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %index, align 4, !annotation !8
  %call = call fastcc i32 @convert_offset_index(%struct.irq_data* noundef %d, i32 noundef %offset, i32* noundef nonnull %index) #15
  %1 = load i32, i32* %index, align 4
  %call1 = call fastcc i1 @gic_irq_in_rdist(%struct.irq_data* noundef %d) #15
  br i1 %call1, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %2 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %3 = ptrtoint %struct.anon.69* %2 to i64
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call3, %3
  %4 = inttoptr i64 %add to %struct.anon.69*
  %rd_base = getelementptr inbounds %struct.anon.69, %struct.anon.69* %4, i64 0, i32 1
  %5 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 65536
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %base.0 = phi i8* [ %add.ptr, %do.body ], [ %6, %if.else ]
  %rwp_wait.0 = phi void ()* [ @gic_redist_wait_for_rwp, %do.body ], [ @gic_dist_wait_for_rwp, %if.else ]
  %rem = and i32 %1, 31
  %shl = shl nuw i32 1, %rem
  %idx.ext = zext i32 %call to i64
  %add.ptr4 = getelementptr i8, i8* %base.0, i64 %idx.ext
  %7 = lshr i32 %1, 3
  %mul = and i32 %7, 536870908
  %idx.ext5 = zext i32 %mul to i64
  %add.ptr6 = getelementptr i8, i8* %add.ptr4, i64 %idx.ext5
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %shl, i8* %add.ptr6) #16, !srcloc !27
  call void %rwp_wait.0() #17, !callees !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @convert_offset_index(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %offset, i32* nocapture noundef writeonly %index) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @get_intid_range(%struct.irq_data* noundef %d) #15
  switch i32 %call, label %if.then [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %index, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %hwirq2 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %1 = load i64, i64* %hwirq2, align 8
  %2 = trunc i64 %1 to i32
  %conv3 = add i32 %2, -1024
  store i32 %conv3, i32* %index, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  %hwirq5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %3 = load i64, i64* %hwirq5, align 8
  %4 = trunc i64 %3 to i32
  %conv7 = add i32 %4, -4096
  store i32 %conv7, i32* %index, align 4
  switch i32 %offset, label %if.then [
    i32 256, label %return
    i32 384, label %sw.bb9
    i32 512, label %sw.bb10
    i32 640, label %sw.bb11
    i32 768, label %sw.bb12
    i32 896, label %sw.bb13
    i32 1024, label %sw.bb14
    i32 3072, label %sw.bb15
    i32 24576, label %sw.bb16
  ]

sw.bb9:                                           ; preds = %sw.bb4
  br label %return

sw.bb10:                                          ; preds = %sw.bb4
  br label %return

sw.bb11:                                          ; preds = %sw.bb4
  br label %return

sw.bb12:                                          ; preds = %sw.bb4
  br label %return

sw.bb13:                                          ; preds = %sw.bb4
  br label %return

sw.bb14:                                          ; preds = %sw.bb4
  br label %return

sw.bb15:                                          ; preds = %sw.bb4
  br label %return

sw.bb16:                                          ; preds = %sw.bb4
  br label %return

if.then:                                          ; preds = %sw.bb4, %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !38
  %hwirq29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %5 = load i64, i64* %hwirq29, align 8
  %conv30 = trunc i64 %5 to i32
  store i32 %conv30, i32* %index, align 4
  br label %return

return:                                           ; preds = %sw.bb4, %if.then, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %offset, %if.then ], [ 32768, %sw.bb16 ], [ 12288, %sw.bb15 ], [ 8192, %sw.bb14 ], [ 7168, %sw.bb13 ], [ 6656, %sw.bb12 ], [ 6144, %sw.bb11 ], [ 5632, %sw.bb10 ], [ 5120, %sw.bb9 ], [ %offset, %sw.bb1 ], [ %offset, %sw.bb ], [ 4608, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @gic_irq_in_rdist(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #9 {
entry:
  %call = call fastcc i32 @get_intid_range(%struct.irq_data* noundef %d) #15
  %0 = icmp ult i32 %call, 4
  %switch.cast = trunc i32 %call to i4
  %switch.downshift = lshr i4 -5, %switch.cast
  %1 = and i4 %switch.downshift, 1
  %switch.masked = icmp ne i4 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !39
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_redist_wait_for_rwp() #1 {
entry:
  %0 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %1 = ptrtoint %struct.anon.69* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to %struct.anon.69*
  %rd_base = getelementptr inbounds %struct.anon.69, %struct.anon.69* %2, i64 0, i32 1
  %3 = load i8*, i8** %rd_base, align 8
  call fastcc void @gic_do_wait_for_rwp(i8* noundef %3) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_dist_wait_for_rwp() #1 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  call fastcc void @gic_do_wait_for_rwp(i8* noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_intid_range(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #9 {
entry:
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  %call = call fastcc i32 @__get_intid_range(i64 noundef %0) #15
  ret i32 %call
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_do_wait_for_rwp(i8* noundef %base) unnamed_addr #1 {
entry:
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %base) #16, !srcloc !10
  %tobool.not11 = icmp sgt i32 %0, -1
  br i1 %tobool.not11, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %if.end7
  %count.012 = phi i32 [ %dec, %if.end7 ], [ 1000000, %entry ]
  %dec = add nsw i32 %count.012, -1
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  %call2 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @gic_do_wait_for_rwp._rs, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gic_do_wait_for_rwp, i64 0, i64 0)) #17
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.then
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #18
  br label %cleanup

if.end7:                                          ; preds = %while.body
  call fastcc void @cpu_relax() #15
  call void @__const_udelay(i64 noundef 4295) #17
  %1 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %base) #16, !srcloc !10
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end7, %entry, %if.then, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #16, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_write_eoir(i32 noundef %irq) unnamed_addr #1 {
entry:
  %conv = zext i32 %irq to i64
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((1) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %conv) #16, !srcloc !41
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @gic_irq(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #9 {
entry:
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %0 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #15
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_peek_irq(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %offset) unnamed_addr #1 {
entry:
  %index = alloca i32, align 4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %index, align 4, !annotation !8
  %call = call fastcc i32 @convert_offset_index(%struct.irq_data* noundef %d, i32 noundef %offset, i32* noundef nonnull %index) #15
  %1 = load i32, i32* %index, align 4
  %call1 = call fastcc i1 @gic_irq_in_rdist(%struct.irq_data* noundef %d) #15
  br i1 %call1, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %2 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %3 = ptrtoint %struct.anon.69* %2 to i64
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call3, %3
  %4 = inttoptr i64 %add to %struct.anon.69*
  %rd_base = getelementptr inbounds %struct.anon.69, %struct.anon.69* %4, i64 0, i32 1
  %5 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 65536
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %base.0 = phi i8* [ %add.ptr, %do.body ], [ %6, %if.else ]
  %rem = and i32 %1, 31
  %idx.ext = zext i32 %call to i64
  %add.ptr4 = getelementptr i8, i8* %base.0, i64 %idx.ext
  %7 = lshr i32 %1, 3
  %mul = and i32 %7, 536870908
  %idx.ext5 = zext i32 %mul to i64
  %add.ptr6 = getelementptr i8, i8* %add.ptr4, i64 %idx.ext5
  %8 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr6) #16, !srcloc !10
  %9 = lshr i32 %8, %rem
  %10 = and i32 %9, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %10
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i8* @gic_dist_base(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @get_intid_range(%struct.irq_data* noundef %d) #15
  switch i32 %call, label %return [
    i32 0, label %do.body
    i32 1, label %do.body
    i32 3, label %do.body
    i32 2, label %sw.bb3
    i32 4, label %sw.bb3
  ]

do.body:                                          ; preds = %entry, %entry, %entry
  %0 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %1 = ptrtoint %struct.anon.69* %0 to i64
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call2, %1
  %2 = inttoptr i64 %add to %struct.anon.69*
  %rd_base = getelementptr inbounds %struct.anon.69, %struct.anon.69* %2, i64 0, i32 1
  %3 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 65536
  br label %return

sw.bb3:                                           ; preds = %entry, %entry
  %4 = load i8*, i8** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 1), align 8
  br label %return

return:                                           ; preds = %entry, %sw.bb3, %do.body
  %retval.0 = phi i8* [ %4, %sw.bb3 ], [ %add.ptr, %do.body ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @gic_mpidr_to_affinity(i64 noundef %mpidr) unnamed_addr #10 {
entry:
  %or10 = and i64 %mpidr, 1095233437695
  ret i64 %or10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cpu_logical_map(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_writeq(i64 noundef %val, i8* noundef %addr) unnamed_addr #1 {
entry:
  call void asm sideeffect "str ${0:x}, [$1]", "rZ,r"(i64 %val, i8* %addr) #16, !srcloc !43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_data_update_effective_affinity(%struct.irq_data* nocapture noundef readonly %d, %struct.cpumask* noundef %m) unnamed_addr #1 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 4, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %m) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #10 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #17
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_configure_irq(i32 noundef, i32 noundef, i8* noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i16 @gic_compute_target_list(i32* nocapture noundef %base_cpu, %struct.cpumask* noundef %mask, i64 noundef %cluster_id) unnamed_addr #1 {
entry:
  %0 = load i32, i32* %base_cpu, align 4
  %call = call i64 @cpu_logical_map(i32 noundef %0) #17
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %cpu.0 = phi i32 [ %0, %entry ], [ %call2, %if.end ]
  %mpidr.0 = phi i64 [ %call, %entry ], [ %call5, %if.end ]
  %tlist.0 = phi i16 [ 0, %entry ], [ %or, %if.end ]
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %cpu.0, %1
  br i1 %cmp, label %while.body, label %out

while.body:                                       ; preds = %while.cond
  %2 = trunc i64 %mpidr.0 to i16
  %sh_prom = and i16 %2, 15
  %shl = shl nuw i16 1, %sh_prom
  %or = or i16 %shl, %tlist.0
  %call2 = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef %mask) #20
  %cmp3.not = icmp ult i32 %call2, %1
  br i1 %cmp3.not, label %if.end, label %out

if.end:                                           ; preds = %while.body
  %call5 = call i64 @cpu_logical_map(i32 noundef %call2) #17
  %and6 = and i64 %call5, -16
  %cmp7.not = icmp eq i64 %and6, %cluster_id
  br i1 %cmp7.not, label %while.cond, label %if.then9

if.then9:                                         ; preds = %if.end
  %dec = add i32 %call2, -1
  br label %out

out:                                              ; preds = %while.cond, %while.body, %if.then9
  %cpu.1 = phi i32 [ %dec, %if.then9 ], [ %cpu.0, %while.body ], [ %cpu.0, %while.cond ]
  %tlist.1 = phi i16 [ %or, %if.then9 ], [ %tlist.0, %while.cond ], [ %or, %while.body ]
  store i32 %cpu.1, i32* %base_cpu, align 4
  ret i16 %tlist.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_send_sgi(i64 noundef %cluster_id, i16 noundef %tlist, i32 noundef %irq) unnamed_addr #1 {
entry:
  %0 = shl i64 %cluster_id, 16
  %or = and i64 %0, 71777214277877760
  %shl4 = shl i32 %irq, 24
  %conv = zext i32 %shl4 to i64
  %1 = shl i64 %cluster_id, 8
  %shl8 = and i64 %1, 16711680
  %2 = shl i64 %cluster_id, 40
  %shl12 = and i64 %2, 263882790666240
  %3 = zext i16 %tlist to i64
  %or5 = or i64 %shl8, %or
  %or9 = or i64 %or5, %shl12
  %or13 = or i64 %or9, %3
  %or17 = or i64 %or13, %conv
  call fastcc void @gic_write_sgi1r(i64 noundef %or17) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_write_sgi1r(i64 noundef %val) unnamed_addr #1 {
entry:
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((11) << 8) | ((5) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %val) #16, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_eoimode1_mask_irq(%struct.irq_data* nocapture noundef readonly %d) #1 {
entry:
  call void @gic_mask_irq(%struct.irq_data* noundef %d) #15
  %call = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #15
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @gic_poke_irq(%struct.irq_data* noundef %d, i32 noundef 896) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @gic_eoimode1_eoi_irq(%struct.irq_data* nocapture noundef readonly %d) #1 {
entry:
  %call = call fastcc i32 @gic_irq(%struct.irq_data* noundef %d) #15
  %cmp = icmp ugt i32 %call, 8191
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* noundef %d) #15
  br i1 %call1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %conv.i = zext i32 %call to i64
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((11) << 8) | ((1) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %conv.i) #16, !srcloc !45
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !46
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @gic_irq_set_vcpu_affinity(%struct.irq_data* nocapture noundef readonly %d, i8* noundef readnone %vcpu) #8 {
entry:
  %call = call fastcc i32 @get_intid_range(%struct.irq_data* noundef %d) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %vcpu, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call fastcc void @irqd_set_forwarded_to_vcpu(%struct.irq_data* noundef %d) #15
  br label %return

if.else:                                          ; preds = %if.end
  call fastcc void @irqd_clr_forwarded_to_vcpu(%struct.irq_data* noundef %d) #15
  br label %return

return:                                           ; preds = %if.then1, %if.else, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.else ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #9 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 1048576
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #8 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 1048576
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clr_forwarded_to_vcpu(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #8 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -1048577
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_handler(i32 noundef %irq) unnamed_addr #1 {
entry:
  call void @__irq_set_handler(i32 noundef %irq, void (%struct.irq_desc*)* noundef null, i32 noundef 0, i8* noundef null) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(%struct.irq_data* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, void (%struct.irq_desc*)* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef readonly %fwnode) unnamed_addr #9 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %0, @irqchip_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_iar() unnamed_addr #1 {
entry:
  %call12 = call fastcc i64 @gic_read_iar() #15
  %conv13 = trunc i64 %call12 to i32
  ret i32 %conv13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_domain_irq(%struct.irq_domain* noundef, i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_deactivate_unhandled(i32 noundef %irqnr) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #15
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else, !prof !9

if.then:                                          ; preds = %entry
  %cmp4 = icmp ult i32 %irqnr, 8192
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then
  %conv.i = zext i32 %irqnr to i64
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((11) << 8) | ((1) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %conv.i) #16, !srcloc !45
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !46
  br label %if.end7

if.else:                                          ; preds = %entry
  call fastcc void @gic_write_eoir(i32 noundef %irqnr) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then6, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_read_pmr() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !47
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @gic_read_iar() unnamed_addr #1 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #17
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %cpus_have_const_cap.exit

if.then3.i:                                       ; preds = %entry
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 50, i32 0)) #17
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br i1 %cmp1.i.i, label %if.then, label %if.else

cpus_have_const_cap.exit:                         ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap() #17
  br i1 %call6.i, label %if.then, label %if.else

if.then:                                          ; preds = %if.then3.i, %cpus_have_const_cap.exit
  %call1 = call fastcc i64 @gic_read_iar_cavium_thunderx() #15
  br label %return

if.else:                                          ; preds = %if.then3.i, %cpus_have_const_cap.exit
  %call2 = call fastcc i64 @gic_read_iar_common() #15
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i64 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @gic_read_iar_cavium_thunderx() unnamed_addr #1 {
entry:
  call void asm sideeffect ".rept\098\0Anop\0A.endr\0A", ""() #16, !srcloc !48
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !49
  call void asm sideeffect ".rept\094\0Anop\0A.endr\0A", ""() #16, !srcloc !50
  call void asm sideeffect "dsb sy", "~{memory}"() #16, !srcloc !51
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @gic_read_iar_common() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !52
  call void asm sideeffect "dsb sy", "~{memory}"() #16, !srcloc !53
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 1125899906842624
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_iterate_rdists(i32 (%struct.redist_region*, i8*)* nocapture noundef readonly %fn) unnamed_addr #1 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 6), align 8
  %cmp66.not = icmp eq i32 %0, 0
  br i1 %cmp66.not, label %cleanup36, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %.pre = load %struct.redist_region*, %struct.redist_region** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 2), align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %1 = phi %struct.redist_region* [ %6, %for.inc ], [ %.pre, %for.body.preheader ]
  %i.067 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %idxprom = sext i32 %i.067 to i64
  %redist_base = getelementptr %struct.redist_region, %struct.redist_region* %1, i64 %idxprom, i32 0
  %2 = load i8*, i8** %redist_base, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 65512
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %4 = trunc i32 %3 to i8
  %trunc = and i8 %4, -16
  switch i8 %trunc, label %cleanup [
    i8 64, label %do.body5.preheader
    i8 48, label %do.body5.preheader
  ]

do.body5.preheader:                               ; preds = %for.body, %for.body
  br label %do.body5

do.body5:                                         ; preds = %do.body5.preheader, %if.end18
  %ptr.0 = phi i8* [ %ptr.1, %if.end18 ], [ %2, %do.body5.preheader ]
  %add.ptr7 = getelementptr i8, i8* %ptr.0, i64 8
  %call8 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr7) #15
  %5 = load %struct.redist_region*, %struct.redist_region** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 2), align 8
  %add.ptr10 = getelementptr %struct.redist_region, %struct.redist_region* %5, i64 %idxprom
  %call11 = call i32 %fn(%struct.redist_region* noundef %add.ptr10, i8* noundef %ptr.0) #17, !callees !54
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %cleanup36, label %if.end13

if.end13:                                         ; preds = %do.body5
  %6 = load %struct.redist_region*, %struct.redist_region** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 2), align 8
  %single_redist = getelementptr %struct.redist_region, %struct.redist_region* %6, i64 %idxprom, i32 2
  %7 = load i8, i8* %single_redist, align 8, !range !21
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.end18, label %for.inc

if.end18:                                         ; preds = %if.end13
  %8 = load i64, i64* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 5), align 8
  %tobool19.not = icmp eq i64 %8, 0
  %and23 = and i64 %call8, 2
  %tobool24.not = icmp eq i64 %and23, 0
  %spec.select.v = select i1 %tobool24.not, i64 131072, i64 262144
  %.pn = select i1 %tobool19.not, i64 %spec.select.v, i64 %8
  %ptr.1 = getelementptr i8, i8* %ptr.0, i64 %.pn
  %and30 = and i64 %call8, 16
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %do.body5, label %for.inc

cleanup:                                          ; preds = %for.body
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* noundef %2) #18
  br label %cleanup36

for.inc:                                          ; preds = %if.end13, %if.end18
  %inc = add nuw i32 %i.067, 1
  %9 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 6), align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body, label %cleanup36

cleanup36:                                        ; preds = %for.inc, %do.body5, %entry, %cleanup
  %retval.2 = phi i32 [ -19, %cleanup ], [ -19, %entry ], [ 0, %do.body5 ], [ -19, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__gic_update_rdist_properties(%struct.redist_region* nocapture noundef readnone %region, i8* noundef %ptr) #1 {
entry:
  %add.ptr = getelementptr i8, i8* %ptr, i64 8
  %call = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #15
  %0 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 6), align 8, !range !21
  %1 = lshr i64 %call, 1
  %2 = trunc i64 %1 to i8
  %3 = and i8 %0, %2
  store i8 %3, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 6), align 8
  %4 = trunc i64 %call to i32
  %5 = lshr i32 %4, 7
  %6 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 7), align 1, !range !21
  %7 = zext i8 %6 to i32
  %and13 = and i32 %5, %7
  %8 = trunc i32 %and13 to i8
  store i8 %8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 7), align 1
  %9 = lshr i32 %4, 3
  %or = or i32 %and13, %9
  %10 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 8), align 2, !range !21
  %11 = trunc i32 %or to i8
  %12 = and i8 %10, %11
  store i8 %12, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 8), align 2
  %13 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 9), align 1, !range !21
  %14 = lshr i64 %call, 2
  %15 = trunc i64 %14 to i8
  %16 = and i8 %13, %15
  store i8 %16, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 9), align 1
  %tobool40 = icmp ne i8 %8, 0
  %tobool42.not = icmp eq i8 %3, 0
  %17 = select i1 %tobool40, i1 %tobool42.not, i1 false
  br i1 %17, label %if.then, label %if.end66, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 932; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !55
  store i8 0, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 8), align 2
  store i8 0, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 6), align 8
  store i8 0, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 7), align 1
  br label %if.end66

if.end66:                                         ; preds = %entry, %if.then
  %18 = lshr i32 %4, 27
  %19 = add nsw i32 %18, -1
  %20 = icmp ult i32 %19, 2
  %mul = shl nuw nsw i32 %18, 5
  %add = or i32 %mul, 16
  %__nr_ppis.0 = select i1 %20, i32 %add, i32 16
  %21 = load i32, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  %cmp76 = icmp ult i32 %__nr_ppis.0, %21
  %cond = select i1 %cmp76, i32 %__nr_ppis.0, i32 %21
  store i32 %cond, i32* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 9), align 4
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_readq(i8* noundef %addr) unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr $0, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar $0, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %addr) #16, !srcloc !56
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_config(i8* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_populate_rdist() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @gic_iterate_rdists(i32 (%struct.redist_region*, i8*)* noundef nonnull @__gic_populate_rdist) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %do.body5

do.body5:                                         ; preds = %entry
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call9, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call19 = call i64 @cpu_logical_map(i32 noundef %1) #17
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), i32 noundef %1, i64 noundef %call19) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 914; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !57
  br label %return

return:                                           ; preds = %entry, %do.body5
  %retval.0 = phi i32 [ -19, %do.body5 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_enable_redist() unnamed_addr #1 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 7), align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body, label %cleanup

do.body:                                          ; preds = %entry
  %1 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %2 = ptrtoint %struct.anon.69* %1 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, %2
  %3 = inttoptr i64 %add to %struct.anon.69*
  %rd_base = getelementptr inbounds %struct.anon.69, %struct.anon.69* %3, i64 0, i32 1
  %4 = load i8*, i8** %rd_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 20
  %5 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %and6 = and i32 %5, -3
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %and6, i8* %add.ptr) #16, !srcloc !27
  br label %while.body

while.body:                                       ; preds = %do.body, %if.end31
  %dec1 = phi i32 [ 999999, %do.body ], [ %dec, %if.end31 ]
  %6 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr) #16, !srcloc !10
  %7 = and i32 %6, 4
  %tobool29.not.not = icmp eq i32 %7, 0
  br i1 %tobool29.not.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %while.body
  call fastcc void @cpu_relax() #15
  call void @__const_udelay(i64 noundef 4295) #17
  %dec = add nsw i32 %dec1, -1
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %if.then33, label %while.body

if.then33:                                        ; preds = %if.end31
  %call34 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @gic_enable_redist._rs, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gic_enable_redist, i64 0, i64 0)) #17
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %do.end39

do.end39:                                         ; preds = %if.then33
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #18
  br label %cleanup

cleanup:                                          ; preds = %while.body, %do.end39, %if.then33, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_read_ctlr() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !58
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_cpu_config(i8* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_cpu_sys_reg_init() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call i64 @cpu_logical_map(i32 noundef %1) #17
  %and = lshr i64 %call2, 4
  %shr = and i64 %and, 15
  %call3 = call fastcc i1 @gic_enable_sre() #15
  br i1 %call3, label %if.end, label %do.end6

do.end6:                                          ; preds = %entry
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.36, i64 0, i64 0)) #18
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry
  %call9 = call fastcc i32 @gic_get_pribits() #15
  %call10 = call fastcc i1 @gic_has_group0() #15
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 240) #16, !srcloc !59
  call fastcc void @gic_write_bpr1() #15
  %call82 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @supports_deactivate_key, i64 0, i32 0)) #15
  %cmp83 = icmp sgt i32 %call82, 0
  %. = select i1 %cmp83, i32 2, i32 0, !prof !9
  call fastcc void @gic_write_ctlr(i32 noundef %.) #15
  br i1 %call10, label %if.then97, label %if.end116

if.then97:                                        ; preds = %if.end
  switch i32 %call9, label %sw.epilog [
    i32 8, label %do.body98
    i32 7, label %do.body98
    i32 6, label %do.body107
    i32 5, label %do.body112
    i32 4, label %do.body112
  ]

do.body98:                                        ; preds = %if.then97, %if.then97
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((8) << 8) | ((4 | 3) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !60
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((8) << 8) | ((4 | 2) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !61
  br label %do.body107

do.body107:                                       ; preds = %do.body98, %if.then97
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((8) << 8) | ((4 | 1) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !62
  br label %do.body112

do.body112:                                       ; preds = %do.body107, %if.then97, %if.then97
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((8) << 8) | ((4 | 0) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !63
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body112, %if.then97
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !64
  br label %if.end116

if.end116:                                        ; preds = %sw.epilog, %if.end
  switch i32 %call9, label %sw.epilog136 [
    i32 8, label %do.body118
    i32 7, label %do.body118
    i32 6, label %do.body127
    i32 5, label %do.body132
    i32 4, label %do.body132
  ]

do.body118:                                       ; preds = %if.end116, %if.end116
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((9) << 8) | ((3) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !65
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((9) << 8) | ((2) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !66
  br label %do.body127

do.body127:                                       ; preds = %do.body118, %if.end116
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((9) << 8) | ((1) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !67
  br label %do.body132

do.body132:                                       ; preds = %do.body127, %if.end116, %if.end116
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((9) << 8) | ((0) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !68
  br label %sw.epilog136

sw.epilog136:                                     ; preds = %do.body132, %if.end116
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !69
  call fastcc void @gic_write_grpen1() #15
  %call137 = call fastcc i32 @gic_read_ctlr() #15
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add151 = add i64 %2, ptrtoint (i8* @has_rss to i64)
  %3 = inttoptr i64 %add151 to i8*
  %and138 = lshr i32 %call137, 18
  %4 = trunc i32 %and138 to i8
  %5 = and i8 %4, 1
  store i8 %5, i8* %3, align 1
  %call153272 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp154273 = icmp ult i32 %call153272, %6
  br i1 %cmp154273, label %for.body, label %for.end

for.body:                                         ; preds = %sw.epilog136, %if.end195
  %call153275 = phi i32 [ %call153, %if.end195 ], [ %call153272, %sw.epilog136 ]
  %need_rss.0274 = phi i64 [ %or, %if.end195 ], [ %shr, %sw.epilog136 ]
  %idxprom163 = sext i32 %call153275 to i64
  %arrayidx164 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom163
  %7 = load i64, i64* %arrayidx164, align 8
  %add165 = add i64 %7, ptrtoint (i8* @has_rss to i64)
  %8 = inttoptr i64 %add165 to i8*
  %9 = load i8, i8* %8, align 1, !range !21
  %tobool166.not = icmp eq i8 %9, 0
  br i1 %tobool166.not, label %land.end181, label %do.body169

do.body169:                                       ; preds = %for.body
  %10 = load i64, i64* %arrayidx, align 8
  %add178 = add i64 %10, ptrtoint (i8* @has_rss to i64)
  %11 = inttoptr i64 %add178 to i8*
  %12 = load i8, i8* %11, align 1, !range !21
  %tobool179 = icmp ne i8 %12, 0
  br label %land.end181

land.end181:                                      ; preds = %do.body169, %for.body
  %13 = phi i1 [ false, %for.body ], [ %tobool179, %do.body169 ]
  %call183 = call i64 @cpu_logical_map(i32 noundef %call153275) #17
  %and184 = lshr i64 %call183, 4
  %shr185 = and i64 %and184, 15
  %or = or i64 %shr185, %need_rss.0274
  %tobool186.not = icmp eq i64 %or, 0
  %brmerge = select i1 %tobool186.not, i1 true, i1 %13
  br i1 %brmerge, label %if.end195, label %do.end191

do.end191:                                        ; preds = %land.end181
  %call193 = call i64 @cpu_logical_map(i32 noundef %call153275) #17
  %call194 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.37, i64 0, i64 0), i32 noundef %1, i64 noundef %call2, i32 noundef %call153275, i64 noundef %call193) #18
  br label %if.end195

if.end195:                                        ; preds = %land.end181, %do.end191
  %call153 = call i32 @cpumask_next(i32 noundef %call153275, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %14 = load i32, i32* @nr_cpu_ids, align 4
  %cmp154 = icmp ult i32 %call153, %14
  br i1 %cmp154, label %for.body, label %for.end

for.end:                                          ; preds = %if.end195, %sw.epilog136
  %need_rss.0.lcssa = phi i64 [ %shr, %sw.epilog136 ], [ %or, %if.end195 ]
  %tobool196.not = icmp ne i64 %need_rss.0.lcssa, 0
  %15 = load i8, i8* getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 8), align 8
  %tobool198.not = icmp eq i8 %15, 0
  %or.cond = select i1 %tobool196.not, i1 %tobool198.not, i1 false
  br i1 %or.cond, label %if.then199, label %if.end229

if.then199:                                       ; preds = %for.end
  %.b271 = load i1, i1* @gic_cpu_sys_reg_init.__already_done, align 1
  br i1 %.b271, label %if.end229, label %if.then214, !prof !9

if.then214:                                       ; preds = %if.then199
  store i1 true, i1* @gic_cpu_sys_reg_init.__already_done, align 1
  %call219 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.38, i64 0, i64 0)) #18
  br label %if.end229

if.end229:                                        ; preds = %if.then199, %if.then214, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__gic_populate_rdist(%struct.redist_region* noundef %region, i8* noundef %ptr) #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call i64 @cpu_logical_map(i32 noundef %1) #17
  %2 = lshr i64 %call2, 8
  %shl = and i64 %2, 4278190080
  %or9 = and i64 %call2, 16777215
  %or12 = or i64 %or9, %shl
  %add.ptr = getelementptr i8, i8* %ptr, i64 8
  %call13 = call fastcc i64 @__raw_readq(i8* noundef %add.ptr) #15
  %shr15 = lshr i64 %call13, 32
  %cmp = icmp eq i64 %shr15, %or12
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %redist_base = getelementptr inbounds %struct.redist_region, %struct.redist_region* %region, i64 0, i32 0
  %3 = load i8*, i8** %redist_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %5 = ptrtoint %struct.anon.69* %4 to i64
  %call26 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add27 = add i64 %call26, %5
  %6 = inttoptr i64 %add27 to %struct.anon.69*
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.anon.69, %struct.anon.69* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %7 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %8 = ptrtoint %struct.anon.69* %7 to i64
  %call37 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add38 = add i64 %call37, %8
  %9 = inttoptr i64 %add38 to %struct.anon.69*
  %rd_base = getelementptr inbounds %struct.anon.69, %struct.anon.69* %9, i64 0, i32 1
  store i8* %ptr, i8** %rd_base, align 8
  %phys_base = getelementptr inbounds %struct.redist_region, %struct.redist_region* %region, i64 0, i32 1
  %10 = load i64, i64* %phys_base, align 8
  %add39 = add i64 %sub.ptr.sub, %10
  %11 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %12 = ptrtoint %struct.anon.69* %11 to i64
  %call47 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add48 = add i64 %call47, %12
  %13 = inttoptr i64 %add48 to %struct.anon.69*
  %phys_base49 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %13, i64 0, i32 3
  store i64 %add39, i64* %phys_base49, align 8
  %call61 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add62 = add i64 %call61, ptrtoint (i32* @cpu_number to i64)
  %14 = inttoptr i64 %add62 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.redist_region*, %struct.redist_region** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 2), align 8
  %sub.ptr.lhs.cast63 = ptrtoint %struct.redist_region* %region to i64
  %sub.ptr.rhs.cast64 = ptrtoint %struct.redist_region* %16 to i64
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub65, 24
  %conv66 = trunc i64 %sub.ptr.div to i32
  %17 = load %struct.anon.69*, %struct.anon.69** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 3, i32 0), align 8
  %18 = ptrtoint %struct.anon.69* %17 to i64
  %add75 = add i64 %call61, %18
  %19 = inttoptr i64 %add75 to %struct.anon.69*
  %phys_base76 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %19, i64 0, i32 3
  %call77 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i64 0, i64 0), i32 noundef %15, i64 noundef %call2, i32 noundef %conv66, i64* noundef %phys_base76) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @gic_enable_sre() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @gic_read_sre() #15
  %and = and i32 %call, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %call, 1
  call fastcc void @gic_write_sre(i32 noundef %or) #15
  %call1 = call fastcc i32 @gic_read_sre() #15
  %and2 = and i32 %call1, 1
  %tobool3 = icmp ne i32 %and2, 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %tobool3, %if.end ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_get_pribits() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @gic_read_ctlr() #15
  %and = lshr i32 %call, 8
  %shr = and i32 %and, 7
  %inc = add nuw nsw i32 %shr, 1
  ret i32 %inc
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @gic_has_group0() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @gic_read_pmr() #15
  %call1 = call fastcc i32 @gic_get_pribits() #15
  %sub = sub i32 8, %call1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv.i = and i64 %shl, 4294967295
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %conv.i) #16, !srcloc !70
  %call2 = call fastcc i32 @gic_read_pmr() #15
  %conv.i6 = zext i32 %call to i64
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %conv.i6) #16, !srcloc !70
  %cmp = icmp ne i32 %call2, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_write_bpr1() unnamed_addr #1 {
entry:
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((3) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 0) #16, !srcloc !71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_write_ctlr(i32 noundef %val) unnamed_addr #1 {
entry:
  %conv = zext i32 %val to i64
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((4) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %conv) #16, !srcloc !72
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !73
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_write_grpen1() unnamed_addr #1 {
entry:
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((7) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 1) #16, !srcloc !74
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !75
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_read_sre() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !76
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_write_sre(i32 noundef %val) unnamed_addr #1 {
entry:
  %conv = zext i32 %val to i64
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((5) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %conv) #16, !srcloc !77
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !78
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_setup_state_nocalls() unnamed_addr #1 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 96, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef nonnull @gic_starting_cpu, i32 (i32)* noundef null, i1 noundef false) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gic_starting_cpu(i32 noundef %cpu) #1 {
entry:
  call fastcc void @gic_cpu_init() #15
  %call = call fastcc i32 @gic_dist_supports_lpis() #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @its_cpu_init() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i1 noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_get_child_count(%struct.device_node* noundef %np) unnamed_addr #1 {
entry:
  %call = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %np, %struct.device_node* noundef null) #17
  %cmp.not7 = icmp eq %struct.device_node* %call, null
  br i1 %cmp.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %num.09 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %child.08 = phi %struct.device_node* [ %call1, %for.body ], [ %call, %entry ]
  %inc = add i32 %num.09, 1
  %call1 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %np, %struct.device_node* noundef nonnull %child.08) #17
  %cmp.not = icmp eq %struct.device_node* %call1, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %num.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  ret i32 %num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node* noundef, %struct.device_node* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef readnone %node) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 3
  %cond = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(%struct.device_node* noundef, i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(%struct.device_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.partition_desc* @partition_create_desc(%struct.fwnode_handle* noundef, %struct.partition_affinity* noundef, i32 noundef, i32 noundef, %struct.irq_domain_ops* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !79
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @partition_domain_translate(%struct.irq_domain* nocapture noundef readnone %d, %struct.irq_fwspec* nocapture noundef readonly %fwspec, i64* nocapture noundef writeonly %hwirq, i32* nocapture noundef writeonly %type) #1 {
entry:
  %ppi_intid = alloca i64, align 8
  %0 = bitcast i64* %ppi_intid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %ppi_intid, align 8, !annotation !8
  %1 = load %struct.partition_desc**, %struct.partition_desc*** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 10), align 8
  %tobool.not = icmp eq %struct.partition_desc** %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 3
  %2 = load i32, i32* %arrayidx, align 4
  %call = call %struct.device_node* @of_find_node_by_phandle(i32 noundef %2) #17
  %tobool1.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool1.not, label %if.then10, label %if.end21, !prof !11

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1568; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !80
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %call22 = call i32 @gic_irq_domain_translate(%struct.irq_domain* noundef %d, %struct.irq_fwspec* noundef %fwspec, i64* noundef nonnull %ppi_intid, i32* noundef %type) #15
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end49, label %if.then37, !prof !9

if.then37:                                        ; preds = %if.end21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-gic-v3.c\22; .popsection; .long 14472b - 14470b; .short 1572; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !81
  br label %cleanup

if.end49:                                         ; preds = %if.end21
  %3 = load i64, i64* %ppi_intid, align 8
  %call50 = call fastcc i32 @__gic_get_ppi_index(i64 noundef %3) #15
  %4 = load %struct.partition_desc**, %struct.partition_desc*** getelementptr inbounds (%struct.gic_chip_data, %struct.gic_chip_data* @gic_data, i64 0, i32 10), align 8
  %idxprom = zext i32 %call50 to i64
  %arrayidx51 = getelementptr %struct.partition_desc*, %struct.partition_desc** %4, i64 %idxprom
  %5 = load %struct.partition_desc*, %struct.partition_desc** %arrayidx51, align 8
  %call52 = call fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef nonnull %call) #15
  %6 = bitcast %struct.fwnode_handle* %call52 to i8*
  %call53 = call i32 @partition_translate_id(%struct.partition_desc* noundef %5, i8* noundef %6) #17
  %cmp = icmp slt i32 %call53, 0
  br i1 %cmp, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end49
  %conv5777 = zext i32 %call53 to i64
  store i64 %conv5777, i64* %hwirq, align 8
  %arrayidx59 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 2
  %7 = load i32, i32* %arrayidx59, align 4
  %and = and i32 %7, 15
  store i32 %and, i32* %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then10, %if.end49, %entry, %if.end56
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -12, %entry ], [ -22, %if.then10 ], [ 0, %if.then37 ], [ %call53, %if.end49 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @partition_translate_id(%struct.partition_desc* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { cold nobuiltin "no-builtins" }
attributes #20 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #21 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152728284, i64 2152728331, i64 2152728337, i64 2152728374, i64 2152728392, i64 2152729312, i64 2152729360, i64 2152729408, i64 2152729471, i64 2152729520, i64 2152728470, i64 2152728495, i64 2152728521, i64 2152728527, i64 2152728564, i64 2152728570, i64 2152728620, i64 2152728666, i64 2152728699}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2154747998}
!13 = !{i64 2154749651}
!14 = !{i64 2154754164}
!15 = !{i64 2154756546}
!16 = !{i64 2154758180}
!17 = !{i64 2154763881}
!18 = !{i64 2154765519}
!19 = !{i64 2154767820}
!20 = !{i64 2154769456}
!21 = !{i8 0, i8 2}
!22 = !{i64 2149271920}
!23 = !{i64 2149273666}
!24 = !{i64 2154639843}
!25 = !{i64 2154642005}
!26 = !{i64 2154680737}
!27 = !{i64 4819252}
!28 = !{i64 2154713065}
!29 = !{i64 2154724524}
!30 = !{i64 2154731880}
!31 = !{i64 2154728503}
!32 = !{i64 2154730159}
!33 = !{i64 2154722423}
!34 = !{i64 2154722764}
!35 = !{i64 2154722957}
!36 = !{i64 2154618292}
!37 = !{void ()* @gic_dist_wait_for_rwp, void ()* @gic_redist_wait_for_rwp}
!38 = !{i64 2154609387}
!39 = !{i64 2149085924, i64 2149085971, i64 2149085977, i64 2149086014, i64 2149086032, i64 2149086959, i64 2149087007, i64 2149087055, i64 2149087118, i64 2149087167, i64 2149086110, i64 2149086135, i64 2149086161, i64 2149086167, i64 2149086204, i64 2149086210, i64 2149086260, i64 2149086306, i64 2149086339}
!40 = !{i64 1694982}
!41 = !{i64 2154560492, i64 2154560594, i64 2154560634, i64 2154560652, i64 2154560394, i64 2154560682, i64 2154560710, i64 2154560207, i64 2154561047}
!42 = !{i64 2154561078}
!43 = !{i64 4819420}
!44 = !{i64 2154574898, i64 2154575000, i64 2154575040, i64 2154575058, i64 2154574800, i64 2154575088, i64 2154575116, i64 2154574613, i64 2154575453}
!45 = !{i64 2154561994, i64 2154562096, i64 2154562136, i64 2154562154, i64 2154561896, i64 2154562184, i64 2154562212, i64 2154561709, i64 2154562549}
!46 = !{i64 2154562580}
!47 = !{i64 2154580605, i64 2154580707, i64 2154580747, i64 2154580765, i64 2154580507, i64 2154580795, i64 2154580823, i64 2154580323, i64 2154581156}
!48 = !{i64 2154564258, i64 2154564273, i64 2154564278}
!49 = !{i64 2154564964, i64 2154565066, i64 2154565106, i64 2154565124, i64 2154564866, i64 2154565154, i64 2154565182, i64 2154564680, i64 2154565519}
!50 = !{i64 2154565563, i64 2154565578, i64 2154565583}
!51 = !{i64 2154565617}
!52 = !{i64 2154563444, i64 2154563546, i64 2154563586, i64 2154563604, i64 2154563346, i64 2154563634, i64 2154563662, i64 2154563160, i64 2154563999}
!53 = !{i64 2154564030}
!54 = !{i32 (%struct.redist_region*, i8*)* @__gic_populate_rdist, i32 (%struct.redist_region*, i8*)* @__gic_update_rdist_properties}
!55 = !{i64 2154674668}
!56 = !{i64 2152729942, i64 2152729989, i64 2152729995, i64 2152730032, i64 2152730050, i64 2152730968, i64 2152731016, i64 2152731064, i64 2152731127, i64 2152731176, i64 2152730128, i64 2152730153, i64 2152730179, i64 2152730185, i64 2152730222, i64 2152730228, i64 2152730278, i64 2152730324, i64 2152730357}
!57 = !{i64 2154672627}
!58 = !{i64 2154572013, i64 2154572115, i64 2154572155, i64 2154572173, i64 2154571915, i64 2154572203, i64 2154572231, i64 2154571729, i64 2154572568}
!59 = !{i64 2154685008, i64 2154685110, i64 2154685150, i64 2154685168, i64 2154684910, i64 2154685198, i64 2154685226, i64 2154684725, i64 2154685559}
!60 = !{i64 2154692798, i64 2154692900, i64 2154692940, i64 2154692958, i64 2154692700, i64 2154692988, i64 2154693016, i64 2154692510, i64 2154693359}
!61 = !{i64 2154694156, i64 2154694258, i64 2154694298, i64 2154694316, i64 2154694058, i64 2154694346, i64 2154694374, i64 2154693868, i64 2154694717}
!62 = !{i64 2154695547, i64 2154695649, i64 2154695689, i64 2154695707, i64 2154695449, i64 2154695737, i64 2154695765, i64 2154695259, i64 2154696108}
!63 = !{i64 2154696938, i64 2154697040, i64 2154697080, i64 2154697098, i64 2154696840, i64 2154697128, i64 2154697156, i64 2154696650, i64 2154697499}
!64 = !{i64 2154697530}
!65 = !{i64 2154698315, i64 2154698417, i64 2154698457, i64 2154698475, i64 2154698217, i64 2154698505, i64 2154698533, i64 2154698031, i64 2154698868}
!66 = !{i64 2154699649, i64 2154699751, i64 2154699791, i64 2154699809, i64 2154699551, i64 2154699839, i64 2154699867, i64 2154699365, i64 2154700202}
!67 = !{i64 2154701016, i64 2154701118, i64 2154701158, i64 2154701176, i64 2154700918, i64 2154701206, i64 2154701234, i64 2154700732, i64 2154701569}
!68 = !{i64 2154702383, i64 2154702485, i64 2154702525, i64 2154702543, i64 2154702285, i64 2154702573, i64 2154702601, i64 2154702099, i64 2154702936}
!69 = !{i64 2154702967}
!70 = !{i64 2154582060, i64 2154582162, i64 2154582202, i64 2154582220, i64 2154581962, i64 2154582250, i64 2154582278, i64 2154581777, i64 2154582611}
!71 = !{i64 2154579198, i64 2154579300, i64 2154579340, i64 2154579358, i64 2154579100, i64 2154579388, i64 2154579416, i64 2154578913, i64 2154579753}
!72 = !{i64 2154566502, i64 2154566604, i64 2154566644, i64 2154566662, i64 2154566404, i64 2154566692, i64 2154566720, i64 2154566217, i64 2154571118}
!73 = !{i64 2154571149}
!74 = !{i64 2154573438, i64 2154573540, i64 2154573580, i64 2154573598, i64 2154573340, i64 2154573628, i64 2154573656, i64 2154573153, i64 2154573993}
!75 = !{i64 2154574024}
!76 = !{i64 2154576313, i64 2154576415, i64 2154576455, i64 2154576473, i64 2154576215, i64 2154576503, i64 2154576531, i64 2154576029, i64 2154576868}
!77 = !{i64 2154577738, i64 2154577840, i64 2154577880, i64 2154577898, i64 2154577640, i64 2154577928, i64 2154577956, i64 2154577453, i64 2154578293}
!78 = !{i64 2154578324}
!79 = !{i64 2147947395, i64 2147947906, i64 2147947936, i64 2147947962, i64 2147947994, i64 2147948023}
!80 = !{i64 2154733528}
!81 = !{i64 2154735237}
