; ModuleID = 'lib/bitmap.c'
source_filename = "lib/bitmap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.region = type { i32, i32, i32, i32, i32 }
%struct.atomic64_t = type { i64 }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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

@.str = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @__bitmap_equal(i64* nocapture noundef readonly %bitmap1, i64* nocapture noundef readonly %bitmap2, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %cmp27.not = icmp ult i32 %bits, 64
  br i1 %cmp27.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i32 %bits, 6
  %wide.trip.count = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr i64, i64* %bitmap1, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr i64, i64* %bitmap2, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx2, align 8
  %cmp3.not = icmp eq i64 %0, %1
  br i1 %cmp3.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cast = zext i32 %div to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %k.0.lcssa = phi i64 [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  %rem = and i32 %bits, 63
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end13, label %if.then4

if.then4:                                         ; preds = %for.end
  %arrayidx6 = getelementptr i64, i64* %bitmap1, i64 %k.0.lcssa
  %2 = load i64, i64* %arrayidx6, align 8
  %arrayidx8 = getelementptr i64, i64* %bitmap2, i64 %k.0.lcssa
  %3 = load i64, i64* %arrayidx8, align 8
  %xor = xor i64 %3, %2
  %sub = sub i32 0, %bits
  %and = and i32 %sub, 63
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 -1, %sh_prom
  %and9 = and i64 %xor, %shr
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.then4, %for.end
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.then4, %if.end13
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.then4 ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @__bitmap_or_equal(i64* nocapture noundef readonly %bitmap1, i64* nocapture noundef readonly %bitmap2, i64* nocapture noundef readonly %bitmap3, i32 noundef %bits) local_unnamed_addr #2 {
entry:
  %cmp35.not = icmp ult i32 %bits, 64
  br i1 %cmp35.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i32 %bits, 6
  %wide.trip.count = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr i64, i64* %bitmap1, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr i64, i64* %bitmap2, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx2, align 8
  %or = or i64 %1, %0
  %arrayidx4 = getelementptr i64, i64* %bitmap3, i64 %indvars.iv
  %2 = load i64, i64* %arrayidx4, align 8
  %cmp5.not = icmp eq i64 %or, %2
  br i1 %cmp5.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cast = zext i32 %div to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %k.0.lcssa = phi i64 [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  %rem = and i32 %bits, 63
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %for.end
  %arrayidx9 = getelementptr i64, i64* %bitmap1, i64 %k.0.lcssa
  %3 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr i64, i64* %bitmap2, i64 %k.0.lcssa
  %4 = load i64, i64* %arrayidx11, align 8
  %or12 = or i64 %4, %3
  %arrayidx14 = getelementptr i64, i64* %bitmap3, i64 %k.0.lcssa
  %5 = load i64, i64* %arrayidx14, align 8
  %xor = xor i64 %or12, %5
  %sub = sub i32 0, %bits
  %and = and i32 %sub, 63
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 -1, %sh_prom
  %and15 = and i64 %xor, %shr
  %cmp16 = icmp eq i64 %and15, 0
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end, %if.end7
  %retval.0 = phi i1 [ %cmp16, %if.end7 ], [ true, %for.end ], [ false, %for.body ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @__bitmap_complement(i64* nocapture noundef writeonly %dst, i64* nocapture noundef readonly %src, i32 noundef %bits) local_unnamed_addr #3 {
entry:
  %conv = zext i32 %bits to i64
  %sub = add nuw nsw i64 %conv, 63
  %div = lshr i64 %sub, 6
  %cmp10.not = icmp eq i32 %bits, 0
  br i1 %cmp10.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr i64, i64* %src, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %neg = xor i64 %0, -1
  %arrayidx4 = getelementptr i64, i64* %dst, i64 %indvars.iv
  store i64 %neg, i64* %arrayidx4, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %div
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__bitmap_shift_right(i64* noundef %dst, i64* nocapture noundef readonly %src, i32 noundef %shift, i32 noundef %nbits) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %div = lshr i64 %sub, 6
  %conv1 = trunc i64 %div to i32
  %div2 = lshr i32 %shift, 6
  %rem3 = and i32 %shift, 63
  %sub4 = sub i32 0, %nbits
  %and = and i32 %sub4, 63
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 -1, %sh_prom
  %cmp82 = icmp ult i32 %div2, %conv1
  br i1 %cmp82, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp ne i32 %rem3, 0
  %sub15 = add nuw nsw i64 %div, 4294967295
  %sub20 = sub nuw nsw i32 64, %rem3
  %sh_prom21 = zext i32 %sub20 to i64
  %sh_prom33 = zext i32 %rem3 to i64
  %0 = lshr i32 %shift, 6
  %1 = zext i32 %0 to i64
  %2 = and i64 %sub15, 4294967295
  %3 = sub nsw i32 %conv1, %div2
  %wide.trip.count = zext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end22
  %indvars.iv87 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next88, %if.end22 ]
  %indvars.iv = phi i64 [ %1, %for.body.lr.ph ], [ %.pre, %if.end22 ]
  %.pre = add nuw nsw i64 %indvars.iv, 1
  %cmp9.not = icmp ult i64 %.pre, %div
  %or.cond = select i1 %tobool.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.else, label %if.end22

if.else:                                          ; preds = %for.body
  %arrayidx = getelementptr i64, i64* %src, i64 %.pre
  %4 = load i64, i64* %arrayidx, align 8
  %cmp16 = icmp eq i64 %.pre, %2
  %and19 = select i1 %cmp16, i64 %shr, i64 -1
  %spec.select = and i64 %4, %and19
  %shl = shl i64 %spec.select, %sh_prom21
  br label %if.end22

if.end22:                                         ; preds = %for.body, %if.else
  %upper.1 = phi i64 [ %shl, %if.else ], [ 0, %for.body ]
  %arrayidx25 = getelementptr i64, i64* %src, i64 %indvars.iv
  %5 = load i64, i64* %arrayidx25, align 8
  %cmp28 = icmp eq i64 %indvars.iv, %2
  %and31 = select i1 %cmp28, i64 %shr, i64 -1
  %spec.select81 = and i64 %5, %and31
  %shr34 = lshr i64 %spec.select81, %sh_prom33
  %or = or i64 %shr34, %upper.1
  %arrayidx36 = getelementptr i64, i64* %dst, i64 %indvars.iv87
  store i64 %or, i64* %arrayidx36, align 8
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end22, %entry
  %tobool37.not = icmp ult i32 %shift, 64
  br i1 %tobool37.not, label %if.end43, label %if.then38

if.then38:                                        ; preds = %for.end
  %sub39 = sub nsw i32 %conv1, %div2
  %idxprom40 = zext i32 %sub39 to i64
  %arrayidx41 = getelementptr i64, i64* %dst, i64 %idxprom40
  %6 = bitcast i64* %arrayidx41 to i8*
  %7 = shl nuw nsw i32 %div2, 3
  %mul = zext i32 %7 to i64
  %call = call i8* @memset(i8* noundef %6, i32 noundef 0, i64 noundef %mul) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__bitmap_shift_left(i64* noundef %dst, i64* nocapture noundef readonly %src, i32 noundef %shift, i32 noundef %nbits) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %div = lshr i64 %sub, 6
  %conv1 = trunc i64 %div to i32
  %div2 = lshr i32 %shift, 6
  %rem3 = and i32 %shift, 63
  %0 = xor i32 %div2, -1
  %sub5 = add nsw i32 %conv1, %0
  %cmp41 = icmp sgt i32 %sub5, -1
  br i1 %cmp41, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp ne i32 %rem3, 0
  %sub10 = sub nuw nsw i32 64, %rem3
  %sh_prom = zext i32 %sub10 to i64
  %sh_prom13 = zext i32 %rem3 to i64
  %1 = zext i32 %sub5 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ %1, %for.body.lr.ph ], [ %2, %if.end ]
  %cmp7 = icmp ne i64 %indvars.iv, 0
  %or.cond = select i1 %tobool, i1 %cmp7, i1 false
  %2 = add nsw i64 %indvars.iv, -1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr i64, i64* %src, i64 %2
  %3 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %3, %sh_prom
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %lower.0 = phi i64 [ %shr, %if.then ], [ 0, %for.body ]
  %arrayidx12 = getelementptr i64, i64* %src, i64 %indvars.iv
  %4 = load i64, i64* %arrayidx12, align 8
  %shl = shl i64 %4, %sh_prom13
  %or = or i64 %shl, %lower.0
  %5 = trunc i64 %indvars.iv to i32
  %add14 = add i32 %div2, %5
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr i64, i64* %dst, i64 %idxprom15
  store i64 %or, i64* %arrayidx16, align 8
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %tobool17.not = icmp ult i32 %shift, 64
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %for.end
  %6 = bitcast i64* %dst to i8*
  %7 = shl nuw nsw i32 %div2, 3
  %mul = zext i32 %7 to i64
  %call = call i8* @memset(i8* noundef %6, i32 noundef 0, i64 noundef %mul) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bitmap_cut(i64* noundef %dst, i64* noundef %src, i32 noundef %first, i32 noundef %cut, i32 noundef %nbits) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %div = lshr i64 %sub, 6
  %conv1 = trunc i64 %div to i32
  %rem = and i32 %first, 63
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %div2 = lshr i32 %first, 6
  %idxprom = zext i32 %div2 to i64
  %arrayidx = getelementptr i64, i64* %src, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %sub4 = sub nuw nsw i32 64, %rem
  %sh_prom = zext i32 %sub4 to i64
  %shr = lshr i64 -1, %sh_prom
  %and = and i64 %0, %shr
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %keep.0 = phi i64 [ %and, %if.then ], [ 0, %entry ]
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  %mul = shl nuw nsw i64 %div, 3
  %call = call i8* @memmove(i8* noundef %1, i8* noundef %2, i64 noundef %mul) #10
  %tobool6.not61 = icmp eq i32 %cut, 0
  %.pre = lshr i32 %first, 6
  br i1 %tobool6.not61, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %cmp57 = icmp ult i32 %.pre, %conv1
  %sub9 = add nuw nsw i64 %div, 4294967295
  %3 = lshr i32 %first, 6
  %4 = zext i32 %3 to i64
  %5 = and i64 %sub9, 4294967295
  %6 = add nuw nsw i32 %3, %conv1
  %7 = sub nsw i32 %6, %.pre
  %wide.trip.count = zext i32 %7 to i64
  %8 = xor i64 %4, -1
  %9 = add nsw i64 %div, %8
  %10 = add nuw nsw i64 %4, 1
  %scevgep = getelementptr i64, i64* %dst, i64 %10
  %scevgep66 = bitcast i64* %scevgep to i8*
  %scevgep67 = getelementptr i64, i64* %dst, i64 %4
  %scevgep6771 = bitcast i64* %scevgep67 to i8*
  %11 = sub nsw i64 %div, %4
  %min.iters.check = icmp ult i64 %11, 2
  %mul65 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %9, i64 8)
  %mul.result = extractvalue { i64, i1 } %mul65, 0
  %mul.overflow = extractvalue { i64, i1 } %mul65, 1
  %12 = getelementptr i8, i8* %scevgep66, i64 %mul.result
  %13 = icmp ult i8* %12, %scevgep66
  %14 = or i1 %13, %mul.overflow
  %mul68 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %9, i64 8)
  %mul.result69 = extractvalue { i64, i1 } %mul68, 0
  %mul.overflow70 = extractvalue { i64, i1 } %mul68, 1
  %15 = getelementptr i8, i8* %scevgep6771, i64 %mul.result69
  %16 = icmp ult i8* %15, %scevgep6771
  %17 = or i1 %16, %mul.overflow70
  %18 = or i1 %14, %17
  %n.vec = and i64 %11, -2
  %ind.end = add nsw i64 %n.vec, %4
  %cmp.n = icmp eq i64 %11, %n.vec
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end17, %middle.block, %while.body
  %tobool6.not = icmp eq i32 %dec62, 0
  br i1 %tobool6.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %dec62.in = phi i32 [ %cut, %while.body.lr.ph ], [ %dec62, %while.cond.loopexit ]
  %dec62 = add i32 %dec62.in, -1
  br i1 %cmp57, label %for.body.preheader, label %while.cond.loopexit

