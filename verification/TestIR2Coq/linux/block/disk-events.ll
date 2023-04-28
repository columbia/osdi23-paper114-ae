; ModuleID = 'block/disk-events.c'
source_filename = "block/disk-events.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.workqueue_struct = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.48, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.48 = type { %struct.kernfs_elem_dir }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.77, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.72 = type { %struct.list_head }
%union.anon.73 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.16, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.17 }
%union.anon.17 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.18, %union.anon.19 }
%union.anon.18 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.19 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.70, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.9 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.45, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, {}*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.page = type { i64, %union.anon.14, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.39 = type { %struct.atomic_t }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.49, %union.anon.50, %union.anon.51, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.54, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.47, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.47 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%union.anon.49 = type { %struct.hlist_node }
%union.anon.50 = type { %struct.rb_node }
%union.anon.51 = type { %struct.anon.53 }
%struct.anon.53 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.54 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.55, %union.anon.56, i32 }
%union.anon.55 = type { %struct.list_head }
%union.anon.56 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.46, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.46 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type { %struct.list_head, %struct.gendisk*, %struct.spinlock, %struct.mutex, i32, i32, i32, i64, %struct.delayed_work }
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.45 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.57 }
%struct.anon.57 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.61 }
%struct.anon.61 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.69, i32, [12 x i8] }
%union.anon.69 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.70 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.71, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.71 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.12, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.13, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.12 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.13 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.23 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.23 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.25 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.25 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
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
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.77 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_attribute = type { %struct.attribute, {}*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { i8* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }

@system_freezable_power_efficient_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str = private unnamed_addr constant [40 x i8] c"\014VFS: busy inodes on changed media %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@dev_attr_events = dso_local local_unnamed_addr global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_events_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"events_async\00", align 1
@dev_attr_events_async = dso_local local_unnamed_addr global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_events_async_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"events_poll_msecs\00", align 1
@dev_attr_events_poll_msecs = dso_local local_unnamed_addr global { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @disk_events_poll_msecs_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @disk_events_poll_msecs_store }, align 8
@__param_str_events_dfl_poll_msecs = internal constant [28 x i8] c"block.events_dfl_poll_msecs\00", align 1
@disk_events_dfl_poll_msecs_param_ops = internal constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @disk_events_set_dfl_poll_msecs, i32 (i8*, %struct.kernel_param*)* @param_get_ulong, void (i8*)* null }, align 8
@disk_events_dfl_poll_msecs = internal global i64 0, align 8
@__param_events_dfl_poll_msecs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__param_str_events_dfl_poll_msecs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @disk_events_dfl_poll_msecs_param_ops, i16 420, i8 -1, i8 0, %union.anon.78 { i8* bitcast (i64* @disk_events_dfl_poll_msecs to i8*) } }, section "__param", align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"\014%s: failed to initialize events\0A\00", align 1
@disk_alloc_events.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"&ev->block_mutex\00", align 1
@disk_events_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @disk_events_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @disk_events_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@disk_events = internal global %struct.list_head { %struct.list_head* @disk_events, %struct.list_head* @disk_events }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"DISK_MEDIA_CHANGE=1\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"DISK_EJECT_REQUEST=1\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"media_change\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"eject_request\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"-1\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.kernel_param* @__param_events_dfl_poll_msecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_block_events(%struct.gendisk* nocapture noundef readonly %disk) local_unnamed_addr #0 {
entry:
  %ev1 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev1, align 8
  %tobool.not = icmp eq %struct.disk_events* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %block_mutex = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %block_mutex) #8
  %rlock.i = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 2, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  %block = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 4
  %1 = load i32, i32* %block, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %block, align 8
  %tobool6.not = icmp eq i32 %1, 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #8
  br i1 %tobool6.not, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %2 = load %struct.disk_events*, %struct.disk_events** %ev1, align 8
  %dwork = getelementptr inbounds %struct.disk_events, %struct.disk_events* %2, i64 0, i32 8
  %call11 = call i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef %dwork) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  call void @mutex_unlock(%struct.mutex* noundef %block_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #9
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_unblock_events(%struct.gendisk* nocapture noundef readonly %disk) local_unnamed_addr #0 {
entry:
  %ev = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %tobool.not = icmp eq %struct.disk_events* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__disk_unblock_events(%struct.gendisk* noundef %disk, i1 noundef false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__disk_unblock_events(%struct.gendisk* nocapture noundef readonly %disk, i1 noundef %check_now) unnamed_addr #0 {
entry:
  %ev1 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev1, align 8
  %rlock.i = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 2, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  %block = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 4
  %1 = load i32, i32* %block, align 8
  %cmp6 = icmp slt i32 %1, 1
  br i1 %cmp6, label %if.then, label %if.end25, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/disk-events.c\22; .popsection; .long 14472b - 14470b; .short 106; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  br label %out_unlock

if.end25:                                         ; preds = %entry
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %block, align 8
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %if.end29, label %out_unlock

if.end29:                                         ; preds = %if.end25
  %call30 = call fastcc i64 @disk_events_poll_jiffies(%struct.gendisk* noundef %disk) #9
  br i1 %check_now, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end29
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_freezable_power_efficient_wq, align 8
  %dwork = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %2, %struct.delayed_work* noundef %dwork, i64 noundef 0) #9
  br label %out_unlock

if.else:                                          ; preds = %if.end29
  %tobool34.not = icmp eq i64 %call30, 0
  br i1 %tobool34.not, label %out_unlock, label %if.then35

if.then35:                                        ; preds = %if.else
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_freezable_power_efficient_wq, align 8
  %dwork36 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %3, %struct.delayed_work* noundef %dwork36, i64 noundef %call30) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.then, %if.then32, %if.then35, %if.else, %if.end25
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_flush_events(%struct.gendisk* nocapture noundef readonly %disk, i32 noundef %mask) local_unnamed_addr #0 {
entry:
  %ev1 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev1, align 8
  %tobool.not = icmp eq %struct.disk_events* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %clearing = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 6
  %1 = load i32, i32* %clearing, align 8
  %or = or i32 %1, %mask
  store i32 %or, i32* %clearing, align 8
  %block = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 4
  %2 = load i32, i32* %block, align 8
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_freezable_power_efficient_wq, align 8
  %dwork = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 8
  call fastcc void @mod_delayed_work(%struct.workqueue_struct* noundef %3, %struct.delayed_work* noundef %dwork) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork) unnamed_addr #0 {
