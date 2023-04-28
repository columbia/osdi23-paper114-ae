; ModuleID = 'kernel/time/clocksource.c'
source_filename = "kernel/time/clocksource.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init\22, \22a\22\09\09"
module asm "__initcall__kmod_clocksource__253_1000_clocksource_done_booting5:\09\09\09"
module asm ".long\09clocksource_done_booting - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_clocksource__265_1401_init_clocksource_sysfs6:\09\09\09"
module asm ".long\09init_clocksource_sysfs - .\09"
module asm ".previous\09\09\09\09\09"

%struct.clocksource = type { i64 (%struct.clocksource*)*, i64, i32, i32, i64, i32, i32, i64, i8*, %struct.list_head, i32, i32, i32, i64, i32 (%struct.clocksource*)*, {}*, {}*, {}*, {}*, {}*, %struct.module* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }

@suspend_clocksource = internal unnamed_addr global %struct.clocksource* null, align 8
@suspend_start = internal unnamed_addr global i64 0, align 8
@clocksource_start_suspend_timing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [67 x i8] c"\014clocksource: Failed to enable the non-suspend-able clocksource.\0A\00", align 1
@clocksource_list = internal global %struct.list_head { %struct.list_head* @clocksource_list, %struct.list_head* @clocksource_list }, align 8
@__UNIQUE_ID___addressable_clocksource_done_booting254 = internal global i8* bitcast (i32 ()* @clocksource_done_booting to i8*), section ".discard.addressable", align 8
@__clocksource_update_freq_scale.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"timekeeping: Clocksource %s might overflow on 11%% adjustment\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"\016clocksource: %s: mask: 0x%llx max_cycles: 0x%llx, max_idle_ns: %lld ns\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"\014clocksource: clocksource %s registered with invalid VDSO mode %d. Disabling VDSO support.\0A\00", align 1
@clocksource_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @clocksource_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @clocksource_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@__UNIQUE_ID___addressable_init_clocksource_sysfs266 = internal global i8* bitcast (i32 ()* @init_clocksource_sysfs to i8*), section ".discard.addressable", align 8
@__setup_str_boot_override_clocksource = internal constant [13 x i8] c"clocksource=\00", section ".init.rodata", align 1
@__setup_boot_override_clocksource = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_boot_override_clocksource, i32 0, i32 0), i32 (i8*)* @boot_override_clocksource, i32 0 }, section ".init.setup", align 8
@__setup_str_boot_override_clock = internal constant [7 x i8] c"clock=\00", section ".init.rodata", align 1
@__setup_boot_override_clock = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__setup_str_boot_override_clock, i32 0, i32 0), i32 (i8*)* @boot_override_clock, i32 0 }, section ".init.setup", align 8
@curr_clocksource = internal unnamed_addr global %struct.clocksource* null, align 8
@finished_booting = internal unnamed_addr global i1 false, align 4
@override_name = internal global [32 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\016clocksource: Switched to clocksource %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"\014clocksource: Nonstop clocksource %s should not supply suspend/resume interfaces\0A\00", align 1
@clocksource_subsys = internal global %struct.bus_type { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i64)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8
@device_clocksource = internal global %struct.device { %struct.kobject zeroinitializer, %struct.device* null, %struct.device_private* null, i8* null, %struct.device_type* null, %struct.bus_type* @clocksource_subsys, %struct.device_driver* null, i8* null, i8* null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, %struct.dev_pm_domain* null, %struct.irq_domain* null, %struct.raw_spinlock zeroinitializer, %struct.list_head zeroinitializer, i64* null, i64 0, i64 0, %struct.bus_dma_region* null, %struct.device_dma_parameters* null, %struct.list_head zeroinitializer, %struct.dma_coherent_mem* null, %struct.io_tlb_mem* null, %struct.dev_archdata zeroinitializer, %struct.device_node* null, %struct.fwnode_handle* null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.class* null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @clocksource_groups, i32 0, i32 0), void (%struct.device*)* null, %struct.iommu_group* null, %struct.dev_iommu* null, i32 0, i8 0 }, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"clocksource\00", align 1
@clocksource_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @clocksource_group, %struct.attribute_group* null], align 8
@clocksource_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @clocksource_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@clocksource_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_current_clocksource, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_unbind_clocksource, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_available_clocksource, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_current_clocksource = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @current_clocksource_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @current_clocksource_store }, align 8
@dev_attr_unbind_clocksource = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @unbind_clocksource_store }, align 8
@dev_attr_available_clocksource = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @available_clocksource_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"current_clocksource\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"unbind_clocksource\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"available_clocksource\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"pmtmr\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"\014clocksource: clock=pmtmr is deprecated - use clocksource=acpi_pm\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"acpi_pm\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"\014clocksource: clock= boot option is deprecated - use clocksource=xyz\0A\00", align 1
@llvm.compiler.used = appending global [4 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_clocksource_done_booting254 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_clocksource_sysfs266 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_boot_override_clock to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_boot_override_clocksource to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define dso_local void @clocks_calc_mult_shift(i32* nocapture noundef writeonly %mult, i32* nocapture noundef writeonly %shift, i32 noundef %from, i32 noundef %to, i32 noundef %maxsec) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %maxsec to i64
  %conv1 = zext i32 %from to i64
  %mul = mul nuw i64 %conv, %conv1
  %tobool.not35 = icmp ult i64 %mul, 4294967296
  br i1 %tobool.not35, label %for.cond.preheader, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %shr = lshr i64 %mul, 32
  br label %while.body

for.cond.preheader.loopexit:                      ; preds = %while.body
  %phi.cast = zext i32 %dec to i64
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.loopexit, %entry
  %sftacc.0.lcssa = phi i64 [ 32, %entry ], [ %phi.cast, %for.cond.preheader.loopexit ]
  %conv4 = zext i32 %to to i64
  %div = lshr i32 %from, 1
  %conv5 = zext i32 %div to i64
  br label %for.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %tmp.037 = phi i64 [ %shr2, %while.body ], [ %shr, %while.body.preheader ]
  %sftacc.036 = phi i32 [ %dec, %while.body ], [ 32, %while.body.preheader ]
  %shr2 = lshr i64 %tmp.037, 1
  %dec = add nsw i32 %sftacc.036, -1
  %tobool.not = icmp ult i64 %tmp.037, 2
  br i1 %tobool.not, label %for.cond.preheader.loopexit, label %while.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 32, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %shl = shl i64 %conv4, %indvars.iv
  %add = add i64 %shl, %conv5
  %div9 = udiv i64 %add, %conv1
  %shr12 = lshr i64 %div9, %sftacc.0.lcssa
  %cmp13 = icmp eq i64 %shr12, 0
  br i1 %cmp13, label %for.end.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.end.split.loop.exit:                          ; preds = %for.body
  %0 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.split.loop.exit
  %sft.0.lcssa = phi i32 [ %0, %for.end.split.loop.exit ], [ 0, %for.inc ]
  %conv16 = trunc i64 %div9 to i32
  store i32 %conv16, i32* %mult, align 4
  store i32 %sft.0.lcssa, i32* %shift, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @clocksource_mark_unstable(%struct.clocksource* nocapture noundef %cs) local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clocksource_start_suspend_timing(%struct.clocksource* nocapture noundef readnone %cs, i64 noundef %start_cycles) local_unnamed_addr #3 {
entry:
  %0 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %tobool.not = icmp eq %struct.clocksource* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @clocksource_is_suspend(%struct.clocksource* noundef %cs) #13
  br i1 %call, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i64 %start_cycles, i64* @suspend_start, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %enable = getelementptr inbounds %struct.clocksource, %struct.clocksource* %0, i64 0, i32 14
  %1 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %enable, align 8
  %tobool3.not = icmp eq i32 (%struct.clocksource*)* %1, null
  br i1 %tobool3.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end2
  %call5 = call i32 %1(%struct.clocksource* noundef nonnull %0) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end24_crit_edge, label %if.then7

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  br label %if.end24

if.then7:                                         ; preds = %land.lhs.true
  %.b27 = load i1, i1* @clocksource_start_suspend_timing.__already_done, align 1
  br i1 %.b27, label %return, label %if.then13, !prof !7

if.then13:                                        ; preds = %if.then7
  store i1 true, i1* @clocksource_start_suspend_timing.__already_done, align 1
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0)) #15
  br label %return

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end2
  %2 = phi %struct.clocksource* [ %.pre, %land.lhs.true.if.end24_crit_edge ], [ %0, %if.end2 ]
  %read = getelementptr inbounds %struct.clocksource, %struct.clocksource* %2, i64 0, i32 0
  %3 = load i64 (%struct.clocksource*)*, i64 (%struct.clocksource*)** %read, align 8
  %call25 = call i64 %3(%struct.clocksource* noundef %2) #14
  store i64 %call25, i64* @suspend_start, align 8
  br label %return