for.body.preheader:                               ; preds = %while.body
  %brmerge = select i1 %min.iters.check, i1 true, i1 %18
  br i1 %brmerge, label %for.body.preheader76, label %vector.body

vector.body:                                      ; preds = %for.body.preheader, %pred.load.continue74
  %index = phi i64 [ %index.next, %pred.load.continue74 ], [ 0, %for.body.preheader ]
  %offset.idx = add i64 %index, %4
  %induction72 = add i64 %offset.idx, 1
  %19 = icmp ult i64 %offset.idx, %5
  %20 = icmp ult i64 %induction72, %5
  br i1 %19, label %pred.load.if, label %pred.load.continue

pred.load.if:                                     ; preds = %vector.body
  %21 = add nuw nsw i64 %offset.idx, 1
  %22 = getelementptr i64, i64* %dst, i64 %21
  %23 = load i64, i64* %22, align 8
  br label %pred.load.continue

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %predphi = phi i64 [ %23, %pred.load.if ], [ 0, %vector.body ]
  br i1 %20, label %pred.load.if73, label %pred.load.continue74

pred.load.if73:                                   ; preds = %pred.load.continue
  %24 = add i64 %offset.idx, 2
  %25 = getelementptr i64, i64* %dst, i64 %24
  %26 = load i64, i64* %25, align 8
  br label %pred.load.continue74

pred.load.continue74:                             ; preds = %pred.load.if73, %pred.load.continue
  %predphi75 = phi i64 [ %26, %pred.load.if73 ], [ 0, %pred.load.continue ]
  %27 = getelementptr i64, i64* %dst, i64 %offset.idx
  %28 = getelementptr i64, i64* %dst, i64 %induction72
  %29 = load i64, i64* %27, align 8
  %30 = load i64, i64* %28, align 8
  %31 = call i64 @llvm.fshl.i64(i64 %predphi, i64 %29, i64 63)
  %32 = call i64 @llvm.fshl.i64(i64 %predphi75, i64 %30, i64 63)
  store i64 %31, i64* %27, align 8
  store i64 %32, i64* %28, align 8
  %index.next = add nuw i64 %index, 2
  %33 = icmp eq i64 %index.next, %n.vec
  br i1 %33, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %pred.load.continue74
  br i1 %cmp.n, label %while.cond.loopexit, label %for.body.preheader76

for.body.preheader76:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %4, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader76, %if.end17
  %indvars.iv = phi i64 [ %34, %if.end17 ], [ %indvars.iv.ph, %for.body.preheader76 ]
  %cmp10 = icmp ult i64 %indvars.iv, %5
  %34 = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp10, label %if.then12, label %if.end17

if.then12:                                        ; preds = %for.body
  %arrayidx15 = getelementptr i64, i64* %dst, i64 %34
  %35 = load i64, i64* %arrayidx15, align 8
  %and16 = and i64 %35, 1
  br label %if.end17

if.end17:                                         ; preds = %for.body, %if.then12
  %carry.0 = phi i64 [ %and16, %if.then12 ], [ 0, %for.body ]
  %arrayidx19 = getelementptr i64, i64* %dst, i64 %indvars.iv
  %36 = load i64, i64* %arrayidx19, align 8
  %or = call i64 @llvm.fshl.i64(i64 %carry.0, i64 %36, i64 63)
  store i64 %or, i64* %arrayidx19, align 8
  %exitcond.not = icmp eq i64 %34, %wide.trip.count
  br i1 %exitcond.not, label %while.cond.loopexit, label %for.body, !llvm.loop !9

while.end:                                        ; preds = %while.cond.loopexit, %if.end
  %sh_prom24 = zext i32 %rem to i64
  %shl25 = shl nsw i64 -1, %sh_prom24
  %idxprom27 = zext i32 %.pre to i64
  %arrayidx28 = getelementptr i64, i64* %dst, i64 %idxprom27
  %37 = load i64, i64* %arrayidx28, align 8
  %and29 = and i64 %37, %shl25
  %or33 = or i64 %and29, %keep.0
  store i64 %or33, i64* %arrayidx28, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @__bitmap_and(i64* nocapture noundef writeonly %dst, i64* nocapture noundef readonly %bitmap1, i64* nocapture noundef readonly %bitmap2, i32 noundef %bits) local_unnamed_addr #3 {
