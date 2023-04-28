; ModuleID = 'kernel/time/clockevents.c'
source_filename = "kernel/time/clockevents.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_clockevents__254_776_clockevents_init_sysfs6:\09\09\09"
module asm ".long\09clockevents_init_sysfs - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpumask = type { [4 x i64] }
%struct.tick_device = type { %struct.clock_event_device*, i32 }
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.module = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.59, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.59 = type { %struct.kernfs_elem_dir }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.50, %struct.list_head, %struct.list_head, %union.anon.51 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.19, i8* }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.50 = type { %struct.list_head }
%union.anon.51 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.18, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.52 }
%union.anon.52 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.26 = type { i32 }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.33, %union.anon.34, i32 }
%struct.request_queue = type opaque
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.35 }
%struct.anon.35 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.3, %union.anon.58, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.58 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.49, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.49 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.55 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.53, %struct.qspinlock }
%union.anon.53 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.55 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.32 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.23, i32 }
%union.anon.23 = type { %struct.kuid_t }
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
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.61 = type { %struct.callback_head }
%union.anon.62 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.ce_unbind = type { %struct.clock_event_device*, i32 }

@clockevents_program_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"Current state: %d\0A\00", align 1
@clockevents_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @clockevents_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @clockevents_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@cpu_all_bits = external dso_local constant [4 x i64], align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"%s cpumask == cpu_all_mask, using cpu_possible_mask instead\0A\00", align 1
@clockevents_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@clockevent_devices = internal global %struct.list_head { %struct.list_head* @clockevent_devices, %struct.list_head* @clockevent_devices }, align 8
@clockevents_released = internal global %struct.list_head { %struct.list_head* @clockevents_released, %struct.list_head* @clockevents_released }, align 8
@__UNIQUE_ID___addressable_clockevents_init_sysfs255 = internal global i8* bitcast (i32 ()* @clockevents_init_sysfs to i8*), section ".discard.addressable", align 8
@__clockevents_switch_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@clockevents_subsys = internal global %struct.bus_type { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i64)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"clockevents\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"clockevent\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@tick_percpu_dev = internal global %struct.device zeroinitializer, section ".data..percpu", align 8
@dev_attr_current_device = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @current_device_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_unbind_device = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @unbind_device_store }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"current_device\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@tick_bc_dev = internal global %struct.device { %struct.kobject zeroinitializer, %struct.device* null, %struct.device_private* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.device_type* null, %struct.bus_type* @clockevents_subsys, %struct.device_driver* null, i8* null, i8* null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, %struct.dev_pm_domain* null, %struct.irq_domain* null, %struct.raw_spinlock zeroinitializer, %struct.list_head zeroinitializer, i64* null, i64 0, i64 0, %struct.bus_dma_region* null, %struct.device_dma_parameters* null, %struct.list_head zeroinitializer, %struct.dma_coherent_mem* null, %struct.io_tlb_mem* null, %struct.dev_archdata zeroinitializer, %struct.device_node* null, %struct.fwnode_handle* null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.class* null, %struct.attribute_group** null, void (%struct.device*)* null, %struct.iommu_group* null, %struct.dev_iommu* null, i32 0, i8 0 }, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"unbind_device\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_clockevents_init_sysfs255 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @clockevent_delta2ns(i64 noundef %latch, %struct.clock_event_device* nocapture noundef %evt) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @cev_delta2ns(i64 noundef %latch, %struct.clock_event_device* noundef %evt, i1 noundef false) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @cev_delta2ns(i64 noundef %latch, %struct.clock_event_device* nocapture noundef %evt, i1 noundef %ismax) unnamed_addr #0 {
entry:
  %shift = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %evt, i64 0, i32 7
  %0 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 %latch, %sh_prom
  %mult = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %evt, i64 0, i32 6
  %1 = load i32, i32* %mult, align 16
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end19, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clockevents.c\22; .popsection; .long 14472b - 14470b; .short 38; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  store i32 1, i32* %mult, align 16
  %.pre = load i32, i32* %shift, align 4
  %.pre69 = zext i32 %.pre to i64
  br label %if.end19

if.end19:                                         ; preds = %entry, %if.then
  %sh_prom23.pre-phi = phi i64 [ %sh_prom, %entry ], [ %.pre69, %if.then ]
  %2 = phi i32 [ %1, %entry ], [ 1, %if.then ]
  %conv21 = zext i32 %2 to i64
  %sub = add nsw i64 %conv21, -1
  %shr = lshr i64 %shl, %sh_prom23.pre-phi
  %cmp.not = icmp eq i64 %shr, %latch
  %spec.store.select = select i1 %cmp.not, i64 %shl, i64 -1
  %sub27 = xor i64 %spec.store.select, -1
  %cmp28 = icmp ult i64 %sub, %sub27
  br i1 %cmp28, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %if.end19
  %shl35 = shl nuw i64 1, %sh_prom23.pre-phi
  %cmp36.not = icmp ult i64 %shl35, %conv21
  %or.cond = select i1 %ismax, i1 %cmp36.not, i1 false
  %add = select i1 %or.cond, i64 0, i64 %sub
  %spec.select = add i64 %add, %spec.store.select
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %if.end19
  %clc.0 = phi i64 [ %spec.store.select, %if.end19 ], [ %spec.select, %land.lhs.true ]
  %div = udiv i64 %clc.0, %conv21
  %cmp45 = icmp ugt i64 %div, 1000
  %cond = select i1 %cmp45, i64 %div, i64 1000
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clockevents_switch_state(%struct.clock_event_device* noundef %dev, i32 noundef %state) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @clockevent_get_state(%struct.clock_event_device* noundef %dev) #13
  %cmp.not = icmp eq i32 %call, %state
  br i1 %cmp.not, label %if.end28, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @__clockevents_switch_state(%struct.clock_event_device* noundef %dev, i32 noundef %state) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.end28

