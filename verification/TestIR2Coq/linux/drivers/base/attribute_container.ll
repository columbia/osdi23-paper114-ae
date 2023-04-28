; ModuleID = 'drivers/base/attribute_container.c'
source_filename = "drivers/base/attribute_container.c"
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
%struct.kmem_cache = type opaque
%struct.attribute_container = type { %struct.list_head, %struct.klist, %struct.class*, %struct.attribute_group*, %struct.device_attribute**, i32 (%struct.attribute_container*, %struct.device*)*, i64 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.2, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.2 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iommu_ops = type opaque
%struct.lock_class_key = type {}
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.51, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.52, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.53, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.36 }
%union.anon.36 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.33, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.18, %union.anon.19, i32 }
%struct.request_queue = type opaque
%union.anon.18 = type { %struct.list_head }
%union.anon.19 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.20 }
%struct.anon.20 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.24 }
%struct.anon.24 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.32, i32, [12 x i8] }
%union.anon.32 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.33 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.34, %union.anon.49, %struct.atomic_t, [8 x i8] }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.49 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.17 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.17 = type { %struct.callback_head }
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
%union.anon.51 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.52 = type { %struct.callback_head }
%union.anon.53 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.device_type = type { i8*, %struct.attribute_group**, {}*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.fwnode_handle = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }

@attribute_container_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @attribute_container_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @attribute_container_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@attribute_container_list = internal global %struct.list_head { %struct.list_head* @attribute_container_list, %struct.list_head* @attribute_container_list }, align 8
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate class container\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* nocapture noundef readonly %classdev) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %classdev, i64 -1, i32 32
  %cont = getelementptr inbounds %struct.attribute_group**, %struct.attribute_group*** %add.ptr, i64 4
  %0 = bitcast %struct.attribute_group*** %cont to %struct.attribute_container**
  %1 = load %struct.attribute_container*, %struct.attribute_container** %0, align 8
  ret %struct.attribute_container* %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @attribute_container_register(%struct.attribute_container* noundef %cont) local_unnamed_addr #2 {