return:                                           ; preds = %if.then7, %if.then13, %entry, %if.end24, %if.then1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @clocksource_is_suspend(%struct.clocksource* nocapture noundef readnone %cs) unnamed_addr #4 {
entry:
  %0 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %cmp = icmp eq %struct.clocksource* %0, %cs
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @clocksource_stop_suspend_timing(%struct.clocksource* nocapture noundef readnone %cs, i64 noundef %cycle_now) local_unnamed_addr #3 {
entry:
  %0 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %tobool.not = icmp eq %struct.clocksource* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @clocksource_is_suspend(%struct.clocksource* noundef %cs) #13
  br i1 %call, label %if.end3, label %if.else

if.else:                                          ; preds = %if.end
  %read = getelementptr inbounds %struct.clocksource, %struct.clocksource* %0, i64 0, i32 0
  %1 = load i64 (%struct.clocksource*)*, i64 (%struct.clocksource*)** %read, align 8
  %call2 = call i64 %1(%struct.clocksource* noundef nonnull %0) #14
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.else
  %now.0 = phi i64 [ %call2, %if.else ], [ %cycle_now, %if.end ]
  %2 = load i64, i64* @suspend_start, align 8
  %cmp = icmp ugt i64 %now.0, %2
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end3
  %3 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %mask = getelementptr inbounds %struct.clocksource, %struct.clocksource* %3, i64 0, i32 1
  %4 = load i64, i64* %mask, align 8
  %call5 = call fastcc i64 @clocksource_delta(i64 noundef %now.0, i64 noundef %2, i64 noundef %4) #13
  %mult = getelementptr inbounds %struct.clocksource, %struct.clocksource* %3, i64 0, i32 2
  %5 = load i32, i32* %mult, align 8
  %shift = getelementptr inbounds %struct.clocksource, %struct.clocksource* %3, i64 0, i32 3
  %6 = load i32, i32* %shift, align 4
  %call6 = call fastcc i64 @mul_u64_u32_shr(i64 noundef %call5, i32 noundef %5, i32 noundef %6) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end3
  %nsec.0 = phi i64 [ %call6, %if.then4 ], [ 0, %if.end3 ]
  %call8 = call fastcc i1 @clocksource_is_suspend(%struct.clocksource* noundef %cs) #13
  br i1 %call8, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %7 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %disable = getelementptr inbounds %struct.clocksource, %struct.clocksource* %7, i64 0, i32 15
  %disable9 = bitcast {}** %disable to void (%struct.clocksource*)**
  %8 = load void (%struct.clocksource*)*, void (%struct.clocksource*)** %disable9, align 8
  %tobool10.not = icmp eq void (%struct.clocksource*)* %8, null
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  call void %8(%struct.clocksource* noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true, %if.then11, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %nsec.0, %if.then11 ], [ %nsec.0, %land.lhs.true ], [ %nsec.0, %if.end7 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clocksource_delta(i64 noundef %now, i64 noundef %last, i64 noundef %mask) unnamed_addr #2 {
entry:
  %sub = sub i64 %now, %last
  %and = and i64 %sub, %mask
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @mul_u64_u32_shr(i64 noundef %a, i32 noundef %mul, i32 noundef %shift) unnamed_addr #2 {
entry:
  %conv = zext i64 %a to i128
  %conv1 = zext i32 %mul to i128
  %mul2 = mul nuw nsw i128 %conv1, %conv
  %sh_prom = zext i32 %shift to i128
  %shr = lshr i128 %mul2, %sh_prom
  %conv3 = trunc i128 %shr to i64
  ret i64 %conv3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clocksource_suspend() local_unnamed_addr #3 {
entry:
  %.pn18 = load i8*, i8** bitcast (%struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @clocksource_list, i64 0, i32 1) to i8**), align 8
  %cmp.not21 = icmp eq i8* %.pn18, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not21, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn22 = phi i8* [ %.pn, %for.inc ], [ %.pn18, %entry ]
  %suspend = getelementptr i8, i8* %.pn22, i64 56
  %suspend1 = bitcast i8* %suspend to void (%struct.clocksource*)**
  %0 = load void (%struct.clocksource*)*, void (%struct.clocksource*)** %suspend1, align 8
  %tobool.not = icmp eq void (%struct.clocksource*)* %0, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %cs.023.in = getelementptr i8, i8* %.pn22, i64 -56
  %cs.023 = bitcast i8* %cs.023.in to %struct.clocksource*
  call void %0(%struct.clocksource* noundef %cs.023) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %prev = getelementptr inbounds i8, i8* %.pn22, i64 8
  %1 = bitcast i8* %prev to i8**
  %.pn = load i8*, i8** %1, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clocksource_resume() local_unnamed_addr #3 {