if.end:                                           ; preds = %if.then
  call fastcc void @clockevent_set_state(%struct.clock_event_device* noundef %dev, i32 noundef %state) #13
  %call3 = call fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* noundef %dev) #13
  br i1 %call3, label %if.then4, label %if.end28

if.then4:                                         ; preds = %if.end
  %mult = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 6
  %0 = load i32, i32* %mult, align 16
  %tobool5.not = icmp eq i32 %0, 0
  br i1 %tobool5.not, label %if.then14, label %if.end28, !prof !8

if.then14:                                        ; preds = %if.then4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clockevents.c\22; .popsection; .long 14472b - 14470b; .short 161; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  store i32 1, i32* %mult, align 16
  br label %if.end28

if.end28:                                         ; preds = %if.then4, %if.end, %if.then14, %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @clockevent_get_state(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__clockevents_switch_state(%struct.clock_event_device* noundef %dev, i32 noundef %state) unnamed_addr #0 {
entry:
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 9
  %0 = load i32, i32* %features, align 4
  %and = and i32 %0, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  switch i32 %state, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb16
    i32 4, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 14
  %1 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_shutdown, align 32
  %tobool1.not = icmp eq i32 (%struct.clock_event_device*)* %1, null
  br i1 %tobool1.not, label %return, label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  %and7 = and i32 %0, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %return, label %if.end10

if.end10:                                         ; preds = %sw.bb5
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 11
  %2 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_periodic, align 8
  %tobool11.not = icmp eq i32 (%struct.clock_event_device*)* %2, null
  br i1 %tobool11.not, label %return, label %return.sink.split

sw.bb16:                                          ; preds = %if.end
  %and18 = and i32 %0, 2
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %return, label %if.end21

if.end21:                                         ; preds = %sw.bb16
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 12
  %3 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_oneshot, align 16
  %tobool22.not = icmp eq i32 (%struct.clock_event_device*)* %3, null
  br i1 %tobool22.not, label %return, label %return.sink.split

sw.bb27:                                          ; preds = %if.end
  %call28 = call fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* noundef %dev) #13
  %.b100 = load i1, i1* @__clockevents_switch_state.__already_done, align 1
  %4 = select i1 %call28, i1 true, i1 %.b100
  br i1 %4, label %if.end62, label %if.then37, !prof !11

if.then37:                                        ; preds = %sw.bb27
  store i1 true, i1* @__clockevents_switch_state.__already_done, align 1
  %call48 = call fastcc i32 @clockevent_get_state(%struct.clock_event_device* noundef %dev) #13
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %call48) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clockevents.c\22; .popsection; .long 14472b - 14470b; .short 127; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !12
  br label %if.end62

if.end62:                                         ; preds = %if.then37, %sw.bb27
  br i1 %call28, label %if.end73, label %return

if.end73:                                         ; preds = %if.end62
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 13
  %5 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %set_state_oneshot_stopped, align 8
  %tobool74.not = icmp eq i32 (%struct.clock_event_device*)* %5, null
  br i1 %tobool74.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.end73, %if.end21, %if.end10, %sw.bb
  %.sink = phi i32 (%struct.clock_event_device*)* [ %1, %sw.bb ], [ %2, %if.end10 ], [ %3, %if.end21 ], [ %5, %if.end73 ]
  %call77 = call i32 %.sink(%struct.clock_event_device* noundef %dev) #15
  br label %return