entry:
  %cmp33.not = icmp ult i32 %bits, 64
  br i1 %cmp33.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i32 %bits, 6
  %wide.trip.count = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %result.035 = phi i64 [ 0, %for.body.preheader ], [ %or, %for.body ]
  %arrayidx = getelementptr i64, i64* %bitmap1, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr i64, i64* %bitmap2, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx2, align 8
  %and = and i64 %1, %0
  %arrayidx4 = getelementptr i64, i64* %dst, i64 %indvars.iv
  store i64 %and, i64* %arrayidx4, align 8
  %or = or i64 %and, %result.035
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %phi.cast = zext i32 %div to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %k.0.lcssa = phi i64 [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  %result.0.lcssa = phi i64 [ 0, %entry ], [ %or, %for.end.loopexit ]
  %rem = and i32 %bits, 63
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %arrayidx6 = getelementptr i64, i64* %bitmap1, i64 %k.0.lcssa
  %2 = load i64, i64* %arrayidx6, align 8
  %arrayidx8 = getelementptr i64, i64* %bitmap2, i64 %k.0.lcssa
  %3 = load i64, i64* %arrayidx8, align 8
  %sub = sub i32 0, %bits
  %and10 = and i32 %sub, 63
  %sh_prom = zext i32 %and10 to i64
  %shr = lshr i64 -1, %sh_prom
  %and9 = and i64 %2, %shr
  %and11 = and i64 %and9, %3
  %arrayidx13 = getelementptr i64, i64* %dst, i64 %k.0.lcssa
  store i64 %and11, i64* %arrayidx13, align 8
  %or14 = or i64 %and11, %result.0.lcssa
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %result.1 = phi i64 [ %or14, %if.then ], [ %result.0.lcssa, %for.end ]
  %cmp15 = icmp ne i64 %result.1, 0
  %conv = zext i1 %cmp15 to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @__bitmap_or(i64* nocapture noundef writeonly %dst, i64* nocapture noundef readonly %bitmap1, i64* nocapture noundef readonly %bitmap2, i32 noundef %bits) local_unnamed_addr #3 {
entry:
  %conv = zext i32 %bits to i64
  %sub = add nuw nsw i64 %conv, 63
  %div = lshr i64 %sub, 6
  %cmp13.not = icmp eq i32 %bits, 0
  br i1 %cmp13.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr i64, i64* %bitmap1, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx4 = getelementptr i64, i64* %bitmap2, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx4, align 8
  %or = or i64 %1, %0
  %arrayidx6 = getelementptr i64, i64* %dst, i64 %indvars.iv
  store i64 %or, i64* %arrayidx6, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %div
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @__bitmap_xor(i64* nocapture noundef writeonly %dst, i64* nocapture noundef readonly %bitmap1, i64* nocapture noundef readonly %bitmap2, i32 noundef %bits) local_unnamed_addr #3 {
entry:
  %conv = zext i32 %bits to i64
  %sub = add nuw nsw i64 %conv, 63
  %div = lshr i64 %sub, 6
  %cmp13.not = icmp eq i32 %bits, 0
  br i1 %cmp13.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr i64, i64* %bitmap1, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx4 = getelementptr i64, i64* %bitmap2, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx4, align 8
  %xor = xor i64 %1, %0
  %arrayidx6 = getelementptr i64, i64* %dst, i64 %indvars.iv
  store i64 %xor, i64* %arrayidx6, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %div
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @__bitmap_andnot(i64* nocapture noundef writeonly %dst, i64* nocapture noundef readonly %bitmap1, i64* nocapture noundef readonly %bitmap2, i32 noundef %bits) local_unnamed_addr #3 {
entry:
  %cmp34.not = icmp ult i32 %bits, 64
  br i1 %cmp34.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i32 %bits, 6
  %wide.trip.count = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %result.036 = phi i64 [ 0, %for.body.preheader ], [ %or, %for.body ]
  %arrayidx = getelementptr i64, i64* %bitmap1, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr i64, i64* %bitmap2, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx2, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  %arrayidx4 = getelementptr i64, i64* %dst, i64 %indvars.iv
  store i64 %and, i64* %arrayidx4, align 8
  %or = or i64 %and, %result.036
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %phi.cast = zext i32 %div to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %k.0.lcssa = phi i64 [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  %result.0.lcssa = phi i64 [ 0, %entry ], [ %or, %for.end.loopexit ]
  %rem = and i32 %bits, 63
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %arrayidx6 = getelementptr i64, i64* %bitmap1, i64 %k.0.lcssa
  %2 = load i64, i64* %arrayidx6, align 8
  %arrayidx8 = getelementptr i64, i64* %bitmap2, i64 %k.0.lcssa
  %3 = load i64, i64* %arrayidx8, align 8
  %neg9 = xor i64 %3, -1
  %sub = sub i32 0, %bits
  %and11 = and i32 %sub, 63
  %sh_prom = zext i32 %and11 to i64
  %shr = lshr i64 -1, %sh_prom
  %and10 = and i64 %2, %shr
  %and12 = and i64 %and10, %neg9
  %arrayidx14 = getelementptr i64, i64* %dst, i64 %k.0.lcssa
  store i64 %and12, i64* %arrayidx14, align 8
  %or15 = or i64 %and12, %result.0.lcssa
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %result.1 = phi i64 [ %or15, %if.then ], [ %result.0.lcssa, %for.end ]
  %cmp16 = icmp ne i64 %result.1, 0
  %conv = zext i1 %cmp16 to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @__bitmap_replace(i64* nocapture noundef writeonly %dst, i64* nocapture noundef readonly %old, i64* nocapture noundef readonly %new, i64* nocapture noundef readonly %mask, i32 noundef %nbits) local_unnamed_addr #3 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %div = lshr i64 %sub, 6
  %cmp21.not = icmp eq i32 %nbits, 0
  br i1 %cmp21.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr i64, i64* %old, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx4 = getelementptr i64, i64* %mask, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx4, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  %arrayidx6 = getelementptr i64, i64* %new, i64 %indvars.iv
  %2 = load i64, i64* %arrayidx6, align 8
  %and9 = and i64 %2, %1
  %or = or i64 %and9, %and
  %arrayidx11 = getelementptr i64, i64* %dst, i64 %indvars.iv
  store i64 %or, i64* %arrayidx11, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %div
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @__bitmap_intersects(i64* nocapture noundef readonly %bitmap1, i64* nocapture noundef readonly %bitmap2, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %cmp29.not = icmp ult i32 %bits, 64
  br i1 %cmp29.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i32 %bits, 6
  %wide.trip.count = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr i64, i64* %bitmap1, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr i64, i64* %bitmap2, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx2, align 8
  %and = and i64 %1, %0
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cast = zext i32 %div to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %k.0.lcssa = phi i64 [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  %rem = and i32 %bits, 63
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %if.end15, label %if.then4

if.then4:                                         ; preds = %for.end
  %arrayidx6 = getelementptr i64, i64* %bitmap1, i64 %k.0.lcssa
  %2 = load i64, i64* %arrayidx6, align 8
  %arrayidx8 = getelementptr i64, i64* %bitmap2, i64 %k.0.lcssa
  %3 = load i64, i64* %arrayidx8, align 8
  %sub = sub i32 0, %bits
  %and10 = and i32 %sub, 63
  %sh_prom = zext i32 %and10 to i64
  %shr = lshr i64 -1, %sh_prom
  %and9 = and i64 %2, %shr
  %and11 = and i64 %and9, %3
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.then4, %for.end
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.then4, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 1, %if.then4 ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @__bitmap_subset(i64* nocapture noundef readonly %bitmap1, i64* nocapture noundef readonly %bitmap2, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %cmp30.not = icmp ult i32 %bits, 64
  br i1 %cmp30.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i32 %bits, 6
  %wide.trip.count = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr i64, i64* %bitmap1, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr i64, i64* %bitmap2, i64 %indvars.iv
  %1 = load i64, i64* %arrayidx2, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cast = zext i32 %div to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %k.0.lcssa = phi i64 [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  %rem = and i32 %bits, 63
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %if.end16, label %if.then4

if.then4:                                         ; preds = %for.end
  %arrayidx6 = getelementptr i64, i64* %bitmap1, i64 %k.0.lcssa
  %2 = load i64, i64* %arrayidx6, align 8
  %arrayidx8 = getelementptr i64, i64* %bitmap2, i64 %k.0.lcssa
  %3 = load i64, i64* %arrayidx8, align 8
  %neg9 = xor i64 %3, -1
  %sub = sub i32 0, %bits
  %and11 = and i32 %sub, 63
  %sh_prom = zext i32 %and11 to i64
  %shr = lshr i64 -1, %sh_prom
  %and10 = and i64 %2, %shr
  %and12 = and i64 %and10, %neg9
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.then4, %for.end
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.then4, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %if.then4 ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__bitmap_weight(i64* nocapture noundef readonly %bitmap, i32 noundef %bits) local_unnamed_addr #4 {
entry:
  %cmp92.not = icmp ult i32 %bits, 64
  br i1 %cmp92.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i32 %bits, 6
  %wide.trip.count = zext i32 %div to i64
  br label %cond.false.i

cond.false.i:                                     ; preds = %cond.false.i, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cond.false.i ]
  %w.094 = phi i32 [ 0, %for.body.preheader ], [ %conv1, %cond.false.i ]
  %arrayidx = getelementptr i64, i64* %bitmap, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8
  %call.i = call fastcc i64 @__arch_hweight64(i64 noundef %0) #10
  %1 = trunc i64 %call.i to i32
  %conv1 = add i32 %w.094, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %cond.false.i

for.end.loopexit:                                 ; preds = %cond.false.i
  %phi.cast = zext i32 %div to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %k.0.lcssa = phi i64 [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  %w.0.lcssa = phi i32 [ 0, %entry ], [ %conv1, %for.end.loopexit ]
  %rem = and i32 %bits, 63
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %cond.false.i89

cond.false.i89:                                   ; preds = %for.end
  %arrayidx3 = getelementptr i64, i64* %bitmap, i64 %k.0.lcssa
  %2 = load i64, i64* %arrayidx3, align 8
  %sub = sub i32 0, %bits
  %and = and i32 %sub, 63
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 -1, %sh_prom
  %and4 = and i64 %2, %shr
  %call.i88 = call fastcc i64 @__arch_hweight64(i64 noundef %and4) #10
  %3 = trunc i64 %call.i88 to i32
  %conv8 = add i32 %w.0.lcssa, %3
  br label %if.end

if.end:                                           ; preds = %cond.false.i89, %for.end
  %w.1 = phi i32 [ %conv8, %cond.false.i89 ], [ %w.0.lcssa, %for.end ]
  ret i32 %w.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @__bitmap_set(i64* nocapture noundef %map, i32 noundef %start, i32 noundef %len) local_unnamed_addr #3 {
entry:
  %div = lshr i32 %start, 6
  %idx.ext = zext i32 %div to i64
  %add.ptr = getelementptr i64, i64* %map, i64 %idx.ext
  %add = add i32 %start, %len
  %sub.neg = or i32 %start, -64
  %and = and i32 %start, 63
  %sh_prom = zext i32 %and to i64
  %shl = shl nsw i64 -1, %sh_prom
  %sub123 = add i32 %sub.neg, %len
  %cmp24 = icmp sgt i32 %sub123, -1
  br i1 %cmp24, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %0 = load i64, i64* %add.ptr, align 8
  %or.peel = or i64 %0, %shl
  store i64 %or.peel, i64* %add.ptr, align 8
  %incdec.ptr.peel = getelementptr i64, i64* %add.ptr, i64 1
  %cmp.peel = icmp ugt i32 %sub123, 63
  br i1 %cmp.peel, label %while.body.preheader32, label %while.end.loopexit

while.body.preheader32:                           ; preds = %while.body.preheader
  %1 = add i32 %sub.neg, %len
  %2 = add i32 %1, 63
  %umin = call i32 @llvm.umin.i32(i32 %sub123, i32 127)
  %3 = sub i32 %2, %umin
  %4 = lshr i32 %3, 6
  %narrow = add nuw nsw i32 %4, 1
  %5 = zext i32 %narrow to i64
  %min.iters.check = icmp ult i32 %3, 64
  br i1 %min.iters.check, label %while.body.preheader38, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader32
  %n.vec = and i64 %5, 134217726
  %cast.crd = trunc i64 %n.vec to i32
  %6 = mul i32 %cast.crd, -64
  %ind.end = add i32 %sub123, %6
  %ind.end35 = getelementptr i64, i64* %incdec.ptr.peel, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i64, i64* %incdec.ptr.peel, i64 %index
  %7 = or i64 %index, 1
  %next.gep37 = getelementptr i64, i64* %incdec.ptr.peel, i64 %7
  store i64 -1, i64* %next.gep, align 8
  store i64 -1, i64* %next.gep37, align 8
  %index.next = add nuw i64 %index, 2
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %while.end.loopexit, label %while.body.preheader38

while.body.preheader38:                           ; preds = %while.body.preheader32, %middle.block
  %sub127.in.ph = phi i32 [ %sub123, %while.body.preheader32 ], [ %ind.end, %middle.block ]
  %p.025.ph = phi i64* [ %incdec.ptr.peel, %while.body.preheader32 ], [ %ind.end35, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader38, %while.body
  %sub127.in = phi i32 [ %sub127, %while.body ], [ %sub127.in.ph, %while.body.preheader38 ]
  %p.025 = phi i64* [ %incdec.ptr, %while.body ], [ %p.025.ph, %while.body.preheader38 ]
  %sub127 = add nsw i32 %sub127.in, -64
  store i64 -1, i64* %p.025, align 8
  %incdec.ptr = getelementptr i64, i64* %p.025, i64 1
  %cmp = icmp ugt i32 %sub127.in, 127
  br i1 %cmp, label %while.body, label %while.end.loopexit, !llvm.loop !12

while.end.loopexit:                               ; preds = %while.body, %middle.block, %while.body.preheader
  %incdec.ptr.lcssa = phi i64* [ %incdec.ptr.peel, %while.body.preheader ], [ %ind.end35, %middle.block ], [ %incdec.ptr, %while.body ]
  %9 = and i32 %sub123, 63
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %len.addr.0.lcssa = phi i32 [ %len, %entry ], [ %9, %while.end.loopexit ]
  %p.0.lcssa = phi i64* [ %add.ptr, %entry ], [ %incdec.ptr.lcssa, %while.end.loopexit ]
  %mask_to_set.0.lcssa = phi i64 [ %shl, %entry ], [ -1, %while.end.loopexit ]
  %tobool.not = icmp eq i32 %len.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %sub3 = sub i32 0, %add
  %and4 = and i32 %sub3, 63
  %sh_prom5 = zext i32 %and4 to i64
  %shr = lshr i64 -1, %sh_prom5
  %and6 = and i64 %mask_to_set.0.lcssa, %shr
  %10 = load i64, i64* %p.0.lcssa, align 8
  %or7 = or i64 %10, %and6
  store i64 %or7, i64* %p.0.lcssa, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @__bitmap_clear(i64* nocapture noundef %map, i32 noundef %start, i32 noundef %len) local_unnamed_addr #3 {
entry:
  %div = lshr i32 %start, 6
  %idx.ext = zext i32 %div to i64
  %add.ptr = getelementptr i64, i64* %map, i64 %idx.ext
  %add = add i32 %start, %len
  %sub.neg = or i32 %start, -64
  %and = and i32 %start, 63
  %sh_prom = zext i32 %and to i64
  %shl = shl nsw i64 -1, %sh_prom
  %sub125 = add i32 %sub.neg, %len
  %cmp26 = icmp sgt i32 %sub125, -1
  br i1 %cmp26, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %neg.peel = xor i64 %shl, -1
  %0 = load i64, i64* %add.ptr, align 8
  %and2.peel = and i64 %0, %neg.peel
  store i64 %and2.peel, i64* %add.ptr, align 8
  %incdec.ptr.peel = getelementptr i64, i64* %add.ptr, i64 1
  %cmp.peel = icmp ugt i32 %sub125, 63
  br i1 %cmp.peel, label %while.body.preheader34, label %while.end.loopexit

while.body.preheader34:                           ; preds = %while.body.preheader
  %1 = add i32 %sub.neg, %len
  %2 = add i32 %1, 63
  %umin = call i32 @llvm.umin.i32(i32 %sub125, i32 127)
  %3 = sub i32 %2, %umin
  %4 = lshr i32 %3, 6
  %narrow = add nuw nsw i32 %4, 1
  %5 = zext i32 %narrow to i64
  %min.iters.check = icmp ult i32 %3, 64
  br i1 %min.iters.check, label %while.body.preheader40, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader34
  %n.vec = and i64 %5, 134217726
  %cast.crd = trunc i64 %n.vec to i32
  %6 = mul i32 %cast.crd, -64
  %ind.end = add i32 %sub125, %6
  %ind.end37 = getelementptr i64, i64* %incdec.ptr.peel, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i64, i64* %incdec.ptr.peel, i64 %index
  %7 = or i64 %index, 1
  %next.gep39 = getelementptr i64, i64* %incdec.ptr.peel, i64 %7
  store i64 0, i64* %next.gep, align 8
  store i64 0, i64* %next.gep39, align 8
  %index.next = add nuw i64 %index, 2
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %while.end.loopexit, label %while.body.preheader40

while.body.preheader40:                           ; preds = %while.body.preheader34, %middle.block
  %sub129.in.ph = phi i32 [ %sub125, %while.body.preheader34 ], [ %ind.end, %middle.block ]
  %p.027.ph = phi i64* [ %incdec.ptr.peel, %while.body.preheader34 ], [ %ind.end37, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader40, %while.body
  %sub129.in = phi i32 [ %sub129, %while.body ], [ %sub129.in.ph, %while.body.preheader40 ]
  %p.027 = phi i64* [ %incdec.ptr, %while.body ], [ %p.027.ph, %while.body.preheader40 ]
  %sub129 = add nsw i32 %sub129.in, -64
  store i64 0, i64* %p.027, align 8
  %incdec.ptr = getelementptr i64, i64* %p.027, i64 1
  %cmp = icmp ugt i32 %sub129.in, 127
  br i1 %cmp, label %while.body, label %while.end.loopexit, !llvm.loop !14

while.end.loopexit:                               ; preds = %while.body, %middle.block, %while.body.preheader
  %incdec.ptr.lcssa = phi i64* [ %incdec.ptr.peel, %while.body.preheader ], [ %ind.end37, %middle.block ], [ %incdec.ptr, %while.body ]
  %9 = and i32 %sub125, 63
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %len.addr.0.lcssa = phi i32 [ %len, %entry ], [ %9, %while.end.loopexit ]
  %p.0.lcssa = phi i64* [ %add.ptr, %entry ], [ %incdec.ptr.lcssa, %while.end.loopexit ]
  %mask_to_clear.0.lcssa = phi i64 [ %shl, %entry ], [ -1, %while.end.loopexit ]
  %tobool.not = icmp eq i32 %len.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %sub4 = sub i32 0, %add
  %and5 = and i32 %sub4, 63
  %sh_prom6 = zext i32 %and5 to i64
  %shr = lshr i64 -1, %sh_prom6
  %and7 = and i64 %mask_to_clear.0.lcssa, %shr
  %neg8 = xor i64 %and7, -1
  %10 = load i64, i64* %p.0.lcssa, align 8
  %and9 = and i64 %10, %neg8
  store i64 %and9, i64* %p.0.lcssa, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @bitmap_find_next_zero_area_off(i64* noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i64 noundef %align_mask, i64 noundef %align_offset) local_unnamed_addr #4 {
entry:
  %call26 = call fastcc i64 @find_next_zero_bit(i64* noundef %map, i64 noundef %size, i64 noundef %start) #11
  %add = add i64 %align_offset, %align_mask
  %add127 = add i64 %add, %call26
  %neg = xor i64 %align_mask, -1
  %and28 = and i64 %add127, %neg
  %sub29 = sub i64 %and28, %align_offset
  %conv = zext i32 %nr to i64
  %add230 = add i64 %sub29, %conv
  %cmp31 = icmp ugt i64 %add230, %size
  br i1 %cmp31, label %cleanup, label %if.end

again:                                            ; preds = %if.end
  %add8 = add nuw i64 %call4, 1
  %call = call fastcc i64 @find_next_zero_bit(i64* noundef %map, i64 noundef %size, i64 noundef %add8) #11
  %add1 = add i64 %add, %call
  %and = and i64 %add1, %neg
  %sub = sub i64 %and, %align_offset
  %add2 = add i64 %sub, %conv
  %cmp = icmp ugt i64 %add2, %size
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %again
  %add233 = phi i64 [ %add2, %again ], [ %add230, %entry ]
  %sub32 = phi i64 [ %sub, %again ], [ %sub29, %entry ]
  %call4 = call fastcc i64 @find_next_bit(i64* noundef %map, i64 noundef %add233, i64 noundef %sub32) #11
  %cmp5 = icmp ult i64 %call4, %add233
  br i1 %cmp5, label %again, label %cleanup

cleanup:                                          ; preds = %again, %if.end, %entry
  %retval.0 = phi i64 [ %add230, %entry ], [ %sub32, %if.end ], [ %add2, %again ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_zero_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #4 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef -1, i64 noundef 0) #10
  ret i64 %call13
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #4 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #10
  ret i64 %call12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_parse_user(i8* noundef %ubuf, i32 noundef %ulen, i64* noundef %maskp, i32 noundef %nmaskbits) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %ulen to i64
  %call = call i8* @memdup_user_nul(i8* noundef %ubuf, i64 noundef %conv) #10
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %call) #11
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %call) #11
  %conv3 = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @bitmap_parse(i8* noundef %call, i32 noundef -1, i64* noundef %maskp, i32 noundef %nmaskbits) #11
  call void @kfree(i8* noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv3, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memdup_user_nul(i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_parse(i8* noundef %start, i32 noundef %buflen, i64* noundef %maskp, i32 noundef %nmaskbits) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %buflen to i64
  %call = call i8* @strnchrnul(i8* noundef %start, i64 noundef %conv, i32 noundef 10) #10
  %add.ptr = getelementptr i8, i8* %call, i64 -1
  %conv1 = sext i32 %nmaskbits to i64
  %sub = add nsw i64 %conv1, 31
  %div = lshr i64 %sub, 5
  %conv2 = trunc i64 %div to i32
  %0 = bitcast i64* %maskp to i32*
  %call364 = call fastcc i8* @bitmap_find_region_reverse(i8* noundef %start, i8* noundef %add.ptr) #11
  %cmp65 = icmp ult i8* %call364, %start
  br i1 %cmp65, label %for.end, label %if.end

for.cond:                                         ; preds = %if.end6
  %inc = add i32 %chunk.067, 1
  %call3 = call fastcc i8* @bitmap_find_region_reverse(i8* noundef %start, i8* noundef %call7) #11
  %cmp = icmp ult i8* %call3, %start
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %entry, %for.cond
  %call368 = phi i8* [ %call3, %for.cond ], [ %call364, %entry ]
  %chunk.067 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %chunks.066 = phi i32 [ %dec, %for.cond ], [ %conv2, %entry ]
  %tobool.not = icmp eq i32 %chunks.066, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %dec = add i32 %chunks.066, -1
  %idxprom = sext i32 %chunk.067 to i64
  %arrayidx = getelementptr i32, i32* %0, i64 %idxprom
  %call7 = call fastcc i8* @bitmap_get_x32_reverse(i8* noundef %start, i8* noundef %call368, i32* noundef %arrayidx) #11
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %call7) #11
  br i1 %call8, label %if.then9, label %for.cond

if.then9:                                         ; preds = %if.end6
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %call7) #11
  %conv11 = trunc i64 %call10 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond, %entry
  %chunks.0.lcssa = phi i32 [ %conv2, %entry ], [ %dec, %for.cond ]
  %sub18.tr = sub i32 %conv2, %chunks.0.lcssa
  %conv19 = shl i32 %sub18.tr, 5
  %cmp20 = icmp slt i32 %conv19, %nmaskbits
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %sub23 = sub i32 %nmaskbits, %conv19
  call void @__bitmap_clear(i64* noundef %maskp, i32 noundef %conv19, i32 noundef %sub23) #10
  br label %cleanup

if.end24:                                         ; preds = %for.end
  %conv25 = sext i32 %conv19 to i64
  %call27 = call fastcc i64 @find_next_bit(i64* noundef %maskp, i64 noundef %conv25, i64 noundef %conv1) #11
  %cmp29.not = icmp eq i64 %call27, %conv25
  %. = select i1 %cmp29.not, i32 0, i32 -75
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then22, %if.end24, %if.then9
  %retval.0 = phi i32 [ %conv11, %if.then9 ], [ %., %if.end24 ], [ 0, %if.then22 ], [ -75, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_print_to_pagebuf(i1 noundef %list, i8* noundef %buf, i64* noundef %maskp, i32 noundef %nmaskbits) local_unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %buf to i64
  %and = and i64 %0, 4095
  %sub = sub nuw nsw i64 4096, %and
  %. = select i1 %list, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef %sub, i8* noundef %., i32 noundef %nmaskbits, i64* noundef %maskp) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_print_bitmask_to_buf(i8* noundef %buf, i64* noundef %maskp, i32 noundef %nmaskbits, i64 noundef %off, i64 noundef %count) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @bitmap_print_to_buf(i1 noundef false, i8* noundef %buf, i64* noundef %maskp, i32 noundef %nmaskbits, i64 noundef %off, i64 noundef %count) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_print_to_buf(i1 noundef %list, i8* noundef %buf, i64* noundef %maskp, i32 noundef %nmaskbits, i64 noundef %off, i64 noundef %count) unnamed_addr #4 {
entry:
  %off.addr = alloca i64, align 8
  store i64 %off, i64* %off.addr, align 8
  %cond = select i1 %list, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %call = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef %cond, i32 noundef %nmaskbits, i64* noundef %maskp) #10
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i64 @strlen(i8* noundef nonnull %call) #10
  %add = add i64 %call2, 1
  %call3 = call i64 @memory_read_from_buffer(i8* noundef %buf, i64 noundef %count, i64* noundef nonnull %off.addr, i8* noundef nonnull %call, i64 noundef %add) #10
  call void @kfree(i8* noundef nonnull %call) #10
  %conv = trunc i64 %call3 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_print_list_to_buf(i8* noundef %buf, i64* noundef %maskp, i32 noundef %nmaskbits, i64 noundef %off, i64 noundef %count) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @bitmap_print_to_buf(i1 noundef true, i8* noundef %buf, i64* noundef %maskp, i32 noundef %nmaskbits, i64 noundef %off, i64 noundef %count) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_parselist(i8* noundef %buf, i64* noundef %maskp, i32 noundef %nmaskbits) local_unnamed_addr #4 {
entry:
  %r = alloca %struct.region, align 4
  %0 = bitcast %struct.region* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 16, i1 false), !annotation !15
  %nbits = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 4
  store i32 %nmaskbits, i32* %nbits, align 4
  call fastcc void @bitmap_zero(i64* noundef %maskp, i32 noundef %nmaskbits) #11
  %tobool.not22 = icmp eq i8* %buf, null
  br i1 %tobool.not22, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %if.end12
  %buf.addr.023 = phi i8* [ %call2, %if.end12 ], [ %buf, %entry ]
  %call = call fastcc i8* @bitmap_find_region(i8* noundef nonnull %buf.addr.023) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %call2 = call fastcc i8* @bitmap_parse_region(i8* noundef nonnull %call, %struct.region* noundef nonnull %r) #11
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call2) #11
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %call2) #11
  %conv = trunc i64 %call5 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @bitmap_check_region(%struct.region* noundef nonnull %r) #11
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end6
  call fastcc void @bitmap_set_region(%struct.region* noundef nonnull %r, i64* noundef %maskp) #11
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end6, %if.end12, %entry, %if.then4
  %retval.0 = phi i32 [ %conv, %if.then4 ], [ 0, %entry ], [ 0, %while.body ], [ %call7, %if.end6 ], [ 0, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst, i32 noundef %nbits) unnamed_addr #4 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %0 = lshr i64 %sub, 3
  %conv1 = and i64 %0, 1073741816
  %1 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %conv1) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i8* @bitmap_find_region(i8* noundef readonly %str) unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %while.cond ]
  %0 = load i8, i8* %str.addr.0, align 1
  %call = call fastcc i1 @__end_of_region(i8 noundef %0) #11
  %incdec.ptr = getelementptr i8, i8* %str.addr.0, i64 1
  br i1 %call, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %call1 = call fastcc i1 @end_of_str(i8 noundef %0) #11
  %cond = select i1 %call1, i8* null, i8* %str.addr.0
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @bitmap_parse_region(i8* noundef %str, %struct.region* nocapture noundef %r) unnamed_addr #4 {
entry:
  %nbits = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 4
  %0 = load i32, i32* %nbits, align 4
  %sub = add i32 %0, -1
  %call = call i32 @strncasecmp(i8* noundef %str, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef 3) #10
  %tobool.not = icmp eq i32 %call, 0
  %start = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %start, align 4
  %end = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 3
  store i32 %sub, i32* %end, align 4
  %add.ptr = getelementptr i8, i8* %str, i64 3
  br label %check_pattern

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @bitmap_getnum(i8* noundef %str, i32* noundef %start, i32 noundef %sub) #11
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call2) #11
  br i1 %call3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = load i8, i8* %call2, align 1
  %call6 = call fastcc i1 @end_of_region(i8 noundef %1) #11
  br i1 %call6, label %no_end, label %if.end8

