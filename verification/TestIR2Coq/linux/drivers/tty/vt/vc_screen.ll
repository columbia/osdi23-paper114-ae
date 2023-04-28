; ModuleID = 'drivers/tty/vt/vc_screen.c'
source_filename = "drivers/tty/vt/vc_screen.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.68, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
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
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.58 }
%union.anon.58 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_dir }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
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
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.raw_spinlock = type { %struct.qspinlock }
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
%struct.page = type { i64, %union.anon.2, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.63 = type { %struct.atomic_t }
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
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.atomic_t = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.vc = type { %struct.vc_data*, %struct.work_struct }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.consw*, i16*, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, %struct.pid*, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], i16*, i32, i32, i32, i16, %struct.vc_data**, %struct.uni_pagedir*, %struct.uni_pagedir**, %struct.uni_screen* }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.consw = type { %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.uni_pagedir = type opaque
%struct.uni_screen = type opaque
%struct.kmem_cache = type opaque
%struct.vcs_poll_data = type { %struct.notifier_block, i32, i32, %struct.wait_queue_head, %struct.fasync_struct* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }

@vc_class = internal unnamed_addr global %struct.class* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"vcs%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vcsu%u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vcsa%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vcs\00", align 1
@vcs_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @vcs_lseek, i64 (%struct.file*, i8*, i64, i64*)* @vcs_read, i64 (%struct.file*, i8*, i64, i64*)* @vcs_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @vcs_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @vcs_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @vcs_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @vcs_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to get major %d for vcs device\00", align 1
@vcs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vcsu\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vcsa\00", align 1
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 8
@vcs_poll_data_get.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"&poll->waitq\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@switch.table.vcs_poll = private unnamed_addr constant [5 x i32] [i32 325, i32 333, i32 349, i32 333, i32 327], align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vcs_make_sysfs(i32 noundef %index) local_unnamed_addr #0 {
entry:
  %0 = load %struct.class*, %struct.class** @vc_class, align 8
  %add = add i32 %index, 1
  %or = or i32 %add, 7340032
  %call = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %0, %struct.device* noundef null, i32 noundef %or, i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %add) #8
  %1 = load %struct.class*, %struct.class** @vc_class, align 8
  %add2 = add i32 %index, 65
  %or3 = or i32 %add2, 7340032
  %call5 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %1, %struct.device* noundef null, i32 noundef %or3, i8* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 noundef %add) #8
  %2 = load %struct.class*, %struct.class** @vc_class, align 8
  %add6 = add i32 %index, 129
  %or7 = or i32 %add6, 7340032
  %call9 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %2, %struct.device* noundef null, i32 noundef %or7, i8* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @device_create(%struct.class* noundef, %struct.device* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vcs_remove_sysfs(i32 noundef %index) local_unnamed_addr #0 {
entry:
  %0 = load %struct.class*, %struct.class** @vc_class, align 8
  %add = add i32 %index, 1
  %or = or i32 %add, 7340032
  call void @device_destroy(%struct.class* noundef %0, i32 noundef %or) #8
  %1 = load %struct.class*, %struct.class** @vc_class, align 8
  %add1 = add i32 %index, 65
  %or2 = or i32 %add1, 7340032
  call void @device_destroy(%struct.class* noundef %1, i32 noundef %or2) #8
  %2 = load %struct.class*, %struct.class** @vc_class, align 8
  %add3 = add i32 %index, 129
  %or4 = or i32 %add3, 7340032
  call void @device_destroy(%struct.class* noundef %2, i32 noundef %or4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(%struct.class* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @vcs_init() local_unnamed_addr #2 section ".init.text" {
entry:
  %call = call fastcc i32 @register_chrdev() #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 noundef 7) #10
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call %struct.class* @__class_create(%struct.module* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @vcs_init.__key) #8
  store %struct.class* %call1, %struct.class** @vc_class, align 8
  %call2 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %call1, %struct.device* noundef null, i32 noundef 7340032, i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #8
  %0 = load %struct.class*, %struct.class** @vc_class, align 8
  %call3 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %0, %struct.device* noundef null, i32 noundef 7340096, i8* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #8
  %1 = load %struct.class*, %struct.class** @vc_class, align 8
  %call4 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %1, %struct.device* noundef null, i32 noundef 7340160, i8* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #8
  call void @vcs_make_sysfs(i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @register_chrdev() unnamed_addr #0 {
entry:
  %call = call i32 @__register_chrdev(i32 noundef 7, i32 noundef 0, i32 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.file_operations* noundef nonnull @vcs_fops) #8
  ret i32 %call
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.class* @__class_create(%struct.module* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, i8* noundef, %struct.file_operations* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @vcs_lseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %orig) #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  call void @console_lock() #8
  %call1 = call fastcc %struct.vc_data* @vcs_vc(%struct.inode* noundef %call, i8* noundef null) #9
  %tobool.not = icmp eq %struct.vc_data* %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @console_unlock() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @iminor(%struct.inode* noundef %call) #9
  %and = and i32 %call2, 128
  %tobool3 = icmp ne i32 %and, 0
  %and5 = and i32 %call2, 64
  %tobool6 = icmp ne i32 %and5, 0
  %call7 = call fastcc i32 @vcs_size(%struct.vc_data* noundef nonnull %call1, i1 noundef %tobool3, i1 noundef %tobool6) #9
  call void @console_unlock() #8
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %conv = sext i32 %call7 to i64
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv1023 = zext i32 %call7 to i64
  %call11 = call i64 @fixed_size_llseek(%struct.file* noundef %file, i64 noundef %offset, i32 noundef %orig, i64 noundef %conv1023) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  %retval.0 = phi i64 [ %conv, %if.then8 ], [ %call11, %if.end9 ], [ -6, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @vcs_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef %ppos) #0 {
entry:
  %viewed = alloca i8, align 4
  %skip = alloca i32, align 4
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %viewed) #11
  store i8 0, i8* %viewed, align 4, !annotation !7
  %call1 = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %0 = inttoptr i64 %call1 to i8*
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %cleanup95, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %ppos, align 8
  call void @console_lock() #8
  %call2 = call fastcc i32 @iminor(%struct.inode* noundef %call) #9
  %and = and i32 %call2, 64
  %tobool3 = icmp ne i32 %and, 0
  %and5 = and i32 %call2, 128
  %tobool6 = icmp ne i32 %and5, 0
  %call8 = call fastcc %struct.vc_data* @vcs_vc(%struct.inode* noundef %call, i8* noundef nonnull %viewed) #9
  %tobool9.not = icmp eq %struct.vc_data* %call8, null
  br i1 %tobool9.not, label %unlock_out, label %if.end11

if.end11:                                         ; preds = %if.end
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %unlock_out, label %if.end13

if.end13:                                         ; preds = %if.end11
  br i1 %tobool3, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %or = or i64 %1, %count
  %and15 = and i64 %or, 3
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %unlock_out

if.end18:                                         ; preds = %land.lhs.true, %if.end13
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %2 = bitcast i8** %private_data to %struct.vcs_poll_data**
  %3 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %2, align 8
  %tobool19 = icmp ne i64 %count, 0
  %tobool21 = icmp ne %struct.vcs_poll_data* %3, null
  %or.cond = select i1 %tobool19, i1 %tobool21, i1 false
  br i1 %or.cond, label %if.end23.thread, label %if.end23

if.end23.thread:                                  ; preds = %if.end18
  %event = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %3, i64 0, i32 2
  store i32 0, i32* %event, align 4
  br label %while.body.lr.ph

if.end23:                                         ; preds = %if.end18
  %tobool24.not204 = icmp eq i64 %count, 0
  br i1 %tobool24.not204, label %while.end.thread, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end23.thread, %if.end23
  %4 = bitcast i32* %skip to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %pos.0208 = phi i64 [ %1, %while.body.lr.ph ], [ %add83, %cleanup ]
  %read.0207 = phi i32 [ 0, %while.body.lr.ph ], [ %add84, %cleanup ]
  %count.addr.0206 = phi i64 [ %count, %while.body.lr.ph ], [ %sub86, %cleanup ]
  %buf.addr.0205 = phi i8* [ %buf, %while.body.lr.ph ], [ %add.ptr81, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #11
  store i32 0, i32* %skip, align 4
  %call27 = call fastcc i32 @vcs_size(%struct.vc_data* noundef nonnull %call8, i1 noundef %tobool6, i1 noundef %tobool3) #9
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %while.body
  %tobool30.not = icmp eq i32 %read.0207, 0
  br i1 %tobool30.not, label %cleanup.thread178, label %cleanup.thread

cleanup.thread178:                                ; preds = %if.then29
  %conv = sext i32 %call27 to i64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  br label %unlock_out

if.end33:                                         ; preds = %while.body
  %conv34185 = zext i32 %call27 to i64
  %cmp35.not = icmp slt i64 %pos.0208, %conv34185
  br i1 %cmp35.not, label %if.end38, label %cleanup.thread

if.end38:                                         ; preds = %if.end33
  %sub = sub i64 %conv34185, %pos.0208
  %cmp40 = icmp ugt i64 %count.addr.0206, %sub
  %spec.select = select i1 %cmp40, i64 %sub, i64 %count.addr.0206
  %conv46 = trunc i64 %spec.select to i32
  %conv47 = and i64 %spec.select, 4294967295
  %cmp48 = icmp ugt i64 %conv47, 4096
  %spec.store.select = select i1 %cmp48, i32 4096, i32 %conv46
  %conv54 = trunc i64 %pos.0208 to i32
  %5 = load i8, i8* %viewed, align 4, !range !8
  %tobool55 = icmp ne i8 %5, 0
  br i1 %tobool3, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end38
  %call56 = call fastcc i32 @vcs_read_buf_uni(%struct.vc_data* noundef nonnull %call8, i8* noundef nonnull %0, i32 noundef %conv54, i32 noundef %spec.store.select, i1 noundef %tobool55) #9
  %tobool58.not = icmp eq i32 %call56, 0
  br i1 %tobool58.not, label %if.end70, label %if.then59

if.then59:                                        ; preds = %if.then53
  %conv57 = sext i32 %call56 to i64
  br label %cleanup.thread

if.else:                                          ; preds = %if.end38
  br i1 %tobool6, label %if.else65, label %if.then62

if.then62:                                        ; preds = %if.else
  call fastcc void @vcs_read_buf_noattr(%struct.vc_data* noundef nonnull %call8, i8* noundef nonnull %0, i32 noundef %conv54, i32 noundef %spec.store.select, i1 noundef %tobool55) #9
  br label %if.end70

if.else65:                                        ; preds = %if.else
  %call68 = call fastcc i32 @vcs_read_buf(%struct.vc_data* noundef nonnull %call8, i8* noundef nonnull %0, i32 noundef %conv54, i32 noundef %spec.store.select, i1 noundef %tobool55, i32* noundef nonnull %skip) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then62, %if.else65, %if.then53
  %this_round.0 = phi i32 [ %spec.store.select, %if.then53 ], [ %call68, %if.else65 ], [ %spec.store.select, %if.then62 ]
  call void @console_unlock() #8
  %conv71 = zext i32 %this_round.0 to i64
  %cmp11.i.i = icmp slt i32 %this_round.0, 0
  br i1 %cmp11.i.i, label %copy_to_user.exit.thread, label %copy_to_user.exit, !prof !9

copy_to_user.exit.thread:                         ; preds = %if.end70
  %conv71.le = zext i32 %this_round.0 to i64
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !10
  call void @console_lock() #8
  br label %if.then74

copy_to_user.exit:                                ; preds = %if.end70
  %6 = load i32, i32* %skip, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf.addr.0205, i8* noundef %add.ptr, i64 noundef %conv71) #8
  call void @console_lock() #8
  %tobool73.not = icmp eq i64 %call2.i, 0
  br i1 %tobool73.not, label %cleanup, label %if.then74

if.then74:                                        ; preds = %copy_to_user.exit, %copy_to_user.exit.thread
  %n.addr.0.i171 = phi i64 [ %conv71.le, %copy_to_user.exit.thread ], [ %call2.i, %copy_to_user.exit ]
  %7 = trunc i64 %n.addr.0.i171 to i32
  %8 = add i32 %this_round.0, %read.0207
  %conv78 = sub i32 %8, %7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end33, %if.then59, %if.then74, %if.then29
  %read.1.ph = phi i32 [ %read.0207, %if.then29 ], [ %conv78, %if.then74 ], [ %read.0207, %if.then59 ], [ %read.0207, %if.end33 ]
  %ret.1.ph = phi i64 [ 0, %if.then29 ], [ -14, %if.then74 ], [ %conv57, %if.then59 ], [ 0, %if.end33 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  br label %while.end

cleanup:                                          ; preds = %copy_to_user.exit
  %add.ptr81 = getelementptr i8, i8* %buf.addr.0205, i64 %conv71
  %add83 = add i64 %pos.0208, %conv71
  %add84 = add i32 %this_round.0, %read.0207
  %sub86 = sub i64 %spec.select, %conv71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  %tobool24.not = icmp eq i64 %sub86, 0
  br i1 %tobool24.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %cleanup.thread
  %read.2 = phi i32 [ %read.1.ph, %cleanup.thread ], [ %add84, %cleanup ]
  %ret.2 = phi i64 [ %ret.1.ph, %cleanup.thread ], [ 0, %cleanup ]
  %conv89 = zext i32 %read.2 to i64
  %9 = load i64, i64* %ppos, align 8
  %add90 = add i64 %9, %conv89
  store i64 %add90, i64* %ppos, align 8
  %tobool91.not = icmp eq i32 %read.2, 0
  br i1 %tobool91.not, label %while.end.thread, label %unlock_out

while.end.thread:                                 ; preds = %if.end23, %while.end
  %ret.2231 = phi i64 [ %ret.2, %while.end ], [ 0, %if.end23 ]
  br label %unlock_out

unlock_out:                                       ; preds = %while.end.thread, %while.end, %cleanup.thread178, %land.lhs.true, %if.end11, %if.end
  %ret.3 = phi i64 [ -22, %if.end11 ], [ -22, %land.lhs.true ], [ -6, %if.end ], [ %conv, %cleanup.thread178 ], [ %ret.2231, %while.end.thread ], [ %conv89, %while.end ]
  call void @console_unlock() #8
  call void @free_pages(i64 noundef %call1, i32 noundef 0) #8
  br label %cleanup95

cleanup95:                                        ; preds = %entry, %unlock_out
  %retval.0 = phi i64 [ %ret.3, %unlock_out ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %viewed) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @vcs_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef %ppos) #0 {
entry:
  %org0 = alloca i16*, align 8
  %viewed = alloca i8, align 4
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %0 = bitcast i16** %org0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i16* null, i16** %org0, align 8, !annotation !7
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %viewed) #11
  store i8 0, i8* %viewed, align 4, !annotation !7
  %call1 = call fastcc i32 @iminor(%struct.inode* noundef %call) #9
  %and = and i32 %call1, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup100

if.end:                                           ; preds = %entry
  %call2 = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %1 = inttoptr i64 %call2 to i8*
  %tobool3.not = icmp eq i64 %call2, 0
  br i1 %tobool3.not, label %cleanup100, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load i64, i64* %ppos, align 8
  call void @console_lock() #8
  %call6 = call fastcc i32 @iminor(%struct.inode* noundef %call) #9
  %and7 = and i32 %call6, 128
  %tobool8 = icmp ne i32 %and7, 0
  %call9 = call fastcc %struct.vc_data* @vcs_vc(%struct.inode* noundef %call, i8* noundef nonnull %viewed) #9
  %tobool10.not = icmp eq %struct.vc_data* %call9, null
  br i1 %tobool10.not, label %unlock_out, label %if.end12

if.end12:                                         ; preds = %if.end5
  %call14 = call fastcc i32 @vcs_size(%struct.vc_data* noundef nonnull %call9, i1 noundef %tobool8, i1 noundef false) #9
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %conv = sext i32 %call14 to i64
  br label %unlock_out

if.end16:                                         ; preds = %if.end12
  %cmp17 = icmp slt i64 %2, 0
  br i1 %cmp17, label %unlock_out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %conv19199 = zext i32 %call14 to i64
  %cmp20 = icmp ugt i64 %2, %conv19199
  br i1 %cmp20, label %unlock_out, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false
  %sub = sub nsw i64 %conv19199, %2
  %cmp25 = icmp ult i64 %sub, %count
  %spec.select = select i1 %cmp25, i64 %sub, i64 %count
  %tobool31.not204 = icmp eq i64 %spec.select, 0
  br i1 %tobool31.not204, label %unlock_out, label %while.body

while.body:                                       ; preds = %if.end23, %cleanup
  %pos.0210 = phi i64 [ %add89, %cleanup ], [ %2, %if.end23 ]
  %written.0209 = phi i32 [ %add, %cleanup ], [ 0, %if.end23 ]
  %count.addr.1208 = phi i64 [ %sub87, %cleanup ], [ %spec.select, %if.end23 ]
  %buf.addr.0205 = phi i8* [ %add.ptr, %cleanup ], [ %buf, %if.end23 ]
  %conv32 = trunc i64 %count.addr.1208 to i32
  %conv33 = and i64 %count.addr.1208, 4294967295
  %cmp34 = icmp ugt i64 %conv33, 4096
  %spec.store.select = select i1 %cmp34, i32 4096, i32 %conv32
  call void @console_unlock() #8
  %conv38 = zext i32 %spec.store.select to i64
  %cmp11.i.i = icmp slt i32 %spec.store.select, 0
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !9

copy_from_user.exit.thread:                       ; preds = %while.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !10
  call void @console_lock() #8
  br label %if.then41

copy_from_user.exit:                              ; preds = %while.body
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef %buf.addr.0205, i64 noundef %conv38) #8
  call void @console_lock() #8
  %tobool40.not = icmp eq i64 %call2.i, 0
  br i1 %tobool40.not, label %if.end51, label %if.then41

if.then41:                                        ; preds = %copy_from_user.exit.thread, %copy_from_user.exit
  %n.addr.0.i179 = phi i64 [ %conv38, %copy_from_user.exit.thread ], [ %call2.i, %copy_from_user.exit ]
  %3 = trunc i64 %n.addr.0.i179 to i32
  %conv44 = sub i32 %spec.store.select, %3
  %tobool45.not = icmp eq i32 %conv44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.then41
  %tobool47.not = icmp eq i32 %written.0209, 0
  br i1 %tobool47.not, label %unlock_out, label %while.end.thread

if.end51:                                         ; preds = %if.then41, %copy_from_user.exit
  %this_round.0 = phi i32 [ %conv44, %if.then41 ], [ %spec.store.select, %copy_from_user.exit ]
  %call53 = call fastcc i32 @vcs_size(%struct.vc_data* noundef nonnull %call9, i1 noundef %tobool8, i1 noundef false) #9
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.end51
  %tobool57.not = icmp eq i32 %written.0209, 0
  br i1 %tobool57.not, label %if.end59, label %while.end.thread

if.end59:                                         ; preds = %if.then56
  %conv60 = sext i32 %call53 to i64
  br label %unlock_out

if.end61:                                         ; preds = %if.end51
  %conv62200 = zext i32 %call53 to i64
  %cmp63.not = icmp slt i64 %pos.0210, %conv62200
  br i1 %cmp63.not, label %if.end66, label %while.end

if.end66:                                         ; preds = %if.end61
  %conv67 = zext i32 %this_round.0 to i64
  %sub69 = sub i64 %conv62200, %pos.0210
  %cmp70 = icmp slt i64 %sub69, %conv67
  %conv75 = trunc i64 %sub69 to i32
  %spec.select176 = select i1 %cmp70, i32 %conv75, i32 %this_round.0
  %conv79 = trunc i64 %pos.0210 to i32
  %4 = load i8, i8* %viewed, align 4, !range !8
  %tobool80 = icmp ne i8 %4, 0
  br i1 %tobool8, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.end66
  %call81 = call fastcc i16* @vcs_write_buf(%struct.vc_data* noundef nonnull %call9, i8* noundef nonnull %1, i32 noundef %conv79, i32 noundef %spec.select176, i1 noundef %tobool80, i16** noundef nonnull %org0) #9
  br label %if.end85

if.else:                                          ; preds = %if.end66
  %call84 = call fastcc i16* @vcs_write_buf_noattr(%struct.vc_data* noundef nonnull %call9, i8* noundef nonnull %1, i32 noundef %conv79, i32 noundef %spec.select176, i1 noundef %tobool80, i16** noundef nonnull %org0) #9
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then78
  %org.0 = phi i16* [ %call81, %if.then78 ], [ %call84, %if.else ]
  %conv86 = zext i32 %spec.select176 to i64
  %sub87 = sub i64 %count.addr.1208, %conv86
  %add = add i32 %spec.select176, %written.0209
  %add.ptr = getelementptr i8, i8* %buf.addr.0205, i64 %conv86
  %add89 = add i64 %pos.0210, %conv86
  %tobool90.not = icmp eq i16* %org.0, null
  br i1 %tobool90.not, label %cleanup, label %if.then91

if.then91:                                        ; preds = %if.end85
  %5 = load i16*, i16** %org0, align 8
  %6 = ptrtoint i16* %5 to i64
  %sub.ptr.lhs.cast = ptrtoint i16* %org.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %6
  %7 = lshr exact i64 %sub.ptr.sub, 1
  %conv92 = trunc i64 %7 to i32
  call void @update_region(%struct.vc_data* noundef nonnull %call9, i64 noundef %6, i32 noundef %conv92) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then91
  %tobool31.not = icmp eq i64 %sub87, 0
  br i1 %tobool31.not, label %while.end, label %while.body

while.end.thread:                                 ; preds = %if.then56, %if.then46
  %conv94195 = zext i32 %written.0209 to i64
  %8 = load i64, i64* %ppos, align 8
  %add95196 = add i64 %8, %conv94195
  store i64 %add95196, i64* %ppos, align 8
  br label %if.then98

while.end:                                        ; preds = %cleanup, %if.end61
  %written.0.lcssa = phi i32 [ %add, %cleanup ], [ %written.0209, %if.end61 ]
  %conv94 = zext i32 %written.0.lcssa to i64
  %9 = load i64, i64* %ppos, align 8
  %add95 = add i64 %9, %conv94
  store i64 %add95, i64* %ppos, align 8
  %tobool97.not = icmp eq i32 %written.0.lcssa, 0
  br i1 %tobool97.not, label %unlock_out, label %if.then98

if.then98:                                        ; preds = %while.end.thread, %while.end
  %conv94198 = phi i64 [ %conv94195, %while.end.thread ], [ %conv94, %while.end ]
  call void @vcs_scr_updated(%struct.vc_data* noundef nonnull %call9) #8
  br label %unlock_out

unlock_out:                                       ; preds = %if.end23, %if.then46, %if.end59, %while.end, %if.then98, %if.end16, %lor.lhs.false, %if.end5, %if.then15
  %ret.1 = phi i64 [ %conv, %if.then15 ], [ -22, %if.end16 ], [ -22, %lor.lhs.false ], [ %conv94198, %if.then98 ], [ 0, %while.end ], [ -6, %if.end5 ], [ %conv60, %if.end59 ], [ -14, %if.then46 ], [ 0, %if.end23 ]
  call void @console_unlock() #8
  call void @free_pages(i64 noundef %call2, i32 noundef 0) #8
  br label %cleanup100

cleanup100:                                       ; preds = %if.end, %entry, %unlock_out
  %retval.0 = phi i64 [ %ret.1, %unlock_out ], [ -95, %entry ], [ -12, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %viewed) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vcs_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  %call = call fastcc %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* noundef %file) #9
  %tobool.not = icmp eq %struct.vcs_poll_data* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %waitq = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %call, i64 0, i32 3
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef %waitq, %struct.poll_table_struct* noundef %wait) #9
  %event = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %call, i64 0, i32 2
  %0 = load i32, i32* %event, align 4
  %1 = icmp ult i32 %0, 5
  br i1 %1, label %switch.lookup, label %if.end