return:                                           ; preds = %return.sink.split, %if.end, %if.end73, %if.end62, %if.end21, %sw.bb16, %if.end10, %sw.bb5, %sw.bb, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %sw.bb ], [ -38, %sw.bb5 ], [ 0, %if.end10 ], [ -38, %sw.bb16 ], [ 0, %if.end21 ], [ -22, %if.end62 ], [ -38, %if.end73 ], [ -38, %if.end ], [ %call77, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @clockevent_set_state(%struct.clock_event_device* nocapture noundef writeonly %dev, i32 noundef %state) unnamed_addr #2 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  store i32 %state, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  %cmp = icmp eq i32 %0, 3
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clockevents_shutdown(%struct.clock_event_device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @clockevents_switch_state(%struct.clock_event_device* noundef %dev, i32 noundef 1) #13
  %next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 3
  store i64 9223372036854775807, i64* %next_event, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clockevents_tick_resume(%struct.clock_event_device* noundef %dev) local_unnamed_addr #0 {
entry:
  %tick_resume = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 15
  %0 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %tick_resume, align 8
  %tobool.not = icmp eq i32 (%struct.clock_event_device*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %0(%struct.clock_event_device* noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clockevents_program_event(%struct.clock_event_device* noundef %dev, i64 noundef %expires, i1 noundef %force) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %expires, 0
  br i1 %cmp, label %if.then, label %if.end16, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clockevents.c\22; .popsection; .long 14472b - 14470b; .short 310; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  br label %cleanup

if.end16:                                         ; preds = %entry
  %next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 3
  store i64 %expires, i64* %next_event, align 8
  %call = call fastcc i1 @clockevent_state_shutdown(%struct.clock_event_device* noundef %dev) #13
  br i1 %call, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end16
  %call19 = call fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* noundef %dev) #13
  %.b152 = load i1, i1* @clockevents_program_event.__already_done, align 1
  %0 = select i1 %call19, i1 true, i1 %.b152
  br i1 %0, label %if.end66, label %if.then39, !prof !11

if.then39:                                        ; preds = %if.end18
  store i1 true, i1* @clockevents_program_event.__already_done, align 1
  %call51 = call fastcc i32 @clockevent_get_state(%struct.clock_event_device* noundef %dev) #13
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %call51) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clockevents.c\22; .popsection; .long 14472b - 14470b; .short 320; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  br label %if.end66

if.end66:                                         ; preds = %if.then39, %if.end18
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 9
  %1 = load i32, i32* %features, align 4
  %and = and i32 %1, 4
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.end66
  %set_next_ktime = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 2
  %2 = load i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)** %set_next_ktime, align 16
  %call77 = call i32 %2(i64 noundef %expires, %struct.clock_event_device* noundef %dev) #15
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %call79 = call i64 @ktime_get() #15
  %sub = sub i64 %expires, %call79
  %cmp81 = icmp slt i64 %sub, 1
  br i1 %cmp81, label %if.then83, label %if.end87

if.then83:                                        ; preds = %if.end78
  br i1 %force, label %cond.true, label %cleanup

cond.true:                                        ; preds = %if.then83
  %call86 = call fastcc i32 @clockevents_program_min_delta(%struct.clock_event_device* noundef %dev) #13
  br label %cleanup

if.end87:                                         ; preds = %if.end78
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 4
  %3 = load i64, i64* %max_delta_ns, align 32
  %cmp89 = icmp slt i64 %sub, %3
  %cond94 = select i1 %cmp89, i64 %sub, i64 %3
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 5
  %4 = load i64, i64* %min_delta_ns, align 8
  %cmp96 = icmp sgt i64 %cond94, %4
  %cond101 = select i1 %cmp96, i64 %cond94, i64 %4
  %mult = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 6
  %5 = load i32, i32* %mult, align 16
  %conv102 = zext i32 %5 to i64
  %mul = mul i64 %cond101, %conv102
  %shift = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 7
  %6 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %6 to i64
  %shr = lshr i64 %mul, %sh_prom
  %set_next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 1
  %7 = load i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)** %set_next_event, align 8
  %call103 = call i32 %7(i64 noundef %shr, %struct.clock_event_device* noundef %dev) #15
  %tobool104.not = icmp ne i32 %call103, 0
  %8 = and i1 %tobool104.not, %force
  br i1 %8, label %cond.true107, label %cleanup

