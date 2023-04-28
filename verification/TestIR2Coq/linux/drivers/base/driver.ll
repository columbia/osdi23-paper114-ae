; ModuleID = 'drivers/base/driver.c'
source_filename = "drivers/base/driver.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
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
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.lock_class_key = type {}
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.driver_attribute = type { %struct.attribute, i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*, i64)* }

@.str = private unnamed_addr constant [94 x i8] c"\013Driver '%s' was unable to register with bus_type '%s' because the bus was not initialized.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\014Driver '%s' needs updating - please use bus_type methods\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\013Error: Driver '%s' is already registered, aborting...\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unexpected driver unregister!\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @driver_for_each_device(%struct.device_driver* noundef readonly %drv, %struct.device* noundef readonly %start, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %fn) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.device_driver* %drv, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %1 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %klist_devices = getelementptr inbounds %struct.driver_private, %struct.driver_private* %1, i64 0, i32 1
  %tobool1.not = icmp eq %struct.device* %start, null
  br i1 %tobool1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %p2 = getelementptr inbounds %struct.device, %struct.device* %start, i64 0, i32 2
  %2 = load %struct.device_private*, %struct.device_private** %p2, align 8
  %knode_driver = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.klist_node* [ %knode_driver, %cond.true ], [ null, %if.end ]
  call void @klist_iter_init_node(%struct.klist* noundef %klist_devices, %struct.klist_iter* noundef nonnull %i, %struct.klist_node* noundef %cond) #6
  br label %land.rhs

