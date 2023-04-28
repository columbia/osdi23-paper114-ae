; ModuleID = 'kernel/dma/coherent.c'
source_filename = "kernel/dma/coherent.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.reserved_mem_ops = type { i32 (%struct.reserved_mem*, %struct.device*)*, void (%struct.reserved_mem*, %struct.device*)* }
%struct.reserved_mem = type { i8*, i64, i64, %struct.reserved_mem_ops*, i64, i64, i8* }
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
%struct.irq_domain = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.bus_dma_region = type { i64, i64, i64, i64 }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type { i8*, i64, i64, i32, i64*, %struct.spinlock, i8 }
%struct.io_tlb_mem = type { i64, i64, i64, i64, i32, %struct.spinlock, %struct.dentry*, i8, i8, i8, %struct.io_tlb_slot* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type opaque
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
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
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
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
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.io_tlb_slot = type { i64, i64, i32 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque

@__of_table_dma = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"shared-dma-pool\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (i32 (%struct.reserved_mem*)* @rmem_dma_setup to i8*) }, section "__reservedmem_of_table", align 8
@.str = private unnamed_addr constant [72 x i8] c"\013Reserved memory: failed to init DMA memory pool at %pa, size %zd MiB\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"reusable\00", align 1
@rmem_dma_ops = internal constant %struct.reserved_mem_ops { i32 (%struct.reserved_mem*, %struct.device*)* @rmem_dma_device_init, void (%struct.reserved_mem*, %struct.device*)* @rmem_dma_device_release }, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"\016Reserved memory: created DMA memory pool at %pa, size %ld MiB\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_dma, i32 0, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_declare_coherent_memory(%struct.device* noundef %dev, i64 noundef %phys_addr, i64 noundef %device_addr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dma_coherent_mem* @dma_init_coherent_memory(i64 noundef %phys_addr, i64 noundef %device_addr, i64 noundef %size, i1 noundef false) #11
  %0 = bitcast %struct.dma_coherent_mem* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #11
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @dma_assign_coherent_memory(%struct.device* noundef %dev, %struct.dma_coherent_mem* noundef %call) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @dma_release_coherent_memory(%struct.dma_coherent_mem* noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dma_coherent_mem* @dma_init_coherent_memory(i64 noundef %phys_addr, i64 noundef %device_addr, i64 noundef %size, i1 noundef %use_dma_pfn_offset) unnamed_addr #0 {
entry:
  %phys_addr.addr = alloca i64, align 8
  store i64 %phys_addr, i64* %phys_addr.addr, align 8
  %frombool = zext i1 %use_dma_pfn_offset to i8
  %shr = lshr i64 %size, 12
  %conv = trunc i64 %shr to i32
  %sext = shl i64 %shr, 32
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i8* @memremap(i64 noundef %phys_addr, i64 noundef %size, i64 noundef 4) #12
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i8* @kzalloc(i64 noundef 48) #11
  %tobool9.not = icmp eq i8* %call8, null
  br i1 %tobool9.not, label %out_unmap_membase, label %if.end11

if.end11:                                         ; preds = %if.end7
  %sub = ashr exact i64 %sext, 3
  %0 = add nsw i64 %sub, 33822867456
  %sext54 = ashr i64 %0, 32
  %conv12 = and i64 %sext54, -8
  %call13 = call fastcc i8* @kzalloc(i64 noundef %conv12) #11
  %bitmap = getelementptr inbounds i8, i8* %call8, i64 32
  %1 = bitcast i8* %bitmap to i8**
  store i8* %call13, i8** %1, align 8
  %tobool15.not = icmp eq i8* %call13, null
  br i1 %tobool15.not, label %out_free_dma_mem, label %if.end17

if.end17:                                         ; preds = %if.end11
  %virt_base = bitcast i8* %call8 to i8**
  store i8* %call3, i8** %virt_base, align 8
  %device_base = getelementptr inbounds i8, i8* %call8, i64 8
  %2 = bitcast i8* %device_base to i64*
  store i64 %device_addr, i64* %2, align 8
  %3 = load i64, i64* %phys_addr.addr, align 8
  %shr18 = lshr i64 %3, 12
  %pfn_base = getelementptr inbounds i8, i8* %call8, i64 16
  %4 = bitcast i8* %pfn_base to i64*
  store i64 %shr18, i64* %4, align 8
  %size19 = getelementptr inbounds i8, i8* %call8, i64 24
  %5 = bitcast i8* %size19 to i32*
  store i32 %conv, i32* %5, align 8
  %6 = getelementptr inbounds i8, i8* %call8, i64 44
  store i8 %frombool, i8* %6, align 4
  %spinlock = getelementptr inbounds i8, i8* %call8, i64 40
  %7 = bitcast i8* %spinlock to i32*
  store i32 0, i32* %7, align 8
  br label %cleanup

out_free_dma_mem:                                 ; preds = %if.end11
  call void @kfree(i8* noundef nonnull %call8) #12
  br label %out_unmap_membase

out_unmap_membase:                                ; preds = %if.end7, %out_free_dma_mem
  call void @memunmap(i8* noundef nonnull %call3) #12
  %div27 = lshr i64 %size, 20
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64* noundef nonnull %phys_addr.addr, i64 noundef %div27) #13
  %call29 = call fastcc i8* @ERR_PTR(i64 noundef -12) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unmap_membase, %if.end17, %if.then5, %if.then
  %retval.0.in = phi i8* [ %call8, %if.end17 ], [ %call29, %out_unmap_membase ], [ %call6, %if.then5 ], [ %call, %if.then ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.dma_coherent_mem*
  ret %struct.dma_coherent_mem* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #1 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @dma_assign_coherent_memory(%struct.device* noundef %dev, %struct.dma_coherent_mem* noundef %mem) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %dma_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 22
  %0 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %dma_mem, align 8
  %tobool1.not = icmp eq %struct.dma_coherent_mem* %0, null
  br i1 %tobool1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  store %struct.dma_coherent_mem* %mem, %struct.dma_coherent_mem** %dma_mem, align 8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -19, %entry ], [ -16, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_release_coherent_memory(%struct.dma_coherent_mem* noundef %mem) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dma_coherent_mem* %mem, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %virt_base = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 0
  %0 = load i8*, i8** %virt_base, align 8
  call void @memunmap(i8* noundef %0) #12
  %bitmap = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 4
  %1 = bitcast i64** %bitmap to i8**
  %2 = load i8*, i8** %1, align 8
  call void @kfree(i8* noundef %2) #12
  %3 = bitcast %struct.dma_coherent_mem* %mem to i8*
  call void @kfree(i8* noundef nonnull %3) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_alloc_from_dev_coherent(%struct.device* noundef %dev, i64 noundef %size, i64* nocapture noundef writeonly %dma_handle, i8** nocapture noundef writeonly %ret) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dma_coherent_mem* @dev_get_coherent_memory(%struct.device* noundef %dev) #11
  %tobool.not = icmp eq %struct.dma_coherent_mem* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__dma_alloc_from_coherent(%struct.device* noundef %dev, %struct.dma_coherent_mem* noundef nonnull %call, i64 noundef %size, i64* noundef %dma_handle) #11
  store i8* %call1, i8** %ret, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.dma_coherent_mem* @dev_get_coherent_memory(%struct.device* noundef readonly %dev) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %dma_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 22
  %0 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %dma_mem, align 8
  %tobool1.not = icmp eq %struct.dma_coherent_mem* %0, null
  br i1 %tobool1.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct.dma_coherent_mem* [ null, %if.end ], [ %0, %land.lhs.true ]
  ret %struct.dma_coherent_mem* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__dma_alloc_from_coherent(%struct.device* nocapture noundef readonly %dev, %struct.dma_coherent_mem* noundef %mem, i64 noundef %size, i64* nocapture noundef writeonly %dma_handle) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 5, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #11
  %size6 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 3
  %0 = load i32, i32* %size6, align 8
  %conv7 = sext i32 %0 to i64
  %shl = shl nsw i64 %conv7, 12
  %cmp8 = icmp ult i64 %shl, %size
  br i1 %cmp8, label %err, label %if.end14.i, !prof !7

if.end14.i:                                       ; preds = %entry
  %dec.i = add i64 %size, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %1 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #14, !range !8
  %2 = trunc i64 %1 to i32
  %conv.i.i = sub nuw nsw i32 64, %2
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %bitmap = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 4
  %3 = load i64*, i64** %bitmap, align 8
  %call13 = call i32 @bitmap_find_free_region(i64* noundef %3, i32 noundef %0, i32 noundef %retval.0.i.i) #12
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %err, label %if.end24, !prof !7

if.end24:                                         ; preds = %if.end14.i
  %call25 = call fastcc i64 @dma_get_device_base(%struct.device* noundef %dev, %struct.dma_coherent_mem* noundef %mem) #11
  %conv2655 = zext i32 %call13 to i64
  %shl27 = shl nuw nsw i64 %conv2655, 12
  %add = add i64 %call25, %shl27
  store i64 %add, i64* %dma_handle, align 8
  %virt_base = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 0
  %4 = load i8*, i8** %virt_base, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %shl27
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #12
  %call31 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %size) #12
  br label %cleanup

err:                                              ; preds = %if.end14.i, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end24
  %retval.0 = phi i8* [ null, %err ], [ %add.ptr, %if.end24 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_release_from_dev_coherent(%struct.device* noundef %dev, i32 noundef %order, i8* noundef %vaddr) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dma_coherent_mem* @dev_get_coherent_memory(%struct.device* noundef %dev) #11
  %call1 = call fastcc i32 @__dma_release_from_coherent(%struct.dma_coherent_mem* noundef %call, i32 noundef %order, i8* noundef %vaddr) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__dma_release_from_coherent(%struct.dma_coherent_mem* noundef %mem, i32 noundef %order, i8* noundef %vaddr) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dma_coherent_mem* %mem, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %virt_base = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 0
  %0 = load i8*, i8** %virt_base, align 8
  %cmp.not = icmp ugt i8* %0, %vaddr
  br i1 %cmp.not, label %return, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %land.lhs.true
  %size = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 3
  %1 = load i32, i32* %size, align 8
  %conv = sext i32 %1 to i64
  %shl = shl nsw i64 %conv, 12
  %add.ptr = getelementptr i8, i8* %0, i64 %shl
  %cmp3 = icmp ugt i8* %add.ptr, %vaddr
  br i1 %cmp3, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true1
  %sub.ptr.lhs.cast = ptrtoint i8* %vaddr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = lshr i64 %sub.ptr.sub, 12
  %conv6 = trunc i64 %2 to i32
  %rlock.i = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 5, i32 0, i32 0
  %call10 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #11
  %bitmap = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 4
  %3 = load i64*, i64** %bitmap, align 8
  call void @bitmap_release_region(i64* noundef %3, i32 noundef %conv6, i32 noundef %order) #12
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call10) #12
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true1, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true1 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_mmap_from_dev_coherent(%struct.device* noundef %dev, %struct.vm_area_struct* noundef %vma, i8* noundef %vaddr, i64 noundef %size, i32* nocapture noundef writeonly %ret) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dma_coherent_mem* @dev_get_coherent_memory(%struct.device* noundef %dev) #11
  %call1 = call fastcc i32 @__dma_mmap_from_coherent(%struct.dma_coherent_mem* noundef %call, %struct.vm_area_struct* noundef %vma, i8* noundef %vaddr, i64 noundef %size, i32* noundef %ret) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__dma_mmap_from_coherent(%struct.dma_coherent_mem* noundef readonly %mem, %struct.vm_area_struct* noundef %vma, i8* noundef %vaddr, i64 noundef %size, i32* nocapture noundef writeonly %ret) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dma_coherent_mem* %mem, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %virt_base = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 0
  %0 = load i8*, i8** %virt_base, align 8
  %cmp.not = icmp ugt i8* %0, %vaddr
  br i1 %cmp.not, label %return, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, i8* %vaddr, i64 %size
  %size3 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 3
  %1 = load i32, i32* %size3, align 8
  %conv = sext i32 %1 to i64
  %shl = shl nsw i64 %conv, 12
  %add.ptr4 = getelementptr i8, i8* %0, i64 %shl
  %cmp5.not = icmp ugt i8* %add.ptr, %add.ptr4
  br i1 %cmp5.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true1
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %2 = load i64, i64* %vm_pgoff, align 8
  %call = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %vma) #11
  store i32 -6, i32* %ret, align 4
  %add = shl i64 %size, 20
  %3 = add i64 %add, 4293918720
  %conv11 = ashr i64 %3, 32
  %cmp12 = icmp ule i64 %conv11, %2
  %sub = sub i64 %conv11, %2
  %cmp16.not = icmp ugt i64 %call, %sub
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %return, label %if.then18

if.then18:                                        ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %vaddr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %pfn_base = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 2
  %4 = load i64, i64* %pfn_base, align 8
  %5 = shl i64 %sub.ptr.sub, 20
  %conv19 = ashr i64 %5, 32
  %add20 = add i64 %2, %conv19
  %add21 = add i64 %add20, %4
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %6 = load i64, i64* %vm_start, align 8
  %shl22 = shl i64 %call, 12
  %coerce.dive = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %7 = load i64, i64* %coerce.dive, align 8
  %call23 = call i32 @remap_pfn_range(%struct.vm_area_struct* noundef %vma, i64 noundef %6, i64 noundef %add21, i64 noundef %shl22, i64 %7) #12
  store i32 %call23, i32* %ret, align 4
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true1, %if.then, %if.then18
  %retval.0 = phi i32 [ 1, %if.then18 ], [ 1, %if.then ], [ 0, %land.lhs.true1 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @rmem_dma_setup(%struct.reserved_mem* noundef %rmem) #4 section ".init.text" {
entry:
  %fdt_node = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 1
  %0 = load i64, i64* %fdt_node, align 8
  %call = call i8* @of_get_flat_dt_prop(i64 noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* noundef null) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 3
  store %struct.reserved_mem_ops* @rmem_dma_ops, %struct.reserved_mem_ops** %ops, align 8
  %base = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 4
  %size = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 5
  %1 = load i64, i64* %size, align 8
  %div = lshr i64 %1, 20
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64* noundef %base, i64 noundef %div) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memremap(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #12
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(i8* noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #11
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @dma_get_device_base(%struct.device* nocapture noundef readonly %dev, %struct.dma_coherent_mem* nocapture noundef readonly %mem) unnamed_addr #8 {
entry:
  %use_dev_dma_pfn_offset = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 6
  %0 = load i8, i8* %use_dev_dma_pfn_offset, align 4, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pfn_base = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 2
  %1 = load i64, i64* %pfn_base, align 8
  %shl = shl i64 %1, 12
  %call = call fastcc i64 @phys_to_dma(%struct.device* noundef %dev, i64 noundef %shl) #11
  br label %return

if.end:                                           ; preds = %entry
  %device_base = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %mem, i64 0, i32 1
  %2 = load i64, i64* %device_base, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #11
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #14, !srcloc !12
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #14, !srcloc !13
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !7

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #9 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @phys_to_dma(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #8 {
entry:
  %call = call fastcc i64 @phys_to_dma_unencrypted(%struct.device* noundef %dev, i64 noundef %paddr) #11
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @phys_to_dma_unencrypted(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #8 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %tobool.not = icmp eq %struct.bus_dma_region* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @translate_phys_to_dma(%struct.device* noundef %dev, i64 noundef %paddr) #11
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ %paddr, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @translate_phys_to_dma(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #8 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %size15 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %0, i64 0, i32 2
  %1 = load i64, i64* %size15, align 8
  %tobool.not16 = icmp eq i64 %1, 0
  br i1 %tobool.not16, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i64 [ %5, %for.inc ], [ %1, %entry ]
  %m.017 = phi %struct.bus_dma_region* [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %cpu_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 0, i32 0
  %3 = load i64, i64* %cpu_start, align 8
  %cmp.not = icmp ule i64 %3, %paddr
  %sub = sub i64 %paddr, %3
  %cmp3 = icmp ult i64 %sub, %2
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 0, i32 3
  %4 = load i64, i64* %offset, align 8
  %sub4 = sub i64 %paddr, %4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 1
  %size = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.017, i64 1, i32 2
  %5 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i64 [ %sub4, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #14, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #3 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i64 noundef, i64) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_flat_dt_prop(i64 noundef, i8* noundef, i32* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @rmem_dma_device_init(%struct.reserved_mem* nocapture noundef %rmem, %struct.device* noundef %dev) #0 {
entry:
  %priv = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 6
  %0 = load i8*, i8** %priv, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  %1 = bitcast i8* %0 to %struct.dma_coherent_mem*
  br label %if.end6

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 4
  %2 = load i64, i64* %base, align 8
  %size = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %rmem, i64 0, i32 5
  %3 = load i64, i64* %size, align 8
  %call = call fastcc %struct.dma_coherent_mem* @dma_init_coherent_memory(i64 noundef %2, i64 noundef %2, i64 noundef %3, i1 noundef true) #11
  %4 = bitcast %struct.dma_coherent_mem* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %4) #11
  br i1 %call2, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  %5 = bitcast i8** %priv to %struct.dma_coherent_mem**
  store %struct.dma_coherent_mem* %call, %struct.dma_coherent_mem** %5, align 8
  br label %if.end6

cleanup:                                          ; preds = %if.then
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %4) #11
  %conv = trunc i64 %call4 to i32
  br label %return

if.end6:                                          ; preds = %entry.if.end6_crit_edge, %cleanup.thread
  %6 = phi %struct.dma_coherent_mem* [ %call, %cleanup.thread ], [ %1, %entry.if.end6_crit_edge ]
  %call8 = call fastcc i32 @dma_assign_coherent_memory(%struct.device* noundef %dev, %struct.dma_coherent_mem* noundef %6) #11
  br label %return

return:                                           ; preds = %cleanup, %if.end6
  %retval.1 = phi i32 [ 0, %if.end6 ], [ %conv, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal void @rmem_dma_device_release(%struct.reserved_mem* nocapture noundef readnone %rmem, %struct.device* noundef writeonly %dev) #10 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dma_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 22
  store %struct.dma_coherent_mem* null, %struct.dma_coherent_mem** %dma_mem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 0, i64 65}
!9 = !{i64 2149542968}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149207893, i64 2149207940, i64 2149207946, i64 2149207983, i64 2149208001, i64 2149209312, i64 2149209360, i64 2149209408, i64 2149209471, i64 2149209520, i64 2149208079, i64 2149208104, i64 2149208130, i64 2149208136, i64 2149208978, i64 2149209018, i64 2149209036, i64 2149209068, i64 2149209096, i64 2149209150, i64 2149209170, i64 2149209267, i64 2149208159, i64 2149208173, i64 2149208179, i64 2149208229, i64 2149208275, i64 2149208308}
!13 = !{i64 2149210072, i64 2149210119, i64 2149210125, i64 2149210162, i64 2149210180, i64 2149211123, i64 2149211171, i64 2149211219, i64 2149211282, i64 2149211331, i64 2149210258, i64 2149210283, i64 2149210309, i64 2149210315, i64 2149210352, i64 2149210358, i64 2149210408, i64 2149210454, i64 2149210487}
!14 = !{i64 2149202190, i64 2149202237, i64 2149202243, i64 2149202280, i64 2149202298, i64 2149203639, i64 2149203687, i64 2149203735, i64 2149203798, i64 2149203847, i64 2149202376, i64 2149202401, i64 2149202427, i64 2149202433, i64 2149203305, i64 2149203345, i64 2149203363, i64 2149203395, i64 2149203423, i64 2149203477, i64 2149203497, i64 2149203594, i64 2149202456, i64 2149202470, i64 2149202476, i64 2149202526, i64 2149202572, i64 2149202605}
!15 = !{i64 2147945146, i64 2147945179, i64 2147945232, i64 2147945291, i64 2147945325, i64 2147945380, i64 2147945409, i64 2147945429}
!16 = !{i64 2149568811}
!17 = !{i64 2149368838}
!18 = !{i64 2149213906, i64 2149213953, i64 2149213959, i64 2149213996, i64 2149214014, i64 2149215325, i64 2149215373, i64 2149215421, i64 2149215484, i64 2149215533, i64 2149214092, i64 2149214117, i64 2149214143, i64 2149214149, i64 2149214991, i64 2149215031, i64 2149215049, i64 2149215081, i64 2149215109, i64 2149215163, i64 2149215183, i64 2149215280, i64 2149214172, i64 2149214186, i64 2149214192, i64 2149214242, i64 2149214288, i64 2149214321}
