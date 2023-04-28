; ModuleID = 'mm/dmapool.c'
source_filename = "mm/dmapool.c"
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
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.dma_pool = type { %struct.list_head, %struct.spinlock, i64, %struct.device*, i64, i64, [32 x i8], %struct.list_head }
%struct.dma_page = type { %struct.list_head, i8*, i64, i32, i32 }

@pools_reg_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pools_reg_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pools_reg_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@pools_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pools_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pools_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@dev_attr_pools = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @pools_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s %s, %p busy\0A\00", align 1
@__func__.dma_pool_destroy = private unnamed_addr constant [17 x i8] c"dma_pool_destroy\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\013%s %s, %p busy\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s %s, %p/%pad (bad dma)\0A\00", align 1
@__func__.dma_pool_free = private unnamed_addr constant [14 x i8] c"dma_pool_free\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\013%s %s, %p/%pad (bad dma)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"dmam_pool_release\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"pools\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"poolinfo - 0.1\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%-16s %4u %4zu %4zu %2u\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@init_on_alloc = external dso_local global %struct.static_key_false, align 4
@init_on_free = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dma_pool* @dma_pool_create(i8* noundef %name, %struct.device* noundef %dev, i64 noundef %size, i64 noundef %align, i64 noundef %boundary) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %align, 0
  br i1 %cmp, label %if.end3, label %if.else

if.else:                                          ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %align), !range !7
  %tobool.not = icmp ult i64 %0, 2
  br i1 %tobool.not, label %if.end3, label %cleanup51

if.end3:                                          ; preds = %entry, %if.else
  %align.addr.0 = phi i64 [ %align, %if.else ], [ 1, %entry ]
  %cmp4 = icmp eq i64 %size, 0
  br i1 %cmp4, label %cleanup51, label %if.else6

if.else6:                                         ; preds = %if.end3
  %1 = icmp ugt i64 %size, 4
  %spec.store.select = select i1 %1, i64 %size, i64 4
  %sub11 = add i64 %spec.store.select, -1
  %add = add i64 %sub11, %align.addr.0
  %neg = sub i64 0, %align.addr.0
  %and13 = and i64 %add, %neg
  %cmp14 = icmp ugt i64 %and13, 4096
  %cond = select i1 %cmp14, i64 %and13, i64 4096
  %tobool15.not = icmp eq i64 %boundary, 0
  br i1 %tobool15.not, label %if.end24, label %if.else17

if.else17:                                        ; preds = %if.else6
  %cmp18 = icmp ule i64 %and13, %boundary
  %2 = call i64 @llvm.ctpop.i64(i64 %boundary), !range !7
  %tobool21.not = icmp ult i64 %2, 2
  %or.cond = and i1 %tobool21.not, %cmp18
  br i1 %or.cond, label %if.end24, label %cleanup51

if.end24:                                         ; preds = %if.else17, %if.else6
  %boundary.addr.0 = phi i64 [ %cond, %if.else6 ], [ %boundary, %if.else17 ]
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %3, i32 noundef 3264) #9
  %4 = bitcast i8* %call.i.i.i to %struct.dma_pool*
  %tobool26.not = icmp eq i8* %call.i.i.i, null
  br i1 %tobool26.not, label %cleanup51, label %if.end28