land.rhs:                                         ; preds = %cond.end, %while.body
  %call = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #7
  %tobool4.not = icmp eq %struct.device* %call, null
  br i1 %tobool4.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call5 = call i32 %fn(%struct.device* noundef nonnull %call, i8* noundef %data) #6
  %tobool3.not = icmp eq i32 %call5, 0
  br i1 %tobool3.not, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs
  %error.0.lcssa = phi i32 [ %call5, %while.body ], [ 0, %land.rhs ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %error.0.lcssa, %while.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init_node(%struct.klist* noundef, %struct.klist_iter* noundef, %struct.klist_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @next_device(%struct.klist_iter* noundef %i) unnamed_addr #0 {
entry:
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef %i) #6
  %tobool.not = icmp eq %struct.klist_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %call, i64 -3, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dev.0 = phi %struct.device* [ %1, %if.then ], [ null, %entry ]
  ret %struct.device* %dev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(%struct.klist_iter* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @driver_find_device(%struct.device_driver* noundef readonly %drv, %struct.device* noundef readonly %start, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %match) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.device_driver* %drv, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %1 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %tobool1.not = icmp eq %struct.driver_private* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %klist_devices = getelementptr inbounds %struct.driver_private, %struct.driver_private* %1, i64 0, i32 1
  %tobool3.not = icmp eq %struct.device* %start, null
  br i1 %tobool3.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %p4 = getelementptr inbounds %struct.device, %struct.device* %start, i64 0, i32 2
  %2 = load %struct.device_private*, %struct.device_private** %p4, align 8
  %knode_driver = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.klist_node* [ %knode_driver, %cond.true ], [ null, %if.end ]
  call void @klist_iter_init_node(%struct.klist* noundef %klist_devices, %struct.klist_iter* noundef nonnull %i, %struct.klist_node* noundef %cond) #6
  %call19 = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #7
  %tobool5.not20 = icmp eq %struct.device* %call19, null
  br i1 %tobool5.not20, label %while.end, label %while.body

while.body:                                       ; preds = %cond.end, %if.end11
  %call21 = phi %struct.device* [ %call, %if.end11 ], [ %call19, %cond.end ]
  %call6 = call i32 %match(%struct.device* noundef nonnull %call21, i8* noundef %data) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call8 = call %struct.device* @get_device(%struct.device* noundef nonnull %call21) #6
  %tobool9.not = icmp eq %struct.device* %call8, null
  br i1 %tobool9.not, label %if.end11, label %while.end

if.end11:                                         ; preds = %land.lhs.true, %while.body
  %call = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #7
  %tobool5.not = icmp eq %struct.device* %call, null
  br i1 %tobool5.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end11, %land.lhs.true, %cond.end
  %call.lcssa = phi %struct.device* [ null, %cond.end ], [ %call21, %land.lhs.true ], [ null, %if.end11 ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %while.end
  %retval.0 = phi %struct.device* [ %call.lcssa, %while.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret %struct.device* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @driver_create_file(%struct.device_driver* noundef readonly %drv, %struct.driver_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_driver* %drv, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %0 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %0, i64 0, i32 0
  %attr1 = getelementptr inbounds %struct.driver_attribute, %struct.driver_attribute* %attr, i64 0, i32 0
  %call = call fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %error.0 = phi i32 [ %call, %if.then ], [ -22, %entry ]
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @driver_remove_file(%struct.device_driver* noundef readonly %drv, %struct.driver_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_driver* %drv, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %0 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %0, i64 0, i32 0
  %attr1 = getelementptr inbounds %struct.driver_attribute, %struct.driver_attribute* %attr, i64 0, i32 0
  call fastcc void @sysfs_remove_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysfs_remove_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  call void @sysfs_remove_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @driver_add_groups(%struct.device_driver* nocapture noundef readonly %drv, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %0 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %0, i64 0, i32 0
  %call = call i32 @sysfs_create_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @driver_remove_groups(%struct.device_driver* nocapture noundef readonly %drv, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %0 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %0, i64 0, i32 0
  call void @sysfs_remove_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @driver_register(%struct.device_driver* noundef %drv) local_unnamed_addr #0 {
entry:
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 1
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %tobool.not = icmp eq %struct.subsys_private* %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %name2 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 0
  %3 = load i8*, i8** %name2, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %probe = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 8
  %4 = load i32 (%struct.device*)*, i32 (%struct.device*)** %probe, align 8
  %tobool4.not = icmp eq i32 (%struct.device*)* %4, null
  br i1 %tobool4.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %probe5 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 8
  %5 = load i32 (%struct.device*)*, i32 (%struct.device*)** %probe5, align 8
  %tobool6.not = icmp eq i32 (%struct.device*)* %5, null
  br i1 %tobool6.not, label %lor.lhs.false, label %do.end21

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %remove = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 10
  %6 = load void (%struct.device*)*, void (%struct.device*)** %remove, align 8
  %tobool8.not = icmp eq void (%struct.device*)* %6, null
  br i1 %tobool8.not, label %lor.lhs.false12, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %remove10 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 10
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %remove10, align 8
  %tobool11.not = icmp eq i32 (%struct.device*)* %7, null
  br i1 %tobool11.not, label %lor.lhs.false12, label %do.end21

lor.lhs.false12:                                  ; preds = %land.lhs.true9, %lor.lhs.false
  %shutdown = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 11
  %8 = load void (%struct.device*)*, void (%struct.device*)** %shutdown, align 8
  %tobool14.not = icmp eq void (%struct.device*)* %8, null
  br i1 %tobool14.not, label %if.end25, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %lor.lhs.false12
  %shutdown16 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 11
  %9 = load void (%struct.device*)*, void (%struct.device*)** %shutdown16, align 8
  %tobool17.not = icmp eq void (%struct.device*)* %9, null
  br i1 %tobool17.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %land.lhs.true, %land.lhs.true9, %land.lhs.true15
  %name23 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %10 = load i8*, i8** %name23, align 8
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* noundef %10) #8
  %.pre = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %land.lhs.true15, %lor.lhs.false12
  %11 = phi %struct.bus_type* [ %.pre, %do.end21 ], [ %0, %land.lhs.true15 ], [ %0, %lor.lhs.false12 ]
  %name26 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %12 = load i8*, i8** %name26, align 8
  %call28 = call %struct.device_driver* @driver_find(i8* noundef %12, %struct.bus_type* noundef %11) #7
  %tobool29.not = icmp eq %struct.device_driver* %call28, null
  br i1 %tobool29.not, label %if.end37, label %do.end33

do.end33:                                         ; preds = %if.end25
  %13 = load i8*, i8** %name26, align 8
  %call36 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* noundef %13) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %call38 = call i32 @bus_add_driver(%struct.device_driver* noundef %drv) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %cleanup

if.end41:                                         ; preds = %if.end37
  %groups = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 14
  %14 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8
  %call42 = call i32 @driver_add_groups(%struct.device_driver* noundef %drv, %struct.attribute_group** noundef %14) #7
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @bus_remove_driver(%struct.device_driver* noundef %drv) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %p46 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %15 = load %struct.driver_private*, %struct.driver_private** %p46, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %15, i64 0, i32 0
  %call47 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end45, %if.then44, %do.end33, %do.end
  %retval.0 = phi i32 [ -16, %do.end33 ], [ %call42, %if.then44 ], [ 0, %if.end45 ], [ -22, %do.end ], [ %call38, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_driver* @driver_find(i8* noundef %name, %struct.bus_type* nocapture noundef readonly %bus) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %bus, i64 0, i32 20
  %0 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %drivers_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %0, i64 0, i32 4
  %1 = load %struct.kset*, %struct.kset** %drivers_kset, align 8
  %call = call %struct.kobject* @kset_find_obj(%struct.kset* noundef %1, i8* noundef %name) #6
  %tobool.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  call void @kobject_put(%struct.kobject* noundef nonnull %call) #6
  %driver = getelementptr inbounds %struct.kobject, %struct.kobject* %call, i64 2, i32 1, i32 1
  %2 = bitcast %struct.list_head** %driver to %struct.device_driver**
  %3 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.device_driver* [ %3, %if.then ], [ null, %entry ]
  ret %struct.device_driver* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_add_driver(%struct.device_driver* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_remove_driver(%struct.device_driver* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @driver_unregister(%struct.device_driver* noundef %drv) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_driver* %drv, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %0 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %tobool1.not = icmp eq %struct.driver_private* %0, null
  br i1 %tobool1.not, label %do.end, label %if.end19

do.end:                                           ; preds = %entry, %lor.lhs.false
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #6
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/driver.c\22; .popsection; .long 14472b - 14470b; .short 194; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #5, !srcloc !8
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  %groups = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 14
  %1 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8
  call void @driver_remove_groups(%struct.device_driver* noundef nonnull %drv, %struct.attribute_group** noundef %1) #7
  call void @bus_remove_driver(%struct.device_driver* noundef nonnull %drv) #6
  br label %return

return:                                           ; preds = %if.end19, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kset_find_obj(%struct.kset* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.klist_node* @klist_next(%struct.klist_iter* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2152355970}