entry:
  %.pn18 = load i8*, i8** bitcast (%struct.list_head* @clocksource_list to i8**), align 8
  %cmp.not21 = icmp eq i8* %.pn18, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not21, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn22 = phi i8* [ %.pn, %for.inc ], [ %.pn18, %entry ]
  %resume = getelementptr i8, i8* %.pn22, i64 64
  %resume1 = bitcast i8* %resume to void (%struct.clocksource*)**
  %0 = load void (%struct.clocksource*)*, void (%struct.clocksource*)** %resume1, align 8
  %tobool.not = icmp eq void (%struct.clocksource*)* %0, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %cs.023.in = getelementptr i8, i8* %.pn22, i64 -56
  %cs.023 = bitcast i8* %cs.023.in to %struct.clocksource*
  call void %0(%struct.clocksource* noundef %cs.023) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %1 = bitcast i8* %.pn22 to i8**
  %.pn = load i8*, i8** %1, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @clocksource_touch_watchdog() local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i64 @clocks_calc_max_nsecs(i32 noundef %mult, i32 noundef %shift, i32 noundef %maxadj, i64 noundef %mask, i64* noundef writeonly %max_cyc) local_unnamed_addr #6 {
entry:
  %add = add i32 %maxadj, %mult
  %conv = zext i32 %add to i64
  %div = udiv i64 -1, %conv
  %cmp = icmp ult i64 %div, %mask
  %cond = select i1 %cmp, i64 %div, i64 %mask
  %tobool.not = icmp eq i64* %max_cyc, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 %cond, i64* %max_cyc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sub = sub i32 %mult, %maxadj
  %call = call fastcc i64 @clocksource_cyc2ns(i64 noundef %cond, i32 noundef %sub, i32 noundef %shift) #13
  %shr = lshr i64 %call, 1
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clocksource_cyc2ns(i64 noundef %cycles, i32 noundef %mult, i32 noundef %shift) unnamed_addr #2 {
entry:
  %conv = zext i32 %mult to i64
  %mul = mul i64 %conv, %cycles
  %sh_prom = zext i32 %shift to i64
  %shr = lshr i64 %mul, %sh_prom
  ret i64 %shr
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @clocksource_done_booting() #7 section ".init.text" {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %call = call %struct.clocksource* @clocksource_default_clock() #15
  store %struct.clocksource* %call, %struct.clocksource** @curr_clocksource, align 8
  store i1 true, i1* @finished_booting, align 4
  call fastcc void @clocksource_select() #13
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__clocksource_update_freq_scale(%struct.clocksource* noundef %cs, i32 noundef %scale, i32 noundef %freq) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i32 %freq, 0
  br i1 %tobool.not, label %if.else43, label %if.end24