if.end28:                                         ; preds = %if.end24
  %name29 = getelementptr inbounds i8, i8* %call.i.i.i, i64 56
  %call30 = call i64 @strscpy(i8* noundef %name29, i8* noundef %name, i64 noundef 32) #9
  %dev31 = getelementptr inbounds i8, i8* %call.i.i.i, i64 32
  %5 = bitcast i8* %dev31 to %struct.device**
  store %struct.device* %dev, %struct.device** %5, align 8
  %page_list = bitcast i8* %call.i.i.i to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %page_list) #10
  %lock = getelementptr inbounds i8, i8* %call.i.i.i, i64 16
  %6 = bitcast i8* %lock to i32*
  store i32 0, i32* %6, align 8
  %size34 = getelementptr inbounds i8, i8* %call.i.i.i, i64 24
  %7 = bitcast i8* %size34 to i64*
  store i64 %and13, i64* %7, align 8
  %boundary35 = getelementptr inbounds i8, i8* %call.i.i.i, i64 48
  %8 = bitcast i8* %boundary35 to i64*
  store i64 %boundary.addr.0, i64* %8, align 8
  %allocation36 = getelementptr inbounds i8, i8* %call.i.i.i, i64 40
  %9 = bitcast i8* %allocation36 to i64*
  store i64 %cond, i64* %9, align 8
  %pools = getelementptr inbounds i8, i8* %call.i.i.i, i64 88
  %10 = bitcast i8* %pools to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %10) #10
  call void @mutex_lock(%struct.mutex* noundef nonnull @pools_reg_lock) #9
  call void @mutex_lock(%struct.mutex* noundef nonnull @pools_lock) #9
  %dma_pools = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 21
  %call37 = call fastcc i32 @list_empty(%struct.list_head* noundef %dma_pools) #10
  %tobool38.not = icmp eq i32 %call37, 0
  call fastcc void @list_add(%struct.list_head* noundef %10, %struct.list_head* noundef %dma_pools) #10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pools_lock) #9
  br i1 %tobool38.not, label %if.end50, label %if.then44

if.then44:                                        ; preds = %if.end28
  %call45 = call i32 @device_create_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_pools) #9
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.then44
  call void @mutex_lock(%struct.mutex* noundef nonnull @pools_lock) #9
  call fastcc void @list_del(%struct.list_head* noundef %10) #10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pools_lock) #9
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pools_reg_lock) #9
  call void @kfree(i8* noundef nonnull %call.i.i.i) #9
  br label %cleanup51

if.end50:                                         ; preds = %if.then44, %if.end28
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pools_reg_lock) #9
  br label %cleanup51

cleanup51:                                        ; preds = %if.then47, %if.end24, %if.else17, %if.end3, %if.else, %if.end50
  %retval.1 = phi %struct.dma_pool* [ %4, %if.end50 ], [ null, %if.then47 ], [ null, %if.else ], [ null, %if.end3 ], [ null, %if.else17 ], [ null, %if.end24 ]
  ret %struct.dma_pool* %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strscpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

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
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #10
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_pool_destroy(%struct.dma_pool* noundef %pool) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dma_pool* %pool, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @pools_reg_lock) #9
  call void @mutex_lock(%struct.mutex* noundef nonnull @pools_lock) #9
  %pools = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 7
  call fastcc void @list_del(%struct.list_head* noundef %pools) #10
  %dev = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 3
  %0 = load %struct.device*, %struct.device** %dev, align 8
  %tobool4.not = icmp eq %struct.device* %0, null
  br i1 %tobool4.not, label %if.end12.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %dma_pools = getelementptr inbounds %struct.device, %struct.device* %0, i64 0, i32 21
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %dma_pools) #10
  %tobool6.not.not = icmp eq i32 %call, 0
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pools_lock) #9
  br i1 %tobool6.not.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %1 = load %struct.device*, %struct.device** %dev, align 8
  call void @device_remove_file(%struct.device* noundef %1, %struct.device_attribute* noundef nonnull @dev_attr_pools) #9
  br label %if.end12

if.end12.critedge:                                ; preds = %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pools_lock) #9
  br label %if.end12

if.end12:                                         ; preds = %if.end12.critedge, %if.then10, %land.lhs.true
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pools_reg_lock) #9
  %page_list = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 0
  %2 = bitcast %struct.dma_pool* %pool to %struct.dma_page**
  %3 = load %struct.dma_page*, %struct.dma_page** %2, align 8
  %page_list2286 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %3, i64 0, i32 0
  %cmp.not87 = icmp eq %struct.list_head* %page_list2286, %page_list
  br i1 %cmp.not87, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end12
  %arraydecay = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 6, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %page_list2291 = phi %struct.list_head* [ %page_list2286, %for.body.lr.ph ], [ %page_list22, %for.inc ]
  %page.088 = phi %struct.dma_page* [ %3, %for.body.lr.ph ], [ %tmp.090, %for.inc ]
  %tmp.090.in = bitcast %struct.dma_page* %page.088 to %struct.dma_page**
  %tmp.090 = load %struct.dma_page*, %struct.dma_page** %tmp.090.in, align 8
  %call27 = call fastcc i1 @is_page_busy(%struct.dma_page* noundef %page.088) #10
  br i1 %call27, label %if.then28, label %if.else46