if.end8:                                          ; preds = %if.end5
  %cmp.not = icmp eq i8 %1, 45
  br i1 %cmp.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %add.ptr13 = getelementptr i8, i8* %call2, i64 1
  %end14 = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 3
  %call15 = call fastcc i8* @bitmap_getnum(i8* noundef %add.ptr13, i32* noundef %end14, i32 noundef %sub) #11
  %call16 = call fastcc i1 @IS_ERR(i8* noundef %call15) #11
  br i1 %call16, label %cleanup, label %check_pattern

check_pattern:                                    ; preds = %if.end12, %if.then
  %str.addr.0 = phi i8* [ %call15, %if.end12 ], [ %add.ptr, %if.then ]
  %2 = load i8, i8* %str.addr.0, align 1
  %call19 = call fastcc i1 @end_of_region(i8 noundef %2) #11
  br i1 %call19, label %check_pattern.no_pattern_crit_edge, label %if.end21

check_pattern.no_pattern_crit_edge:               ; preds = %check_pattern
  %end43.phi.trans.insert = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 3
  %.pre = load i32, i32* %end43.phi.trans.insert, align 4
  br label %no_pattern

if.end21:                                         ; preds = %check_pattern
  %cmp23.not = icmp eq i8 %2, 58
  br i1 %cmp23.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end21
  %call26 = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %add.ptr28 = getelementptr i8, i8* %str.addr.0, i64 1
  %off = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 1
  %call29 = call fastcc i8* @bitmap_getnum(i8* noundef %add.ptr28, i32* noundef %off, i32 noundef %sub) #11
  %call30 = call fastcc i1 @IS_ERR(i8* noundef %call29) #11
  br i1 %call30, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end27
  %3 = load i8, i8* %call29, align 1
  %cmp34.not = icmp eq i8 %3, 47
  br i1 %cmp34.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end32
  %call37 = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %add.ptr39 = getelementptr i8, i8* %call29, i64 1
  %group_len = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 2
  %call40 = call fastcc i8* @bitmap_getnum(i8* noundef %add.ptr39, i32* noundef %group_len, i32 noundef %sub) #11
  br label %cleanup

