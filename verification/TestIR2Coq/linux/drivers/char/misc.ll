; ModuleID = 'drivers/char/misc.c'
source_filename = "drivers/char/misc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_misc__221_291_misc_init4:\09\09\09"
module asm ".long\09misc_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.32 }
%union.anon.32 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.33, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.33 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.36 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.37, %struct.qspinlock }
%union.anon.37 = type { %struct.atomic_t }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.34 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%struct.request_queue = type opaque
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.17, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.31 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.64 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.64 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.16 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.16 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.5, i32 }
%union.anon.5 = type { %struct.kuid_t }
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
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.57 = type { %struct.callback_head }
%union.anon.58 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }

@misc_mtx = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @misc_mtx to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @misc_mtx to i8*), i64 16) to %struct.list_head*) } }, align 8
@misc_minors = internal global [2 x i64] zeroinitializer, align 8
@misc_list = internal global %struct.list_head { %struct.list_head* @misc_list, %struct.list_head* @misc_list }, align 8
@misc_class = internal unnamed_addr global %struct.class* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__UNIQUE_ID___addressable_misc_init222 = internal global i8* bitcast (i32 ()* @misc_init to i8*), section ".discard.addressable", align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@misc_seq_ops = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @misc_seq_start, void (%struct.seq_file*, i8*)* @misc_seq_stop, i8* (%struct.seq_file*, i8*, i64*)* @misc_seq_next, i32 (%struct.seq_file*, i8*)* @misc_seq_show }, align 8
@misc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@misc_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @misc_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"\013unable to get major %d for misc devices\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%3i %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_misc_init222 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @misc_register(%struct.miscdevice* noundef %misc) local_unnamed_addr #0 {
entry:
  %minor = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %misc, i64 0, i32 0
  %0 = load i32, i32* %minor, align 8
  %cmp = icmp eq i32 %0, 255
  %list = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %misc, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #8
  call void @mutex_lock(%struct.mutex* noundef nonnull @misc_mtx) #9
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %.pn94 = load i8*, i8** bitcast (%struct.list_head* @misc_list to i8**), align 8
  %cmp8.not95 = icmp eq i8* %.pn94, bitcast (%struct.list_head* @misc_list to i8*)
  br i1 %cmp8.not95, label %if.end26, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = load i32, i32* %minor, align 8
  br label %for.body

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @find_first_zero_bit() #8
  %conv = trunc i64 %call to i32
  %cmp1 = icmp sgt i32 %conv, 127
  br i1 %cmp1, label %out, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  %sub4 = sub i32 127, %conv
  store i32 %sub4, i32* %minor, align 8
  %sext = shl i64 %call, 32
  %conv6 = ashr exact i64 %sext, 32
  call fastcc void @set_bit(i64 noundef %conv6) #8
  br label %if.end26

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn96 = phi i8* [ %.pn94, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %c.0.in = getelementptr i8, i8* %.pn96, i64 -24
  %minor10 = bitcast i8* %c.0.in to i32*
  %2 = load i32, i32* %minor10, align 8
  %cmp12 = icmp eq i32 %2, %1
  br i1 %cmp12, label %out, label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn96 to i8**
  %.pn = load i8*, i8** %3, align 8
  %cmp8.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @misc_list to i8*)
  br i1 %cmp8.not, label %if.end26, label %for.body

if.end26:                                         ; preds = %for.inc, %for.cond.preheader, %cleanup.thread
  %4 = load i32, i32* %minor, align 8
  %or = or i32 %4, 10485760
  %5 = load %struct.class*, %struct.class** @misc_class, align 8
  %parent = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %misc, i64 0, i32 4
  %6 = load %struct.device*, %struct.device** %parent, align 8
  %7 = bitcast %struct.miscdevice* %misc to i8*
  %groups = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %misc, i64 0, i32 6
  %8 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8
  %name = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %misc, i64 0, i32 1
  %9 = load i8*, i8** %name, align 8
  %call28 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, %struct.attribute_group**, i8*, ...) @device_create_with_groups(%struct.class* noundef %5, %struct.device* noundef %6, i32 noundef %or, i8* noundef %7, %struct.attribute_group** noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %9) #9
  %this_device = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %misc, i64 0, i32 5
  store %struct.device* %call28, %struct.device** %this_device, align 8
  %10 = bitcast %struct.device* %call28 to i8*
  %call30 = call fastcc i1 @IS_ERR(i8* noundef %10) #8
  br i1 %call30, label %if.then31, label %if.end50