if.then28:                                        ; preds = %for.body
  %4 = load %struct.device*, %struct.device** %dev, align 8
  %tobool30.not = icmp eq %struct.device* %4, null
  %vaddr42 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.088, i64 0, i32 1
  %5 = load i8*, i8** %vaddr42, align 8
  br i1 %tobool30.not, label %do.end38, label %do.end34

do.end34:                                         ; preds = %if.then28
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef nonnull %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dma_pool_destroy, i64 0, i64 0), i8* noundef %arraydecay, i8* noundef %5) #11
  br label %if.end44

do.end38:                                         ; preds = %if.then28
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dma_pool_destroy, i64 0, i64 0), i8* noundef %arraydecay, i8* noundef %5) #11
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %do.end34
  call fastcc void @list_del(%struct.list_head* noundef %page_list2291) #10
  %6 = bitcast %struct.dma_page* %page.088 to i8*
  call void @kfree(i8* noundef %6) #9
  br label %for.inc

if.else46:                                        ; preds = %for.body
  call fastcc void @pool_free_page(%struct.dma_pool* noundef nonnull %pool, %struct.dma_page* noundef %page.088) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %if.else46
  %page_list22 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %tmp.090, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %page_list22, %page_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end12
  %7 = bitcast %struct.dma_pool* %pool to i8*
  call void @kfree(i8* noundef nonnull %7) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_page_busy(%struct.dma_page* nocapture noundef readonly %page) unnamed_addr #4 {
entry:
  %in_use = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page, i64 0, i32 3
  %0 = load i32, i32* %in_use, align 8
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pool_free_page(%struct.dma_pool* nocapture noundef readonly %pool, %struct.dma_page* noundef %page) unnamed_addr #0 {
entry:
  %dma1 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page, i64 0, i32 2
  %0 = load i64, i64* %dma1, align 8
  %dev = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 3
  %1 = load %struct.device*, %struct.device** %dev, align 8
  %allocation = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 4
  %2 = load i64, i64* %allocation, align 8
  %vaddr = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page, i64 0, i32 1
  %3 = load i8*, i8** %vaddr, align 8
  call fastcc void @dma_free_coherent(%struct.device* noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %0) #10
  %page_list = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %page_list) #10
  %4 = bitcast %struct.dma_page* %page to i8*
  call void @kfree(i8* noundef %4) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @dma_pool_alloc(%struct.dma_pool* noundef %pool, i32 noundef %mem_flags, i64* nocapture noundef writeonly %handle) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 1, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #10
  %page_list = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 0
  %0 = bitcast %struct.dma_pool* %pool to %struct.dma_page**
  %page.095 = load %struct.dma_page*, %struct.dma_page** %0, align 8
  %page_list1096 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.095, i64 0, i32 0
  %cmp12.not97 = icmp eq %struct.list_head* %page_list1096, %page_list
  br i1 %cmp12.not97, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %allocation = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 4
  %1 = load i64, i64* %allocation, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %page.098 = phi %struct.dma_page* [ %page.095, %for.body.lr.ph ], [ %page.0, %for.inc ]
  %offset14 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.098, i64 0, i32 4
  %2 = load i32, i32* %offset14, align 4
  %conv15 = zext i32 %2 to i64
  %cmp16 = icmp ugt i64 %1, %conv15
  br i1 %cmp16, label %ready, label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = bitcast %struct.dma_page* %page.098 to %struct.dma_page**
  %page.0 = load %struct.dma_page*, %struct.dma_page** %3, align 8
  %page_list10 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.0, i64 0, i32 0
  %cmp12.not = icmp eq %struct.list_head* %page_list10, %page_list
  br i1 %cmp12.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #9
  %and = and i32 %mem_flags, -257
  %call27 = call fastcc %struct.dma_page* @pool_alloc_page(%struct.dma_pool* noundef %pool, i32 noundef %and) #10
  %tobool.not = icmp eq %struct.dma_page* %call27, null
  br i1 %tobool.not, label %cleanup, label %do.body31