if.end24:                                         ; preds = %entry
  %mask = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 1
  %0 = load i64, i64* %mask, align 8
  %conv = zext i32 %freq to i64
  %div = udiv i64 %0, %conv
  %conv5 = zext i32 %scale to i64
  %div9 = udiv i64 %div, %conv5
  %tobool11.not = icmp ult i64 %div, %conv5
  %cmp = icmp ugt i64 %div9, 600
  %cmp15 = icmp ugt i64 %0, 4294967295
  %or.cond212 = select i1 %cmp, i1 %cmp15, i1 false
  %mult = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 2
  %shift = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 3
  %div20 = udiv i32 1000000000, %scale
  %1 = trunc i64 %div9 to i32
  %2 = select i1 %or.cond212, i32 600, i32 %1
  %3 = select i1 %tobool11.not, i32 1, i32 %2
  %conv23 = mul i32 %3, %scale
  call void @clocks_calc_mult_shift(i32* noundef %mult, i32* noundef %shift, i32 noundef %freq, i32 noundef %div20, i32 noundef %conv23) #13
  %tobool25.not = icmp eq i32 %scale, 0
  br i1 %tobool25.not, label %if.else43, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end24
  %uncertainty_margin = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 6
  %4 = load i32, i32* %uncertainty_margin, align 4
  %tobool29.not = icmp eq i32 %4, 0
  br i1 %tobool29.not, label %if.then30, label %if.else43

if.then30:                                        ; preds = %land.lhs.true28
  %mul31 = mul i32 %freq, %scale
  %5 = udiv i32 1000000000, %mul31
  %cmp38 = icmp ugt i32 %mul31, 10000
  %spec.store.select = select i1 %cmp38, i32 100000, i32 %5
  store i32 %spec.store.select, i32* %uncertainty_margin, align 4
  br label %if.end49

if.else43:                                        ; preds = %entry, %land.lhs.true28, %if.end24
  %uncertainty_margin44 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 6
  %6 = load i32, i32* %uncertainty_margin44, align 4
  %tobool45.not = icmp eq i32 %6, 0
  br i1 %tobool45.not, label %if.end49.thread, label %if.end49

if.end49.thread:                                  ; preds = %if.else43
  store i32 31250000, i32* %uncertainty_margin44, align 4
  br label %if.end63

if.end49:                                         ; preds = %if.then30, %if.else43
  %7 = phi i32 [ %spec.store.select, %if.then30 ], [ %6, %if.else43 ]
  %cmp52 = icmp ult i32 %7, 100000
  br i1 %cmp52, label %if.then62, label %if.end63, !prof !8

if.then62:                                        ; preds = %if.end49
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clocksource.c\22; .popsection; .long 14472b - 14470b; .short 1078; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !9
  br label %if.end63

if.end63:                                         ; preds = %if.end49.thread, %if.then62, %if.end49
  %call = call fastcc i32 @clocksource_max_adjustment(%struct.clocksource* noundef %cs) #13
  %maxadj = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 5
  store i32 %call, i32* %maxadj, align 8
  %mult87.phi.trans.insert = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 2
  br i1 %tobool.not, label %if.end63.while.end_crit_edge, label %land.rhs.lr.ph

if.end63.while.end_crit_edge:                     ; preds = %if.end63
  %.pre218 = load i32, i32* %mult87.phi.trans.insert, align 8
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end63
  %shift84 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 3
  %.pre = load i32, i32* %mult87.phi.trans.insert, align 8
  %8 = xor i32 %.pre, -1
  %cmp76220 = icmp ugt i32 %call, %8
  %cmp81221 = icmp ugt i32 %call, %.pre
  %or.cond213222 = or i1 %cmp76220, %cmp81221
  br i1 %or.cond213222, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs.lr.ph, %while.body
  %9 = phi i32 [ %shr, %while.body ], [ %.pre, %land.rhs.lr.ph ]
  %shr = lshr i32 %9, 1
  store i32 %shr, i32* %mult87.phi.trans.insert, align 8
  %10 = load i32, i32* %shift84, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* %shift84, align 4
  %call85 = call fastcc i32 @clocksource_max_adjustment(%struct.clocksource* noundef %cs) #13
  store i32 %call85, i32* %maxadj, align 8
  %11 = xor i32 %shr, -1
  %cmp76 = icmp ugt i32 %call85, %11
  %cmp81 = icmp ugt i32 %call85, %shr
  %or.cond213 = or i1 %cmp76, %cmp81
  br i1 %or.cond213, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs.lr.ph, %if.end63.while.end_crit_edge
  %12 = phi i32 [ %.pre218, %if.end63.while.end_crit_edge ], [ %.pre, %land.rhs.lr.ph ], [ %shr, %while.body ]
  %storemerge.lcssa = phi i32 [ %call, %if.end63.while.end_crit_edge ], [ %call, %land.rhs.lr.ph ], [ %call85, %while.body ]
  %13 = xor i32 %12, -1
  %cmp91 = icmp ugt i32 %storemerge.lcssa, %13
  %.b211 = load i1, i1* @__clocksource_update_freq_scale.__already_done, align 1
  %lnot101 = xor i1 %.b211, true
  %14 = select i1 %cmp91, i1 %lnot101, i1 false
  br i1 %14, label %if.then111, label %if.end137, !prof !8