entry:
  %call = call i1 @mod_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @bdev_check_media_change(%struct.block_device* noundef %bdev) local_unnamed_addr #0 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %call = call fastcc i32 @disk_clear_events(%struct.gendisk* noundef %0) #9
  %and = and i32 %call, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @__invalidate_device(%struct.block_device* noundef %bdev, i1 noundef true) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 3, i64 0
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end
  %2 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 12
  call fastcc void @set_bit(i64* noundef %state) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %3 = xor i1 %tobool.not, true
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @disk_clear_events(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #0 {
entry:
  %clearing = alloca i32, align 4
  %ev1 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev1, align 8
  %1 = bitcast i32* %clearing to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  %tobool.not = icmp eq %struct.disk_events* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @disk_block_events(%struct.gendisk* noundef %disk) #9
  %rlock.i = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %clearing2 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 6
  %2 = load i32, i32* %clearing2, align 8
  %or = or i32 %2, 3
  store i32 %or, i32* %clearing, align 4
  store i32 0, i32* %clearing2, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  call fastcc void @disk_check_events(%struct.disk_events* noundef nonnull %0, i32* noundef nonnull %clearing) #9
  %3 = load i32, i32* %clearing2, align 8
  %tobool6 = icmp ne i32 %3, 0
  call fastcc void @__disk_unblock_events(%struct.gendisk* noundef %disk, i1 noundef %tobool6) #9
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %pending9 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 5
  %4 = load i32, i32* %pending9, align 4
  %and = and i32 %4, 3
  %and11 = and i32 %4, -4
  store i32 %and11, i32* %pending9, align 4
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %5 = load i32, i32* %clearing, align 4
  %and13 = and i32 %5, 3
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %cleanup, label %if.then22, !prof !10

if.then22:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/disk-events.c\22; .popsection; .long 14472b - 14470b; .short 260; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then22, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %and, %if.then22 ], [ %and, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(%struct.block_device* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @disk_force_media_change(%struct.gendisk* noundef %disk, i32 noundef %events) local_unnamed_addr #0 {
entry:
  call fastcc void @disk_event_uevent(%struct.gendisk* noundef %disk, i32 noundef %events) #9
  %and = and i32 %events, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %0 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %call = call i32 @__invalidate_device(%struct.block_device* noundef %0, i1 noundef true) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end
  %state = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 12
  call fastcc void @set_bit(i64* noundef %state) #9
  br label %return

return:                                           ; preds = %entry, %if.end4
  %1 = xor i1 %tobool.not, true
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @disk_event_uevent(%struct.gendisk* nocapture noundef readonly %disk, i32 noundef %events) unnamed_addr #0 {
entry:
  %envp = alloca [3 x i8*], align 8
  %0 = bitcast [3 x i8*]* %envp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %events2 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 4
  %1 = load i16, i16* %events2, align 4
  %conv3 = zext i16 %1 to i32
  %and = and i32 %events, 1
  %and4 = and i32 %and, %conv3
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds [3 x i8*], [3 x i8*]* %envp, i64 0, i64 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %nr_events.1 = phi i64 [ 1, %if.then ], [ 0, %entry ]
  %and.1 = and i32 %events, 2
  %and4.1 = and i32 %and.1, %conv3
  %tobool.not.1 = icmp eq i32 %and4.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.1.thread

for.inc.1.thread:                                 ; preds = %for.inc
  %arrayidx6.1 = getelementptr [3 x i8*], [3 x i8*]* %envp, i64 0, i64 %nr_events.1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %arrayidx6.1, align 8
  br label %if.then9

for.inc.1:                                        ; preds = %for.inc
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.inc.1.thread, %for.inc.1
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 7
  %2 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %kobj = getelementptr inbounds %struct.block_device, %struct.block_device* %2, i64 0, i32 9, i32 0
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %envp, i64 0, i64 0
  %call = call i32 @kobject_uevent_env(%struct.kobject* noundef %kobj, i32 noundef 2, i8** noundef nonnull %arraydecay) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.inc.1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_events_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %event_flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 5
  %2 = load i16, i16* %event_flags, align 2
  %3 = and i16 %2, 2
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %events = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 4
  %4 = load i16, i16* %events, align 4
  %conv1 = zext i16 %4 to i32
  %call = call fastcc i64 @__disk_events_show(i32 noundef %conv1, i8* noundef %buf) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @disk_events_async_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* nocapture noundef readnone %buf) #4 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_events_poll_msecs_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %ev = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 19
  %2 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %tobool.not = icmp eq %struct.disk_events* %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %poll_msecs = getelementptr inbounds %struct.disk_events, %struct.disk_events* %2, i64 0, i32 7
  %3 = load i64, i64* %poll_msecs, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i32 [ %call2, %if.end ], [ %call, %if.then ]
  %retval.0 = sext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @disk_events_poll_msecs_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %intv = alloca i64, align 8
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 35, i32 1
  %0 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %1 = load %struct.gendisk*, %struct.gendisk** %0, align 8
  %2 = bitcast i64* %intv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  store i64 0, i64* %intv, align 8, !annotation !12
  %tobool.not = icmp eq i64 %count, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64* noundef nonnull %intv) #8
  %tobool1.not = icmp eq i32 %call, 0
  %3 = load i64, i64* %intv, align 8
  %4 = icmp slt i64 %3, -1
  %or.cond = select i1 %tobool1.not, i1 true, i1 %4
  br i1 %or.cond, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %ev = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 19
  %5 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %tobool5.not = icmp eq %struct.disk_events* %5, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  call void @disk_block_events(%struct.gendisk* noundef %1) #9
  %6 = load i64, i64* %intv, align 8
  %7 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %poll_msecs = getelementptr inbounds %struct.disk_events, %struct.disk_events* %7, i64 0, i32 7
  store i64 %6, i64* %poll_msecs, align 8
  call fastcc void @__disk_unblock_events(%struct.gendisk* noundef %1, i1 noundef true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %lor.lhs.false, %if.end7
  %retval.0 = phi i64 [ %count, %if.end7 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -19, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @disk_alloc_events(%struct.gendisk* noundef %disk) local_unnamed_addr #0 {
entry:
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 8
  %0 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %check_events = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %0, i64 0, i32 6
  %1 = load i32 (%struct.gendisk*, i32)*, i32 (%struct.gendisk*, i32)** %check_events, align 8
  %tobool.not = icmp eq i32 (%struct.gendisk*, i32)* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %events = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 4
  %2 = load i16, i16* %events, align 4
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc i8* @kzalloc() #9
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef %arraydecay) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %node = bitcast i8* %call to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %node) #9
  %disk6 = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %disk6 to %struct.gendisk**
  store %struct.gendisk* %disk, %struct.gendisk** %3, align 8
  %lock = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %lock to i32*
  store i32 0, i32* %4, align 8
  %block_mutex = getelementptr inbounds i8, i8* %call, i64 32
  %5 = bitcast i8* %block_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %5, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @disk_alloc_events.__key) #8
  %block = getelementptr inbounds i8, i8* %call, i64 64
  %6 = bitcast i8* %block to i32*
  store i32 1, i32* %6, align 8
  %poll_msecs = getelementptr inbounds i8, i8* %call, i64 80
  %7 = bitcast i8* %poll_msecs to i64*
  store i64 -1, i64* %7, align 8
  %.compoundliteral19.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 88
  %8 = bitcast i8* %.compoundliteral19.sroa.0.0..sroa_idx to i64*
  store i64 68719476704, i64* %8, align 8
  %entry23 = getelementptr inbounds i8, i8* %call, i64 96
  %9 = bitcast i8* %entry23 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %9) #9
  %func = getelementptr inbounds i8, i8* %call, i64 112
  %10 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @disk_events_workfn, void (%struct.work_struct*)** %10, align 8
  %timer = getelementptr inbounds i8, i8* %call, i64 120
  %11 = bitcast i8* %timer to %struct.timer_list*
  call void @init_timer_key(%struct.timer_list* noundef %11, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #8
  %ev31 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %12 = bitcast %struct.disk_events** %ev31 to i8**
  store i8* %call, i8** %12, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end5, %do.end
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %do.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 8), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #8
  ret i8* %call.i.i
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @disk_events_workfn(%struct.work_struct* noundef %work) #0 {
entry:
  %call = call fastcc %struct.delayed_work* @to_delayed_work(%struct.work_struct* noundef %work) #9
  %add.ptr5 = getelementptr %struct.delayed_work, %struct.delayed_work* %call, i64 -1
  %0 = bitcast %struct.delayed_work* %add.ptr5 to %struct.disk_events*
  %clearing = getelementptr %struct.delayed_work, %struct.delayed_work* %call, i64 -1, i32 2
  %1 = bitcast %struct.workqueue_struct** %clearing to i32*
  call fastcc void @disk_check_events(%struct.disk_events* noundef %0, i32* noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_add_events(%struct.gendisk* nocapture noundef readonly %disk) local_unnamed_addr #0 {
entry:
  %ev = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %tobool.not = icmp eq %struct.disk_events* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @disk_events_mutex) #8
  %1 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %node = getelementptr inbounds %struct.disk_events, %struct.disk_events* %1, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %node) #9
  call void @mutex_unlock(%struct.mutex* noundef nonnull @disk_events_mutex) #8
  call fastcc void @__disk_unblock_events(%struct.gendisk* noundef %disk, i1 noundef true) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #5 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @disk_events, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_del_events(%struct.gendisk* nocapture noundef readonly %disk) local_unnamed_addr #0 {
