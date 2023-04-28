; ModuleID = 'kernel/dma/direct.c'
source_filename = "kernel/dma/direct.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
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
%struct.dma_coherent_mem = type opaque
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.nodemask_t = type { [1 x i64] }

@zone_dma_bits = dso_local local_unnamed_addr global i32 24, section ".data..ro_after_init", align 4
@max_pfn = external dso_local local_unnamed_addr global i64, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@dma_direct_map_resource.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"DMA addr %pad+%zu overflow (mask %llx, bus limit %llx).\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"attempt to add DMA range to existing map\0A\00", align 1
@swiotlb_force = external dso_local local_unnamed_addr global i32, align 4
@dma_direct_map_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"%s %s: DMA addr %pad+%zu overflow (mask %llx, bus limit %llx).\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define dso_local i64 @dma_direct_get_required_mask(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* @max_pfn, align 8
  %sub = shl i64 %0, 12
  %shl = add i64 %sub, -4096
  %call = call fastcc i64 @phys_to_dma_direct(%struct.device* noundef %dev, i64 noundef %shl) #13
  %1 = call i64 @llvm.ctlz.i64(i64 %call, i1 false) #14, !range !8
  %conv.i.op = sub nsw i64 63, %1
  %2 = and i64 %conv.i.op, 4294967295
  %.op = shl i64 2, %2
  %sub4 = add i64 %.op, -1
  ret i64 %sub4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @phys_to_dma_direct(%struct.device* nocapture noundef readonly %dev, i64 noundef %phys) unnamed_addr #2 {
entry:
  %call2 = call fastcc i64 @phys_to_dma(%struct.device* noundef %dev, i64 noundef %phys) #13
  ret i64 %call2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @dma_direct_alloc(%struct.device* noundef %dev, i64 noundef %size, i64* nocapture noundef writeonly %dma_handle, i32 noundef %gfp, i64 noundef %attrs) local_unnamed_addr #3 {
entry:
  %add = add i64 %size, 4095
  %and = and i64 %add, -4096
  %0 = trunc i64 %attrs to i32
  %1 = shl i32 %0, 5
  %2 = and i32 %1, 8192
  %3 = or i32 %2, %gfp
  %and2 = and i64 %attrs, 16
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %and7 = and i32 %3, -257
  %call8 = call fastcc %struct.page* @__dma_direct_alloc_pages(%struct.device* noundef %dev, i64 noundef %and, i32 noundef %and7) #13
  %tobool9.not = icmp eq %struct.page* %call8, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true
  call void @arch_dma_prep_coherent(%struct.page* noundef nonnull %call8, i64 noundef %and) #15
  %4 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %4, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %call8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %call16 = call fastcc i64 @phys_to_dma_direct(%struct.device* noundef %dev, i64 noundef %shl) #13
  store i64 %call16, i64* %dma_handle, align 8
  %5 = bitcast %struct.page* %call8 to i8*
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call18 = call fastcc i1 @gfpflags_allow_blocking(i32 noundef %3) #13
  br i1 %call18, label %if.end26, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end17
  %call21 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #13
  br i1 %call21, label %if.end26, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %call25 = call fastcc i8* @dma_direct_alloc_from_pool(%struct.device* noundef %dev, i64 noundef %and, i64* noundef %dma_handle, i32 noundef %3) #13
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true19, %if.end17
  %and27 = and i32 %3, -257
  %call28 = call fastcc %struct.page* @__dma_direct_alloc_pages(%struct.device* noundef %dev, i64 noundef %and, i32 noundef %and27) #13
  %tobool29.not = icmp eq %struct.page* %call28, null
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end26
  %call32 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #13
  br i1 %call32, label %lor.lhs.false33, label %if.then36

lor.lhs.false33:                                  ; preds = %if.end31
  %6 = ptrtoint %struct.page* %call28 to i64
  %sub.i = shl i64 %6, 6
  %add.i = and i64 %sub.i, -4096
  %7 = inttoptr i64 %add.i to i8*
  %call89 = call i8* @memset(i8* noundef %7, i32 noundef 0, i64 noundef %and) #15
  br label %done

if.then36:                                        ; preds = %if.end31
  call void @arch_dma_prep_coherent(%struct.page* noundef nonnull %call28, i64 noundef %and) #15
  %8 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !9
  %tobool37.not = icmp eq i8 %8, 0
  %or41 = select i1 %tobool37.not, i64 29273397577910019, i64 29273397577912067
  %call43 = call i64 @dma_pgprot(%struct.device* noundef %dev, i64 %or41, i64 noundef %attrs) #15
  %9 = call i8* @llvm.returnaddress(i32 0)
  %10 = ptrtoint i8* %9 to i64
  %and45 = and i64 %10, 36028797018963968
  %tobool46.not = icmp eq i64 %and45, 0
  %11 = load i64, i64* @vabits_actual, align 8
  %shl52.neg = shl nsw i64 -1, %11
  %or51 = or i64 %shl52.neg, %10
  %and55 = and i64 %shl52.neg, 36028797018963967
  %neg = xor i64 %and55, -1
  %and57 = and i64 %neg, %10
  %cond58 = select i1 %tobool46.not, i64 %and57, i64 %or51
  %12 = inttoptr i64 %cond58 to i8*
  %call60 = call i8* @dma_common_contiguous_remap(%struct.page* noundef nonnull %call28, i64 noundef %and, i64 %call43, i8* noundef %12) #15
  %tobool61.not = icmp eq i8* %call60, null
  br i1 %tobool61.not, label %out_free_pages, label %if.end63