if.then111:                                       ; preds = %while.end
  store i1 true, i1* @__clocksource_update_freq_scale.__already_done, align 1
  %name = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 8
  %15 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* noundef %15) #14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clocksource.c\22; .popsection; .long 14472b - 14470b; .short 1098; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !10
  br label %if.end137

if.end137:                                        ; preds = %if.then111, %while.end
  call fastcc void @clocksource_update_max_deferment(%struct.clocksource* noundef %cs) #13
  %name150 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 8
  %16 = load i8*, i8** %name150, align 8
  %mask151 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 1
  %17 = load i64, i64* %mask151, align 8
  %max_cycles = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 7
  %18 = load i64, i64* %max_cycles, align 8
  %max_idle_ns = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 4
  %19 = load i64, i64* %max_idle_ns, align 8
  %call152 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @clocksource_max_adjustment(%struct.clocksource* nocapture noundef readonly %cs) unnamed_addr #4 {
entry:
  %mult = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 2
  %0 = load i32, i32* %mult, align 8
  %conv = zext i32 %0 to i64
  %mul = mul nuw nsw i64 %conv, 11
  %div = udiv i64 %mul, 100
  %conv4 = trunc i64 %div to i32
  ret i32 %conv4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @clocksource_update_max_deferment(%struct.clocksource* noundef %cs) unnamed_addr #9 {
entry:
  %mult = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 2
  %0 = load i32, i32* %mult, align 8
  %shift = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 3
  %1 = load i32, i32* %shift, align 4
  %maxadj = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 5
  %2 = load i32, i32* %maxadj, align 8
  %mask = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 1
  %3 = load i64, i64* %mask, align 8
  %max_cycles = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 7
  %call = call i64 @clocks_calc_max_nsecs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64* noundef %max_cycles) #13
  %max_idle_ns = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 4
  store i64 %call, i64* %max_idle_ns, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__clocksource_register_scale(%struct.clocksource* noundef %cs, i32 noundef %scale, i32 noundef %freq) local_unnamed_addr #3 {
entry:
  %id = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 11
  %0 = load i32, i32* %id, align 4
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end17, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/clocksource.c\22; .popsection; .long 14472b - 14470b; .short 1124; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !11
  store i32 0, i32* %id, align 4
  br label %if.end17

if.end17:                                         ; preds = %entry, %if.then
  %vdso_clock_mode = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 12
  %1 = load i32, i32* %vdso_clock_mode, align 8
  %cmp21 = icmp ugt i32 %1, 2
  br i1 %cmp21, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end17
  %name = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 8
  %2 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i8* noundef %2, i32 noundef %1) #15
  store i32 0, i32* %vdso_clock_mode, align 8
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.end17
  call void @__clocksource_update_freq_scale(%struct.clocksource* noundef %cs, i32 noundef %scale, i32 noundef %freq) #13
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  call fastcc void @clocksource_enqueue(%struct.clocksource* noundef %cs) #13
  call fastcc void @clocksource_enqueue_watchdog(%struct.clocksource* noundef %cs) #13
  call fastcc void @clocksource_select() #13
  call fastcc void @__clocksource_suspend_select(%struct.clocksource* noundef %cs) #13
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @clocksource_enqueue(%struct.clocksource* noundef %cs) unnamed_addr #10 {
entry:
  %.pn22 = load i8*, i8** bitcast (%struct.list_head* @clocksource_list to i8**), align 8
  %cmp.not23 = icmp eq i8* %.pn22, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not23, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %rating3 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 10
  %0 = load i32, i32* %rating3, align 8
  %rating31 = getelementptr i8, i8* %.pn22, i64 16
  %1 = bitcast i8* %rating31 to i32*
  %2 = load i32, i32* %1, align 8
  %cmp432 = icmp slt i32 %2, %0
  br i1 %cmp432, label %for.end, label %if.end

for.body:                                         ; preds = %if.end
  %rating = getelementptr i8, i8* %.pn, i64 16
  %3 = bitcast i8* %rating to i32*
  %4 = load i32, i32* %3, align 8
  %cmp4 = icmp slt i32 %4, %0
  br i1 %cmp4, label %for.body.for.end.loopexit_crit_edge, label %if.end

if.end:                                           ; preds = %for.body.lr.ph, %for.body
  %.pn2533 = phi i8* [ %.pn, %for.body ], [ %.pn22, %for.body.lr.ph ]
  %5 = bitcast i8* %.pn2533 to i8**
  %.pn = load i8*, i8** %5, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not, label %for.end.loopexit.split.loop.exit27, label %for.body

for.end.loopexit.split.loop.exit27:               ; preds = %if.end
  %6 = bitcast i8* %.pn2533 to %struct.list_head*
  br label %for.end

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  %7 = bitcast i8* %.pn2533 to %struct.list_head*
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %for.body.for.end.loopexit_crit_edge, %for.end.loopexit.split.loop.exit27, %entry
  %entry1.0.lcssa = phi %struct.list_head* [ @clocksource_list, %entry ], [ %6, %for.end.loopexit.split.loop.exit27 ], [ %7, %for.body.for.end.loopexit_crit_edge ], [ @clocksource_list, %for.body.lr.ph ]
  %list13 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 9
  call fastcc void @list_add(%struct.list_head* noundef %list13, %struct.list_head* noundef %entry1.0.lcssa) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @clocksource_enqueue_watchdog(%struct.clocksource* nocapture noundef %cs) unnamed_addr #9 {