no_end:                                           ; preds = %if.end5
  %4 = load i32, i32* %start, align 4
  %end42 = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 3
  store i32 %4, i32* %end42, align 4
  br label %no_pattern

no_pattern:                                       ; preds = %check_pattern.no_pattern_crit_edge, %no_end
  %5 = phi i32 [ %4, %no_end ], [ %.pre, %check_pattern.no_pattern_crit_edge ]
  %str.addr.1 = phi i8* [ %call2, %no_end ], [ %str.addr.0, %check_pattern.no_pattern_crit_edge ]
  %add = add i32 %5, 1
  %off44 = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 1
  store i32 %add, i32* %off44, align 4
  %group_len47 = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 2
  store i32 %add, i32* %group_len47, align 4
  %6 = load i8, i8* %str.addr.1, align 1
  %call48 = call fastcc i1 @end_of_str(i8 noundef %6) #11
  %cond = select i1 %call48, i8* null, i8* %str.addr.1
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end12, %if.end, %no_pattern, %if.end38, %if.then36, %if.then25, %if.then10
  %retval.0 = phi i8* [ %cond, %no_pattern ], [ %call11, %if.then10 ], [ %call26, %if.then25 ], [ %call37, %if.then36 ], [ %call40, %if.end38 ], [ %call2, %if.end ], [ %call15, %if.end12 ], [ %call29, %if.end27 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bitmap_check_region(%struct.region* nocapture noundef readonly %r) unnamed_addr #2 {
entry:
  %start = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 0
  %0 = load i32, i32* %start, align 4
  %end = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 3
  %1 = load i32, i32* %end, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group_len = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 2
  %2 = load i32, i32* %group_len, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %off = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 1
  %3 = load i32, i32* %off, align 4
  %cmp4 = icmp ugt i32 %3, %2
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %nbits = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 4
  %4 = load i32, i32* %nbits, align 4
  %cmp6.not = icmp ult i32 %1, %4
  %. = select i1 %cmp6.not, i32 0, i32 -34
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i32 [ -22, %lor.lhs.false2 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_set_region(%struct.region* nocapture noundef readonly %r, i64* noundef %bitmap) unnamed_addr #4 {
entry:
  %start1 = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 0
  %0 = load i32, i32* %start1, align 4
  %end = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 3
  %1 = load i32, i32* %end, align 4
  %cmp.not17 = icmp ult i32 %1, %0
  br i1 %cmp.not17, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %off = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 1
  %group_len = getelementptr inbounds %struct.region, %struct.region* %r, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %5, %for.body ]
  %start.018 = phi i32 [ %0, %for.body.lr.ph ], [ %add4, %for.body ]
  %sub = sub i32 %2, %start.018
  %add = add i32 %sub, 1
  %3 = load i32, i32* %off, align 4
  %cmp3 = icmp ult i32 %add, %3
  %cond = select i1 %cmp3, i32 %add, i32 %3
  call void @__bitmap_set(i64* noundef %bitmap, i32 noundef %start.018, i32 noundef %cond) #10
  %4 = load i32, i32* %group_len, align 4
  %add4 = add i32 %4, %start.018
  %5 = load i32, i32* %end, align 4
  %cmp.not = icmp ult i32 %5, %add4
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_parselist_user(i8* noundef %ubuf, i32 noundef %ulen, i64* noundef %maskp, i32 noundef %nmaskbits) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %ulen to i64
  %call = call i8* @memdup_user_nul(i8* noundef %ubuf, i64 noundef %conv) #10
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %call) #11
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %call) #11
  %conv3 = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @bitmap_parselist(i8* noundef %call, i64* noundef %maskp, i32 noundef %nmaskbits) #11
  call void @kfree(i8* noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv3, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strnchrnul(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i8* @bitmap_find_region_reverse(i8* noundef readnone %start, i8* noundef readonly %end) unnamed_addr #0 {
entry:
  %cmp.not4 = icmp ult i8* %end, %start
  br i1 %cmp.not4, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %end.addr.05 = phi i8* [ %incdec.ptr, %while.body ], [ %end, %entry ]
  %0 = load i8, i8* %end.addr.05, align 1
  %call = call fastcc i1 @__end_of_region(i8 noundef %0) #11
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, i8* %end.addr.05, i64 -1
  %cmp.not = icmp ult i8* %incdec.ptr, %start
  br i1 %cmp.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %end.addr.0.lcssa = phi i8* [ %end, %entry ], [ %incdec.ptr, %while.body ], [ %end.addr.05, %land.rhs ]
  ret i8* %end.addr.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @bitmap_get_x32_reverse(i8* noundef readnone %start, i8* noundef readonly %end, i32* nocapture noundef writeonly %num) unnamed_addr #4 {
entry:
  %incdec.ptr = getelementptr i8, i8* %end, i64 -1
  %0 = load i8, i8* %end, align 1
  %call = call i32 @hex_to_bin(i8 noundef %0) #10
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

for.cond:                                         ; preds = %lor.lhs.false
  %incdec.ptr.1 = getelementptr i8, i8* %end, i64 -2
  %call.1 = call i32 @hex_to_bin(i8 noundef %8) #10
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.then, label %if.end.1

if.end.1:                                         ; preds = %for.cond
  %shl.1 = shl i32 %call.1, 4
  %or.1 = or i32 %shl.1, %call
  %cmp3.1 = icmp ult i8* %incdec.ptr.1, %start
  br i1 %cmp3.1, label %out, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %if.end.1
  %1 = load i8, i8* %incdec.ptr.1, align 1
  %call4.1 = call fastcc i1 @__end_of_region(i8 noundef %1) #11
  br i1 %call4.1, label %out, label %for.cond.1

for.cond.1:                                       ; preds = %lor.lhs.false.1
  %incdec.ptr.2 = getelementptr i8, i8* %end, i64 -3
  %call.2 = call i32 @hex_to_bin(i8 noundef %1) #10
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.then, label %if.end.2

if.end.2:                                         ; preds = %for.cond.1
  %shl.2 = shl i32 %call.2, 8
  %or.2 = or i32 %shl.2, %or.1
  %cmp3.2 = icmp ult i8* %incdec.ptr.2, %start
  br i1 %cmp3.2, label %out, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.end.2
  %2 = load i8, i8* %incdec.ptr.2, align 1
  %call4.2 = call fastcc i1 @__end_of_region(i8 noundef %2) #11
  br i1 %call4.2, label %out, label %for.cond.2

for.cond.2:                                       ; preds = %lor.lhs.false.2
  %incdec.ptr.3 = getelementptr i8, i8* %end, i64 -4
  %call.3 = call i32 @hex_to_bin(i8 noundef %2) #10
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.then, label %if.end.3

if.end.3:                                         ; preds = %for.cond.2
  %shl.3 = shl i32 %call.3, 12
  %or.3 = or i32 %shl.3, %or.2
  %cmp3.3 = icmp ult i8* %incdec.ptr.3, %start
  br i1 %cmp3.3, label %out, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end.3
  %3 = load i8, i8* %incdec.ptr.3, align 1
  %call4.3 = call fastcc i1 @__end_of_region(i8 noundef %3) #11
  br i1 %call4.3, label %out, label %for.cond.3

for.cond.3:                                       ; preds = %lor.lhs.false.3
  %incdec.ptr.4 = getelementptr i8, i8* %end, i64 -5
  %call.4 = call i32 @hex_to_bin(i8 noundef %3) #10
  %cmp1.4 = icmp slt i32 %call.4, 0
  br i1 %cmp1.4, label %if.then, label %if.end.4

if.end.4:                                         ; preds = %for.cond.3
  %shl.4 = shl i32 %call.4, 16
  %or.4 = or i32 %shl.4, %or.3
  %cmp3.4 = icmp ult i8* %incdec.ptr.4, %start
  br i1 %cmp3.4, label %out, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end.4
  %4 = load i8, i8* %incdec.ptr.4, align 1
  %call4.4 = call fastcc i1 @__end_of_region(i8 noundef %4) #11
  br i1 %call4.4, label %out, label %for.cond.4

for.cond.4:                                       ; preds = %lor.lhs.false.4
  %incdec.ptr.5 = getelementptr i8, i8* %end, i64 -6
  %call.5 = call i32 @hex_to_bin(i8 noundef %4) #10
  %cmp1.5 = icmp slt i32 %call.5, 0
  br i1 %cmp1.5, label %if.then, label %if.end.5

if.end.5:                                         ; preds = %for.cond.4
  %shl.5 = shl i32 %call.5, 20
  %or.5 = or i32 %shl.5, %or.4
  %cmp3.5 = icmp ult i8* %incdec.ptr.5, %start
  br i1 %cmp3.5, label %out, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end.5
  %5 = load i8, i8* %incdec.ptr.5, align 1
  %call4.5 = call fastcc i1 @__end_of_region(i8 noundef %5) #11
  br i1 %call4.5, label %out, label %for.cond.5

for.cond.5:                                       ; preds = %lor.lhs.false.5
  %incdec.ptr.6 = getelementptr i8, i8* %end, i64 -7
  %call.6 = call i32 @hex_to_bin(i8 noundef %5) #10
  %cmp1.6 = icmp slt i32 %call.6, 0
  br i1 %cmp1.6, label %if.then, label %if.end.6

if.end.6:                                         ; preds = %for.cond.5
  %shl.6 = shl i32 %call.6, 24
  %or.6 = or i32 %shl.6, %or.5
  %cmp3.6 = icmp ult i8* %incdec.ptr.6, %start
  br i1 %cmp3.6, label %out, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end.6
  %6 = load i8, i8* %incdec.ptr.6, align 1
  %call4.6 = call fastcc i1 @__end_of_region(i8 noundef %6) #11
  br i1 %call4.6, label %out, label %for.cond.6

for.cond.6:                                       ; preds = %lor.lhs.false.6
  %incdec.ptr.7 = getelementptr i8, i8* %end, i64 -8
  %call.7 = call i32 @hex_to_bin(i8 noundef %6) #10
  %cmp1.7 = icmp slt i32 %call.7, 0
  br i1 %cmp1.7, label %if.then, label %if.end.7

if.end.7:                                         ; preds = %for.cond.6
  %shl.7 = shl i32 %call.7, 28
  %or.7 = or i32 %shl.7, %or.6
  %cmp3.7 = icmp ult i8* %incdec.ptr.7, %start
  br i1 %cmp3.7, label %out, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end.7
  %7 = load i8, i8* %incdec.ptr.7, align 1
  %call4.7 = call fastcc i1 @__end_of_region(i8 noundef %7) #11
  br i1 %call4.7, label %out, label %for.cond.7

for.cond.7:                                       ; preds = %lor.lhs.false.7
  %incdec.ptr7 = getelementptr i8, i8* %end, i64 -9
  %call8 = call i32 @hex_to_bin(i8 noundef %7) #10
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.then10, label %out

if.then:                                          ; preds = %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp ult i8* %incdec.ptr, %start
  br i1 %cmp3, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i8, i8* %incdec.ptr, align 1
  %call4 = call fastcc i1 @__end_of_region(i8 noundef %8) #11
  br i1 %call4, label %out, label %for.cond

if.then10:                                        ; preds = %for.cond.7
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -75) #11
  br label %cleanup

out:                                              ; preds = %if.end, %lor.lhs.false, %if.end.1, %lor.lhs.false.1, %if.end.2, %lor.lhs.false.2, %if.end.3, %lor.lhs.false.3, %if.end.4, %lor.lhs.false.4, %if.end.5, %lor.lhs.false.5, %if.end.6, %lor.lhs.false.6, %if.end.7, %lor.lhs.false.7, %for.cond.7
  %or39 = phi i32 [ %or.7, %for.cond.7 ], [ %call, %lor.lhs.false ], [ %call, %if.end ], [ %or.1, %if.end.1 ], [ %or.1, %lor.lhs.false.1 ], [ %or.2, %if.end.2 ], [ %or.2, %lor.lhs.false.2 ], [ %or.3, %if.end.3 ], [ %or.3, %lor.lhs.false.3 ], [ %or.4, %if.end.4 ], [ %or.4, %lor.lhs.false.4 ], [ %or.5, %if.end.5 ], [ %or.5, %lor.lhs.false.5 ], [ %or.6, %if.end.6 ], [ %or.6, %lor.lhs.false.6 ], [ %or.7, %if.end.7 ], [ %or.7, %lor.lhs.false.7 ]
  %end.addr.1 = phi i8* [ %incdec.ptr7, %for.cond.7 ], [ %incdec.ptr, %lor.lhs.false ], [ %incdec.ptr, %if.end ], [ %incdec.ptr.1, %if.end.1 ], [ %incdec.ptr.1, %lor.lhs.false.1 ], [ %incdec.ptr.2, %if.end.2 ], [ %incdec.ptr.2, %lor.lhs.false.2 ], [ %incdec.ptr.3, %if.end.3 ], [ %incdec.ptr.3, %lor.lhs.false.3 ], [ %incdec.ptr.4, %if.end.4 ], [ %incdec.ptr.4, %lor.lhs.false.4 ], [ %incdec.ptr.5, %if.end.5 ], [ %incdec.ptr.5, %lor.lhs.false.5 ], [ %incdec.ptr.6, %if.end.6 ], [ %incdec.ptr.6, %lor.lhs.false.6 ], [ %incdec.ptr.7, %if.end.7 ], [ %incdec.ptr.7, %lor.lhs.false.7 ]
  store i32 %or39, i32* %num, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then10, %if.then
  %retval.0 = phi i8* [ %call2, %if.then ], [ %end.addr.1, %out ], [ %call11, %if.then10 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_ord_to_pos(i64* noundef %buf, i32 noundef %ord, i32 noundef %nbits) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %nbits to i64
  %call = call fastcc i64 @find_first_bit(i64* noundef %buf, i64 noundef %conv) #11
  %pos.014 = trunc i64 %call to i32
  %cmp15 = icmp ult i32 %pos.014, %nbits
  %tobool16 = icmp ne i32 %ord, 0
  %0 = and i1 %cmp15, %tobool16
  br i1 %0, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %pos.0.in18 = phi i64 [ %call5, %for.body ], [ %call, %entry ]
  %ord.addr.017 = phi i32 [ %dec, %for.body ], [ %ord, %entry ]
  %dec = add i32 %ord.addr.017, -1
  %add = add i64 %pos.0.in18, 1
  %conv4 = and i64 %add, 4294967295
  %call5 = call fastcc i64 @find_next_bit(i64* noundef %buf, i64 noundef %conv, i64 noundef %conv4) #11
  %pos.0 = trunc i64 %call5 to i32
  %cmp = icmp ult i32 %pos.0, %nbits
  %tobool = icmp ne i32 %dec, 0
  %1 = select i1 %cmp, i1 %tobool, i1 false
  br i1 %1, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %pos.0.le = trunc i64 %call5 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %pos.0.le.pre-phi = phi i32 [ %pos.014, %entry ], [ %pos.0.le, %for.end.loopexit ]
  ret i32 %pos.0.le.pre-phi
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr, i64 noundef %size) unnamed_addr #4 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef %size) #10
  ret i64 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bitmap_remap(i64* noundef %dst, i64* noundef %src, i64* noundef %old, i64* noundef %new, i32 noundef %nbits) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i64* %dst, %src
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @bitmap_zero(i64* noundef %dst, i32 noundef %nbits) #11
  %call4.i = call i32 @__bitmap_weight(i64* noundef %new, i32 noundef %nbits) #10
  %conv = zext i32 %nbits to i64
  %call1 = call fastcc i64 @find_first_bit(i64* noundef %src, i64 noundef %conv) #11
  %oldbit.040 = trunc i64 %call1 to i32
  %cmp341 = icmp ult i32 %oldbit.040, %nbits
  br i1 %cmp341, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %cmp8 = icmp eq i32 %call4.i, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end14
  %oldbit.044 = phi i32 [ %oldbit.040, %for.body.lr.ph ], [ %oldbit.0, %if.end14 ]
  %oldbit.0.in42 = phi i64 [ %call1, %for.body.lr.ph ], [ %call17, %if.end14 ]
  %call5 = call fastcc i32 @bitmap_pos_to_ord(i64* noundef %old, i32 noundef %oldbit.044, i32 noundef %nbits) #11
  %cmp6 = icmp slt i32 %call5, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body
  %conv11 = and i64 %oldbit.0.in42, 4294967295
  br label %if.end14

if.else:                                          ; preds = %for.body
  %rem = urem i32 %call5, %call4.i
  %call12 = call i32 @bitmap_ord_to_pos(i64* noundef %new, i32 noundef %rem, i32 noundef %nbits) #11
  %conv13 = zext i32 %call12 to i64
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %conv13.sink = phi i64 [ %conv13, %if.else ], [ %conv11, %if.then10 ]
  call fastcc void @set_bit(i64 noundef %conv13.sink, i64* noundef %dst) #11
  %add = add i64 %oldbit.0.in42, 1
  %conv16 = and i64 %add, 4294967295
  %call17 = call fastcc i64 @find_next_bit(i64* noundef %src, i64 noundef %conv, i64 noundef %conv16) #11
  %oldbit.0 = trunc i64 %call17 to i32
  %cmp3 = icmp ult i32 %oldbit.0, %nbits
  br i1 %cmp3, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_pos_to_ord(i64* noundef %buf, i32 noundef %pos, i32 noundef %nbits) unnamed_addr #4 {
entry:
  %cmp.not = icmp ult i32 %pos, %nbits
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %div.i = lshr i32 %pos, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %buf, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %pos, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @__bitmap_weight(i64* noundef %buf, i32 noundef %pos) #11
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #4 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bitmap_bitremap(i32 noundef %oldbit, i64* noundef %old, i64* noundef %new, i32 noundef %bits) local_unnamed_addr #4 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef %new, i32 noundef %bits) #10
  %call1 = call fastcc i32 @bitmap_pos_to_ord(i64* noundef %old, i32 noundef %oldbit, i32 noundef %bits) #11
  %cmp = icmp slt i32 %call1, 0
  %cmp2 = icmp eq i32 %call4.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %rem = srem i32 %call1, %call4.i
  %call3 = call i32 @bitmap_ord_to_pos(i64* noundef %new, i32 noundef %rem, i32 noundef %bits) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else
  %retval.0 = phi i32 [ %call3, %if.else ], [ %oldbit, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @bitmap_find_free_region(i64* nocapture noundef %bitmap, i32 noundef %bits, i32 noundef %order) local_unnamed_addr #3 {
entry:
  %shl = shl nuw i32 1, %order
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %pos.0 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %add = add i32 %pos.0, %shl
  %cmp.not = icmp ugt i32 %add, %bits
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %call = call fastcc i32 @__reg_op(i64* noundef %bitmap, i32 noundef %pos.0, i32 noundef %order, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %if.end

if.end:                                           ; preds = %for.body
  %call1 = call fastcc i32 @__reg_op(i64* noundef %bitmap, i32 noundef %pos.0, i32 noundef %order, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end
  %retval.0 = phi i32 [ %pos.0, %if.end ], [ -12, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @__reg_op(i64* nocapture noundef %bitmap, i32 noundef %pos, i32 noundef %order, i32 noundef %reg_op) unnamed_addr #3 {
entry:
  %shl = shl nuw i32 1, %order
  %div = lshr i32 %pos, 6
  %sub = and i32 %pos, 63
  %conv = sext i32 %shl to i64
  %sub1 = add nsw i64 %conv, 63
  %div2 = lshr i64 %sub1, 6
  %conv3 = trunc i64 %div2 to i32
  %cmp = icmp slt i32 %shl, 64
  %cond = select i1 %cmp, i32 %shl, i32 64
  %sub5 = add i32 %cond, -1
  %sh_prom = zext i32 %sub5 to i64
  %reass.add = shl i64 2, %sh_prom
  %add8 = add i64 %reass.add, -1
  %sh_prom9 = zext i32 %sub to i64
  %shl10 = shl i64 %add8, %sh_prom9
  switch i32 %reg_op, label %done [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond15.preheader
    i32 2, label %for.cond26.preheader
  ]

for.cond26.preheader:                             ; preds = %entry
  %cmp2773 = icmp sgt i32 %conv3, 0
  br i1 %cmp2773, label %for.body29.lr.ph, label %done

for.body29.lr.ph:                                 ; preds = %for.cond26.preheader
  %neg = xor i64 %shl10, -1
  %wide.trip.count = and i64 %div2, 4294967295
  %min.iters.check = icmp ult i64 %wide.trip.count, 2
  br i1 %min.iters.check, label %for.body29.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body29.lr.ph
  %0 = add nsw i64 %wide.trip.count, -1
  %1 = trunc i64 %0 to i32
  %2 = add i32 %div, %1
  %3 = icmp slt i32 %2, %div
  %4 = icmp ugt i64 %0, 4294967295
  %5 = or i1 %3, %4
  %6 = lshr i32 %pos, 6
  %7 = zext i32 %6 to i64
  %scevgep = getelementptr i64, i64* %bitmap, i64 %7
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 8)
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %scevgep100 = bitcast i64* %scevgep to i8*
  %8 = getelementptr i8, i8* %scevgep100, i64 %mul.result
  %9 = icmp ult i8* %8, %scevgep100
  %10 = or i1 %9, %mul.overflow
  %11 = or i1 %5, %10
  br i1 %11, label %for.body29.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %div2, 1
  %n.vec = sub nsw i64 %wide.trip.count, %n.mod.vf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %12 = trunc i64 %index to i32
  %induction103 = or i32 %12, 1
  %13 = add i32 %div, %12
  %14 = add i32 %div, %induction103
  %15 = sext i32 %13 to i64
  %16 = sext i32 %14 to i64
  %17 = getelementptr i64, i64* %bitmap, i64 %15
  %18 = getelementptr i64, i64* %bitmap, i64 %16
  %19 = load i64, i64* %17, align 8
  %20 = load i64, i64* %18, align 8
  %21 = and i64 %19, %neg
  %22 = and i64 %20, %neg
  store i64 %21, i64* %17, align 8
  store i64 %22, i64* %18, align 8
  %index.next = add nuw i64 %index, 2
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %done, label %for.body29.preheader

for.body29.preheader:                             ; preds = %vector.scevcheck, %for.body29.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %for.body29.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body29

for.cond15.preheader:                             ; preds = %entry
  %cmp1675 = icmp sgt i32 %conv3, 0
  br i1 %cmp1675, label %for.body18.preheader, label %done

for.body18.preheader:                             ; preds = %for.cond15.preheader
  %wide.trip.count88 = and i64 %div2, 4294967295
  %min.iters.check113 = icmp ult i64 %wide.trip.count88, 2
  br i1 %min.iters.check113, label %for.body18.preheader125, label %vector.scevcheck104

vector.scevcheck104:                              ; preds = %for.body18.preheader
  %24 = add nsw i64 %wide.trip.count88, -1
  %25 = trunc i64 %24 to i32
  %26 = add i32 %div, %25
  %27 = icmp slt i32 %26, %div
  %28 = icmp ugt i64 %24, 4294967295
  %29 = or i1 %27, %28
  %30 = lshr i32 %pos, 6
  %31 = zext i32 %30 to i64
  %scevgep105 = getelementptr i64, i64* %bitmap, i64 %31
  %mul106 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %24, i64 8)
  %mul.result107 = extractvalue { i64, i1 } %mul106, 0
  %mul.overflow108 = extractvalue { i64, i1 } %mul106, 1
  %scevgep105109 = bitcast i64* %scevgep105 to i8*
  %32 = getelementptr i8, i8* %scevgep105109, i64 %mul.result107
  %33 = icmp ult i8* %32, %scevgep105109
  %34 = or i1 %33, %mul.overflow108
  %35 = or i1 %29, %34
  br i1 %35, label %for.body18.preheader125, label %vector.ph114

vector.ph114:                                     ; preds = %vector.scevcheck104
  %n.mod.vf115 = and i64 %div2, 1
  %n.vec116 = sub nsw i64 %wide.trip.count88, %n.mod.vf115
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next124, %vector.body112 ]
  %36 = trunc i64 %index119 to i32
  %induction123 = or i32 %36, 1
  %37 = add i32 %div, %36
  %38 = add i32 %div, %induction123
  %39 = sext i32 %37 to i64
  %40 = sext i32 %38 to i64
  %41 = getelementptr i64, i64* %bitmap, i64 %39
  %42 = getelementptr i64, i64* %bitmap, i64 %40
  %43 = load i64, i64* %41, align 8
  %44 = load i64, i64* %42, align 8
  %45 = or i64 %43, %shl10
  %46 = or i64 %44, %shl10
  store i64 %45, i64* %41, align 8
  store i64 %46, i64* %42, align 8
  %index.next124 = add nuw i64 %index119, 2
  %47 = icmp eq i64 %index.next124, %n.vec116
  br i1 %47, label %middle.block110, label %vector.body112, !llvm.loop !17

middle.block110:                                  ; preds = %vector.body112
  %cmp.n118 = icmp eq i64 %n.mod.vf115, 0
  br i1 %cmp.n118, label %done, label %for.body18.preheader125

for.body18.preheader125:                          ; preds = %vector.scevcheck104, %for.body18.preheader, %middle.block110
  %indvars.iv84.ph = phi i64 [ 0, %vector.scevcheck104 ], [ 0, %for.body18.preheader ], [ %n.vec116, %middle.block110 ]
  br label %for.body18

for.cond.preheader:                               ; preds = %entry
  %cmp1177 = icmp sgt i32 %conv3, 0
  br i1 %cmp1177, label %for.body.preheader, label %done

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count94 = and i64 %div2, 4294967295
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond95.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count94
  br i1 %exitcond95.not, label %done, label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv90 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next91, %for.cond ]
  %48 = trunc i64 %indvars.iv90 to i32
  %49 = add i32 %div, %48
  %idxprom = sext i32 %49 to i64
  %arrayidx = getelementptr i64, i64* %bitmap, i64 %idxprom
  %50 = load i64, i64* %arrayidx, align 8
  %and = and i64 %50, %shl10
  %tobool.not = icmp eq i64 %and, 0
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br i1 %tobool.not, label %for.cond, label %done

for.body18:                                       ; preds = %for.body18.preheader125, %for.body18
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.body18 ], [ %indvars.iv84.ph, %for.body18.preheader125 ]
  %51 = trunc i64 %indvars.iv84 to i32
  %52 = add i32 %div, %51
  %idxprom20 = sext i32 %52 to i64
  %arrayidx21 = getelementptr i64, i64* %bitmap, i64 %idxprom20
  %53 = load i64, i64* %arrayidx21, align 8
  %or = or i64 %53, %shl10
  store i64 %or, i64* %arrayidx21, align 8
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count88
  br i1 %exitcond89.not, label %done, label %for.body18, !llvm.loop !18