cond.true107:                                     ; preds = %if.end87
  %call108 = call fastcc i32 @clockevents_program_min_delta(%struct.clock_event_device* noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %cond.true107, %if.end87, %cond.true, %if.then83, %if.end16, %if.then76
  %retval.0 = phi i32 [ %call77, %if.then76 ], [ -62, %if.then ], [ 0, %if.end16 ], [ %call86, %cond.true ], [ -62, %if.then83 ], [ %call108, %cond.true107 ], [ %call103, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clockevent_state_shutdown(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  %cmp = icmp eq i32 %0, 1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clockevents_program_min_delta(%struct.clock_event_device* noundef %dev) unnamed_addr #0 {
entry:
  %retries = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 10
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 5
  %next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 3
  %mult = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 6
  %shift = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 7
  %set_next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc8 = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc8, 10
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %i.025 = phi i32 [ 0, %entry ], [ %inc8, %for.cond ]
  %delta.024 = phi i64 [ 0, %entry ], [ %add, %for.cond ]
  %0 = load i64, i64* %min_delta_ns, align 8
  %add = add i64 %0, %delta.024
  %call = call i64 @ktime_get() #15
  %add1 = add i64 %call, %add
  store i64 %add1, i64* %next_event, align 8
  %call2 = call fastcc i1 @clockevent_state_shutdown(%struct.clock_event_device* noundef %dev) #13
  br i1 %call2, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %1 = load i64, i64* %retries, align 64
  %inc = add i64 %1, 1
  store i64 %inc, i64* %retries, align 64
  %2 = load i32, i32* %mult, align 16
  %conv = zext i32 %2 to i64
  %mul = mul i64 %add, %conv
  %3 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %mul, %sh_prom
  %4 = load i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)** %set_next_event, align 8
  %call3 = call i32 %4(i64 noundef %shr, %struct.clock_event_device* noundef %dev) #15
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %if.end, %for.body
  %retval.0 = phi i32 [ 0, %for.body ], [ 0, %if.end ], [ -62, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clockevents_unbind_device(%struct.clock_event_device* noundef %ced, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clockevents_mutex) #15
  %call = call fastcc i32 @clockevents_unbind(%struct.clock_event_device* noundef %ced, i32 noundef %cpu) #13
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clockevents_mutex) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clockevents_unbind(%struct.clock_event_device* noundef %ced, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %cu = alloca %struct.ce_unbind, align 8
  %0 = bitcast %struct.ce_unbind* %cu to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %1 = getelementptr inbounds %struct.ce_unbind, %struct.ce_unbind* %cu, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !15
  store i64 0, i64* %2, align 8, !annotation !15
  %ce = getelementptr inbounds %struct.ce_unbind, %struct.ce_unbind* %cu, i64 0, i32 0
  store %struct.clock_event_device* %ced, %struct.clock_event_device** %ce, align 8
  %res = getelementptr inbounds %struct.ce_unbind, %struct.ce_unbind* %cu, i64 0, i32 1
  store i32 -19, i32* %res, align 8
  %call = call i32 @smp_call_function_single(i32 noundef %cpu, void (i8*)* noundef nonnull @__clockevents_unbind, i8* noundef nonnull %0, i32 noundef 1) #15
  %3 = load i32, i32* %res, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clockevents_register_device(%struct.clock_event_device* noundef %dev) local_unnamed_addr #0 {
entry:
  call fastcc void @clockevent_set_state(%struct.clock_event_device* noundef %dev, i32 noundef 0) #13
  %cpumask = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 25
  %0 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 16
  %tobool.not = icmp eq %struct.cpumask* %0, null
  br i1 %tobool.not, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @cpumask_weight() #13
  %cmp = icmp ugt i32 %call, 1
  br i1 %cmp, label %if.then8, label %if.end, !prof !8

if.then8:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clockevents.c\22; .popsection; .long 14472b - 14470b; .short 451; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %call18 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call18, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call19 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %2) #13
  store %struct.cpumask* %call19, %struct.cpumask** %cpumask, align 16
  br label %if.end21

if.end21:                                         ; preds = %if.end, %entry
  %3 = phi %struct.cpumask* [ %call19, %if.end ], [ %0, %entry ]
  %cmp23 = icmp eq %struct.cpumask* %3, bitcast ([4 x i64]* @cpu_all_bits to %struct.cpumask*)
  br i1 %cmp23, label %do.end39, label %do.body56

do.end39:                                         ; preds = %if.end21
  %name = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 21
  %4 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clockevents.c\22; .popsection; .long 14472b - 14470b; .short 457; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !17
  store %struct.cpumask* @__cpu_possible_mask, %struct.cpumask** %cpumask, align 16
  br label %do.body56

do.body56:                                        ; preds = %if.end21, %do.end39
  %call60 = call fastcc i64 @__raw_spin_lock_irqsave() #13
  %list = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 26
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef nonnull @clockevent_devices) #13
  call void @tick_check_new_device(%struct.clock_event_device* noundef %dev) #15
  call fastcc void @clockevents_notify_released() #13
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call60) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #15
  ret i32 %call4.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #5 {
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

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #16, !srcloc !18
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  call fastcc void @do_raw_spin_lock_flags() #13
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_check_new_device(%struct.clock_event_device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clockevents_notify_released() unnamed_addr #0 {
entry:
  %call4 = call fastcc i32 @list_empty() #13
  %tobool.not5 = icmp eq i32 %call4, 0
  br i1 %tobool.not5, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %0 = load i8*, i8** bitcast (%struct.list_head* @clockevents_released to i8**), align 8
  %add.ptr = getelementptr i8, i8* %0, i64 -184
  %1 = bitcast i8* %add.ptr to %struct.clock_event_device*
  %2 = bitcast i8* %0 to %struct.list_head*
  call fastcc void @list_move(%struct.list_head* noundef %2, %struct.list_head* noundef nonnull @clockevent_devices) #13
  call void @tick_check_new_device(%struct.clock_event_device* noundef %1) #15
  %call = call fastcc i32 @list_empty() #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #13
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clockevents_config_and_register(%struct.clock_event_device* noundef %dev, i32 noundef %freq, i64 noundef %min_delta, i64 noundef %max_delta) local_unnamed_addr #0 {
entry:
  %min_delta_ticks = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 19
  store i64 %min_delta, i64* %min_delta_ticks, align 8
  %max_delta_ticks = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 20
  store i64 %max_delta, i64* %max_delta_ticks, align 16
  call fastcc void @clockevents_config(%struct.clock_event_device* noundef %dev, i32 noundef %freq) #13
  call void @clockevents_register_device(%struct.clock_event_device* noundef %dev) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clockevents_config(%struct.clock_event_device* noundef %dev, i32 noundef %freq) unnamed_addr #0 {
entry:
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 9
  %0 = load i32, i32* %features, align 4
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %max_delta_ticks = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 20
  %1 = load i64, i64* %max_delta_ticks, align 16
  %conv = zext i32 %freq to i64
  %div = udiv i64 %1, %conv
  %tobool3.not = icmp ult i64 %1, %conv
  %cmp = icmp ugt i64 %div, 600
  %cmp7 = icmp ugt i64 %1, 4294967295
  %or.cond = and i1 %cmp7, %cmp
  %2 = trunc i64 %div to i32
  %3 = select i1 %or.cond, i32 600, i32 %2
  %conv12 = select i1 %tobool3.not, i32 1, i32 %3
  call fastcc void @clockevents_calc_mult_shift(%struct.clock_event_device* noundef %dev, i32 noundef %freq, i32 noundef %conv12) #13
  %min_delta_ticks = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 19
  %4 = load i64, i64* %min_delta_ticks, align 8
  %call = call fastcc i64 @cev_delta2ns(i64 noundef %4, %struct.clock_event_device* noundef %dev, i1 noundef false) #13
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 5
  store i64 %call, i64* %min_delta_ns, align 8
  %5 = load i64, i64* %max_delta_ticks, align 16
  %call14 = call fastcc i64 @cev_delta2ns(i64 noundef %5, %struct.clock_event_device* noundef %dev, i1 noundef true) #13
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 4
  store i64 %call14, i64* %max_delta_ns, align 32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__clockevents_update_freq(%struct.clock_event_device* noundef %dev, i32 noundef %freq) local_unnamed_addr #0 {
entry:
  call fastcc void @clockevents_config(%struct.clock_event_device* noundef %dev, i32 noundef %freq) #13
  %call = call fastcc i1 @clockevent_state_oneshot(%struct.clock_event_device* noundef %dev) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 3
  %0 = load i64, i64* %next_event, align 8
  %call1 = call i32 @clockevents_program_event(%struct.clock_event_device* noundef %dev, i64 noundef %0, i1 noundef false) #13
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @clockevent_state_periodic(%struct.clock_event_device* noundef %dev) #13
  br i1 %call2, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @__clockevents_switch_state(%struct.clock_event_device* noundef %dev, i32 noundef 2) #13
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clockevent_state_periodic(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  %cmp = icmp eq i32 %0, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clockevents_update_freq(%struct.clock_event_device* noundef %dev, i32 noundef %freq) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #13
  %call4 = call i32 @tick_broadcast_update_freq(%struct.clock_event_device* noundef %dev, i32 noundef %freq) #15
  %cmp5 = icmp eq i32 %call4, -19
  br i1 %cmp5, label %if.then, label %do.body9

if.then:                                          ; preds = %entry
  %call7 = call i32 @__clockevents_update_freq(%struct.clock_event_device* noundef %dev, i32 noundef %freq) #13
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call7, %if.then ], [ %call4, %entry ]
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #13
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #13
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_broadcast_update_freq(%struct.clock_event_device* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #14, !srcloc !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @clockevents_handle_noop(%struct.clock_event_device* nocapture noundef %dev) local_unnamed_addr #5 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clockevents_exchange_device(%struct.clock_event_device* noundef %old, %struct.clock_event_device* noundef %new) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.clock_event_device* %old, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @clockevents_switch_state(%struct.clock_event_device* noundef nonnull %old, i32 noundef 0) #13
  %list = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %old, i64 0, i32 26
  call fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef nonnull @clockevents_released) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq %struct.clock_event_device* %new, null
  br i1 %tobool1.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  %call = call fastcc i1 @clockevent_state_detached(%struct.clock_event_device* noundef nonnull %new) #13
  br i1 %call, label %do.end11, label %do.body7, !prof !11

do.body7:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clockevents.c\22; .popsection; .long 14472b - 14470b; .short 582; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !22
  unreachable

do.end11:                                         ; preds = %do.body
  call void @clockevents_shutdown(%struct.clock_event_device* noundef nonnull %new) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #13
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clockevent_state_detached(%struct.clock_event_device* nocapture noundef readonly %dev) unnamed_addr #1 {
entry:
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %dev, i64 0, i32 8
  %0 = load i32, i32* %state_use_accessors, align 8
  %cmp = icmp eq i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clockevents_suspend() local_unnamed_addr #0 {
entry:
  %.pn17 = load i8*, i8** bitcast (%struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @clockevent_devices, i64 0, i32 1) to i8**), align 8
  %cmp.not20 = icmp eq i8* %.pn17, bitcast (%struct.list_head* @clockevent_devices to i8*)
  br i1 %cmp.not20, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn21 = phi i8* [ %.pn, %for.inc ], [ %.pn17, %entry ]
  %dev.022.in = getelementptr i8, i8* %.pn21, i64 -184
  %dev.022 = bitcast i8* %dev.022.in to %struct.clock_event_device*
  %suspend = getelementptr i8, i8* %.pn21, i64 -64
  %0 = bitcast i8* %suspend to void (%struct.clock_event_device*)**
  %1 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %0, align 8
  %tobool.not = icmp eq void (%struct.clock_event_device*)* %1, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call = call fastcc i1 @clockevent_state_detached(%struct.clock_event_device* noundef %dev.022) #13
  br i1 %call, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %1(%struct.clock_event_device* noundef %dev.022) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %prev = getelementptr inbounds i8, i8* %.pn21, i64 8
  %2 = bitcast i8* %prev to i8**
  %.pn = load i8*, i8** %2, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clockevent_devices to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clockevents_resume() local_unnamed_addr #0 {