entry:
  %flags = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 13
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %or = or i64 %0, 32
  store i64 %or, i64* %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clocksource_select() unnamed_addr #3 {
entry:
  call fastcc void @__clocksource_select(i1 noundef false) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clocksource_suspend_select(%struct.clocksource* noundef %cs) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 13
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.end

if.end:                                           ; preds = %entry
  %suspend = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 16
  %suspend1 = bitcast {}** %suspend to void (%struct.clocksource*)**
  %1 = load void (%struct.clocksource*)*, void (%struct.clocksource*)** %suspend1, align 8
  %tobool2.not = icmp eq void (%struct.clocksource*)* %1, null
  br i1 %tobool2.not, label %lor.lhs.false, label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %resume = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 17
  %resume3 = bitcast {}** %resume to void (%struct.clocksource*)**
  %2 = load void (%struct.clocksource*)*, void (%struct.clocksource*)** %resume3, align 8
  %tobool4.not = icmp eq void (%struct.clocksource*)* %2, null
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %lor.lhs.false, %if.end
  %name = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 8
  %3 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i8* noundef %3) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %lor.lhs.false
  %4 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %tobool7.not = icmp eq %struct.clocksource* %4, null
  br i1 %tobool7.not, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end6
  %rating = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 10
  %5 = load i32, i32* %rating, align 8
  %rating9 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %4, i64 0, i32 10
  %6 = load i32, i32* %rating9, align 8
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false8, %if.end6
  store %struct.clocksource* %cs, %struct.clocksource** @suspend_clocksource, align 8
  br label %if.end11

if.end11:                                         ; preds = %entry, %if.then10, %lor.lhs.false8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clocksource_change_rating(%struct.clocksource* noundef %cs, i32 noundef %rating) local_unnamed_addr #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  call fastcc void @__clocksource_change_rating(%struct.clocksource* noundef %cs, i32 noundef %rating) #13
  call fastcc void @clocksource_select() #13
  call fastcc void @clocksource_suspend_select(i1 noundef false) #13
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__clocksource_change_rating(%struct.clocksource* noundef %cs, i32 noundef %rating) unnamed_addr #10 {
entry:
  %list = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 9
  call fastcc void @list_del(%struct.list_head* noundef %list) #13
  %rating1 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 10
  store i32 %rating, i32* %rating1, align 8
  call fastcc void @clocksource_enqueue(%struct.clocksource* noundef %cs) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clocksource_suspend_select(i1 noundef %fallback) unnamed_addr #3 {
entry:
  %0 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  br i1 %fallback, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.clocksource* null, %struct.clocksource** @suspend_clocksource, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.pn20 = load i8*, i8** bitcast (%struct.list_head* @clocksource_list to i8**), align 8
  %cmp.not23 = icmp eq i8* %.pn20, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not23, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn24 = phi i8* [ %.pn, %for.inc ], [ %.pn20, %if.end ]
  %cs.025.in = getelementptr i8, i8* %.pn24, i64 -56
  %cs.025 = bitcast i8* %cs.025.in to %struct.clocksource*
  %cmp2 = icmp eq %struct.clocksource* %0, %cs.025
  %or.cond = select i1 %fallback, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.inc, label %if.end4

if.end4:                                          ; preds = %for.body
  call fastcc void @__clocksource_suspend_select(%struct.clocksource* noundef %cs.025) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end4
  %1 = bitcast i8* %.pn24 to i8**
  %.pn = load i8*, i8** %1, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @clocksource_unregister(%struct.clocksource* noundef %cs) local_unnamed_addr #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %list = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 9
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @clocksource_unbind(%struct.clocksource* noundef %cs) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %call1, %if.then ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clocksource_unbind(%struct.clocksource* noundef %cs) unnamed_addr #3 {
entry:
  %0 = load %struct.clocksource*, %struct.clocksource** @curr_clocksource, align 8
  %cmp = icmp eq %struct.clocksource* %0, %cs
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %entry
  call fastcc void @clocksource_select_fallback() #13
  %1 = load %struct.clocksource*, %struct.clocksource** @curr_clocksource, align 8
  %cmp5 = icmp eq %struct.clocksource* %1, %cs
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then4, %entry
  %call9 = call fastcc i1 @clocksource_is_suspend(%struct.clocksource* noundef %cs) #13
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call fastcc void @clocksource_suspend_select(i1 noundef true) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %list = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i64 0, i32 9
  call fastcc void @list_del_init(%struct.list_head* noundef %list) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -16, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sysfs_get_uname(i8* noundef %buf, i8* noundef %dst, i64 noundef %cnt) local_unnamed_addr #3 {