if.then31:                                        ; preds = %if.end26
  br i1 %cmp, label %if.then33, label %if.end46

if.then33:                                        ; preds = %if.then31
  %11 = load i32, i32* %minor, align 8
  %sub37 = sub i32 127, %11
  %12 = icmp ult i32 %sub37, 128
  br i1 %12, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then33
  %conv4393 = zext i32 %sub37 to i64
  call fastcc void @clear_bit(i64 noundef %conv4393) #8
  %.phi.trans.insert.phi.trans.insert = bitcast %struct.device** %this_device to i8**
  %.pre.pre = load i8*, i8** %.phi.trans.insert.phi.trans.insert, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then33, %if.then42
  %.pre = phi i8* [ %.pre.pre, %if.then42 ], [ %10, %if.then33 ]
  store i32 255, i32* %minor, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then31, %if.end44
  %13 = phi i8* [ %.pre, %if.end44 ], [ %10, %if.then31 ]
  %call48 = call fastcc i64 @PTR_ERR(i8* noundef %13) #8
  %conv49 = trunc i64 %call48 to i32
  br label %out

if.end50:                                         ; preds = %if.end26
  call fastcc void @list_add(%struct.list_head* noundef %list) #8
  br label %out

out:                                              ; preds = %for.body, %if.then, %if.end50, %if.end46
  %err.3 = phi i32 [ %conv49, %if.end46 ], [ 0, %if.end50 ], [ -16, %if.then ], [ -16, %for.body ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @misc_mtx) #9
  ret i32 %err.3
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #1 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_zero_bit() unnamed_addr #0 {
entry:
  %call6 = call i64 @_find_first_zero_bit(i64* noundef getelementptr inbounds ([2 x i64], [2 x i64]* @misc_minors, i64 0, i64 0), i64 noundef 128) #9
  ret i64 %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr [2 x i64], [2 x i64]* @misc_minors, i64 0, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @device_create_with_groups(%struct.class* noundef, %struct.device* noundef, i32 noundef, i8* noundef, %struct.attribute_group** noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr [2 x i64], [2 x i64]* @misc_minors, i64 0, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #1 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @misc_list, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @misc_deregister(%struct.miscdevice* noundef %misc) local_unnamed_addr #0 {
entry:
  %minor = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %misc, i64 0, i32 0
  %0 = load i32, i32* %minor, align 8
  %sub1 = sub i32 127, %0
  %list = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %misc, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end18, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/char/misc.c\22; .popsection; .long 14472b - 14470b; .short 243; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @misc_mtx) #9
  call fastcc void @list_del(%struct.list_head* noundef %list) #8
  %1 = load %struct.class*, %struct.class** @misc_class, align 8
  %2 = load i32, i32* %minor, align 8
  %or = or i32 %2, 10485760
  call void @device_destroy(%struct.class* noundef %1, i32 noundef %or) #9
  %3 = icmp ult i32 %sub1, 128
  br i1 %3, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end18
  %conv2535 = zext i32 %sub1 to i64
  call fastcc void @clear_bit(i64 noundef %conv2535) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end18
  call void @mutex_unlock(%struct.mutex* noundef nonnull @misc_mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #1 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(%struct.class* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @misc_init() #5 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @misc_seq_ops, i32 noundef 0, i8* noundef null) #9
  %call1 = call %struct.class* @__class_create(%struct.module* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @misc_init.__key) #9
  store %struct.class* %call1, %struct.class** @misc_class, align 8
  %0 = bitcast %struct.class* %call1 to i8*
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #8
  %conv = trunc i64 %call2 to i32
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %0) #8
  br i1 %call3, label %fail_remove, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @register_chrdev() #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %do.end

if.end6:                                          ; preds = %if.end
  %1 = load %struct.class*, %struct.class** @misc_class, align 8
  %devnode = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 6
  store i8* (%struct.device*, i16*)* @misc_devnode, i8* (%struct.device*, i16*)** %devnode, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef 10) #11
  %2 = load %struct.class*, %struct.class** @misc_class, align 8
  call void @class_destroy(%struct.class* noundef %2) #9
  br label %fail_remove