do.body31:                                        ; preds = %for.end
  %call39 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #10
  %page_list44 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %call27, i64 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %page_list44, %struct.list_head* noundef %page_list) #10
  %offset46.phi.trans.insert = getelementptr inbounds %struct.dma_page, %struct.dma_page* %call27, i64 0, i32 4
  %.pre = load i32, i32* %offset46.phi.trans.insert, align 4
  br label %ready

ready:                                            ; preds = %for.body, %do.body31
  %.lcssa.sink = phi i32 [ %.pre, %do.body31 ], [ %2, %for.body ]
  %page.1 = phi %struct.dma_page* [ %call27, %do.body31 ], [ %page.098, %for.body ]
  %flags.0 = phi i64 [ %call39, %do.body31 ], [ %call3, %for.body ]
  %conv15.le = zext i32 %.lcssa.sink to i64
  %in_use = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.1, i64 0, i32 3
  %4 = load i32, i32* %in_use, align 8
  %inc = add i32 %4, 1
  store i32 %inc, i32* %in_use, align 8
  %offset46 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.1, i64 0, i32 4
  %vaddr = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.1, i64 0, i32 1
  %5 = load i8*, i8** %vaddr, align 8
  %add.ptr48 = getelementptr i8, i8* %5, i64 %conv15.le
  %6 = bitcast i8* %add.ptr48 to i32*
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %offset46, align 4
  %dma = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.1, i64 0, i32 2
  %8 = load i64, i64* %dma, align 8
  %add = add i64 %8, %conv15.le
  store i64 %add, i64* %handle, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags.0) #9
  %call53 = call fastcc i1 @want_init_on_alloc(i32 noundef %mem_flags) #10
  br i1 %call53, label %if.then54, label %cleanup

if.then54:                                        ; preds = %ready
  %size = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 2
  %9 = load i64, i64* %size, align 8
  %call55 = call i8* @memset(i8* noundef %add.ptr48, i32 noundef 0, i64 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %ready, %if.then54, %for.end
  %retval.0 = phi i8* [ null, %for.end ], [ %add.ptr48, %if.then54 ], [ %add.ptr48, %ready ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dma_page* @pool_alloc_page(%struct.dma_pool* nocapture noundef readonly %pool, i32 noundef %mem_flags) unnamed_addr #0 {
entry:
  %and.i.i = and i32 %mem_flags, 17
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %kmalloc.exit, label %if.end.i.i, !prof !10

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %mem_flags, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %entry, %if.end.i.i
  %retval.0.i.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i.i ]
  %arrayidx7.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i.i, i64 7
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %mem_flags) #9
  %1 = bitcast i8* %call.i.i to %struct.dma_page*
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %kmalloc.exit
  %dev = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 3
  %2 = load %struct.device*, %struct.device** %dev, align 8
  %allocation = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 4
  %3 = load i64, i64* %allocation, align 8
  %dma = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %4 = bitcast i8* %dma to i64*
  %call1 = call fastcc i8* @dma_alloc_coherent(%struct.device* noundef %2, i64 noundef %3, i64* noundef %4, i32 noundef %mem_flags) #10
  %vaddr = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %5 = bitcast i8* %vaddr to i8**
  store i8* %call1, i8** %5, align 8
  %tobool3.not = icmp eq i8* %call1, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @pool_initialise_page(%struct.dma_pool* noundef %pool, %struct.dma_page* noundef nonnull %1) #10
  %in_use = getelementptr inbounds i8, i8* %call.i.i, i64 32
  %6 = bitcast i8* %in_use to i32*
  store i32 0, i32* %6, align 8
  %offset = getelementptr inbounds i8, i8* %call.i.i, i64 36
  %7 = bitcast i8* %offset to i32*
  store i32 0, i32* %7, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %kmalloc.exit
  %retval.0 = phi %struct.dma_page* [ null, %kmalloc.exit ], [ %1, %if.then4 ], [ null, %if.else ]
  ret %struct.dma_page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @want_init_on_alloc(i32 noundef %flags) unnamed_addr #3 {