entry:
  %ev = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %tobool.not = icmp eq %struct.disk_events* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @disk_block_events(%struct.gendisk* noundef %disk) #9
  call void @mutex_lock(%struct.mutex* noundef nonnull @disk_events_mutex) #8
  %1 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %node = getelementptr inbounds %struct.disk_events, %struct.disk_events* %1, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %node) #9
  call void @mutex_unlock(%struct.mutex* noundef nonnull @disk_events_mutex) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #9
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_release_events(%struct.gendisk* nocapture noundef readonly %disk) local_unnamed_addr #0 {
entry:
  %ev = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev, align 8
  %tobool.not = icmp eq %struct.disk_events* %0, null
  %1 = bitcast %struct.disk_events* %0 to i8*
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %block = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 4
  %2 = load i32, i32* %block, align 8
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/disk-events.c\22; .popsection; .long 14472b - 14470b; .short 502; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !13
  %.phi.trans.insert = bitcast %struct.disk_events** %ev to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  %3 = phi i8* [ %1, %entry ], [ %.pre, %if.then ], [ %1, %land.rhs ]
  call void @kfree(i8* noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #9
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #9
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
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

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
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #10, !srcloc !14
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #10, !srcloc !15
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #6 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #10, !srcloc !20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @disk_events_poll_jiffies(%struct.gendisk* nocapture noundef readonly %disk) unnamed_addr #0 {
entry:
  %ev1 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 19
  %0 = load %struct.disk_events*, %struct.disk_events** %ev1, align 8
  %poll_msecs = getelementptr inbounds %struct.disk_events, %struct.disk_events* %0, i64 0, i32 7
  %1 = load i64, i64* %poll_msecs, align 8
  %cmp = icmp sgt i64 %1, -1
  br i1 %cmp, label %if.else.i, label %if.else

if.else:                                          ; preds = %entry
  %event_flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 5
  %2 = load i16, i16* %event_flags, align 2
  %3 = and i16 %2, 1
  %tobool.not = icmp eq i16 %3, 0
  %4 = load i64, i64* @disk_events_dfl_poll_msecs, align 8
  %spec.select = select i1 %tobool.not, i64 0, i64 %4
  br label %if.else.i

if.else.i:                                        ; preds = %entry, %if.else
  %intv_msecs.0 = phi i64 [ %1, %entry ], [ %spec.select, %if.else ]
  %conv5 = trunc i64 %intv_msecs.0 to i32
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %conv5) #8
  ret i64 %call2.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mod_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_enable() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #10, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @disk_check_events(%struct.disk_events* noundef %ev, i32* nocapture noundef %clearing_ptr) unnamed_addr #0 {