entry:
  %0 = add i64 %cnt, -32
  %1 = icmp ult i64 %0, -31
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i64 %cnt, -1
  %arrayidx = getelementptr i8, i8* %buf, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1
  %cmp1 = icmp eq i8 %2, 10
  %spec.select = select i1 %cmp1, i64 %sub, i64 %cnt
  %cmp5.not = icmp eq i64 %spec.select, 0
  br i1 %cmp5.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %call = call i8* @memcpy(i8* noundef %dst, i8* noundef %buf, i64 noundef %spec.select) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %arrayidx9 = getelementptr i8, i8* %dst, i64 %spec.select
  store i8 0, i8* %arrayidx9, align 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i64 [ %cnt, %if.end8 ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_clocksource_sysfs() #7 section ".init.text" {
entry:
  %call = call i32 @subsys_system_register(%struct.bus_type* noundef nonnull @clocksource_subsys, %struct.attribute_group** noundef null) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @device_register(%struct.device* noundef nonnull @device_clocksource) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %error.0 = phi i32 [ %call, %entry ], [ %call1, %if.then ]
  ret i32 %error.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @boot_override_clocksource(i8* noundef %str) #7 section ".init.text" {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @strlcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @override_name, i64 0, i64 0), i8* noundef nonnull %str, i64 noundef 32) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @boot_override_clock(i8* noundef %str) #7 section ".init.text" {
entry:
  %call = call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #14
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.18, i64 0, i64 0)
  %.str = select i1 %tobool.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %str
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef %.) #15
  %call7 = call i32 @boot_override_clocksource(i8* noundef %.str) #17
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local %struct.clocksource* @clocksource_default_clock() local_unnamed_addr #5 section ".init.text"

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
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
define internal fastcc void @__clocksource_select(i1 noundef %skipcur) unnamed_addr #3 {
entry:
  %call4 = call fastcc %struct.clocksource* @clocksource_find_best(i1 noundef %skipcur) #13
  %tobool5.not = icmp eq %struct.clocksource* %call4, null
  br i1 %tobool5.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call6 = call i64 @strlen(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @override_name, i64 0, i64 0)) #14
  %tobool7.not = icmp eq i64 %call6, 0
  %.pn82 = load i8*, i8** bitcast (%struct.list_head* @clocksource_list to i8**), align 8
  %cmp.not85 = icmp eq i8* %.pn82, bitcast (%struct.list_head* @clocksource_list to i8*)
  %or.cond90 = select i1 %tobool7.not, i1 true, i1 %cmp.not85
  %.pre93 = load %struct.clocksource*, %struct.clocksource** @curr_clocksource, align 8
  br i1 %or.cond90, label %found, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %0 = phi %struct.clocksource* [ %4, %for.inc ], [ %.pre93, %if.end ]
  %1 = phi %struct.clocksource* [ %5, %for.inc ], [ %.pre93, %if.end ]
  %.pn86 = phi i8* [ %.pn, %for.inc ], [ %.pn82, %if.end ]
  %cs.0.in88 = getelementptr i8, i8* %.pn86, i64 -56
  %cs.089 = bitcast i8* %cs.0.in88 to %struct.clocksource*
  %cmp11 = icmp eq %struct.clocksource* %1, %cs.089
  %or.cond = select i1 %skipcur, i1 %cmp11, i1 false
  br i1 %or.cond, label %for.inc, label %if.end13

if.end13:                                         ; preds = %for.body
  %name = getelementptr i8, i8* %.pn86, i64 -8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8
  %call14 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @override_name, i64 0, i64 0)) #14
  %cmp15.not = icmp eq i32 %call14, 0
  %.pre = load %struct.clocksource*, %struct.clocksource** @curr_clocksource, align 8
  br i1 %cmp15.not, label %found.loopexit.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end13
  %4 = phi %struct.clocksource* [ %0, %for.body ], [ %.pre, %if.end13 ]
  %5 = phi %struct.clocksource* [ %1, %for.body ], [ %.pre, %if.end13 ]
  %6 = bitcast i8* %.pn86 to i8**
  %.pn = load i8*, i8** %6, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not, label %found, label %for.body

found.loopexit.split.loop.exit:                   ; preds = %if.end13
  %cs.089.le = bitcast i8* %cs.0.in88 to %struct.clocksource*
  br label %found

found:                                            ; preds = %for.inc, %found.loopexit.split.loop.exit, %if.end
  %7 = phi %struct.clocksource* [ %.pre93, %if.end ], [ %.pre, %found.loopexit.split.loop.exit ], [ %4, %for.inc ]
  %best.0 = phi %struct.clocksource* [ %call4, %if.end ], [ %cs.089.le, %found.loopexit.split.loop.exit ], [ %call4, %for.inc ]
  %cmp48.not = icmp eq %struct.clocksource* %7, %best.0
  br i1 %cmp48.not, label %cleanup, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %found
  %call50 = call i32 @timekeeping_notify(%struct.clocksource* noundef %best.0) #14
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end55, label %cleanup

do.end55:                                         ; preds = %land.lhs.true49
  %name57 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %best.0, i64 0, i32 8
  %8 = load i8*, i8** %name57, align 8
  %call58 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* noundef %8) #15
  store %struct.clocksource* %best.0, %struct.clocksource** @curr_clocksource, align 8
  br label %cleanup