entry:
  %call5 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_alloc, i64 0, i32 0)) #10
  %cmp6 = icmp sgt i32 %call5, 0
  %and = and i32 %flags, 256
  %tobool16 = icmp ne i32 %and, 0
  %retval.0 = or i1 %tobool16, %cmp6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_pool_free(%struct.dma_pool* noundef %pool, i8* noundef %vaddr, i64 noundef %dma) local_unnamed_addr #0 {
entry:
  %dma.addr = alloca i64, align 8
  store i64 %dma, i64* %dma.addr, align 8
  %rlock.i = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 1, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #10
  %call5 = call fastcc %struct.dma_page* @pool_find_page(%struct.dma_pool* noundef %pool, i64 noundef %dma) #10
  %tobool.not = icmp eq %struct.dma_page* %call5, null
  br i1 %tobool.not, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #9
  %dev = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 3
  %0 = load %struct.device*, %struct.device** %dev, align 8
  %tobool7.not = icmp eq %struct.device* %0, null
  %arraydecay18 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 6, i64 0
  br i1 %tobool7.not, label %do.end15, label %do.end11

do.end11:                                         ; preds = %if.then
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef nonnull %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dma_pool_free, i64 0, i64 0), i8* noundef %arraydecay18, i8* noundef %vaddr, i64* noundef nonnull %dma.addr) #11
  br label %cleanup

do.end15:                                         ; preds = %if.then
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dma_pool_free, i64 0, i64 0), i8* noundef %arraydecay18, i8* noundef %vaddr, i64* noundef nonnull %dma.addr) #11
  br label %cleanup

if.end20:                                         ; preds = %entry
  %vaddr21 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %call5, i64 0, i32 1
  %1 = load i8*, i8** %vaddr21, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %vaddr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv22 = trunc i64 %sub.ptr.sub to i32
  %call23 = call fastcc i1 @want_init_on_free() #10
  br i1 %call23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  %size = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 2
  %2 = load i64, i64* %size, align 8
  %call25 = call i8* @memset(i8* noundef %vaddr, i32 noundef 0, i64 noundef %2) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20
  %in_use = getelementptr inbounds %struct.dma_page, %struct.dma_page* %call5, i64 0, i32 3
  %3 = load i32, i32* %in_use, align 8
  %dec = add i32 %3, -1
  store i32 %dec, i32* %in_use, align 8
  %offset27 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %call5, i64 0, i32 4
  %4 = load i32, i32* %offset27, align 4
  %5 = bitcast i8* %vaddr to i32*
  store i32 %4, i32* %5, align 4
  store i32 %conv22, i32* %offset27, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end15, %if.end26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.dma_page* @pool_find_page(%struct.dma_pool* noundef readonly %pool, i64 noundef %dma) unnamed_addr #6 {