entry:
  %disk1 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %ev, i64 0, i32 1
  %0 = load %struct.gendisk*, %struct.gendisk** %disk1, align 8
  %1 = load i32, i32* %clearing_ptr, align 4
  %fops = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 8
  %2 = load %struct.block_device_operations*, %struct.block_device_operations** %fops, align 8
  %check_events = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %2, i64 0, i32 6
  %3 = load i32 (%struct.gendisk*, i32)*, i32 (%struct.gendisk*, i32)** %check_events, align 8
  %call = call i32 %3(%struct.gendisk* noundef %0, i32 noundef %1) #8
  %rlock.i = getelementptr inbounds %struct.disk_events, %struct.disk_events* %ev, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %pending = getelementptr inbounds %struct.disk_events, %struct.disk_events* %ev, i64 0, i32 5
  %4 = load i32, i32* %pending, align 4
  %neg = xor i32 %4, -1
  %and = and i32 %call, %neg
  %or = or i32 %4, %call
  store i32 %or, i32* %pending, align 4
  %neg3 = xor i32 %1, -1
  %5 = load i32, i32* %clearing_ptr, align 4
  %and4 = and i32 %5, %neg3
  store i32 %and4, i32* %clearing_ptr, align 4
  %call5 = call fastcc i64 @disk_events_poll_jiffies(%struct.gendisk* noundef %0) #9
  %block = getelementptr inbounds %struct.disk_events, %struct.disk_events* %ev, i64 0, i32 4
  %6 = load i32, i32* %block, align 8
  %tobool = icmp eq i32 %6, 0
  %tobool6 = icmp ne i64 %call5, 0
  %or.cond = select i1 %tobool, i1 %tobool6, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_freezable_power_efficient_wq, align 8
  %dwork = getelementptr inbounds %struct.disk_events, %struct.disk_events* %ev, i64 0, i32 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %7, %struct.delayed_work* noundef %dwork, i64 noundef %call5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %and9 = and i32 %and, 1
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @inc_diskseq(%struct.gendisk* noundef %0) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %event_flags = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 5
  %8 = load i16, i16* %event_flags, align 2
  %9 = and i16 %8, 2
  %tobool14.not = icmp eq i16 %9, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call fastcc void @disk_event_uevent(%struct.gendisk* noundef %0, i32 noundef %and) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_diskseq(%struct.gendisk* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #10, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(%struct.kobject* noundef, i32 noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__disk_events_show(i32 noundef %events, i8* noundef %buf) unnamed_addr #0 {
entry:
  %and = and i32 %events, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #8
  %conv2 = sext i32 %call to i64
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %delim.1 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %entry ]
  %pos.1 = phi i64 [ %conv2, %if.then ], [ 0, %entry ]
  %and.1 = and i32 %events, 2
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %add.ptr.1 = getelementptr i8, i8* %buf, i64 %pos.1
  %call.1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr.1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %delim.1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #8
  %conv2.1 = sext i32 %call.1 to i64
  %add.1 = add nsw i64 %pos.1, %conv2.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %pos.1.1 = phi i64 [ %add.1, %if.then.1 ], [ %pos.1, %for.inc ]
  %tobool3.not = icmp eq i64 %pos.1.1, 0
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %for.inc.1
  %add.ptr5 = getelementptr i8, i8* %buf, i64 %pos.1.1
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #8
  %conv7 = sext i32 %call6 to i64
  %add8 = add nsw i64 %pos.1.1, %conv7
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %for.inc.1
  %pos.2 = phi i64 [ %add8, %if.then4 ], [ 0, %for.inc.1 ]
  ret i64 %pos.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @disk_events_set_dfl_poll_msecs(i8* noundef %val, %struct.kernel_param* noundef %kp) #0 {