entry:
  %.pn17 = load i8*, i8** bitcast (%struct.list_head* @clockevent_devices to i8**), align 8
  %cmp.not20 = icmp eq i8* %.pn17, bitcast (%struct.list_head* @clockevent_devices to i8*)
  br i1 %cmp.not20, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn21 = phi i8* [ %.pn, %for.inc ], [ %.pn17, %entry ]
  %dev.022.in = getelementptr i8, i8* %.pn21, i64 -184
  %dev.022 = bitcast i8* %dev.022.in to %struct.clock_event_device*
  %resume = getelementptr i8, i8* %.pn21, i64 -56
  %0 = bitcast i8* %resume to void (%struct.clock_event_device*)**
  %1 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %0, align 64
  %tobool.not = icmp eq void (%struct.clock_event_device*)* %1, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call = call fastcc i1 @clockevent_state_detached(%struct.clock_event_device* noundef %dev.022) #13
  br i1 %call, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %1(%struct.clock_event_device* noundef %dev.022) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %2 = bitcast i8* %.pn21 to i8**
  %.pn = load i8*, i8** %2, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clockevent_devices to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @clockevents_init_sysfs() #8 section ".init.text" {
entry:
  %call = call i32 @subsys_system_register(%struct.bus_type* noundef nonnull @clockevents_subsys, %struct.attribute_group** noundef null) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @tick_init_sysfs() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ %call, %entry ], [ %call1, %if.then ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, void (i8*)* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__clockevents_unbind(i8* nocapture noundef %arg) #0 {
entry:
  call fastcc void @__raw_spin_lock() #13
  %ce = bitcast i8* %arg to %struct.clock_event_device**
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call2 = call fastcc i32 @__clockevents_try_unbind(%struct.clock_event_device* noundef %0, i32 noundef %2) #13
  %cmp = icmp eq i32 %call2, -11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8
  %call4 = call fastcc i32 @clockevents_replace(%struct.clock_event_device* noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i32 [ %call4, %if.then ], [ %call2, %entry ]
  %res5 = getelementptr inbounds i8, i8* %arg, i64 8
  %4 = bitcast i8* %res5 to i32*
  store i32 %res.0, i32* %4, align 8
  call fastcc void @__raw_spin_unlock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  call fastcc void @do_raw_spin_lock() #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i32 @__clockevents_try_unbind(%struct.clock_event_device* noundef %ced, i32 noundef %cpu) unnamed_addr #7 {
entry:
  %call = call fastcc i1 @clockevent_state_detached(%struct.clock_event_device* noundef %ced) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced, i64 0, i32 26
  call fastcc void @list_del_init(%struct.list_head* noundef %list) #13
  br label %return

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %1 = inttoptr i64 %add to %struct.tick_device*
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %1, i64 0, i32 0
  %2 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %cmp = icmp eq %struct.clock_event_device* %2, %ced
  %cond = select i1 %cmp, i32 -11, i32 -16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clockevents_replace(%struct.clock_event_device* noundef %ced) unnamed_addr #0 {
entry:
  %.pn39 = load i8*, i8** bitcast (%struct.list_head* @clockevent_devices to i8**), align 8
  %cmp.not42 = icmp eq i8* %.pn39, bitcast (%struct.list_head* @clockevent_devices to i8*)
  br i1 %cmp.not42, label %if.end21, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn44 = phi i8* [ %.pn, %for.inc ], [ %.pn39, %entry ]
  %newdev.043 = phi %struct.clock_event_device* [ %newdev.1, %for.inc ], [ null, %entry ]
  %dev.045.in = getelementptr i8, i8* %.pn44, i64 -184
  %dev.045 = bitcast i8* %dev.045.in to %struct.clock_event_device*
  %cmp1 = icmp eq %struct.clock_event_device* %dev.045, %ced
  br i1 %cmp1, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call = call fastcc i1 @clockevent_state_detached(%struct.clock_event_device* noundef %dev.045) #13
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i1 @tick_check_replacement(%struct.clock_event_device* noundef %newdev.043, %struct.clock_event_device* noundef %dev.045) #15
  %spec.select = select i1 %call2, %struct.clock_event_device* %dev.045, %struct.clock_event_device* %newdev.043
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body, %lor.lhs.false
  %newdev.1 = phi %struct.clock_event_device* [ %newdev.043, %for.body ], [ %newdev.043, %lor.lhs.false ], [ %spec.select, %if.end ]
  %0 = bitcast i8* %.pn44 to i8**
  %.pn = load i8*, i8** %0, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clockevent_devices to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool18.not = icmp eq %struct.clock_event_device* %newdev.1, null
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %for.end
  call void @tick_install_replacement(%struct.clock_event_device* noundef nonnull %newdev.1) #15
  %list20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced, i64 0, i32 26
  call fastcc void @list_del_init(%struct.list_head* noundef %list20) #13
  br label %if.end21

if.end21:                                         ; preds = %entry, %if.then19, %for.end
  %cond = phi i32 [ 0, %if.then19 ], [ -16, %for.end ], [ -16, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @clockevents_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @clockevents_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @clockevents_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #14, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #13
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
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
declare dso_local i1 @tick_check_replacement(%struct.clock_event_device* noundef, %struct.clock_event_device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_install_replacement(%struct.clock_event_device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @clockevents_lock to i8*), i8 0) #14, !srcloc !26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @clockevents_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty() unnamed_addr #11 {
entry:
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @clockevents_released, i64 0, i32 0), align 8
  %cmp = icmp eq %struct.list_head* %0, @clockevents_released
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clockevents_calc_mult_shift(%struct.clock_event_device* noundef %ce, i32 noundef %freq, i32 noundef %maxsec) unnamed_addr #0 {
entry:
  %mult = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ce, i64 0, i32 6
  %shift = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ce, i64 0, i32 7
  call void @clocks_calc_mult_shift(i32* noundef %mult, i32* noundef %shift, i32 noundef 1000000000, i32 noundef %freq, i32 noundef %maxsec) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(i32* noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #14, !srcloc !27
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #14, !srcloc !28
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #13
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(%struct.bus_type* noundef, %struct.attribute_group** noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @tick_init_sysfs() unnamed_addr #8 section ".init.text" {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end7, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %if.end7 ]
  %call = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.device* @tick_percpu_dev to i64)
  %2 = inttoptr i64 %add to %struct.device*
  %id = getelementptr inbounds %struct.device, %struct.device* %2, i64 0, i32 28
  store i32 %call, i32* %id, align 4
  %bus = getelementptr inbounds %struct.device, %struct.device* %2, i64 0, i32 5
  store %struct.bus_type* @clockevents_subsys, %struct.bus_type** %bus, align 8
  %call2 = call i32 @device_register(%struct.device* noundef %2) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup13

if.end:                                           ; preds = %for.body
  %call3 = call i32 @device_create_file(%struct.device* noundef %2, %struct.device_attribute* noundef nonnull @dev_attr_current_device) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %cleanup13

if.end7:                                          ; preds = %if.end
  %call6 = call i32 @device_create_file(%struct.device* noundef %2, %struct.device_attribute* noundef nonnull @dev_attr_unbind_device) #15
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %for.cond, label %cleanup13

for.end:                                          ; preds = %for.cond
  %call12 = call fastcc i32 @tick_broadcast_init_sysfs() #17
  br label %cleanup13

cleanup13:                                        ; preds = %for.body, %if.end, %if.end7, %for.end
  %retval.2 = phi i32 [ %call12, %for.end ], [ %call2, %for.body ], [ %call3, %if.end ], [ %call6, %if.end7 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @tick_broadcast_init_sysfs() unnamed_addr #8 section ".init.text" {
entry:
  %call = call i32 @device_register(%struct.device* noundef nonnull @tick_bc_dev) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @device_create_file(%struct.device* noundef nonnull @tick_bc_dev, %struct.device_attribute* noundef nonnull @dev_attr_current_device) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ %call, %entry ], [ %call1, %if.then ]
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @current_device_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  call fastcc void @__raw_spin_lock_irq() #13
  %call = call fastcc %struct.tick_device* @tick_get_tick_dev(%struct.device* noundef %dev) #13
  %tobool.not = icmp eq %struct.tick_device* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %evtdev = getelementptr inbounds %struct.tick_device, %struct.tick_device* %call, i64 0, i32 0
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evtdev, align 8
  %tobool1.not = icmp eq %struct.clock_event_device* %0, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %name = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i64 0, i32 21
  %1 = load i8*, i8** %name, align 8
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %1) #15
  %conv = sext i32 %call3 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %count.0 = phi i64 [ %conv, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call fastcc void @__raw_spin_unlock_irq() #13
  ret i64 %count.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !30
  call fastcc void @do_raw_spin_lock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tick_device* @tick_get_tick_dev(%struct.device* noundef readonly %dev) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.device* %dev, @tick_bc_dev
  br i1 %cmp, label %cond.true, label %do.body

cond.true:                                        ; preds = %entry
  %call = call %struct.tick_device* @tick_get_broadcast_device() #15
  br label %cond.end

do.body:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.tick_device* @tick_cpu_device to i64)
  %2 = inttoptr i64 %add to %struct.tick_device*
  br label %cond.end

cond.end:                                         ; preds = %do.body, %cond.true
  %cond = phi %struct.tick_device* [ %call, %cond.true ], [ %2, %do.body ]
  ret %struct.tick_device* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #13
  call fastcc void @arch_local_irq_enable() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tick_device* @tick_get_broadcast_device() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #14, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @unbind_device_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %name = alloca [32 x i8], align 1
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !15
  %call = call i64 @sysfs_get_uname(i8* noundef %buf, i8* noundef nonnull %0, i64 noundef %count) #15
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @clockevents_mutex) #15
  call fastcc void @__raw_spin_lock_irq() #13
  %.pn44 = load i8*, i8** bitcast (%struct.list_head* @clockevent_devices to i8**), align 8
  %cmp1.not45 = icmp eq i8* %.pn44, bitcast (%struct.list_head* @clockevent_devices to i8*)
  br i1 %cmp1.not45, label %if.end21.thread, label %for.body

if.end21.thread:                                  ; preds = %for.inc, %if.end
  call fastcc void @__raw_spin_unlock_irq() #13
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clockevents_mutex) #15
  br label %cleanup