entry:
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node) #8
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 1
  call void @klist_init(%struct.klist* noundef %containers, void (%struct.klist_node*)* noundef nonnull @internal_container_klist_get, void (%struct.klist_node*)* noundef nonnull @internal_container_klist_put) #9
  call void @mutex_lock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  call fastcc void @list_add_tail(%struct.list_head* noundef %node) #8
  call void @mutex_unlock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(%struct.klist* noundef, void (%struct.klist_node*)* noundef, void (%struct.klist_node*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @internal_container_klist_get(%struct.klist_node* noundef %n) #2 {
entry:
  %classdev = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 1, i32 1
  %0 = bitcast %struct.list_head* %classdev to %struct.device*
  %call = call %struct.device* @get_device(%struct.device* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @internal_container_klist_put(%struct.klist_node* noundef %n) #2 {
entry:
  %classdev = getelementptr inbounds %struct.klist_node, %struct.klist_node* %n, i64 1, i32 1
  %0 = bitcast %struct.list_head* %classdev to %struct.device*
  call void @put_device(%struct.device* noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #3 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @attribute_container_list, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @attribute_container_unregister(%struct.attribute_container* noundef %cont) local_unnamed_addr #2 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  %rlock.i = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %k_list = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 1, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %k_list) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %node) #8
  br label %out

out:                                              ; preds = %entry, %if.end
  %retval1.0 = phi i32 [ 0, %if.end ], [ -16, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #9
  call void @mutex_unlock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  ret i32 %retval1.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @attribute_container_add_device(%struct.device* noundef %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef readonly %fn) local_unnamed_addr #2 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  %cont.062 = load %struct.attribute_container*, %struct.attribute_container** bitcast (%struct.list_head* @attribute_container_list to %struct.attribute_container**), align 8
  %node63 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.062, i64 0, i32 0
  %cmp.not64 = icmp eq %struct.list_head* %node63, @attribute_container_list
  br i1 %cmp.not64, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool21.not = icmp eq i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %cont.065 = phi %struct.attribute_container* [ %cont.062, %for.body.lr.ph ], [ %cont.0, %cleanup ]
  %call = call fastcc i32 @attribute_container_no_classdevs(%struct.attribute_container* noundef %cont.065) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.065, i64 0, i32 5
  %0 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8
  %call1 = call i32 %0(%struct.attribute_container* noundef %cont.065, %struct.device* noundef %dev) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i8* @kzalloc() #8
  %tobool6.not = icmp eq i8* %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end11

do.end10:                                         ; preds = %if.end4
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %cont12 = getelementptr inbounds i8, i8* %call5, i64 32
  %1 = bitcast i8* %cont12 to %struct.attribute_container**
  store %struct.attribute_container* %cont.065, %struct.attribute_container** %1, align 8
  %classdev = getelementptr inbounds i8, i8* %call5, i64 40
  %2 = bitcast i8* %classdev to %struct.device*
  call void @device_initialize(%struct.device* noundef %2) #9
  %call13 = call %struct.device* @get_device(%struct.device* noundef %dev) #9
  %parent = getelementptr inbounds i8, i8* %call5, i64 104
  %3 = bitcast i8* %parent to %struct.device**
  store %struct.device* %call13, %struct.device** %3, align 8
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.065, i64 0, i32 2
  %4 = load %struct.class*, %struct.class** %class, align 8
  %class16 = getelementptr inbounds i8, i8* %call5, i64 464
  %5 = bitcast i8* %class16 to %struct.class**
  store %struct.class* %4, %struct.class** %5, align 8
  %6 = load %struct.class*, %struct.class** %class, align 8
  %dev_release = getelementptr inbounds %struct.class, %struct.class* %6, i64 0, i32 8
  store void (%struct.device*)* @attribute_container_release, void (%struct.device*)** %dev_release, align 8
  %call19 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #8
  %call20 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call19) #9
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end11
  %call24 = call i32 %fn(%struct.attribute_container* noundef %cont.065, %struct.device* noundef %dev, %struct.device* noundef %2) #9
  br label %if.end27

if.else:                                          ; preds = %if.end11
  %call26 = call i32 @attribute_container_add_class_device(%struct.device* noundef %2) #8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  %node28 = bitcast i8* %call5 to %struct.klist_node*
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.065, i64 0, i32 1
  call void @klist_add_tail(%struct.klist_node* noundef nonnull %node28, %struct.klist* noundef %containers) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body, %if.end27, %do.end10
  %7 = bitcast %struct.attribute_container* %cont.065 to %struct.attribute_container**
  %cont.0 = load %struct.attribute_container*, %struct.attribute_container** %7, align 8
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @attribute_container_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @attribute_container_no_classdevs(%struct.attribute_container* nocapture noundef readonly %atc) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %atc, i64 0, i32 6
  %0 = load i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv = and i32 %1, 1
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #2 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #9
  ret i8* %call.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @attribute_container_release(%struct.device* noundef %classdev) #2 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %classdev, i64 -1, i32 32
  %0 = bitcast %struct.attribute_group*** %add.ptr to i8*
  %parent = getelementptr inbounds %struct.device, %struct.device* %classdev, i64 0, i32 1
  %1 = load %struct.device*, %struct.device** %parent, align 8
  call void @kfree(i8* noundef %0) #9
  call void @put_device(%struct.device* noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @attribute_container_add_class_device(%struct.device* noundef %classdev) local_unnamed_addr #2 {
entry:
  %call = call i32 @device_add(%struct.device* noundef %classdev) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @attribute_container_add_attrs(%struct.device* noundef %classdev) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(%struct.klist_node* noundef, %struct.klist* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @attribute_container_remove_device(%struct.device* noundef %dev, void (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef readonly %fn) local_unnamed_addr #2 {
entry:
  %iter = alloca %struct.klist_iter, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  %cont.062 = load %struct.attribute_container*, %struct.attribute_container** bitcast (%struct.list_head* @attribute_container_list to %struct.attribute_container**), align 8
  %node63 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.062, i64 0, i32 0
  %cmp.not64 = icmp eq %struct.list_head* %node63, @attribute_container_list
  br i1 %cmp.not64, label %for.end36, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = bitcast %struct.klist_iter* %iter to i8*
  %tobool22.not = icmp eq void (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %cont.065 = phi %struct.attribute_container* [ %cont.062, %for.body.lr.ph ], [ %cont.0, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call fastcc i32 @attribute_container_no_classdevs(%struct.attribute_container* noundef %cont.065) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.065, i64 0, i32 5
  %1 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8
  %call1 = call i32 %1(%struct.attribute_container* noundef %cont.065, %struct.device* noundef %dev) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.065, i64 0, i32 1
  call void @klist_iter_init(%struct.klist* noundef %containers, %struct.klist_iter* noundef nonnull %iter) #9
  %call659 = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool8.not60 = icmp eq %struct.klist_node* %call659, null
  br i1 %tobool8.not60, label %cond.end.thread, label %for.body17

cond.end.thread:                                  ; preds = %for.cond5.backedge, %if.end4
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %iter) #9
  br label %cleanup

for.body17:                                       ; preds = %if.end4, %for.cond5.backedge
  %call661 = phi %struct.klist_node* [ %call6, %for.cond5.backedge ], [ %call659, %if.end4 ]
  %classdev = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call661, i64 1, i32 1
  %2 = bitcast %struct.list_head* %classdev to %struct.device*
  %parent = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call661, i64 3, i32 1
  %3 = bitcast %struct.list_head* %parent to %struct.device**
  %4 = load %struct.device*, %struct.device** %3, align 8
  %cmp18.not = icmp eq %struct.device* %4, %dev
  br i1 %cmp18.not, label %if.end20, label %for.cond5.backedge

if.end20:                                         ; preds = %for.body17
  call void @klist_del(%struct.klist_node* noundef nonnull %call661) #9
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void %fn(%struct.attribute_container* noundef %cont.065, %struct.device* noundef %dev, %struct.device* noundef %2) #9
  br label %for.cond5.backedge

if.else:                                          ; preds = %if.end20
  call void @attribute_container_remove_attrs(%struct.device* noundef %2) #8
  call void @device_unregister(%struct.device* noundef %2) #9
  br label %for.cond5.backedge

for.cond5.backedge:                               ; preds = %if.then23, %if.else, %for.body17
  %call6 = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool8.not = icmp eq %struct.klist_node* %call6, null
  br i1 %tobool8.not, label %cond.end.thread, label %for.body17

cleanup:                                          ; preds = %cond.end.thread, %if.end, %for.body
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  %5 = bitcast %struct.attribute_container* %cont.065 to %struct.attribute_container**
  %cont.0 = load %struct.attribute_container*, %struct.attribute_container** %5, align 8
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @attribute_container_list
  br i1 %cmp.not, label %for.end36, label %for.body

for.end36:                                        ; preds = %cleanup, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init(%struct.klist* noundef, %struct.klist_iter* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.klist_node* @klist_next(%struct.klist_iter* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(%struct.klist_iter* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_del(%struct.klist_node* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @attribute_container_remove_attrs(%struct.device* noundef %classdev) local_unnamed_addr #2 {
entry:
  %call = call %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* noundef %classdev) #8
  %attrs1 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %call, i64 0, i32 4
  %0 = load %struct.device_attribute**, %struct.device_attribute*** %attrs1, align 8
  %tobool.not = icmp eq %struct.device_attribute** %0, null
  %grp = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %call, i64 0, i32 3
  %1 = load %struct.attribute_group*, %struct.attribute_group** %grp, align 8
  %tobool2.not = icmp eq %struct.attribute_group* %1, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool2.not, label %cleanup, label %if.then5

if.end:                                           ; preds = %entry
  br i1 %tobool2.not, label %for.cond.preheader, label %if.then5

for.cond.preheader:                               ; preds = %if.end
  %2 = load %struct.device_attribute*, %struct.device_attribute** %0, align 8
  %tobool8.not26 = icmp eq %struct.device_attribute* %2, null
  br i1 %tobool8.not26, label %cleanup, label %for.body

if.then5:                                         ; preds = %land.lhs.true, %if.end
  %kobj = getelementptr inbounds %struct.device, %struct.device* %classdev, i64 0, i32 0
  call void @sysfs_remove_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull %1) #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %3 = phi %struct.device_attribute* [ %4, %for.body ], [ %2, %for.cond.preheader ]
  %i.027 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @device_remove_file(%struct.device* noundef %classdev, %struct.device_attribute* noundef nonnull %3) #9
  %inc = add i32 %i.027, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.device_attribute*, %struct.device_attribute** %0, i64 %idxprom
  %4 = load %struct.device_attribute*, %struct.device_attribute** %arrayidx, align 8
  %tobool8.not = icmp eq %struct.device_attribute* %4, null
  br i1 %tobool8.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %land.lhs.true, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @attribute_container_device_trigger_safe(%struct.device* noundef %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* nocapture noundef readonly %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef %undo) local_unnamed_addr #2 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  %cont.0102 = load %struct.attribute_container*, %struct.attribute_container** bitcast (%struct.list_head* @attribute_container_list to %struct.attribute_container**), align 8
  %node103 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.0102, i64 0, i32 0
  %cmp.not104 = icmp eq %struct.list_head* %node103, @attribute_container_list
  br i1 %cmp.not104, label %if.end68, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %cont.0105 = phi %struct.attribute_container* [ %cont.0, %for.inc ], [ %cont.0102, %entry ]
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.0105, i64 0, i32 5
  %0 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8
  %call = call i32 %0(%struct.attribute_container* noundef %cont.0105, %struct.device* noundef %dev) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call1 = call fastcc i32 @do_attribute_container_device_trigger_safe(%struct.device* noundef %dev, %struct.attribute_container* noundef %cont.0105, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef %undo) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.inc, label %land.lhs.true

for.inc:                                          ; preds = %if.end, %for.body
  %1 = bitcast %struct.attribute_container* %cont.0105 to %struct.attribute_container**
  %cont.0 = load %struct.attribute_container*, %struct.attribute_container** %1, align 8
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @attribute_container_list
  br i1 %cmp.not, label %if.end68, label %for.body

land.lhs.true:                                    ; preds = %if.end
  %tobool13.not = icmp eq i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %undo, null
  br i1 %tobool13.not, label %if.then23, label %for.cond41.preheader, !prof !8

for.cond41.preheader:                             ; preds = %land.lhs.true
  %cont.1107 = load %struct.attribute_container*, %struct.attribute_container** bitcast (%struct.list_head* @attribute_container_list to %struct.attribute_container**), align 8
  %node42108 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.1107, i64 0, i32 0
  %cmp43.not109 = icmp eq %struct.list_head* %node42108, @attribute_container_list
  %cmp48110 = icmp eq %struct.attribute_container* %cont.0105, %cont.1107
  %or.cond111 = or i1 %cmp43.not109, %cmp48110
  br i1 %or.cond111, label %if.end68, label %if.end51

if.then23:                                        ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/attribute_container.c\22; .popsection; .long 14472b - 14470b; .short 323; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  br label %if.end68

if.end51:                                         ; preds = %for.cond41.preheader, %for.inc58
  %cont.1112 = phi %struct.attribute_container* [ %cont.1, %for.inc58 ], [ %cont.1107, %for.cond41.preheader ]
  %match52 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.1112, i64 0, i32 5
  %2 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match52, align 8
  %call53 = call i32 %2(%struct.attribute_container* noundef %cont.1112, %struct.device* noundef %dev) #9
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %for.inc58, label %if.end56

if.end56:                                         ; preds = %if.end51
  %call57 = call fastcc i32 @do_attribute_container_device_trigger_safe(%struct.device* noundef %dev, %struct.attribute_container* noundef %cont.1112, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef nonnull %undo, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef null) #8
  br label %for.inc58

for.inc58:                                        ; preds = %if.end51, %if.end56
  %3 = bitcast %struct.attribute_container* %cont.1112 to %struct.attribute_container**
  %cont.1 = load %struct.attribute_container*, %struct.attribute_container** %3, align 8
  %node42 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.1, i64 0, i32 0
  %cmp43.not = icmp eq %struct.list_head* %node42, @attribute_container_list
  %cmp48 = icmp eq %struct.attribute_container* %cont.0105, %cont.1
  %or.cond = or i1 %cmp43.not, %cmp48
  br i1 %or.cond, label %if.end68, label %if.end51

if.end68:                                         ; preds = %for.inc, %for.inc58, %entry, %for.cond41.preheader, %if.then23
  %ret.299 = phi i32 [ %call1, %if.then23 ], [ %call1, %for.cond41.preheader ], [ 0, %entry ], [ %call1, %for.inc58 ], [ 0, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  ret i32 %ret.299
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_attribute_container_device_trigger_safe(%struct.device* noundef %dev, %struct.attribute_container* noundef %cont, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* nocapture noundef readonly %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* noundef readonly %undo) unnamed_addr #2 {
entry:
  %iter = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call fastcc i32 @attribute_container_no_classdevs(%struct.attribute_container* noundef %cont) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 %fn(%struct.attribute_container* noundef %cont, %struct.device* noundef %dev, %struct.device* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 1
  call void @klist_iter_init(%struct.klist* noundef %containers, %struct.klist_iter* noundef nonnull %iter) #9
  %call283 = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool3.not84 = icmp eq %struct.klist_node* %call283, null
  br i1 %tobool3.not84, label %cond.end.thread, label %for.body

cond.end.thread:                                  ; preds = %if.end13, %if.end
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %iter) #9
  br label %cleanup

for.body:                                         ; preds = %if.end, %if.end13
  %call285 = phi %struct.klist_node* [ %call2, %if.end13 ], [ %call283, %if.end ]
  %parent = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call285, i64 3, i32 1
  %1 = bitcast %struct.list_head* %parent to %struct.device**
  %2 = load %struct.device*, %struct.device** %1, align 8
  %cmp6 = icmp eq %struct.device* %2, %dev
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %for.body
  %classdev = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call285, i64 1, i32 1
  %3 = bitcast %struct.list_head* %classdev to %struct.device*
  %call9 = call i32 %fn(%struct.attribute_container* noundef %cont, %struct.device* noundef %dev, %struct.device* noundef %3) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then7
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool14.not = icmp eq i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %undo, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end13:                                         ; preds = %if.then7, %for.body
  %call2 = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool3.not = icmp eq %struct.klist_node* %call2, null
  br i1 %tobool3.not, label %cond.end.thread, label %for.body

if.end16:                                         ; preds = %if.then11
  call void @klist_iter_init(%struct.klist* noundef %containers, %struct.klist_iter* noundef nonnull %iter) #9
  %call2086 = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool22.not87 = icmp eq %struct.klist_node* %call2086, null
  br i1 %tobool22.not87, label %cond.end32.thread, label %for.body35

cond.end32.thread:                                ; preds = %if.end45, %if.end16
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %iter) #9
  br label %cleanup

for.body35:                                       ; preds = %if.end16, %if.end45
  %call2088 = phi %struct.klist_node* [ %call20, %if.end45 ], [ %call2086, %if.end16 ]
  %cmp36 = icmp eq %struct.klist_node* %call2088, %call285
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body35
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %iter) #9
  br label %cleanup

if.end38:                                         ; preds = %for.body35
  %parent40 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call2088, i64 3, i32 1
  %4 = bitcast %struct.list_head* %parent40 to %struct.device**
  %5 = load %struct.device*, %struct.device** %4, align 8
  %cmp41 = icmp eq %struct.device* %5, %dev
  br i1 %cmp41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end38
  %classdev39 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call2088, i64 1, i32 1
  %6 = bitcast %struct.list_head* %classdev39 to %struct.device*
  %call44 = call i32 %undo(%struct.attribute_container* noundef %cont, %struct.device* noundef %dev, %struct.device* noundef %6) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end38
  %call20 = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool22.not = icmp eq %struct.klist_node* %call20, null
  br i1 %tobool22.not, label %cond.end32.thread, label %for.body35

cleanup:                                          ; preds = %cond.end32.thread, %cond.end.thread, %if.then37, %if.then11, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call9, %if.then11 ], [ %call9, %if.then37 ], [ 0, %cond.end.thread ], [ %call9, %cond.end32.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @attribute_container_device_trigger(%struct.device* noundef %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* nocapture noundef readonly %fn) local_unnamed_addr #2 {
entry:
  %iter = alloca %struct.klist_iter, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  %cont.057 = load %struct.attribute_container*, %struct.attribute_container** bitcast (%struct.list_head* @attribute_container_list to %struct.attribute_container**), align 8
  %node58 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.057, i64 0, i32 0
  %cmp.not59 = icmp eq %struct.list_head* %node58, @attribute_container_list
  br i1 %cmp.not59, label %for.end32, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = bitcast %struct.klist_iter* %iter to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %cont.060 = phi %struct.attribute_container* [ %cont.057, %for.body.lr.ph ], [ %cont.0, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.060, i64 0, i32 5
  %1 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8
  %call = call i32 %1(%struct.attribute_container* noundef %cont.060, %struct.device* noundef %dev) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %call1 = call fastcc i32 @attribute_container_no_classdevs(%struct.attribute_container* noundef %cont.060) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 %fn(%struct.attribute_container* noundef %cont.060, %struct.device* noundef %dev, %struct.device* noundef null) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.060, i64 0, i32 1
  call void @klist_iter_init(%struct.klist* noundef %containers, %struct.klist_iter* noundef nonnull %iter) #9
  %call754 = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool9.not55 = icmp eq %struct.klist_node* %call754, null
  br i1 %tobool9.not55, label %cond.end.thread, label %for.body18

cond.end.thread:                                  ; preds = %if.end23, %if.end5
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %iter) #9
  br label %cleanup

for.body18:                                       ; preds = %if.end5, %if.end23
  %call756 = phi %struct.klist_node* [ %call7, %if.end23 ], [ %call754, %if.end5 ]
  %parent = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call756, i64 3, i32 1
  %2 = bitcast %struct.list_head* %parent to %struct.device**
  %3 = load %struct.device*, %struct.device** %2, align 8
  %cmp19 = icmp eq %struct.device* %3, %dev
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %for.body18
  %classdev = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call756, i64 1, i32 1
  %4 = bitcast %struct.list_head* %classdev to %struct.device*
  %call22 = call i32 %fn(%struct.attribute_container* noundef %cont.060, %struct.device* noundef %dev, %struct.device* noundef %4) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %for.body18
  %call7 = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool9.not = icmp eq %struct.klist_node* %call7, null
  br i1 %tobool9.not, label %cond.end.thread, label %for.body18

cleanup:                                          ; preds = %cond.end.thread, %for.body, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  %5 = bitcast %struct.attribute_container* %cont.060 to %struct.attribute_container**
  %cont.0 = load %struct.attribute_container*, %struct.attribute_container** %5, align 8
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @attribute_container_list
  br i1 %cmp.not, label %for.end32, label %for.body

for.end32:                                        ; preds = %cleanup, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @attribute_container_trigger(%struct.device* noundef %dev, i32 (%struct.attribute_container*, %struct.device*)* nocapture noundef readonly %fn) local_unnamed_addr #2 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  %cont.017 = load %struct.attribute_container*, %struct.attribute_container** bitcast (%struct.list_head* @attribute_container_list to %struct.attribute_container**), align 8
  %node18 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.017, i64 0, i32 0
  %cmp.not19 = icmp eq %struct.list_head* %node18, @attribute_container_list
  br i1 %cmp.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %cont.020 = phi %struct.attribute_container* [ %cont.0, %for.inc ], [ %cont.017, %entry ]
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.020, i64 0, i32 5
  %0 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8
  %call = call i32 %0(%struct.attribute_container* noundef %cont.020, %struct.device* noundef %dev) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call1 = call i32 %fn(%struct.attribute_container* noundef %cont.020, %struct.device* noundef %dev) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %1 = bitcast %struct.attribute_container* %cont.020 to %struct.attribute_container**
  %cont.0 = load %struct.attribute_container*, %struct.attribute_container** %1, align 8
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @attribute_container_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @attribute_container_mutex) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @attribute_container_add_attrs(%struct.device* noundef %classdev) local_unnamed_addr #2 {
entry:
  %call = call %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* noundef %classdev) #8
  %attrs1 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %call, i64 0, i32 4
  %0 = load %struct.device_attribute**, %struct.device_attribute*** %attrs1, align 8
  %tobool.not = icmp eq %struct.device_attribute** %0, null
  %grp12 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %call, i64 0, i32 3
  %1 = load %struct.attribute_group*, %struct.attribute_group** %grp12, align 8
  %tobool13.not = icmp eq %struct.attribute_group* %1, null
  br i1 %tobool.not, label %land.lhs.true, label %land.rhs

land.rhs:                                         ; preds = %entry
  br i1 %tobool13.not, label %for.cond.preheader, label %do.body5, !prof !10

do.body5:                                         ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/attribute_container.c\22; .popsection; .long 14472b - 14470b; .short 424; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !11
  unreachable

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool13.not, label %cleanup, label %if.then18

for.cond.preheader:                               ; preds = %land.rhs
  %2 = load %struct.device_attribute*, %struct.device_attribute** %0, align 8
  %tobool22.not52 = icmp eq %struct.device_attribute* %2, null
  br i1 %tobool22.not52, label %cleanup, label %do.end25

if.then18:                                        ; preds = %land.lhs.true
  %kobj = getelementptr inbounds %struct.device, %struct.device* %classdev, i64 0, i32 0
  %call20 = call i32 @sysfs_create_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef nonnull %1) #9
  br label %cleanup

for.cond:                                         ; preds = %do.end25
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.device_attribute*, %struct.device_attribute** %0, i64 %idxprom
  %3 = load %struct.device_attribute*, %struct.device_attribute** %arrayidx, align 8
  %tobool22.not = icmp eq %struct.device_attribute* %3, null
  br i1 %tobool22.not, label %cleanup, label %do.end25

do.end25:                                         ; preds = %for.cond.preheader, %for.cond
  %4 = phi %struct.device_attribute* [ %3, %for.cond ], [ %2, %for.cond.preheader ]
  %i.053 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call28 = call i32 @device_create_file(%struct.device* noundef %classdev, %struct.device_attribute* noundef nonnull %4) #9
  %tobool29.not = icmp eq i32 %call28, 0
  %inc = add i32 %i.053, 1
  br i1 %tobool29.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %do.end25, %for.cond, %for.cond.preheader, %land.lhs.true, %if.then18
  %retval.0 = phi i32 [ %call20, %if.then18 ], [ 0, %land.lhs.true ], [ 0, %for.cond.preheader ], [ %call28, %do.end25 ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @attribute_container_add_class_device_adapter(%struct.attribute_container* nocapture noundef readnone %cont, %struct.device* nocapture noundef readnone %dev, %struct.device* noundef %classdev) local_unnamed_addr #2 {
entry:
  %call = call i32 @attribute_container_add_class_device(%struct.device* noundef %classdev) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @attribute_container_class_device_del(%struct.device* noundef %classdev) local_unnamed_addr #2 {
entry:
  call void @attribute_container_remove_attrs(%struct.device* noundef %classdev) #8
  call void @device_del(%struct.device* noundef %classdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @attribute_container_find_class_device(%struct.attribute_container* noundef %cont, %struct.device* noundef readnone %dev) local_unnamed_addr #2 {
entry:
  %iter = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %cont, i64 0, i32 1
  call void @klist_iter_init(%struct.klist* noundef %containers, %struct.klist_iter* noundef nonnull %iter) #9
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef nonnull %iter) #9
  %tobool.not = icmp eq %struct.klist_node* %call, null
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %parent = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call, i64 3, i32 1
  %1 = bitcast %struct.list_head* %parent to %struct.device**
  %2 = load %struct.device*, %struct.device** %1, align 8
  %cmp3 = icmp eq %struct.device* %2, %dev
  br i1 %cmp3, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %classdev = getelementptr inbounds %struct.klist_node, %struct.klist_node* %call, i64 1, i32 1
  %3 = bitcast %struct.list_head* %classdev to %struct.device*
  br label %for.end

for.end:                                          ; preds = %for.cond, %if.then
  %cdev.0 = phi %struct.device* [ %3, %if.then ], [ null, %for.cond ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %iter) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret %struct.device* %cdev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #3 {
entry:
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @attribute_container_list, i64 0, i32 1), align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @attribute_container_list, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #2 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #0 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { cold nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }

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
!9 = !{i64 2152399858}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152419027}
!12 = !{i64 2149375138}
!13 = !{i64 2147866000, i64 2147866033, i64 2147866086, i64 2147866145, i64 2147866179, i64 2147866234, i64 2147866263, i64 2147866283}
!14 = !{i64 2149382419}
!15 = !{i64 2149174649}