if.end63:                                         ; preds = %if.then36
  %call73 = call i8* @memset(i8* noundef nonnull %call60, i32 noundef 0, i64 noundef %and) #15
  %.pre = ptrtoint %struct.page* %call28 to i64
  br label %done

done:                                             ; preds = %lor.lhs.false33, %if.end63
  %sub.ptr.lhs.cast93.pre-phi = phi i64 [ %6, %lor.lhs.false33 ], [ %.pre, %if.end63 ]
  %ret.0 = phi i8* [ %7, %lor.lhs.false33 ], [ %call60, %if.end63 ]
  %13 = load i64, i64* @memstart_addr, align 8
  %shr90 = ashr i64 %13, 12
  %idx.neg91 = sub nsw i64 0, %shr90
  %add.ptr92 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg91
  %sub.ptr.rhs.cast94 = ptrtoint %struct.page* %add.ptr92 to i64
  %sub.ptr.sub95 = sub i64 %sub.ptr.lhs.cast93.pre-phi, %sub.ptr.rhs.cast94
  %shl97 = shl i64 %sub.ptr.sub95, 6
  %call98 = call fastcc i64 @phys_to_dma_direct(%struct.device* noundef %dev, i64 noundef %shl97) #13
  store i64 %call98, i64* %dma_handle, align 8
  br label %cleanup

out_free_pages:                                   ; preds = %if.then36
  call fastcc void @__dma_direct_free_pages(%struct.page* noundef nonnull %call28, i64 noundef %and) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %land.lhs.true, %out_free_pages, %done, %land.lhs.true22, %if.end11
  %retval.0 = phi i8* [ null, %out_free_pages ], [ %ret.0, %done ], [ %call25, %land.lhs.true22 ], [ %5, %if.end11 ], [ null, %land.lhs.true ], [ null, %if.end26 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__dma_direct_alloc_pages(%struct.device* nocapture noundef readonly %dev, i64 noundef %size, i32 noundef %gfp) unnamed_addr #3 {
entry:
  %phys_limit = alloca i64, align 8
  %0 = bitcast i64* %phys_limit to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %phys_limit, align 8, !annotation !10
  %and = and i64 %size, 4095
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/direct.c\22; .popsection; .long 14472b - 14470b; .short 94; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  %1 = load i64, i64* %coherent_dma_mask, align 8
  %call15 = call fastcc i32 @dma_direct_optimal_gfp_mask(%struct.device* noundef %dev, i64 noundef %1, i64* noundef nonnull %phys_limit) #13
  %or = or i32 %call15, %gfp
  %dec.i = add i64 %size, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %2 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #14, !range !13
  %3 = trunc i64 %2 to i32
  %conv.i.i = sub nuw nsw i32 64, %3
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %4 = load i64, i64* %phys_limit, align 8
  %cmp38.not = icmp ne i64 %4, -1
  br label %get_order.exit

get_order.exit:                                   ; preds = %get_order.exit.backedge, %if.end
  %gfp.addr.0 = phi i32 [ %or, %if.end ], [ %gfp.addr.0.be, %get_order.exit.backedge ]
  %call24 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp.addr.0, i32 noundef %retval.0.i.i) #13
  %tobool26.not = icmp eq %struct.page* %call24, null
  br i1 %tobool26.not, label %if.end52, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %get_order.exit
  %5 = load i64, i64* @memstart_addr, align 8
  %shr28 = ashr i64 %5, 12
  %idx.neg29 = sub nsw i64 0, %shr28
  %add.ptr30 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg29
  %sub.ptr.lhs.cast31 = ptrtoint %struct.page* %call24 to i64
  %sub.ptr.rhs.cast32 = ptrtoint %struct.page* %add.ptr30 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %shl35 = shl i64 %sub.ptr.sub33, 6
  %call36 = call i1 @dma_coherent_ok(%struct.device* noundef %dev, i64 noundef %shl35, i64 noundef %size) #13
  br i1 %call36, label %if.end52, label %if.then37

if.then37:                                        ; preds = %land.lhs.true27
  call fastcc void @dma_free_contiguous(%struct.page* noundef nonnull %call24, i64 noundef %size) #13
  %and41 = and i32 %gfp.addr.0, 5
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond = and i1 %tobool42.not, %cmp38.not
  br i1 %or.cond, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then37
  %or44 = or i32 %gfp.addr.0, 4
  br label %get_order.exit.backedge

get_order.exit.backedge:                          ; preds = %if.then43, %if.then48
  %gfp.addr.0.be = phi i32 [ %or50, %if.then48 ], [ %or44, %if.then43 ]
  br label %get_order.exit

if.end45:                                         ; preds = %if.then37
  %and46 = and i32 %gfp.addr.0, 1
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end45
  %and49 = and i32 %gfp.addr.0, -6
  %or50 = or i32 %and49, 1
  br label %get_order.exit.backedge