entry:
  %page_list = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 0
  %0 = bitcast %struct.dma_pool* %pool to %struct.dma_page**
  %page.027 = load %struct.dma_page*, %struct.dma_page** %0, align 8
  %page_list128 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.027, i64 0, i32 0
  %cmp.not29 = icmp eq %struct.list_head* %page_list128, %page_list
  br i1 %cmp.not29, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %allocation = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %page.030 = phi %struct.dma_page* [ %page.027, %for.body.lr.ph ], [ %page.0, %for.inc ]
  %dma3 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.030, i64 0, i32 2
  %1 = load i64, i64* %dma3, align 8
  %cmp4 = icmp ugt i64 %1, %dma
  br i1 %cmp4, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %sub = sub i64 %dma, %1
  %2 = load i64, i64* %allocation, align 8
  %cmp6 = icmp ult i64 %sub, %2
  br i1 %cmp6, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %3 = bitcast %struct.dma_page* %page.030 to %struct.dma_page**
  %page.0 = load %struct.dma_page*, %struct.dma_page** %3, align 8
  %page_list1 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %page_list1, %page_list
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end, %for.inc, %entry
  %retval.0 = phi %struct.dma_page* [ null, %entry ], [ null, %for.inc ], [ %page.030, %if.end ]
  ret %struct.dma_page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @want_init_on_free() unnamed_addr #3 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_free, i64 0, i32 0)) #10
  %cmp = icmp sgt i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dma_pool* @dmam_pool_create(i8* noundef %name, %struct.device* noundef %dev, i64 noundef %size, i64 noundef %align, i64 noundef %allocation) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @dmam_pool_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.dma_pool**
  %call1 = call %struct.dma_pool* @dma_pool_create(i8* noundef %name, %struct.device* noundef %dev, i64 noundef %size, i64 noundef %align, i64 noundef %allocation) #10
  store %struct.dma_pool* %call1, %struct.dma_pool** %0, align 8
  %tobool2.not = icmp eq %struct.dma_pool* %call1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.else, %entry
  %retval.0 = phi %struct.dma_pool* [ null, %entry ], [ null, %if.else ], [ %call1, %if.then3 ]
  ret %struct.dma_pool* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dmam_pool_release(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.dma_pool**
  %1 = load %struct.dma_pool*, %struct.dma_pool** %0, align 8
  call void @dma_pool_destroy(%struct.dma_pool* noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dmam_pool_destroy(%struct.dma_pool* noundef %pool) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 3
  %0 = load %struct.device*, %struct.device** %dev1, align 8
  %1 = bitcast %struct.dma_pool* %pool to i8*
  %call = call i32 @devres_release(%struct.device* noundef %0, void (%struct.device*, i8*)* noundef nonnull @dmam_pool_release, i32 (%struct.device*, i8*, i8*)* noundef nonnull @dmam_pool_match, i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/dmapool.c\22; .popsection; .long 14472b - 14470b; .short 527; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @dmam_pool_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* noundef readnone %match_data) #4 {
entry:
  %0 = bitcast i8* %res to %struct.dma_pool**
  %1 = load %struct.dma_pool*, %struct.dma_pool** %0, align 8
  %2 = bitcast i8* %match_data to %struct.dma_pool*
  %cmp = icmp eq %struct.dma_pool* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
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
define internal i64 @pools_show(%struct.device* noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #9
  %sub = sub i32 4096, %call
  call void @mutex_lock(%struct.mutex* noundef nonnull @pools_lock) #9
  %dma_pools = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 21
  %0 = bitcast %struct.list_head* %dma_pools to i8**
  %.pn92 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn92 to %struct.list_head*
  %cmp.not94 = icmp eq %struct.list_head* %dma_pools, %1
  br i1 %cmp.not94, label %for.end45, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.end
  %.pn97 = phi i8* [ %.pn, %for.end ], [ %.pn92, %for.body.preheader ]
  %size.096 = phi i32 [ %sub33, %for.end ], [ %sub, %for.body.preheader ]
  %next.095 = phi i8* [ %add.ptr35, %for.end ], [ %add.ptr, %for.body.preheader ]
  %pool.0.in98 = getelementptr i8, i8* %.pn97, i64 -88
  %lock = getelementptr i8, i8* %.pn97, i64 -72
  %rlock.i = bitcast i8* %lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #9
  %page_list = bitcast i8* %pool.0.in98 to %struct.list_head*
  %2 = bitcast i8* %pool.0.in98 to %struct.dma_page**
  %page.085 = load %struct.dma_page*, %struct.dma_page** %2, align 8
  %page_list1386 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.085, i64 0, i32 0
  %cmp15.not87 = icmp eq %struct.list_head* %page_list1386, %page_list
  br i1 %cmp15.not87, label %for.end, label %for.body18

for.body18:                                       ; preds = %for.body, %for.body18
  %page.090 = phi %struct.dma_page* [ %page.0, %for.body18 ], [ %page.085, %for.body ]
  %pages.089 = phi i32 [ %inc, %for.body18 ], [ 0, %for.body ]
  %blocks.088 = phi i32 [ %add, %for.body18 ], [ 0, %for.body ]
  %inc = add i32 %pages.089, 1
  %in_use = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.090, i64 0, i32 3
  %3 = load i32, i32* %in_use, align 8
  %add = add i32 %3, %blocks.088
  %4 = bitcast %struct.dma_page* %page.090 to %struct.dma_page**
  %page.0 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %page_list13 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page.0, i64 0, i32 0
  %cmp15.not = icmp eq %struct.list_head* %page_list13, %page_list
  br i1 %cmp15.not, label %for.end, label %for.body18

for.end:                                          ; preds = %for.body18, %for.body
  %blocks.0.lcssa = phi i32 [ 0, %for.body ], [ %add, %for.body18 ]
  %pages.0.lcssa = phi i32 [ 0, %for.body ], [ %inc, %for.body18 ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #9
  %conv28 = zext i32 %size.096 to i64
  %name = getelementptr i8, i8* %.pn97, i64 -32
  %conv29 = zext i32 %pages.0.lcssa to i64
  %allocation = getelementptr i8, i8* %.pn97, i64 -48
  %5 = bitcast i8* %allocation to i64*
  %6 = load i64, i64* %5, align 8
  %size30 = getelementptr i8, i8* %.pn97, i64 -64
  %7 = bitcast i8* %size30 to i64*
  %8 = load i64, i64* %7, align 8
  %div = udiv i64 %6, %8
  %mul = mul i64 %div, %conv29
  %call32 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %next.095, i64 noundef %conv28, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef %name, i32 noundef %blocks.0.lcssa, i64 noundef %mul, i64 noundef %8, i32 noundef %pages.0.lcssa) #9
  %sub33 = sub i32 %size.096, %call32
  %idx.ext34 = zext i32 %call32 to i64
  %add.ptr35 = getelementptr i8, i8* %next.095, i64 %idx.ext34
  %9 = bitcast i8* %.pn97 to i8**
  %.pn = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %dma_pools, %10
  br i1 %cmp.not, label %for.end45, label %for.body

for.end45:                                        ; preds = %for.end, %entry
  %size.0.lcssa = phi i32 [ %sub, %entry ], [ %sub33, %for.end ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pools_lock) #9
  %conv46 = zext i32 %size.0.lcssa to i64
  %sub47 = sub nsw i64 4096, %conv46
  ret i64 %sub47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #10
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #12, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !14
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call fastcc void @arch_local_irq_enable() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #12, !srcloc !17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_free_coherent(%struct.device* noundef %dev, i64 noundef %size, i8* noundef %cpu_addr, i64 noundef %dma_handle) unnamed_addr #0 {
entry:
  call void @dma_free_attrs(%struct.device* noundef %dev, i64 noundef %size, i8* noundef %cpu_addr, i64 noundef %dma_handle, i64 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(%struct.device* noundef, i64 noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #10
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #12, !srcloc !18
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #12, !srcloc !19
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #12, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @dma_alloc_coherent(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %and = lshr i32 %gfp, 5
  %0 = and i32 %and, 256
  %1 = zext i32 %0 to i64
  %call = call i8* @dma_alloc_attrs(%struct.device* noundef %dev, i64 noundef %size, i64* noundef %dma_handle, i32 noundef %gfp, i64 noundef %1) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @pool_initialise_page(%struct.dma_pool* nocapture noundef readonly %pool, %struct.dma_page* nocapture noundef readonly %page) unnamed_addr #7 {
entry:
  %boundary = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 5
  %0 = load i64, i64* %boundary, align 8
  %conv = trunc i64 %0 to i32
  %size = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 2
  %vaddr = getelementptr inbounds %struct.dma_page, %struct.dma_page* %page, i64 0, i32 1
  %allocation = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %pool, i64 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %next.0, %if.end ]
  %next_boundary.0 = phi i32 [ %conv, %entry ], [ %next_boundary.1, %if.end ]
  %conv1 = zext i32 %offset.0 to i64
  %1 = load i64, i64* %size, align 8
  %2 = trunc i64 %1 to i32
  %conv2 = add i32 %offset.0, %2
  %conv3 = zext i32 %conv2 to i64
  %add5 = add i64 %1, %conv3
  %conv6 = zext i32 %next_boundary.0 to i64
  %cmp.not = icmp ult i64 %add5, %conv6
  br i1 %cmp.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %do.body
  %3 = load i64, i64* %boundary, align 8
  %4 = trunc i64 %3 to i32
  %conv13 = add i32 %next_boundary.0, %4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %conv14.pre-phi = phi i64 [ %conv6, %if.then ], [ %conv3, %do.body ]
  %next_boundary.1 = phi i32 [ %conv13, %if.then ], [ %next_boundary.0, %do.body ]
  %next.0 = phi i32 [ %next_boundary.0, %if.then ], [ %conv2, %do.body ]
  %5 = load i8*, i8** %vaddr, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 %conv1
  %6 = bitcast i8* %add.ptr to i32*
  store i32 %next.0, i32* %6, align 4
  %7 = load i64, i64* %allocation, align 8
  %cmp15 = icmp ugt i64 %7, %conv14.pre-phi
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dma_alloc_attrs(%struct.device* noundef, i64 noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #8

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 0, i64 65}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149721397}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153117047}
!12 = !{i64 2149725690}
!13 = !{i64 2148970242, i64 2148970289, i64 2148970295, i64 2148970332, i64 2148970350, i64 2148971691, i64 2148971739, i64 2148971787, i64 2148971850, i64 2148971899, i64 2148970428, i64 2148970453, i64 2148970479, i64 2148970485, i64 2148971357, i64 2148971397, i64 2148971415, i64 2148971447, i64 2148971475, i64 2148971529, i64 2148971549, i64 2148971646, i64 2148970508, i64 2148970522, i64 2148970528, i64 2148970578, i64 2148970624, i64 2148970657}
!14 = !{i64 2148083493, i64 2148083526, i64 2148083579, i64 2148083638, i64 2148083672, i64 2148083727, i64 2148083756, i64 2148083776}
!15 = !{i64 2149750543}
!16 = !{i64 2149690527}
!17 = !{i64 2148960786, i64 2148960833, i64 2148960839, i64 2148960876, i64 2148960894, i64 2148962234, i64 2148962282, i64 2148962330, i64 2148962393, i64 2148962442, i64 2148960972, i64 2148960997, i64 2148961023, i64 2148961029, i64 2148961900, i64 2148961940, i64 2148961958, i64 2148961990, i64 2148962018, i64 2148962072, i64 2148962092, i64 2148962189, i64 2148961052, i64 2148961066, i64 2148961072, i64 2148961122, i64 2148961168, i64 2148961201}
!18 = !{i64 2148975945, i64 2148975992, i64 2148975998, i64 2148976035, i64 2148976053, i64 2148977364, i64 2148977412, i64 2148977460, i64 2148977523, i64 2148977572, i64 2148976131, i64 2148976156, i64 2148976182, i64 2148976188, i64 2148977030, i64 2148977070, i64 2148977088, i64 2148977120, i64 2148977148, i64 2148977202, i64 2148977222, i64 2148977319, i64 2148976211, i64 2148976225, i64 2148976231, i64 2148976281, i64 2148976327, i64 2148976360}
!19 = !{i64 2148978124, i64 2148978171, i64 2148978177, i64 2148978214, i64 2148978232, i64 2148979175, i64 2148979223, i64 2148979271, i64 2148979334, i64 2148979383, i64 2148978310, i64 2148978335, i64 2148978361, i64 2148978367, i64 2148978404, i64 2148978410, i64 2148978460, i64 2148978506, i64 2148978539}
!20 = !{i64 2149747240}
!21 = !{i64 2148981958, i64 2148982005, i64 2148982011, i64 2148982048, i64 2148982066, i64 2148983377, i64 2148983425, i64 2148983473, i64 2148983536, i64 2148983585, i64 2148982144, i64 2148982169, i64 2148982195, i64 2148982201, i64 2148983043, i64 2148983083, i64 2148983101, i64 2148983133, i64 2148983161, i64 2148983215, i64 2148983235, i64 2148983332, i64 2148982224, i64 2148982238, i64 2148982244, i64 2148982294, i64 2148982340, i64 2148982373}