cleanup:                                          ; preds = %found, %land.lhs.true49, %do.end55, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.clocksource* @clocksource_find_best(i1 noundef %skipcur) unnamed_addr #10 {
entry:
  %.b = load i1, i1* @finished_booting, align 4
  br i1 %.b, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @clocksource_list) #13
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %.pn3 = load i8*, i8** bitcast (%struct.list_head* @clocksource_list to i8**), align 8
  %cmp.not6 = icmp eq i8* %.pn3, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not6, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = load %struct.clocksource*, %struct.clocksource** @curr_clocksource, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn7 = phi i8* [ %.pn3, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %cs.0.in8 = getelementptr i8, i8* %.pn7, i64 -56
  %cs.09 = bitcast i8* %cs.0.in8 to %struct.clocksource*
  %cmp4 = icmp eq %struct.clocksource* %0, %cs.09
  %or.cond = select i1 %skipcur, i1 %cmp4, i1 false
  br i1 %or.cond, label %for.inc, label %cleanup.loopexit.split.loop.exit

for.inc:                                          ; preds = %for.body
  %1 = bitcast i8* %.pn7 to i8**
  %.pn = load i8*, i8** %1, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  %cs.09.le = bitcast i8* %cs.0.in8 to %struct.clocksource*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %cleanup.loopexit.split.loop.exit, %for.cond.preheader, %entry, %lor.lhs.false
  %retval.0 = phi %struct.clocksource* [ null, %lor.lhs.false ], [ null, %entry ], [ null, %for.cond.preheader ], [ %cs.09.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.inc ]
  ret %struct.clocksource* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timekeeping_notify(%struct.clocksource* noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #13
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clocksource_select_fallback() unnamed_addr #3 {
entry:
  call fastcc void @__clocksource_select(i1 noundef true) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #13
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(%struct.bus_type* noundef, %struct.attribute_group** noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(%struct.device* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @current_clocksource_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %0 = load %struct.clocksource*, %struct.clocksource** @curr_clocksource, align 8
  %name = getelementptr inbounds %struct.clocksource, %struct.clocksource* %0, i64 0, i32 8
  %1 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %1) #14
  %conv = sext i32 %call to i64
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @current_clocksource_store(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %call = call i64 @sysfs_get_uname(i8* noundef %buf, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @override_name, i64 0, i64 0), i64 noundef %count) #13
  %cmp = icmp sgt i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @clocksource_select() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @unbind_clocksource_store(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #3 {
entry:
  %name = alloca [32 x i8], align 1
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !12
  %call = call i64 @sysfs_get_uname(i8* noundef %buf, i8* noundef nonnull %0, i64 noundef %count) #13
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %.pn32 = load i8*, i8** bitcast (%struct.list_head* @clocksource_list to i8**), align 8
  %cmp1.not33 = icmp eq i8* %.pn32, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp1.not33, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.inc, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  br label %cleanup

for.body:                                         ; preds = %if.end, %for.inc
  %.pn34 = phi i8* [ %.pn, %for.inc ], [ %.pn32, %if.end ]
  %name2 = getelementptr i8, i8* %.pn34, i64 -8
  %1 = bitcast i8* %name2 to i8**
  %2 = load i8*, i8** %1, align 8
  %call4 = call i32 @strcmp(i8* noundef %2, i8* noundef nonnull %0) #14
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn34 to i8**
  %.pn = load i8*, i8** %3, align 8
  %cmp1.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp1.not, label %for.end.thread, label %for.body

for.end:                                          ; preds = %for.body
  %cs.0.in.le = getelementptr i8, i8* %.pn34, i64 -56
  %cs.0.le = bitcast i8* %cs.0.in.le to %struct.clocksource*
  %call7 = call fastcc i32 @clocksource_unbind(%struct.clocksource* noundef %cs.0.le) #13
  %conv = sext i32 %call7 to i64
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %tobool15.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool15.not, i64 %count, i64 %conv
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end.thread, %entry
  %retval.0 = phi i64 [ %call, %entry ], [ -19, %for.end.thread ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #16
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @available_clocksource_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %.pn47 = load i8*, i8** bitcast (%struct.list_head* @clocksource_list to i8**), align 8
  %cmp.not48 = icmp eq i8* %.pn47, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not48, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn50 = phi i8* [ %.pn, %for.body ], [ %.pn47, %entry ]
  %count.049 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %add.ptr2 = getelementptr i8, i8* %buf, i64 %count.049
  %sub = sub i64 4096, %count.049
  %cmp4 = icmp sgt i64 %sub, 0
  %cond = select i1 %cmp4, i64 %sub, i64 0
  %name = getelementptr i8, i8* %.pn50, i64 -8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr2, i64 noundef %cond, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1) #14
  %conv = sext i32 %call5 to i64
  %add = add i64 %count.049, %conv
  %2 = bitcast i8* %.pn50 to i8**
  %.pn = load i8*, i8** %2, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @clocksource_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @clocksource_mutex) #14
  %add.ptr13 = getelementptr i8, i8* %buf, i64 %count.0.lcssa
  %sub14 = sub i64 4096, %count.0.lcssa
  %cmp16 = icmp sgt i64 %sub14, 0
  %cond21 = select i1 %cmp16, i64 %sub14, i64 0
  %call22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr13, i64 noundef %cond21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #14
  %conv23 = sext i32 %call22 to i64
  %add24 = add i64 %count.0.lcssa, %conv23
  ret i64 %add24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { cold nobuiltin "no-builtins" }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153000397}
!10 = !{i64 2153003089}
!11 = !{i64 2153005834}
!12 = !{!"auto-init"}