for.body:                                         ; preds = %if.end, %for.inc
  %.pn46 = phi i8* [ %.pn, %for.inc ], [ %.pn44, %if.end ]
  %name2 = getelementptr i8, i8* %.pn46, i64 -32
  %1 = bitcast i8* %name2 to i8**
  %2 = load i8*, i8** %1, align 8
  %call4 = call i32 @strcmp(i8* noundef %2, i8* noundef nonnull %0) #15
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn46 to i8**
  %.pn = load i8*, i8** %3, align 8
  %cmp1.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clockevent_devices to i8*)
  br i1 %cmp1.not, label %if.end21.thread, label %for.body

for.end:                                          ; preds = %for.body
  %ce.0.in.le = getelementptr i8, i8* %.pn46, i64 -184
  %ce.0.le = bitcast i8* %ce.0.in.le to %struct.clock_event_device*
  %id = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 28
  %4 = load i32, i32* %id, align 4
  %call6 = call fastcc i32 @__clockevents_try_unbind(%struct.clock_event_device* noundef %ce.0.le, i32 noundef %4) #13
  call fastcc void @__raw_spin_unlock_irq() #13
  %cmp15 = icmp eq i32 %call6, -11
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %for.end
  %5 = load i32, i32* %id, align 4
  %call19 = call fastcc i32 @clockevents_unbind(%struct.clock_event_device* noundef %ce.0.le, i32 noundef %5) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %for.end
  %ret.1.in = phi i32 [ %call19, %if.then17 ], [ %call6, %for.end ]
  %ret.1 = sext i32 %ret.1.in to i64
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clockevents_mutex) #15
  %tobool22.not = icmp eq i32 %ret.1.in, 0
  %spec.select = select i1 %tobool22.not, i64 %count, i64 %ret.1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end21.thread, %entry
  %retval.0 = phi i64 [ %call, %entry ], [ -19, %if.end21.thread ], [ %spec.select, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sysfs_get_uname(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readonly }
attributes #17 = { cold nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152871880}
!10 = !{i64 2152876487}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152874789}
!13 = !{i64 2152878242}
!14 = !{i64 2152880824}
!15 = !{!"auto-init"}
!16 = !{i64 2152895245}
!17 = !{i64 2152898606}
!18 = !{i64 2149005167, i64 2149005214, i64 2149005220, i64 2149005257, i64 2149005275, i64 2149006202, i64 2149006250, i64 2149006298, i64 2149006361, i64 2149006410, i64 2149005353, i64 2149005378, i64 2149005404, i64 2149005410, i64 2149005447, i64 2149005453, i64 2149005503, i64 2149005549, i64 2149005582}
!19 = !{i64 2149466932}
!20 = !{i64 2149492775}
!21 = !{i64 2149249386, i64 2149249433, i64 2149249439, i64 2149249476, i64 2149249494, i64 2149250805, i64 2149250853, i64 2149250901, i64 2149250964, i64 2149251013, i64 2149249572, i64 2149249597, i64 2149249623, i64 2149249629, i64 2149250471, i64 2149250511, i64 2149250529, i64 2149250561, i64 2149250589, i64 2149250643, i64 2149250663, i64 2149250760, i64 2149249652, i64 2149249666, i64 2149249672, i64 2149249722, i64 2149249768, i64 2149249801}
!22 = !{i64 2152901737}
!23 = !{i64 2149481933}
!24 = !{i64 2149489214}
!25 = !{i64 2147925071, i64 2147925104, i64 2147925157, i64 2147925216, i64 2147925250, i64 2147925305, i64 2147925334, i64 2147925354}
!26 = !{i64 2149285505}
!27 = !{i64 2149243373, i64 2149243420, i64 2149243426, i64 2149243463, i64 2149243481, i64 2149244792, i64 2149244840, i64 2149244888, i64 2149244951, i64 2149245000, i64 2149243559, i64 2149243584, i64 2149243610, i64 2149243616, i64 2149244458, i64 2149244498, i64 2149244516, i64 2149244548, i64 2149244576, i64 2149244630, i64 2149244650, i64 2149244747, i64 2149243639, i64 2149243653, i64 2149243659, i64 2149243709, i64 2149243755, i64 2149243788}
!28 = !{i64 2149245552, i64 2149245599, i64 2149245605, i64 2149245642, i64 2149245660, i64 2149246603, i64 2149246651, i64 2149246699, i64 2149246762, i64 2149246811, i64 2149245738, i64 2149245763, i64 2149245789, i64 2149245795, i64 2149245832, i64 2149245838, i64 2149245888, i64 2149245934, i64 2149245967}
!29 = !{i64 2149233609, i64 2149233656, i64 2149233662, i64 2149233699, i64 2149233717, i64 2149239119, i64 2149239167, i64 2149239215, i64 2149239278, i64 2149239327, i64 2149233795, i64 2149233820, i64 2149233846, i64 2149233852, i64 2149238785, i64 2149238825, i64 2149238843, i64 2149238875, i64 2149238903, i64 2149238957, i64 2149238977, i64 2149239074, i64 2149233875, i64 2149233889, i64 2149233895, i64 2149233945, i64 2149233991, i64 2149234024}
!30 = !{i64 2149471225}
!31 = !{i64 2149496078}
!32 = !{i64 2149224153, i64 2149224200, i64 2149224206, i64 2149224243, i64 2149224261, i64 2149225601, i64 2149225649, i64 2149225697, i64 2149225760, i64 2149225809, i64 2149224339, i64 2149224364, i64 2149224390, i64 2149224396, i64 2149225267, i64 2149225307, i64 2149225325, i64 2149225357, i64 2149225385, i64 2149225439, i64 2149225459, i64 2149225556, i64 2149224419, i64 2149224433, i64 2149224439, i64 2149224489, i64 2149224535, i64 2149224568}