entry:
  %call = call i32 @param_set_ulong(i8* noundef %val, %struct.kernel_param* noundef %kp) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @disk_events_mutex) #8
  %ev.017 = load %struct.disk_events*, %struct.disk_events** bitcast (%struct.list_head* @disk_events to %struct.disk_events**), align 8
  %node18 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %ev.017, i64 0, i32 0
  %cmp1.not19 = icmp eq %struct.list_head* %node18, @disk_events
  br i1 %cmp1.not19, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %ev.020 = phi %struct.disk_events* [ %ev.0, %for.body ], [ %ev.017, %if.end ]
  %disk = getelementptr inbounds %struct.disk_events, %struct.disk_events* %ev.020, i64 0, i32 1
  %0 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  call void @disk_flush_events(%struct.gendisk* noundef %0, i32 noundef 0) #9
  %1 = bitcast %struct.disk_events* %ev.020 to %struct.disk_events**
  %ev.0 = load %struct.disk_events*, %struct.disk_events** %1, align 8
  %node = getelementptr inbounds %struct.disk_events, %struct.disk_events* %ev.0, i64 0, i32 0
  %cmp1.not = icmp eq %struct.list_head* %node, @disk_events
  br i1 %cmp1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @disk_events_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ulong(i8* noundef, %struct.kernel_param* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_ulong(i8* noundef, %struct.kernel_param* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.delayed_work* @to_delayed_work(%struct.work_struct* noundef readnone %work) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.work_struct* %work to %struct.delayed_work*
  ret %struct.delayed_work* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #5 {
entry:
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @disk_events, i64 0, i32 1), align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @disk_events, %struct.list_head** %next2, align 8
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
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #9
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

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149539569}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2154351285}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2154353771}
!12 = !{!"auto-init"}
!13 = !{i64 2154378999}
!14 = !{i64 2148772827, i64 2148772874, i64 2148772880, i64 2148772917, i64 2148772935, i64 2148774246, i64 2148774294, i64 2148774342, i64 2148774405, i64 2148774454, i64 2148773013, i64 2148773038, i64 2148773064, i64 2148773070, i64 2148773912, i64 2148773952, i64 2148773970, i64 2148774002, i64 2148774030, i64 2148774084, i64 2148774104, i64 2148774201, i64 2148773093, i64 2148773107, i64 2148773113, i64 2148773163, i64 2148773209, i64 2148773242}
!15 = !{i64 2148775006, i64 2148775053, i64 2148775059, i64 2148775096, i64 2148775114, i64 2148776057, i64 2148776105, i64 2148776153, i64 2148776216, i64 2148776265, i64 2148775192, i64 2148775217, i64 2148775243, i64 2148775249, i64 2148775286, i64 2148775292, i64 2148775342, i64 2148775388, i64 2148775421}
!16 = !{i64 2148767124, i64 2148767171, i64 2148767177, i64 2148767214, i64 2148767232, i64 2148768573, i64 2148768621, i64 2148768669, i64 2148768732, i64 2148768781, i64 2148767310, i64 2148767335, i64 2148767361, i64 2148767367, i64 2148768239, i64 2148768279, i64 2148768297, i64 2148768329, i64 2148768357, i64 2148768411, i64 2148768431, i64 2148768528, i64 2148767390, i64 2148767404, i64 2148767410, i64 2148767460, i64 2148767506, i64 2148767539}
!17 = !{i64 2147863837, i64 2147863870, i64 2147863923, i64 2147863982, i64 2147864016, i64 2147864071, i64 2147864100, i64 2147864120}
!18 = !{i64 2149565412}
!19 = !{i64 2149508711}
!20 = !{i64 2148778840, i64 2148778887, i64 2148778893, i64 2148778930, i64 2148778948, i64 2148780259, i64 2148780307, i64 2148780355, i64 2148780418, i64 2148780467, i64 2148779026, i64 2148779051, i64 2148779077, i64 2148779083, i64 2148779925, i64 2148779965, i64 2148779983, i64 2148780015, i64 2148780043, i64 2148780097, i64 2148780117, i64 2148780214, i64 2148779106, i64 2148779120, i64 2148779126, i64 2148779176, i64 2148779222, i64 2148779255}
!21 = !{i64 2149543862}
!22 = !{i64 2149568715}
!23 = !{i64 2148757668, i64 2148757715, i64 2148757721, i64 2148757758, i64 2148757776, i64 2148759116, i64 2148759164, i64 2148759212, i64 2148759275, i64 2148759324, i64 2148757854, i64 2148757879, i64 2148757905, i64 2148757911, i64 2148758782, i64 2148758822, i64 2148758840, i64 2148758872, i64 2148758900, i64 2148758954, i64 2148758974, i64 2148759071, i64 2148757934, i64 2148757948, i64 2148757954, i64 2148758004, i64 2148758050, i64 2148758083}
!24 = !{i64 2147837055, i64 2147837566, i64 2147837596, i64 2147837622, i64 2147837654, i64 2147837683}