if.end52:                                         ; preds = %if.end45, %land.lhs.true27, %get_order.exit
  %page.3 = phi %struct.page* [ %call24, %land.lhs.true27 ], [ null, %if.end45 ], [ null, %get_order.exit ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret %struct.page* %page.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_dma_prep_coherent(%struct.page* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gfpflags_allow_blocking(i32 noundef %gfp_flags) unnamed_addr #5 {
entry:
  %and = and i32 %gfp_flags, 1024
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dev_is_dma_coherent(%struct.device* nocapture noundef readonly %dev) unnamed_addr #6 {
entry:
  %dma_coherent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %dma_coherent, align 4
  %0 = and i8 %bf.load, 32
  %bf.cast = icmp ne i8 %0, 0
  ret i1 %bf.cast
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @dma_direct_alloc_from_pool(%struct.device* noundef %dev, i64 noundef %size, i64* nocapture noundef writeonly %dma_handle, i32 noundef %gfp) unnamed_addr #3 {
entry:
  %phys_mask = alloca i64, align 8
  %ret = alloca i8*, align 8
  %0 = bitcast i64* %phys_mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = bitcast i8** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i8* null, i8** %ret, align 8, !annotation !10
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  %2 = load i64, i64* %coherent_dma_mask, align 8
  %call = call fastcc i32 @dma_direct_optimal_gfp_mask(%struct.device* noundef %dev, i64 noundef %2, i64* noundef nonnull %phys_mask) #13
  %or = or i32 %call, %gfp
  %call1 = call %struct.page* @dma_alloc_from_pool(%struct.device* noundef %dev, i64 noundef %size, i8** noundef nonnull %ret, i32 noundef %or, i1 (%struct.device*, i64, i64)* noundef nonnull @dma_coherent_ok) #15
  %tobool.not = icmp eq %struct.page* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %3, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %call2 = call fastcc i64 @phys_to_dma_direct(%struct.device* noundef %dev, i64 noundef %shl) #13
  store i64 %call2, i64* %dma_handle, align 8
  %4 = load i8*, i8** %ret, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %4, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dma_common_contiguous_remap(%struct.page* noundef, i64 noundef, i64, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_pgprot(%struct.device* noundef, i64, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dma_direct_free_pages(%struct.page* noundef %page, i64 noundef %size) unnamed_addr #3 {
entry:
  call fastcc void @dma_free_contiguous(%struct.page* noundef %page, i64 noundef %size) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_direct_free(%struct.device* noundef %dev, i64 noundef %size, i8* noundef %cpu_addr, i64 noundef %dma_addr, i64 noundef %attrs) local_unnamed_addr #3 {
entry:
  %and = and i64 %attrs, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %cpu_addr to %struct.page*
  call fastcc void @dma_free_contiguous(%struct.page* noundef %0, i64 noundef %size) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i64 %size, 4095
  %and4 = and i64 %add, -4096
  %call5 = call i1 @dma_free_from_pool(%struct.device* noundef %dev, i8* noundef %cpu_addr, i64 noundef %and4) #15
  br i1 %call5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %call12 = call i1 @is_vmalloc_addr(i8* noundef %cpu_addr) #15
  br i1 %call12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @vunmap(i8* noundef %cpu_addr) #15
  br label %if.end14

if.end14:                                         ; preds = %if.end7, %if.then13
  %call15 = call fastcc %struct.page* @dma_direct_to_page(%struct.device* noundef %dev, i64 noundef %dma_addr) #13
  call fastcc void @__dma_direct_free_pages(%struct.page* noundef nonnull %call15, i64 noundef %size) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end14, %land.lhs.true
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_free_contiguous(%struct.page* noundef %page, i64 noundef %size) unnamed_addr #3 {
entry:
  %dec.i = add i64 %size, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #14, !range !8
  %1 = trunc i64 %0 to i32
  %conv.i.i = sub nuw nsw i32 64, %1
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  call void @__free_pages(%struct.page* noundef %page, i32 noundef %retval.0.i.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dma_free_from_pool(%struct.device* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_vmalloc_addr(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc nonnull %struct.page* @dma_direct_to_page(%struct.device* nocapture noundef readonly %dev, i64 noundef %dma_addr) unnamed_addr #2 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %dma_addr) #13
  %shr1 = lshr i64 %call, 12
  %add.ptr2 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr1
  ret %struct.page* %add.ptr2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @dma_direct_alloc_pages(%struct.device* nocapture noundef readonly %dev, i64 noundef %size, i64* nocapture noundef writeonly %dma_handle, i32 noundef %dir, i32 noundef %gfp) local_unnamed_addr #3 {
entry:
  %call5 = call fastcc %struct.page* @__dma_direct_alloc_pages(%struct.device* noundef %dev, i64 noundef %size, i32 noundef %gfp) #13
  %tobool.not = icmp eq %struct.page* %call5, null
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  %0 = ptrtoint %struct.page* %call5 to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %call21 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %size) #15
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %0, %sub.ptr.rhs.cast
  %shl22 = shl i64 %sub.ptr.sub, 6
  %call23 = call fastcc i64 @phys_to_dma_direct(%struct.device* noundef %dev, i64 noundef %shl22) #13
  store i64 %call23, i64* %dma_handle, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  ret %struct.page* %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_direct_free_pages(%struct.device* noundef %dev, i64 noundef %size, %struct.page* noundef %page, i64 noundef %dma_addr, i32 noundef %dir) local_unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %call2 = call i1 @dma_free_from_pool(%struct.device* noundef %dev, i8* noundef %1, i64 noundef %size) #15
  br i1 %call2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__dma_direct_free_pages(%struct.page* noundef %page, i64 noundef %size) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_direct_sync_sg_for_device(%struct.device* noundef %dev, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %dir) local_unnamed_addr #3 {
entry:
  %cmp23 = icmp sgt i32 %nents, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end8
  %i.026 = phi i32 [ %inc, %if.end8 ], [ 0, %entry ]
  %sg.024 = phi %struct.scatterlist* [ %call9, %if.end8 ], [ %sgl, %entry ]
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.024, i64 0, i32 3
  %0 = load i64, i64* %dma_address, align 8
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %0) #13
  %call1 = call fastcc i1 @is_swiotlb_buffer(%struct.device* noundef %dev, i64 noundef %call) #13
  br i1 %call1, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %for.body
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.024, i64 0, i32 2
  %1 = load i32, i32* %length, align 4
  %conv3 = zext i32 %1 to i64
  call void @swiotlb_sync_single_for_device(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %conv3, i32 noundef %dir) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call4 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #13
  br i1 %call4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %length6 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.024, i64 0, i32 2
  %2 = load i32, i32* %length6, align 4
  %conv7 = zext i32 %2 to i64
  call void @arch_sync_dma_for_device(i64 noundef %call, i64 noundef %conv7, i32 noundef %dir) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %inc = add nuw nsw i32 %i.026, 1
  %call9 = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef %sg.024) #15
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end8, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @dma_to_phys(%struct.device* nocapture noundef readonly %dev, i64 noundef %dma_addr) unnamed_addr #2 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %tobool.not = icmp eq %struct.bus_dma_region* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @translate_dma_to_phys(%struct.device* noundef %dev, i64 noundef %dma_addr) #13
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %paddr.0 = phi i64 [ %call, %if.then ], [ %dma_addr, %entry ]
  ret i64 %paddr.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_swiotlb_buffer(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #6 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %tobool.not = icmp eq %struct.io_tlb_mem* %0, null
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %start = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %cmp.not = icmp ugt i64 %1, %paddr
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %end = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 1
  %2 = load i64, i64* %end, align 8
  %cmp1 = icmp ugt i64 %2, %paddr
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @swiotlb_sync_single_for_device(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_sync_dma_for_device(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_direct_sync_sg_for_cpu(%struct.device* noundef %dev, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %dir) local_unnamed_addr #3 {
entry:
  %cmp36 = icmp sgt i32 %nents, 0
  br i1 %cmp36, label %for.body, label %if.end18

for.body:                                         ; preds = %entry, %if.end14
  %i.039 = phi i32 [ %inc, %if.end14 ], [ 0, %entry ]
  %sg.037 = phi %struct.scatterlist* [ %call15, %if.end14 ], [ %sgl, %entry ]
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.037, i64 0, i32 3
  %0 = load i64, i64* %dma_address, align 8
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %0) #13
  %call1 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #13
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.037, i64 0, i32 2
  %1 = load i32, i32* %length, align 4
  %conv = zext i32 %1 to i64
  call void @arch_sync_dma_for_cpu(i64 noundef %call, i64 noundef %conv, i32 noundef %dir) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call2 = call fastcc i1 @is_swiotlb_buffer(%struct.device* noundef %dev, i64 noundef %call) #13
  br i1 %call2, label %if.then5, label %if.end14, !prof !14

if.then5:                                         ; preds = %if.end
  %length6 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.037, i64 0, i32 2
  %2 = load i32, i32* %length6, align 4
  %conv7 = zext i32 %2 to i64
  call void @swiotlb_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %conv7, i32 noundef %dir) #15
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then5
  %inc = add nuw nsw i32 %i.039, 1
  %call15 = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef %sg.037) #15
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %if.end18, label %for.body

if.end18:                                         ; preds = %if.end14, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_sync_dma_for_cpu(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @swiotlb_sync_single_for_cpu(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dma_direct_unmap_sg(%struct.device* noundef %dev, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #3 {
entry:
  %cmp6 = icmp sgt i32 %nents, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %sg.07 = phi %struct.scatterlist* [ %call, %for.body ], [ %sgl, %entry ]
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.07, i64 0, i32 3
  %0 = load i64, i64* %dma_address, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.07, i64 0, i32 4
  %1 = load i32, i32* %dma_length, align 8
  %conv = zext i32 %1 to i64
  call fastcc void @dma_direct_unmap_page(%struct.device* noundef %dev, i64 noundef %0, i64 noundef %conv, i32 noundef %dir, i64 noundef %attrs) #13
  %inc = add nuw nsw i32 %i.08, 1
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef %sg.07) #15
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_direct_unmap_page(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %addr) #13
  %and = and i64 %attrs, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @dma_direct_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call fastcc i1 @is_swiotlb_buffer(%struct.device* noundef %dev, i64 noundef %call) #13
  br i1 %call1, label %if.then4, label %if.end5, !prof !14

if.then4:                                         ; preds = %if.end
  call void @swiotlb_tbl_unmap_single(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_direct_map_sg(%struct.device* noundef %dev, %struct.scatterlist* noundef %sgl, i32 noundef %nents, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #3 {
entry:
  %cmp26 = icmp sgt i32 %nents, 0
  br i1 %cmp26, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %if.end
  %sg.028 = phi %struct.scatterlist* [ %call7, %if.end ], [ %sgl, %entry ]
  %i.027 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %call = call fastcc %struct.page* @sg_page(%struct.scatterlist* noundef %sg.028) #13
  %offset = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.028, i64 0, i32 1
  %0 = load i32, i32* %offset, align 8
  %conv = zext i32 %0 to i64
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.028, i64 0, i32 2
  %1 = load i32, i32* %length, align 4
  %conv1 = zext i32 %1 to i64
  %call2 = call fastcc i64 @dma_direct_map_page(%struct.device* noundef %dev, %struct.page* noundef %call, i64 noundef %conv, i64 noundef %conv1, i32 noundef %dir, i64 noundef %attrs) #13
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.028, i64 0, i32 3
  store i64 %call2, i64* %dma_address, align 8
  %cmp4 = icmp eq i64 %call2, -1
  br i1 %cmp4, label %out_unmap, label %if.end

if.end:                                           ; preds = %for.body
  %2 = load i32, i32* %length, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg.028, i64 0, i32 4
  store i32 %2, i32* %dma_length, align 8
  %inc = add nuw nsw i32 %i.027, 1
  %call7 = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef %sg.028) #15
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %cleanup, label %for.body

out_unmap:                                        ; preds = %for.body
  %or = or i64 %attrs, 32
  call void @dma_direct_unmap_sg(%struct.device* noundef %dev, %struct.scatterlist* noundef %sgl, i32 noundef %i.027, i32 noundef %dir, i64 noundef %or) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %out_unmap
  %retval.0 = phi i32 [ -5, %out_unmap ], [ %nents, %entry ], [ %nents, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @dma_direct_map_page(%struct.device* noundef %dev, %struct.page* noundef %page, i64 noundef %offset, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) unnamed_addr #3 {
entry:
  %dma_addr = alloca i64, align 8
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %add = add i64 %shl, %offset
  %1 = bitcast i64* %dma_addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %call = call fastcc i64 @phys_to_dma(%struct.device* noundef %dev, i64 noundef %add) #13
  store i64 %call, i64* %dma_addr, align 8
  %call1 = call fastcc i1 @is_swiotlb_force_bounce(%struct.device* noundef %dev) #13
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @swiotlb_map(%struct.device* noundef %dev, i64 noundef %add, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @dma_capable(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %size, i1 noundef true) #13
  br i1 %call3, label %if.end58, label %if.then6, !prof !11

if.then6:                                         ; preds = %if.end
  %2 = load i32, i32* @swiotlb_force, align 4
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.then6
  %call9 = call i64 @swiotlb_map(%struct.device* noundef %dev, i64 noundef %add, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #15
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %.b88 = load i1, i1* @dma_direct_map_page.__already_done, align 1
  br i1 %.b88, label %cleanup, label %if.then23, !prof !11

if.then23:                                        ; preds = %if.end10
  store i1 true, i1* @dma_direct_map_page.__already_done, align 1
  %call34 = call i8* @dev_driver_string(%struct.device* noundef %dev) #15
  %call35 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #13
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %3 = load i64*, i64** %dma_mask, align 8
  %4 = load i64, i64* %3, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %5 = load i64, i64* %bus_dma_limit, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call34, i8* noundef %call35, i64* noundef nonnull %dma_addr, i64 noundef %size, i64 noundef %4, i64 noundef %5) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/direct.h\22; .popsection; .long 14472b - 14470b; .short 99; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  br label %cleanup

if.end58:                                         ; preds = %if.end
  %call59 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #13
  %and = and i64 %attrs, 32
  %tobool60.not = icmp ne i64 %and, 0
  %6 = or i1 %tobool60.not, %call59
  br i1 %6, label %cleanup, label %if.then61

if.then61:                                        ; preds = %if.end58
  call void @arch_sync_dma_for_device(i64 noundef %add, i64 noundef %size, i32 noundef %dir) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then61, %if.end10, %if.then23, %if.then8, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %call9, %if.then8 ], [ -1, %if.then23 ], [ -1, %if.end10 ], [ %call, %if.then61 ], [ %call, %if.end58 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.page* @sg_page(%struct.scatterlist* nocapture noundef readonly %sg) unnamed_addr #6 {
entry:
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %and = and i64 %0, -4
  %1 = inttoptr i64 %and to %struct.page*
  ret %struct.page* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @dma_direct_map_resource(%struct.device* noundef %dev, i64 noundef %paddr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) local_unnamed_addr #3 {
entry:
  %dma_addr = alloca i64, align 8
  %0 = bitcast i64* %dma_addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 %paddr, i64* %dma_addr, align 8
  %call = call fastcc i1 @dma_capable(%struct.device* noundef %dev, i64 noundef %paddr, i64 noundef %size, i1 noundef false) #13
  br i1 %call, label %cleanup, label %do.body, !prof !11

do.body:                                          ; preds = %entry
  %.b32 = load i1, i1* @dma_direct_map_resource.__print_once, align 1
  br i1 %.b32, label %if.then16, label %if.then4

if.then4:                                         ; preds = %do.body
  store i1 true, i1* @dma_direct_map_resource.__print_once, align 1
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %1 = load i64*, i64** %dma_mask, align 8
  %2 = load i64, i64* %1, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %3 = load i64, i64* %bus_dma_limit, align 8
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64* noundef nonnull %dma_addr, i64 noundef %size, i64 noundef %2, i64 noundef %3) #16
  br label %if.then16

if.then16:                                        ; preds = %do.body, %if.then4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/dma/direct.c\22; .popsection; .long 14472b - 14470b; .short 466; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then16
  %retval.0 = phi i64 [ -1, %if.then16 ], [ %paddr, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dma_capable(%struct.device* nocapture noundef readonly %dev, i64 noundef %addr, i64 noundef %size, i1 noundef %is_ram) unnamed_addr #6 {
entry:
  %add = add i64 %addr, -1
  %sub = add i64 %add, %size
  %cmp = icmp eq i64 %addr, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %1 = load i64, i64* %0, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %2 = load i64, i64* %bus_dma_limit, align 8
  %cmp7 = icmp eq i64 %1, 0
  br i1 %cmp7, label %cond.end21, label %cond.false9

cond.false9:                                      ; preds = %if.end
  %cmp10 = icmp eq i64 %2, 0
  br i1 %cmp10, label %cond.end21, label %cond.false12

cond.false12:                                     ; preds = %cond.false9
  %cmp14 = icmp ult i64 %1, %2
  %cond18 = select i1 %cmp14, i64 %1, i64 %2
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false9, %if.end, %cond.false12
  %cond22 = phi i64 [ %cond18, %cond.false12 ], [ %2, %if.end ], [ %1, %cond.false9 ]
  %cmp23 = icmp ule i64 %sub, %cond22
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end21
  %retval.0 = phi i1 [ %cmp23, %cond.end21 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_direct_get_sgtable(%struct.device* nocapture noundef readonly %dev, %struct.sg_table* noundef %sgt, i8* nocapture noundef readnone %cpu_addr, i64 noundef %dma_addr, i64 noundef %size, i64 noundef %attrs) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.page* @dma_direct_to_page(%struct.device* noundef %dev, i64 noundef %dma_addr) #13
  %call1 = call i32 @sg_alloc_table(%struct.sg_table* noundef %sgt, i32 noundef 1, i32 noundef 3264) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %sgt, i64 0, i32 0
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8
  %1 = trunc i64 %size to i32
  %2 = add i32 %1, 4095
  %conv = and i32 %2, -4096
  call fastcc void @sg_set_page(%struct.scatterlist* noundef %0, %struct.page* noundef nonnull %call, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(%struct.sg_table* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_set_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page, i32 noundef %len) unnamed_addr #3 {
entry:
  call fastcc void @sg_assign_page(%struct.scatterlist* noundef %sg, %struct.page* noundef %page) #13
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 1
  store i32 0, i32* %offset1, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 2
  store i32 %len, i32* %length, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @dma_direct_can_mmap(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #6 {
entry:
  ret i1 true
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_direct_mmap(%struct.device* noundef %dev, %struct.vm_area_struct* noundef %vma, i8* noundef %cpu_addr, i64 noundef %dma_addr, i64 noundef %size, i64 noundef %attrs) local_unnamed_addr #3 {
entry:
  %ret = alloca i32, align 4
  %call = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %vma) #13
  %add = add i64 %size, 4095
  %shr = lshr i64 %add, 12
  %call1 = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %dma_addr) #13
  %shr2 = lshr i64 %call1, 12
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 -6, i32* %ret, align 4
  %coerce.dive = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %1 = load i64, i64* %coerce.dive, align 8
  %call4 = call i64 @dma_pgprot(%struct.device* noundef %dev, i64 %1, i64 noundef %attrs) #15
  store i64 %call4, i64* %coerce.dive, align 8
  %call6 = call i32 @dma_mmap_from_dev_coherent(%struct.device* noundef %dev, %struct.vm_area_struct* noundef %vma, i8* noundef %cpu_addr, i64 noundef %size, i32* noundef nonnull %ret) #15
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %3 = load i64, i64* %vm_pgoff, align 8
  %cmp.not = icmp ule i64 %shr, %3
  %sub = sub i64 %shr, %3
  %cmp12 = icmp ugt i64 %call, %sub
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp12
  br i1 %or.cond, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %4 = load i64, i64* %vm_start, align 8
  %add16 = add i64 %3, %shr2
  %shl = shl i64 %call, 12
  %5 = load i64, i64* %coerce.dive, align 8
  %call19 = call i32 @remap_pfn_range(%struct.vm_area_struct* noundef %vma, i64 noundef %4, i64 noundef %add16, i64 noundef %shl, i64 %5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end14, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call19, %if.end14 ], [ -6, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
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
declare dso_local i32 @dma_mmap_from_dev_coherent(%struct.device* noundef, %struct.vm_area_struct* noundef, i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i64 noundef, i64) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @dma_direct_supported(%struct.device* nocapture noundef readonly %dev, i64 noundef %mask) local_unnamed_addr #2 {
entry:
  %0 = load i64, i64* @max_pfn, align 8
  %sub = shl i64 %0, 12
  %shl = add i64 %sub, -4096
  %cmp = icmp ugt i64 %mask, 4294967294
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @zone_dma_bits, align 4
  %cmp1 = icmp eq i32 %1, 64
  %sh_prom = zext i32 %1 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub3 = xor i64 %notmask, -1
  %cond = select i1 %cmp1, i64 -1, i64 %sub3
  %cmp4 = icmp ult i64 %shl, %cond
  %cond8 = select i1 %cmp4, i64 %shl, i64 %cond
  %call = call fastcc i64 @phys_to_dma_unencrypted(%struct.device* noundef %dev, i64 noundef %cond8) #13
  %cmp9 = icmp ule i64 %call, %mask
  %conv = zext i1 %cmp9 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @phys_to_dma_unencrypted(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #2 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %tobool.not = icmp eq %struct.bus_dma_region* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @translate_phys_to_dma(%struct.device* noundef %dev, i64 noundef %paddr) #13
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ %paddr, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @dma_direct_max_mapping_size(%struct.device* noundef %dev) local_unnamed_addr #3 {
entry:
  %call = call i1 @is_swiotlb_active(%struct.device* noundef %dev) #15
  br i1 %call, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @dma_addressing_limited(%struct.device* noundef %dev) #13
  br i1 %call1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = call fastcc i1 @is_swiotlb_force_bounce(%struct.device* noundef %dev) #13
  br i1 %call2, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call3 = call i64 @swiotlb_max_mapping_size(%struct.device* noundef %dev) #15
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_swiotlb_active(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dma_addressing_limited(%struct.device* noundef %dev) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @dma_get_mask(%struct.device* noundef %dev) #13
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %0 = load i64, i64* %bus_dma_limit, align 8
  %cmp1 = icmp eq i64 %0, 0
  %cmp5 = icmp ult i64 %call, %0
  %1 = select i1 %cmp1, i1 true, i1 %cmp5
  %cond11 = select i1 %1, i64 %call, i64 %0
  %call12 = call i64 @dma_get_required_mask(%struct.device* noundef %dev) #15
  %cmp13 = icmp ult i64 %cond11, %call12
  ret i1 %cmp13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_swiotlb_force_bounce(%struct.device* nocapture noundef readonly %dev) unnamed_addr #6 {
entry:
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  %0 = load %struct.io_tlb_mem*, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  %tobool.not = icmp eq %struct.io_tlb_mem* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %force_bounce = getelementptr inbounds %struct.io_tlb_mem, %struct.io_tlb_mem* %0, i64 0, i32 8
  %1 = load i8, i8* %force_bounce, align 1, !range !9
  %tobool1 = icmp ne i8 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @swiotlb_max_mapping_size(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @dma_direct_need_sync(%struct.device* nocapture noundef readonly %dev, i64 noundef %dma_addr) local_unnamed_addr #2 {
entry:
  %call = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #13
  br i1 %call, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %dma_addr) #13
  %call2 = call fastcc i1 @is_swiotlb_buffer(%struct.device* noundef %dev, i64 noundef %call1) #13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dma_direct_set_offset(%struct.device* noundef %dev, i64 noundef %cpu_start, i64 noundef %dma_start, i64 noundef %size) local_unnamed_addr #3 {
entry:
  %sub = sub i64 %cpu_start, %dma_start
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %tobool.not = icmp eq %struct.bus_dma_region* %0, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i64 %sub, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = call fastcc i8* @kcalloc() #13
  %tobool4.not = icmp eq i8* %call, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %cpu_start7 = bitcast i8* %call to i64*
  store i64 %cpu_start, i64* %cpu_start7, align 8
  %dma_start9 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %dma_start9 to i64*
  store i64 %dma_start, i64* %1, align 8
  %offset11 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %offset11 to i64*
  store i64 %sub, i64* %2, align 8
  %size13 = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %size13 to i64*
  store i64 %size, i64* %3, align 8
  %4 = bitcast %struct.bus_dma_region** %dma_range_map to i8**
  store i8* %call, i8** %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %if.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end6 ], [ 0, %if.end ], [ -12, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kcalloc() unnamed_addr #3 {
entry:
  %call = call fastcc i8* @kmalloc_array() #13
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @phys_to_dma(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @phys_to_dma_unencrypted(%struct.device* noundef %dev, i64 noundef %paddr) #13
  ret i64 %call
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @dma_direct_optimal_gfp_mask(%struct.device* nocapture noundef readonly %dev, i64 noundef %dma_mask, i64* nocapture noundef writeonly %phys_limit) unnamed_addr #10 {
entry:
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %0 = load i64, i64* %bus_dma_limit, align 8
  %cmp = icmp eq i64 %dma_mask, 0
  br i1 %cmp, label %cond.end10, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp1 = icmp eq i64 %0, 0
  br i1 %cmp1, label %cond.end10, label %cond.false3

cond.false3:                                      ; preds = %cond.false
  %cmp5 = icmp ugt i64 %0, %dma_mask
  %cond = select i1 %cmp5, i64 %dma_mask, i64 %0
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false, %entry, %cond.false3
  %cond11 = phi i64 [ %cond, %cond.false3 ], [ %0, %entry ], [ %dma_mask, %cond.false ]
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %cond11) #13
  store i64 %call, i64* %phys_limit, align 8
  %1 = load i32, i32* @zone_dma_bits, align 4
  %cmp12 = icmp eq i32 %1, 64
  %sh_prom = zext i32 %1 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %cond16 = select i1 %cmp12, i64 -1, i64 %sub
  %cmp17.not = icmp ugt i64 %call, %cond16
  %cmp18 = icmp ult i64 %call, 4294967296
  %. = select i1 %cmp18, i32 4, i32 0
  %retval.0 = select i1 %cmp17.not, i32 %., i32 1
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal i1 @dma_coherent_ok(%struct.device* nocapture noundef readonly %dev, i64 noundef %phys, i64 noundef %size) #2 {
entry:
  %call = call fastcc i64 @phys_to_dma_direct(%struct.device* noundef %dev, i64 noundef %phys) #13
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %size, -1
  %sub = add i64 %add, %call
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 17
  %0 = load i64, i64* %coherent_dma_mask, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 18
  %1 = load i64, i64* %bus_dma_limit, align 8
  %cmp1 = icmp eq i64 %0, 0
  br i1 %cmp1, label %cond.end11, label %cond.false

cond.false:                                       ; preds = %if.end
  %cmp2 = icmp eq i64 %1, 0
  br i1 %cmp2, label %cond.end11, label %cond.false4

cond.false4:                                      ; preds = %cond.false
  %cmp6 = icmp ult i64 %0, %1
  %cond = select i1 %cmp6, i64 %0, i64 %1
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false, %if.end, %cond.false4
  %cond12 = phi i64 [ %cond, %cond.false4 ], [ %1, %if.end ], [ %0, %cond.false ]
  %cmp13 = icmp ule i64 %sub, %cond12
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end11
  %retval.0 = phi i1 [ %cmp13, %cond.end11 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #3 {
entry:
  call fastcc void @numa_mem_id() #13
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) #13
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_mem_id() unnamed_addr #11 {
entry:
  call fastcc void @numa_node_id() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #3 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef 0, %struct.nodemask_t* noundef null) #15
  ret %struct.page* %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #11 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !17
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @dma_alloc_from_pool(%struct.device* noundef, i64 noundef, i8** noundef, i32 noundef, i1 (%struct.device*, i64, i64)* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @translate_dma_to_phys(%struct.device* nocapture noundef readonly %dev, i64 noundef %dma_addr) unnamed_addr #2 {
entry:
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %0 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8
  %size14 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %0, i64 0, i32 2
  %1 = load i64, i64* %size14, align 8
  %tobool.not15 = icmp eq i64 %1, 0
  br i1 %tobool.not15, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i64 [ %5, %for.inc ], [ %1, %entry ]
  %m.016 = phi %struct.bus_dma_region* [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %dma_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.016, i64 0, i32 1
  %3 = load i64, i64* %dma_start, align 8
  %cmp.not = icmp ule i64 %3, %dma_addr
  %sub = sub i64 %dma_addr, %3
  %cmp3 = icmp ult i64 %sub, %2
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %m.016, i64 0, i32 3
  %4 = load i64, i64* %offset, align 8
  %add = add i64 %4, %dma_addr
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.016, i64 1
  %size = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %m.016, i64 1, i32 2
  %5 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i64 [ %add, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dma_direct_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @dma_to_phys(%struct.device* noundef %dev, i64 noundef %addr) #13
  %call1 = call fastcc i1 @dev_is_dma_coherent(%struct.device* noundef %dev) #13
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @arch_sync_dma_for_cpu(i64 noundef %call, i64 noundef %size, i32 noundef %dir) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call fastcc i1 @is_swiotlb_buffer(%struct.device* noundef %dev, i64 noundef %call) #13
  br i1 %call2, label %if.then4, label %if.end8, !prof !14

if.then4:                                         ; preds = %if.end
  call void @swiotlb_sync_single_for_cpu(%struct.device* noundef %dev, i64 noundef %call, i64 noundef %size, i32 noundef %dir) #15
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @swiotlb_tbl_unmap_single(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @swiotlb_map(%struct.device* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dev_driver_string(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #6 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #6 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_assign_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page) unnamed_addr #3 {
entry:
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = ptrtoint %struct.page* %page to i64
  %and2 = and i64 %0, 3
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/scatterlist.h\22; .popsection; .long 14472b - 14470b; .short 95; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !18
  unreachable

do.end10:                                         ; preds = %entry
  %1 = load i64, i64* %page_link1, align 8
  %and = and i64 %1, 3
  %or = or i64 %and, %0
  store i64 %or, i64* %page_link1, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @translate_phys_to_dma(%struct.device* nocapture noundef readonly %dev, i64 noundef %paddr) unnamed_addr #2 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @dma_get_mask(%struct.device* nocapture noundef readonly %dev) unnamed_addr #6 {
entry:
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 16
  %0 = load i64*, i64** %dma_mask, align 8
  %tobool.not = icmp eq i64* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %0, align 8
  %tobool2.not = icmp eq i64 %1, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i64 [ 4294967295, %if.end ], [ %1, %land.lhs.true ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmalloc_array() unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #15
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind readonly }

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
!8 = !{i64 0, i64 65}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2153133583}
!13 = !{i64 12, i64 65}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2153125755}
!16 = !{i64 2153179346}
!17 = !{i64 2149146107, i64 2149146154, i64 2149146160, i64 2149146197, i64 2149146215, i64 2149147142, i64 2149147190, i64 2149147238, i64 2149147301, i64 2149147350, i64 2149146293, i64 2149146318, i64 2149146344, i64 2149146350, i64 2149146387, i64 2149146393, i64 2149146443, i64 2149146489, i64 2149146522}
!18 = !{i64 2153032062}