for.body29:                                       ; preds = %for.body29.preheader, %for.body29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body29 ], [ %indvars.iv.ph, %for.body29.preheader ]
  %54 = trunc i64 %indvars.iv to i32
  %55 = add i32 %div, %54
  %idxprom31 = sext i32 %55 to i64
  %arrayidx32 = getelementptr i64, i64* %bitmap, i64 %idxprom31
  %56 = load i64, i64* %arrayidx32, align 8
  %and33 = and i64 %56, %neg
  store i64 %and33, i64* %arrayidx32, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %done, label %for.body29, !llvm.loop !19

done:                                             ; preds = %for.body29, %for.body18, %for.body, %for.cond, %middle.block, %middle.block110, %for.cond26.preheader, %for.cond15.preheader, %for.cond.preheader, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.cond15.preheader ], [ 0, %for.cond26.preheader ], [ 0, %middle.block110 ], [ 0, %middle.block ], [ 0, %for.body ], [ 1, %for.cond ], [ 0, %for.body18 ], [ 0, %for.body29 ]
  ret i32 %ret.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @bitmap_release_region(i64* nocapture noundef %bitmap, i32 noundef %pos, i32 noundef %order) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__reg_op(i64* noundef %bitmap, i32 noundef %pos, i32 noundef %order, i32 noundef 2) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @bitmap_allocate_region(i64* nocapture noundef %bitmap, i32 noundef %pos, i32 noundef %order) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__reg_op(i64* noundef %bitmap, i32 noundef %pos, i32 noundef %order, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @__reg_op(i64* noundef %bitmap, i32 noundef %pos, i32 noundef %order, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64* @bitmap_alloc(i32 noundef %nbits, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %div = lshr i64 %sub, 6
  %call = call fastcc i8* @kmalloc_array(i64 noundef %div, i32 noundef %flags) #11
  %0 = bitcast i8* %call to i64*
  ret i64* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i32 noundef %flags) unnamed_addr #4 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !20

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64* @bitmap_zalloc(i32 noundef %nbits, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %or = or i32 %flags, 256
  %call = call i64* @bitmap_alloc(i32 noundef %nbits, i32 noundef %or) #11
  ret i64* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bitmap_free(i64* noundef %bitmap) local_unnamed_addr #4 {
entry:
  %0 = bitcast i64* %bitmap to i8*
  call void @kfree(i8* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64* @devm_bitmap_alloc(%struct.device* noundef %dev, i32 noundef %nbits, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %call = call i64* @bitmap_alloc(i32 noundef %nbits, i32 noundef %flags) #11
  %tobool.not = icmp eq i64* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i64* %call to i8*
  %call1 = call fastcc i32 @devm_add_action_or_reset(%struct.device* noundef %dev, i8* noundef nonnull %0) #11
  %tobool2.not = icmp eq i32 %call1, 0
  %call. = select i1 %tobool2.not, i64* %call, i64* null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64* [ null, %entry ], [ %call., %if.end ]
  ret i64* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @devm_add_action_or_reset(%struct.device* noundef %dev, i8* noundef %data) unnamed_addr #4 {
entry:
  %call = call i32 @devm_add_action(%struct.device* noundef %dev, void (i8*)* noundef nonnull @devm_bitmap_free, i8* noundef %data) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @devm_bitmap_free(i8* noundef %data) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_bitmap_free(i8* noundef %data) #4 {
entry:
  %0 = bitcast i8* %data to i64*
  call void @bitmap_free(i64* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64* @devm_bitmap_zalloc(%struct.device* noundef %dev, i32 noundef %nbits, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %or = or i32 %flags, 256
  %call = call i64* @devm_bitmap_alloc(%struct.device* noundef %dev, i32 noundef %nbits, i32 noundef %or) #11
  ret i64* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @bitmap_from_arr32(i64* nocapture noundef %bitmap, i32* nocapture noundef readonly %buf, i32 noundef %nbits) local_unnamed_addr #3 {
entry:
  %sub = add i32 %nbits, 31
  %div = lshr i32 %sub, 5
  %cmp36.not = icmp ult i32 %sub, 32
  br i1 %cmp36.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr i32, i32* %buf, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %1 to i64
  %2 = lshr exact i64 %indvars.iv, 1
  %arrayidx3 = getelementptr i64, i64* %bitmap, i64 %2
  store i64 %conv, i64* %arrayidx3, align 8
  %3 = or i64 %indvars.iv, 1
  %cmp4 = icmp ult i64 %3, %0
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx7 = getelementptr i32, i32* %buf, i64 %3
  %4 = load i32, i32* %arrayidx7, align 4
  %conv8 = zext i32 %4 to i64
  %shl = shl nuw i64 %conv8, 32
  %or = or i64 %shl, %conv
  store i64 %or, i64* %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %rem = and i32 %nbits, 63
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end20, label %if.then13

if.then13:                                        ; preds = %for.end
  %sub14 = sub i32 0, %nbits
  %and = and i32 %sub14, 63
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 -1, %sh_prom
  %sub15 = add nsw i32 %div, -1
  %div16 = lshr i32 %sub15, 1
  %idxprom17 = zext i32 %div16 to i64
  %arrayidx18 = getelementptr i64, i64* %bitmap, i64 %idxprom17
  %5 = load i64, i64* %arrayidx18, align 8
  %and19 = and i64 %5, %shr
  store i64 %and19, i64* %arrayidx18, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %for.end
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @bitmap_to_arr32(i32* nocapture noundef %buf, i64* nocapture noundef readonly %bitmap, i32 noundef %nbits) local_unnamed_addr #3 {
entry:
  %sub = add i32 %nbits, 31
  %div = lshr i32 %sub, 5
  %cmp37.not = icmp ult i32 %sub, 32
  br i1 %cmp37.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %1 = lshr exact i64 %indvars.iv, 1
  %arrayidx = getelementptr i64, i64* %bitmap, i64 %1
  %2 = load i64, i64* %arrayidx, align 8
  %conv = trunc i64 %2 to i32
  %arrayidx3 = getelementptr i32, i32* %buf, i64 %indvars.iv
  store i32 %conv, i32* %arrayidx3, align 4
  %3 = or i64 %indvars.iv, 1
  %cmp4 = icmp ult i64 %3, %0
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %4 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %4, 32
  %conv9 = trunc i64 %shr to i32
  %arrayidx11 = getelementptr i32, i32* %buf, i64 %3
  store i32 %conv9, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %rem = and i32 %nbits, 63
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end21, label %if.then13

if.then13:                                        ; preds = %for.end
  %sub14 = sub i32 0, %nbits
  %and15 = and i32 %sub14, 31
  %shr16 = lshr i32 -1, %and15
  %sub17 = add nsw i32 %div, -1
  %idxprom18 = zext i32 %sub17 to i64
  %arrayidx19 = getelementptr i32, i32* %buf, i64 %idxprom18
  %5 = load i32, i32* %arrayidx19, align 4
  %and20 = and i32 %5, %shr16
  store i32 %and20, i32* %arrayidx19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__arch_hweight64(i64 noundef %w) unnamed_addr #4 {
entry:
  %call = call i64 @__sw_hweight64(i64 noundef %w) #10
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__sw_hweight64(i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memory_read_from_buffer(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @__end_of_region(i8 noundef %c) unnamed_addr #6 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 32
  %cmp = icmp ne i8 %2, 0
  %cmp4 = icmp eq i8 %c, 44
  %3 = or i1 %cmp4, %cmp
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @end_of_str(i8 noundef %c) unnamed_addr #6 {
entry:
  %cmp = icmp eq i8 %c, 0
  %cmp3 = icmp eq i8 %c, 10
  %0 = or i1 %cmp, %cmp3
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @bitmap_getnum(i8* noundef %str, i32* nocapture noundef writeonly %num, i32 noundef %lastbit) unnamed_addr #4 {
entry:
  %n = alloca i64, align 8
  %0 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %n, align 8, !annotation !15
  %1 = load i8, i8* %str, align 1
  %cmp = icmp eq i8 %1, 78
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %lastbit, i32* %num, align 4
  %add.ptr = getelementptr i8, i8* %str, i64 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @_parse_integer(i8* noundef %str, i32 noundef 10, i64* noundef nonnull %n) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp sgt i32 %call, -1
  br i1 %tobool5.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %if.end4
  %2 = load i64, i64* %n, align 8
  %3 = icmp ult i64 %2, 4294967296
  br i1 %3, label %if.end12, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false, %if.end4
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -75) #11
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %conv6 = trunc i64 %2 to i32
  store i32 %conv6, i32* %num, align 4
  %idx.ext = zext i32 %call to i64
  %add.ptr14 = getelementptr i8, i8* %str, i64 %idx.ext
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then2, %if.then
  %retval.0 = phi i8* [ %add.ptr, %if.then ], [ %call11, %if.then10 ], [ %add.ptr14, %if.end12 ], [ %call3, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @end_of_region(i8 noundef %c) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @__end_of_region(i8 noundef %c) #11
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i1 @end_of_str(i8 noundef %c) #11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #6 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !21
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(%struct.device* noundef, void (i8*)* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !11, !8}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !11, !8}
!13 = distinct !{!13, !11, !8}
!14 = distinct !{!14, !11, !8}
!15 = !{!"auto-init"}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2147819163, i64 2147819674, i64 2147819704, i64 2147819730, i64 2147819762, i64 2147819791}