fail_remove:                                      ; preds = %entry, %do.end
  %err.0 = phi i32 [ %conv, %entry ], [ -5, %do.end ]
  %tobool9.not = icmp eq %struct.proc_dir_entry* %call, null
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %fail_remove
  call void @remove_proc_entry(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_remove, %if.then10, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %err.0, %if.then10 ], [ %err.0, %fail_remove ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_zero_bit(i64* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #1 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @misc_list, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @misc_list, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #1 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #1 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.seq_operations* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.class* @__class_create(%struct.module* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @register_chrdev() unnamed_addr #0 {
entry:
  %call = call i32 @__register_chrdev(i32 noundef 10, i32 noundef 0, i32 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.file_operations* noundef nonnull @misc_fops) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal noalias i8* @misc_devnode(%struct.device* nocapture noundef readonly %dev, i16* noundef writeonly %mode) #0 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #8
  %tobool.not = icmp eq i16* %mode, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %mode1 = getelementptr inbounds i8, i8* %call, i64 72
  %0 = bitcast i8* %mode1 to i16*
  %1 = load i16, i16* %0, align 8
  %tobool2.not = icmp eq i16 %1, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i16 %1, i16* %mode, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %nodename = getelementptr inbounds i8, i8* %call, i64 64
  %2 = bitcast i8* %nodename to i8**
  %3 = load i8*, i8** %2, align 8
  %tobool4.not = icmp eq i8* %3, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = call noalias i8* @kstrdup(i8* noundef nonnull %3, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5
  %retval.0 = phi i8* [ %call7, %if.then5 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(%struct.class* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(i8* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @misc_seq_start(%struct.seq_file* nocapture noundef readnone %seq, i64* nocapture noundef readonly %pos) #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @misc_mtx) #9
  %0 = load i64, i64* %pos, align 8
  %call = call %struct.list_head* @seq_list_start(%struct.list_head* noundef nonnull @misc_list, i64 noundef %0) #9
  %1 = bitcast %struct.list_head* %call to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @misc_seq_stop(%struct.seq_file* nocapture noundef readnone %seq, i8* nocapture noundef readnone %v) #0 {
entry:
  call void @mutex_unlock(%struct.mutex* noundef nonnull @misc_mtx) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @misc_seq_next(%struct.seq_file* nocapture noundef readnone %seq, i8* noundef %v, i64* noundef %pos) #0 {
entry:
  %call = call %struct.list_head* @seq_list_next(i8* noundef %v, %struct.list_head* noundef nonnull @misc_list, i64* noundef %pos) #9
  %0 = bitcast %struct.list_head* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @misc_seq_show(%struct.seq_file* noundef %seq, i8* nocapture noundef readonly %v) #0 {
entry:
  %add.ptr = getelementptr i8, i8* %v, i64 -24
  %minor = bitcast i8* %add.ptr to i32*
  %0 = load i32, i32* %minor, align 8
  %name = getelementptr i8, i8* %v, i64 -16
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8
  %tobool.not = icmp eq i8* %2, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %2
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %0, i8* noundef %spec.select) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.list_head* @seq_list_start(%struct.list_head* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.list_head* @seq_list_next(i8* noundef, %struct.list_head* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, i8* noundef, %struct.file_operations* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @misc_open(%struct.inode* noundef %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call fastcc i32 @iminor(%struct.inode* noundef %inode) #8
  call void @mutex_lock(%struct.mutex* noundef nonnull @misc_mtx) #9
  %.pn135 = load i8*, i8** bitcast (%struct.list_head* @misc_list to i8**), align 8
  %cmp.not137 = icmp eq i8* %.pn135, bitcast (%struct.list_head* @misc_list to i8*)
  br i1 %cmp.not137, label %if.then14, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn138 = phi i8* [ %.pn, %for.inc ], [ %.pn135, %entry ]
  %c.0.in139 = getelementptr i8, i8* %.pn138, i64 -24
  %minor1 = bitcast i8* %c.0.in139 to i32*
  %0 = load i32, i32* %minor1, align 8
  %cmp2 = icmp eq i32 %0, %call
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %fops = getelementptr i8, i8* %.pn138, i64 -8
  %1 = bitcast i8* %fops to %struct.file_operations**
  %2 = load %struct.file_operations*, %struct.file_operations** %1, align 8
  %tobool.not = icmp eq %struct.file_operations* %2, null
  br i1 %tobool.not, label %if.then14, label %if.end55

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn138 to i8**
  %.pn = load i8*, i8** %3, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @misc_list to i8*)
  br i1 %cmp.not, label %if.then14, label %for.body

if.then14:                                        ; preds = %for.inc, %entry, %if.then
  call void @mutex_unlock(%struct.mutex* noundef nonnull @misc_mtx) #9
  call void @mutex_lock(%struct.mutex* noundef nonnull @misc_mtx) #9
  %.pn126140 = load i8*, i8** bitcast (%struct.list_head* @misc_list to i8**), align 8
  %cmp24.not142 = icmp eq i8* %.pn126140, bitcast (%struct.list_head* @misc_list to i8*)
  br i1 %cmp24.not142, label %fail, label %for.body26

for.body26:                                       ; preds = %if.then14, %for.inc42
  %.pn126143 = phi i8* [ %.pn126, %for.inc42 ], [ %.pn126140, %if.then14 ]
  %c.1.in144 = getelementptr i8, i8* %.pn126143, i64 -24
  %minor27 = bitcast i8* %c.1.in144 to i32*
  %4 = load i32, i32* %minor27, align 8
  %cmp28 = icmp eq i32 %4, %call
  br i1 %cmp28, label %if.then29, label %for.inc42

if.then29:                                        ; preds = %for.body26
  %fops30 = getelementptr i8, i8* %.pn126143, i64 -8
  %5 = bitcast i8* %fops30 to %struct.file_operations**
  %6 = load %struct.file_operations*, %struct.file_operations** %5, align 8
  %tobool31.not = icmp eq %struct.file_operations* %6, null
  br i1 %tobool31.not, label %fail, label %if.end55

for.inc42:                                        ; preds = %for.body26
  %7 = bitcast i8* %.pn126143 to i8**
  %.pn126 = load i8*, i8** %7, align 8
  %cmp24.not = icmp eq i8* %.pn126, bitcast (%struct.list_head* @misc_list to i8*)
  br i1 %cmp24.not, label %fail, label %for.body26

if.end55:                                         ; preds = %if.then29, %if.then
  %new_fops.2 = phi %struct.file_operations* [ %2, %if.then ], [ %6, %if.then29 ]
  %c.2.in = phi i8* [ %c.0.in139, %if.then ], [ %c.1.in144, %if.then29 ]
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  store i8* %c.2.in, i8** %private_data, align 8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  store %struct.file_operations* %new_fops.2, %struct.file_operations** %f_op, align 8
  %open = getelementptr inbounds %struct.file_operations, %struct.file_operations* %new_fops.2, i64 0, i32 14
  %8 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open, align 8
  %tobool85.not = icmp eq i32 (%struct.inode*, %struct.file*)* %8, null
  br i1 %tobool85.not, label %fail, label %if.then86

if.then86:                                        ; preds = %if.end55
  %call89 = call i32 %8(%struct.inode* noundef %inode, %struct.file* noundef %file) #9
  br label %fail

fail:                                             ; preds = %for.inc42, %if.then14, %if.then29, %if.end55, %if.then86
  %err.0 = phi i32 [ %call89, %if.then86 ], [ 0, %if.end55 ], [ -19, %if.then29 ], [ -19, %if.then14 ], [ -19, %for.inc42 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @misc_mtx) #9
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iminor(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #7 {
entry:
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  %0 = load i32, i32* %i_rdev, align 4
  %and = and i32 %0, 1048575
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_get_drvdata(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  %0 = load i8*, i8** %driver_data, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
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
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2152392439}
!9 = !{i64 2147852592, i64 2147853103, i64 2147853133, i64 2147853159, i64 2147853191, i64 2147853220}
!10 = !{i64 2147863162, i64 2147863683, i64 2147863713, i64 2147863739, i64 2147863771, i64 2147863800}