switch.lookup:                                    ; preds = %if.then
  %2 = sext i32 %0 to i64
  %switch.gep = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.vcs_poll, i64 0, i64 %2
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.then, %entry
  %ret.0 = phi i32 [ 333, %if.then ], [ 333, %entry ], [ %switch.load, %switch.lookup ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vcs_open(%struct.inode* nocapture noundef readonly %inode, %struct.file* nocapture noundef readnone %filp) #0 {
entry:
  %call = call fastcc i32 @iminor(%struct.inode* noundef %inode) #9
  %and = and i32 %call, 63
  %0 = and i32 %call, 192
  %.not = icmp eq i32 %0, 192
  br i1 %.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @console_lock() #8
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end14, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end
  %sub = add nsw i32 %and, -1
  %call11 = call i32 @vc_cons_allocated(i32 noundef %sub) #8
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i32 -6, i32 0
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true10, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ %spec.select, %land.lhs.true10 ]
  call void @console_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14
  %retval.0 = phi i32 [ %ret.0, %if.end14 ], [ -95, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vcs_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.vcs_poll_data**
  %1 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %0, align 8
  %tobool.not = icmp eq %struct.vcs_poll_data* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @vcs_poll_data_free(%struct.vcs_poll_data* noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vcs_fasync(i32 noundef %fd, %struct.file* noundef %file, i32 noundef %on) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.vcs_poll_data**
  %1 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %0, align 8
  %tobool.not = icmp eq %struct.vcs_poll_data* %1, null
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i32 %on, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call = call fastcc %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* noundef %file) #9
  %tobool3.not = icmp eq %struct.vcs_poll_data* %call, null
  br i1 %tobool3.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %poll.0 = phi %struct.vcs_poll_data* [ %1, %entry ], [ %call, %if.end ]
  %fasync = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %poll.0, i64 0, i32 4
  %call7 = call i32 @fasync_helper(i32 noundef %fd, %struct.file* noundef %file, i32 noundef %on, %struct.fasync_struct** noundef %fasync) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %if.then ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #5 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vc_data* @vcs_vc(%struct.inode* nocapture noundef readonly %inode, i8* noundef writeonly %viewed) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @iminor(%struct.inode* noundef %inode) #9
  %and = and i32 %call, 63
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @is_console_locked() #8
  %tobool3.not = icmp eq i32 %call2, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool4.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vc_screen.c\22; .popsection; .long 14472b - 14470b; .short 187; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  %2 = load i32, i32* @fg_console, align 4
  %tobool22.not = icmp eq i8* %viewed, null
  br i1 %tobool22.not, label %if.end28, label %if.end28.sink.split

if.else:                                          ; preds = %if.end
  %dec = add nsw i32 %and, -1
  %tobool25.not = icmp eq i8* %viewed, null
  br i1 %tobool25.not, label %if.end28, label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.else, %if.then21
  %.sink = phi i8 [ 1, %if.then21 ], [ 0, %if.else ]
  %currcons.0.ph = phi i32 [ %2, %if.then21 ], [ %dec, %if.else ]
  store i8 %.sink, i8* %viewed, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.else, %if.then21
  %currcons.0 = phi i32 [ %2, %if.then21 ], [ %dec, %if.else ], [ %currcons.0.ph, %if.end28.sink.split ]
  %idxprom = zext i32 %currcons.0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %3 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  ret %struct.vc_data* %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vcs_size(%struct.vc_data* nocapture noundef readonly %vc, i1 noundef %attr, i1 noundef %unicode) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @is_console_locked() #8
  %tobool3.not = icmp eq i32 %call2, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool4.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vc_screen.c\22; .popsection; .long 14472b - 14470b; .short 213; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %2 = load i32, i32* %vc_rows, align 8
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %3 = load i32, i32* %vc_cols, align 4
  %mul = mul i32 %3, %2
  br i1 %attr, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  br i1 %unicode, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then21
  %mul25 = shl i32 %mul, 1
  %add = add i32 %mul25, 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %mul28 = shl i32 %mul, 2
  %spec.select = select i1 %unicode, i32 %mul28, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end24, %if.then21
  %retval.0 = phi i32 [ -95, %if.then21 ], [ %add, %if.end24 ], [ %spec.select, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iminor(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #5 {
entry:
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  %0 = load i32, i32* %i_rdev, align 4
  %and = and i32 %0, 1048575
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(%struct.file* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vcs_read_buf_uni(%struct.vc_data* noundef %vc, i8* noundef %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef %viewed) unnamed_addr #0 {
entry:
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %call = call i32 @vc_uniscr_check(%struct.vc_data* noundef %vc) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %div = lshr i32 %pos, 2
  %.frozen = freeze i32 %0
  %div1 = udiv i32 %div, %.frozen
  %1 = mul i32 %div1, %.frozen
  %rem.decomposed = sub i32 %div, %1
  %sub = sub i32 %0, %rem.decomposed
  %div2.peel = lshr i32 %count, 2
  %cmp.peel = icmp ugt i32 %sub, %div2.peel
  %spec.select.peel = select i1 %cmp.peel, i32 %div2.peel, i32 %sub
  call void @vc_uniscr_copy_line(%struct.vc_data* noundef %vc, i8* noundef %con_buf, i1 noundef %viewed, i32 noundef %div1, i32 noundef %rem.decomposed, i32 noundef %spec.select.peel) #8
  %mul.peel = shl nuw i32 %spec.select.peel, 2
  %sub8.peel = sub i32 %count, %mul.peel
  %tobool9.not.peel = icmp eq i32 %sub8.peel, 0
  br i1 %tobool9.not.peel, label %cleanup, label %do.body.peel.next

do.body.peel.next:                                ; preds = %if.end
  %idx.ext.peel = zext i32 %mul.peel to i64
  %add.ptr.peel = getelementptr i8, i8* %con_buf, i64 %idx.ext.peel
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.peel.next
  %con_buf.addr.0 = phi i8* [ %add.ptr.peel, %do.body.peel.next ], [ %add.ptr, %do.body ]
  %count.addr.0 = phi i32 [ %sub8.peel, %do.body.peel.next ], [ %sub8, %do.body ]
  %row.0.in = phi i32 [ %div1, %do.body.peel.next ], [ %row.0, %do.body ]
  %row.0 = add i32 %row.0.in, 1
  %div2 = lshr i32 %count.addr.0, 2
  %cmp = icmp ugt i32 %0, %div2
  %spec.select = select i1 %cmp, i32 %div2, i32 %0
  call void @vc_uniscr_copy_line(%struct.vc_data* noundef %vc, i8* noundef %con_buf.addr.0, i1 noundef %viewed, i32 noundef %row.0, i32 noundef 0, i32 noundef %spec.select) #8
  %mul = shl nuw i32 %spec.select, 2
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %con_buf.addr.0, i64 %idx.ext
  %sub8 = sub i32 %count.addr.0, %mul
  %tobool9.not = icmp eq i32 %sub8, 0
  br i1 %tobool9.not, label %cleanup, label %do.body, !llvm.loop !14

cleanup:                                          ; preds = %do.body, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.end ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vcs_read_buf_noattr(%struct.vc_data* noundef %vc, i8* nocapture noundef writeonly %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef %viewed) unnamed_addr #0 {
entry:
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %call = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %pos, i1 noundef %viewed) #8
  %rem = urem i32 %pos, %0
  %cmp.not25 = icmp eq i32 %count, 0
  br i1 %cmp.not25, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %sub = add i32 %0, %pos
  %add = sub i32 %sub, %rem
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %dec30.in = phi i32 [ %dec30, %if.end ], [ %count, %while.body.preheader ]
  %col.029 = phi i32 [ %col.1, %if.end ], [ %rem, %while.body.preheader ]
  %org.028 = phi i16* [ %org.1, %if.end ], [ %call, %while.body.preheader ]
  %con_buf.addr.027 = phi i8* [ %incdec.ptr3, %if.end ], [ %con_buf, %while.body.preheader ]
  %pos.addr.026 = phi i32 [ %pos.addr.1, %if.end ], [ %add, %while.body.preheader ]
  %dec30 = add i32 %dec30.in, -1
  %incdec.ptr = getelementptr i16, i16* %org.028, i64 1
  %call1 = call i16 @vcs_scr_readw(%struct.vc_data* noundef %vc, i16* noundef %org.028) #8
  %conv2 = trunc i16 %call1 to i8
  %incdec.ptr3 = getelementptr i8, i8* %con_buf.addr.027, i64 1
  store i8 %conv2, i8* %con_buf.addr.027, align 1
  %inc = add i32 %col.029, 1
  %cmp4 = icmp eq i32 %inc, %0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call7 = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %pos.addr.026, i1 noundef %viewed) #8
  %add8 = add i32 %pos.addr.026, %0
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %pos.addr.1 = phi i32 [ %add8, %if.then ], [ %pos.addr.026, %while.body ]
  %org.1 = phi i16* [ %call7, %if.then ], [ %incdec.ptr, %while.body ]
  %col.1 = phi i32 [ 0, %if.then ], [ %inc, %while.body ]
  %cmp.not = icmp eq i32 %dec30, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vcs_read_buf(%struct.vc_data* noundef %vc, i8* noundef %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef %viewed, i32* nocapture noundef %skip) unnamed_addr #0 {
entry:
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %cmp = icmp ult i32 %pos, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %1 = load i32, i32* %vc_rows, align 8
  %cmp1 = icmp ult i32 %1, 255
  %cond = select i1 %cmp1, i32 %1, i32 255
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %con_buf, align 1
  %2 = load i32, i32* %vc_cols, align 4
  %cmp4 = icmp ult i32 %2, 255
  %cond9 = select i1 %cmp4, i32 %2, i32 255
  %conv10 = trunc i32 %cond9 to i8
  %arrayidx11 = getelementptr i8, i8* %con_buf, i64 1
  store i8 %conv10, i8* %arrayidx11, align 1
  %add.ptr = getelementptr i8, i8* %con_buf, i64 2
  call void @getconsxy(%struct.vc_data* noundef %vc, i8* noundef %add.ptr) #8
  %3 = load i32, i32* %skip, align 4
  %add = add i32 %3, %pos
  store i32 %add, i32* %skip, align 4
  %add12 = add i32 %count, %pos
  %cmp14 = icmp ugt i32 %add12, 4096
  %sub = sub nuw nsw i32 4096, %pos
  %spec.select = select i1 %cmp14, i32 %sub, i32 %count
  %spec.select118 = select i1 %cmp14, i32 4096, i32 %add12
  %4 = call i32 @llvm.usub.sat.i32(i32 %spec.select118, i32 4)
  %add.ptr25 = getelementptr i8, i8* %con_buf, i64 4
  br label %if.end35

if.else:                                          ; preds = %entry
  %and = and i32 %pos, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end35, label %if.then26

if.then26:                                        ; preds = %if.else
  %5 = load i32, i32* %skip, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %skip, align 4
  %cmp28 = icmp ult i32 %count, 4096
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.then26
  %inc31 = add nuw nsw i32 %count, 1
  br label %if.end38

if.else32:                                        ; preds = %if.then26
  %dec = add i32 %count, -1
  br label %if.end38

if.end35:                                         ; preds = %if.else, %if.then
  %filled.1 = phi i32 [ %spec.select, %if.then ], [ %count, %if.else ]
  %count.addr.1 = phi i32 [ %4, %if.then ], [ %count, %if.else ]
  %pos.addr.0 = phi i32 [ 4, %if.then ], [ %pos, %if.else ]
  %con_buf.addr.0 = phi i8* [ %add.ptr25, %if.then ], [ %con_buf, %if.else ]
  %tobool36.not = icmp eq i32 %count.addr.1, 0
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.else32, %if.then30, %if.end35
  %con_buf.addr.0128 = phi i8* [ %con_buf.addr.0, %if.end35 ], [ %con_buf, %if.then30 ], [ %con_buf, %if.else32 ]
  %pos.addr.0127 = phi i32 [ %pos.addr.0, %if.end35 ], [ %pos, %if.then30 ], [ %pos, %if.else32 ]
  %count.addr.1126 = phi i32 [ %count.addr.1, %if.end35 ], [ %inc31, %if.then30 ], [ %count, %if.else32 ]
  %filled.1124 = phi i32 [ %filled.1, %if.end35 ], [ %count, %if.then30 ], [ %dec, %if.else32 ]
  %sub39 = add i32 %pos.addr.0127, -4
  %div = lshr i32 %sub39, 1
  %rem = urem i32 %div, %0
  %call = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %div, i1 noundef %viewed) #8
  %add43 = add i32 %count.addr.1126, 1
  %tobool45.not129 = icmp ult i32 %add43, 2
  br i1 %tobool45.not129, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end38
  %6 = bitcast i8* %con_buf.addr.0128 to i16*
  %div44 = lshr i32 %add43, 1
  %sub41 = add i32 %div, %0
  %add42 = sub i32 %sub41, %rem
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end56
  %pos.addr.1134 = phi i32 [ %pos.addr.2, %if.end56 ], [ %add42, %while.body.preheader ]
  %count.addr.2133 = phi i32 [ %dec48, %if.end56 ], [ %div44, %while.body.preheader ]
  %org.0132 = phi i16* [ %org.1, %if.end56 ], [ %call, %while.body.preheader ]
  %con_buf16.0131 = phi i16* [ %incdec.ptr47, %if.end56 ], [ %6, %while.body.preheader ]
  %col.0130 = phi i32 [ %col.1, %if.end56 ], [ %rem, %while.body.preheader ]
  %incdec.ptr = getelementptr i16, i16* %org.0132, i64 1
  %call46 = call i16 @vcs_scr_readw(%struct.vc_data* noundef %vc, i16* noundef %org.0132) #8
  %incdec.ptr47 = getelementptr i16, i16* %con_buf16.0131, i64 1
  store i16 %call46, i16* %con_buf16.0131, align 2
  %dec48 = add nsw i32 %count.addr.2133, -1
  %inc49 = add i32 %col.0130, 1
  %cmp50 = icmp eq i32 %inc49, %0
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %while.body
  %call54 = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %pos.addr.1134, i1 noundef %viewed) #8
  %add55 = add i32 %pos.addr.1134, %0
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %while.body
  %col.1 = phi i32 [ 0, %if.then52 ], [ %inc49, %while.body ]
  %org.1 = phi i16* [ %call54, %if.then52 ], [ %incdec.ptr, %while.body ]
  %pos.addr.2 = phi i32 [ %add55, %if.then52 ], [ %pos.addr.1134, %while.body ]
  %tobool45.not = icmp eq i32 %dec48, 0
  br i1 %tobool45.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end56, %if.end38, %if.end35
  %filled.1125 = phi i32 [ %filled.1, %if.end35 ], [ %filled.1124, %if.end38 ], [ %filled.1124, %if.end56 ]
  ret i32 %filled.1125
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_uniscr_check(%struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc_uniscr_copy_line(%struct.vc_data* noundef, i8* noundef, i1 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i16* @screen_pos(%struct.vc_data* noundef, i32 noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i16 @vcs_scr_readw(%struct.vc_data* noundef, i16* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @getconsxy(%struct.vc_data* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #9
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #9
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #8
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #11, !srcloc !16
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #11, !srcloc !17
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !18
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i16* @vcs_write_buf(%struct.vc_data* noundef %vc, i8* nocapture noundef readonly %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef %viewed, i16** nocapture noundef writeonly %org0) unnamed_addr #0 {
entry:
  %header = alloca i32, align 4, !annotation !7
  %tmpcast = bitcast i32* %header to [4 x i8]*, !annotation !7
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %cmp = icmp ult i32 %pos, 4
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  store i32 0, i32* %header, align 4, !annotation !7
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  call void @getconsxy(%struct.vc_data* noundef %vc, i8* noundef %add.ptr) #8
  %cmp2113.not = icmp eq i32 %count, 0
  br i1 %cmp2113.not, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then
  %2 = zext i32 %pos to i64
  %dec = add i32 %count, -1
  %incdec.ptr = getelementptr i8, i8* %con_buf, i64 1
  %3 = load i8, i8* %con_buf, align 1
  %indvars.iv.next = add nuw nsw i64 %2, 1
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %2
  store i8 %3, i8* %arrayidx, align 1
  %cmp1 = icmp ult i32 %pos, 3
  %cmp2 = icmp ne i32 %dec, 0
  %4 = and i1 %cmp1, %cmp2
  br i1 %4, label %while.body.1, label %while.end.loopexit

while.body.1:                                     ; preds = %while.body.preheader
  %dec.1 = add i32 %count, -2
  %incdec.ptr.1 = getelementptr i8, i8* %con_buf, i64 2
  %5 = load i8, i8* %incdec.ptr, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %2, 2
  %arrayidx.1 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %indvars.iv.next
  store i8 %5, i8* %arrayidx.1, align 1
  %cmp1.1 = icmp ult i32 %pos, 2
  %cmp2.1 = icmp ne i32 %dec.1, 0
  %6 = and i1 %cmp1.1, %cmp2.1
  br i1 %6, label %while.body.2, label %while.end.loopexit

while.body.2:                                     ; preds = %while.body.1
  %dec.2 = add i32 %count, -3
  %incdec.ptr.2 = getelementptr i8, i8* %con_buf, i64 3
  %7 = load i8, i8* %incdec.ptr.1, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %2, 3
  %arrayidx.2 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %indvars.iv.next.1
  store i8 %7, i8* %arrayidx.2, align 1
  %cmp1.2 = icmp eq i32 %pos, 0
  %cmp2.2 = icmp ne i32 %dec.2, 0
  %8 = and i1 %cmp1.2, %cmp2.2
  br i1 %8, label %while.body.3, label %while.end.loopexit

while.body.3:                                     ; preds = %while.body.2
  %dec.3 = add i32 %count, -4
  %incdec.ptr.3 = getelementptr i8, i8* %con_buf, i64 4
  %9 = load i8, i8* %incdec.ptr.2, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %2, 4
  %arrayidx.3 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %indvars.iv.next.2
  store i8 %9, i8* %arrayidx.3, align 1
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body.3, %while.body.2, %while.body.1, %while.body.preheader
  %dec.lcssa = phi i32 [ %dec, %while.body.preheader ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ]
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %while.body.preheader ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %while.body.preheader ], [ %indvars.iv.next.1, %while.body.1 ], [ %indvars.iv.next.2, %while.body.2 ], [ %indvars.iv.next.3, %while.body.3 ]
  %10 = trunc i64 %indvars.iv.next.lcssa to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %count.addr.0.lcssa = phi i32 [ 0, %if.then ], [ %dec.lcssa, %while.end.loopexit ]
  %pos.addr.0.lcssa = phi i32 [ %pos, %if.then ], [ %10, %while.end.loopexit ]
  %con_buf.addr.0.lcssa = phi i8* [ %con_buf, %if.then ], [ %incdec.ptr.lcssa, %while.end.loopexit ]
  br i1 %viewed, label %if.end, label %if.then3

if.then3:                                         ; preds = %while.end
  call void @putconsxy(%struct.vc_data* noundef %vc, i8* noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %count.addr.1 = phi i32 [ %count.addr.0.lcssa, %if.end ], [ %count, %entry ]
  %pos.addr.1 = phi i32 [ %pos.addr.0.lcssa, %if.end ], [ %pos, %entry ]
  %con_buf.addr.1 = phi i8* [ %con_buf.addr.0.lcssa, %if.end ], [ %con_buf, %entry ]
  %tobool7.not = icmp eq i32 %count.addr.1, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %sub = add i32 %pos.addr.1, -4
  %div = lshr i32 %sub, 1
  %rem = urem i32 %div, %0
  %call = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %div, i1 noundef %viewed) #8
  store i16* %call, i16** %org0, align 8
  %and = and i32 %pos.addr.1, 1
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %if.end9
  %dec14 = add i32 %count.addr.1, -1
  %incdec.ptr15 = getelementptr i8, i8* %con_buf.addr.1, i64 1
  %11 = load i8, i8* %con_buf.addr.1, align 1
  %call16 = call i16 @vcs_scr_readw(%struct.vc_data* noundef %vc, i16* noundef %call) #8
  %conv = trunc i16 %call16 to i8
  %call17 = call fastcc i16 @vc_compile_le16(i8 noundef %11, i8 noundef %conv) #9
  call void @vcs_scr_writew(%struct.vc_data* noundef %vc, i16 noundef %call17, i16* noundef %call) #8
  %inc19 = add i32 %pos.addr.1, -3
  %inc20 = add nuw i32 %rem, 1
  %cmp21 = icmp eq i32 %inc20, %0
  br i1 %cmp21, label %if.then23, label %if.then13.if.end28_crit_edge

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  %incdec.ptr18 = getelementptr i16, i16* %call, i64 1
  %.pre = lshr i32 %inc19, 1
  br label %if.end28

if.then23:                                        ; preds = %if.then13
  %div24 = lshr i32 %inc19, 1
  %call26 = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %div24, i1 noundef %viewed) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then13.if.end28_crit_edge, %if.then23, %if.end9
  %div29.pre-phi = phi i32 [ %.pre, %if.then13.if.end28_crit_edge ], [ %div24, %if.then23 ], [ %div, %if.end9 ]
  %count.addr.2 = phi i32 [ %dec14, %if.then13.if.end28_crit_edge ], [ %dec14, %if.then23 ], [ %count.addr.1, %if.end9 ]
  %org.0 = phi i16* [ %incdec.ptr18, %if.then13.if.end28_crit_edge ], [ %call26, %if.then23 ], [ %call, %if.end9 ]
  %col.0 = phi i32 [ %inc20, %if.then13.if.end28_crit_edge ], [ 0, %if.then23 ], [ %rem, %if.end9 ]
  %con_buf.addr.2 = phi i8* [ %incdec.ptr15, %if.then13.if.end28_crit_edge ], [ %incdec.ptr15, %if.then23 ], [ %con_buf.addr.1, %if.end9 ]
  %cmp32119 = icmp ugt i32 %count.addr.2, 1
  br i1 %cmp32119, label %while.body34.preheader, label %while.end46

while.body34.preheader:                           ; preds = %if.end28
  %sub30 = sub i32 %0, %col.0
  %add = add i32 %sub30, %div29.pre-phi
  br label %while.body34

while.body34:                                     ; preds = %while.body34.preheader, %if.end45
  %con_buf.addr.3124 = phi i8* [ %add.ptr36, %if.end45 ], [ %con_buf.addr.2, %while.body34.preheader ]
  %pos.addr.3123 = phi i32 [ %pos.addr.4, %if.end45 ], [ %add, %while.body34.preheader ]
  %col.1122 = phi i32 [ %col.2, %if.end45 ], [ %col.0, %while.body34.preheader ]
  %org.1121 = phi i16* [ %org.2, %if.end45 ], [ %org.0, %while.body34.preheader ]
  %count.addr.3120 = phi i32 [ %sub37, %if.end45 ], [ %count.addr.2, %while.body34.preheader ]
  %x = bitcast i8* %con_buf.addr.3124 to i16*
  %12 = load i16, i16* %x, align 1
  %incdec.ptr35 = getelementptr i16, i16* %org.1121, i64 1
  call void @vcs_scr_writew(%struct.vc_data* noundef %vc, i16 noundef %12, i16* noundef %org.1121) #8
  %add.ptr36 = getelementptr i8, i8* %con_buf.addr.3124, i64 2
  %sub37 = add i32 %count.addr.3120, -2
  %inc38 = add i32 %col.1122, 1
  %cmp39 = icmp eq i32 %inc38, %0
  br i1 %cmp39, label %if.then41, label %if.end45

if.then41:                                        ; preds = %while.body34
  %call43 = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %pos.addr.3123, i1 noundef %viewed) #8
  %add44 = add i32 %pos.addr.3123, %0
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %while.body34
  %org.2 = phi i16* [ %call43, %if.then41 ], [ %incdec.ptr35, %while.body34 ]
  %col.2 = phi i32 [ 0, %if.then41 ], [ %inc38, %while.body34 ]
  %pos.addr.4 = phi i32 [ %add44, %if.then41 ], [ %pos.addr.3123, %while.body34 ]
  %cmp32 = icmp ugt i32 %sub37, 1
  br i1 %cmp32, label %while.body34, label %while.end46

while.end46:                                      ; preds = %if.end45, %if.end28
  %count.addr.3.lcssa = phi i32 [ %count.addr.2, %if.end28 ], [ %sub37, %if.end45 ]
  %org.1.lcssa = phi i16* [ %org.0, %if.end28 ], [ %org.2, %if.end45 ]
  %con_buf.addr.3.lcssa = phi i8* [ %con_buf.addr.2, %if.end28 ], [ %add.ptr36, %if.end45 ]
  %tobool47.not = icmp eq i32 %count.addr.3.lcssa, 0
  br i1 %tobool47.not, label %cleanup, label %if.end49

if.end49:                                         ; preds = %while.end46
  %13 = load i8, i8* %con_buf.addr.3.lcssa, align 1
  %call51 = call i16 @vcs_scr_readw(%struct.vc_data* noundef %vc, i16* noundef %org.1.lcssa) #8
  %14 = lshr i16 %call51, 8
  %conv53 = trunc i16 %14 to i8
  %call54 = call fastcc i16 @vc_compile_le16(i8 noundef %conv53, i8 noundef %13) #9
  call void @vcs_scr_writew(%struct.vc_data* noundef %vc, i16 noundef %call54, i16* noundef %org.1.lcssa) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end46, %if.end6, %if.end49
  %retval.0 = phi i16* [ %org.1.lcssa, %if.end49 ], [ null, %if.end6 ], [ %org.1.lcssa, %while.end46 ]
  ret i16* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i16* @vcs_write_buf_noattr(%struct.vc_data* noundef %vc, i8* nocapture noundef readonly %con_buf, i32 noundef %pos, i32 noundef %count, i1 noundef %viewed, i16** nocapture noundef writeonly %org0) unnamed_addr #0 {
entry:
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %call = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %pos, i1 noundef %viewed) #8
  store i16* %call, i16** %org0, align 8
  %rem = urem i32 %pos, %0
  %cmp.not30 = icmp eq i32 %count, 0
  br i1 %cmp.not30, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %sub = add i32 %0, %pos
  %add = sub i32 %sub, %rem
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %con_buf.addr.035 = phi i8* [ %incdec.ptr, %if.end ], [ %con_buf, %while.body.preheader ]
  %col.034 = phi i32 [ %col.1, %if.end ], [ %rem, %while.body.preheader ]
  %org.033 = phi i16* [ %org.1, %if.end ], [ %call, %while.body.preheader ]
  %pos.addr.032 = phi i32 [ %pos.addr.1, %if.end ], [ %add, %while.body.preheader ]
  %count.addr.031 = phi i32 [ %dec, %if.end ], [ %count, %while.body.preheader ]
  %incdec.ptr = getelementptr i8, i8* %con_buf.addr.035, i64 1
  %1 = load i8, i8* %con_buf.addr.035, align 1
  %dec = add i32 %count.addr.031, -1
  %call1 = call i16 @vcs_scr_readw(%struct.vc_data* noundef %vc, i16* noundef %org.033) #8
  %2 = and i16 %call1, -256
  %conv2 = zext i8 %1 to i16
  %or = or i16 %2, %conv2
  call void @vcs_scr_writew(%struct.vc_data* noundef %vc, i16 noundef %or, i16* noundef %org.033) #8
  %incdec.ptr4 = getelementptr i16, i16* %org.033, i64 1
  %inc = add i32 %col.034, 1
  %cmp5 = icmp eq i32 %inc, %0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call8 = call i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %pos.addr.032, i1 noundef %viewed) #8
  %add9 = add i32 %pos.addr.032, %0
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %pos.addr.1 = phi i32 [ %add9, %if.then ], [ %pos.addr.032, %while.body ]
  %org.1 = phi i16* [ %call8, %if.then ], [ %incdec.ptr4, %while.body ]
  %col.1 = phi i32 [ 0, %if.then ], [ %inc, %while.body ]
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %org.0.lcssa = phi i16* [ %call, %entry ], [ %org.1, %if.end ]
  ret i16* %org.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_region(%struct.vc_data* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_scr_updated(%struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #9
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #9
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !19

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @putconsxy(%struct.vc_data* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_scr_writew(%struct.vc_data* noundef, i16 noundef, i16* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i16 @vc_compile_le16(i8 noundef %hi, i8 noundef %lo) unnamed_addr #6 {
entry:
  %conv = zext i8 %hi to i16
  %shl = shl nuw i16 %conv, 8
  %conv1 = zext i8 %lo to i16
  %or = or i16 %shl, %conv1
  ret i16 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* noundef %file) unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.vcs_poll_data**
  %1 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %0, align 8
  %tobool.not = icmp eq %struct.vcs_poll_data* %1, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kzalloc() #9
  %2 = bitcast i8* %call to %struct.vcs_poll_data*
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #9
  %call5 = call fastcc i32 @iminor(%struct.inode* noundef %call4) #9
  %and = and i32 %call5, 63
  %cons_num = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %cons_num to i32*
  store i32 %and, i32* %3, align 8
  %waitq = getelementptr inbounds i8, i8* %call, i64 32
  %4 = bitcast i8* %waitq to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @vcs_poll_data_get.__key) #8
  %notifier = bitcast i8* %call to %struct.notifier_block*
  %notifier_call = bitcast i8* %call to i32 (%struct.notifier_block*, i64, i8*)**
  store i32 (%struct.notifier_block*, i64, i8*)* @vcs_notifier, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8
  %event = getelementptr inbounds i8, i8* %call, i64 28
  %5 = bitcast i8* %event to i32*
  store i32 4, i32* %5, align 4
  %call7 = call i32 @register_vt_notifier(%struct.notifier_block* noundef nonnull %notifier) #8
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end3
  call void @kfree(i8* noundef nonnull %call) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #8
  %6 = load i8*, i8** %private_data, align 8
  %tobool11.not = icmp eq i8* %6, null
  br i1 %tobool11.not, label %if.end15.thread, label %if.end15

if.end15.thread:                                  ; preds = %if.end9
  store i8* %call, i8** %private_data, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %7 = bitcast i8* %6 to %struct.vcs_poll_data*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #8
  call fastcc void @vcs_poll_data_free(%struct.vcs_poll_data* noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15.thread, %if.end15, %if.end, %entry, %if.then8
  %retval.0 = phi %struct.vcs_poll_data* [ null, %if.then8 ], [ %1, %entry ], [ null, %if.end ], [ %7, %if.end15 ], [ %2, %if.end15.thread ]
  ret %struct.vcs_poll_data* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  %tobool3 = icmp ne %struct.wait_queue_head* %wait_address, null
  %or.cond = and i1 %tobool3, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #8
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vcs_notifier(%struct.notifier_block* noundef %nb, i64 noundef %code, i8* nocapture noundef readonly %_param) #0 {
entry:
  %vc1 = bitcast i8* %_param to %struct.vc_data**
  %0 = load %struct.vc_data*, %struct.vc_data** %vc1, align 8
  %1 = bitcast %struct.notifier_block* %nb to %struct.vcs_poll_data*
  %cons_num = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %nb, i64 1
  %2 = bitcast %struct.notifier_block* %cons_num to i32*
  %3 = load i32, i32* %2, align 8
  switch i64 %code, label %cleanup [
    i64 4, label %sw.epilog
    i64 2, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb2
  %fa_band.0 = phi i32 [ 6, %sw.bb2 ], [ 5, %entry ]
  %cmp = icmp eq i32 %3, 0
  %4 = load i32, i32* @fg_console, align 4
  %dec = add i32 %3, -1
  %currcons.0 = select i1 %cmp, i32 %4, i32 %dec
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i64 0, i32 3
  %5 = load i16, i16* %vc_num, align 8
  %conv = zext i16 %5 to i32
  %cmp3.not = icmp eq i32 %currcons.0, %conv
  br i1 %cmp3.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %sw.epilog
  %conv7 = trunc i64 %code to i32
  %event = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %1, i64 0, i32 2
  store i32 %conv7, i32* %event, align 4
  %waitq = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %nb, i64 1, i32 1
  %6 = bitcast %struct.notifier_block** %waitq to %struct.wait_queue_head*
  call void @__wake_up(%struct.wait_queue_head* noundef %6, i32 noundef 1, i32 noundef 1, i8* noundef null) #8
  %fasync = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %nb, i64 2, i32 1
  %7 = bitcast %struct.notifier_block** %fasync to %struct.fasync_struct**
  call void @kill_fasync(%struct.fasync_struct** noundef %7, i32 noundef 29, i32 noundef %fa_band.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_vt_notifier(%struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vcs_poll_data_free(%struct.vcs_poll_data* noundef %poll) unnamed_addr #0 {
entry:
  %notifier = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %poll, i64 0, i32 0
  %call = call i32 @unregister_vt_notifier(%struct.notifier_block* noundef %notifier) #8
  %0 = bitcast %struct.vcs_poll_data* %poll to i8*
  call void @kfree(i8* noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(%struct.fasync_struct** noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !19

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !21
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_vt_notifier(%struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, %struct.file* noundef, i32 noundef, %struct.fasync_struct** noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { cold nobuiltin noreturn nounwind "no-builtins" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148895064}
!11 = !{!"branch_weights", i32 1, i32 4001}
!12 = !{i64 2153405914}
!13 = !{i64 2153407724}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = !{i64 3948773, i64 3948856, i64 3949080, i64 3949300, i64 3949323}
!17 = !{i64 3953475, i64 3953499}
!18 = !{i64 2151506259}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2149569427}
!21 = !{i64 2147833466, i64 2147833499, i64 2147833552, i64 2147833611, i64 2147833645, i64 2147833700, i64 2147833729, i64 2147833749}
!22 = !{i64 2149576708}
!23 = !{i64 2149368938}
