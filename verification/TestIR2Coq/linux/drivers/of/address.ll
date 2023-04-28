; ModuleID = 'drivers/of/address.c'
source_filename = "drivers/of/address.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.seq_file = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.of_bus = type { i8*, i8*, i32 (%struct.device_node*)*, void (%struct.device_node*, i32*, i32*)*, i64 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i64, i32)*, i8, i32 (i32*)* }
%struct.of_pci_range = type { %union.anon.66, i64, i64, i32 }
%union.anon.66 = type { i64 }
%struct.logic_pio_hwaddr = type { %struct.list_head, %struct.fwnode_handle*, i64, i64, i64, i64, i8*, %struct.logic_pio_host_ops* }
%struct.logic_pio_host_ops = type { i32 (i8*, i64, i64)*, void (i8*, i64, i32, i64)*, i32 (i8*, i64, i8*, i64, i32)*, void (i8*, i64, i8*, i64, i32)* }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.of_pci_range_parser = type { %struct.device_node*, %struct.of_bus*, i32*, i32*, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dma-ranges\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.3 = private unnamed_addr constant [73 x i8] c"\013OF: translation of DMA address(%llx) to CPU address failed node(%pOF)\0A\00", align 1
@of_root = external dso_local local_unnamed_addr global %struct.device_node*, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"dma-coherent\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\013OF: Bad cell count for %pOF\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"interconnect-names\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"dma-mem\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@of_busses = internal global [2 x %struct.of_bus] [%struct.of_bus { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.device_node*)* @of_bus_isa_match, void (%struct.device_node*, i32*, i32*)* @of_bus_isa_count_cells, i64 (i32*, i32*, i32, i32, i32)* @of_bus_isa_map, i32 (i32*, i64, i32)* @of_bus_isa_translate, i8 1, i32 (i32*)* @of_bus_isa_get_flags }, %struct.of_bus { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.device_node*)* null, void (%struct.device_node*, i32*, i32*)* @of_bus_default_count_cells, i64 (i32*, i32*, i32, i32, i32)* @of_bus_default_map, i32 (i32*, i64, i32)* @of_bus_default_translate, i8 0, i32 (i32*)* @of_bus_default_get_flags }], align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @of_pci_address_to_resource(%struct.device_node* nocapture noundef readnone %dev, i32 noundef %bar, %struct.resource* nocapture noundef readnone %r) local_unnamed_addr #0 {
entry:
  ret i32 -38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @of_pci_range_to_resource(%struct.of_pci_range* nocapture noundef readonly %range, %struct.device_node* nocapture noundef readonly %np, %struct.resource* nocapture noundef writeonly %res) local_unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 3
  %0 = load i32, i32* %flags, align 8
  %conv = zext i32 %0 to i64
  %flags1 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  store i64 %conv, i64* %flags1, align 8
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 6
  store %struct.resource* null, %struct.resource** %sibling, align 8
  %child = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 7
  store %struct.resource* null, %struct.resource** %child, align 8
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 5
  store %struct.resource* null, %struct.resource** %parent, align 8
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %1 = load i8*, i8** %full_name, align 8
  %name = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 2
  store i8* %1, i8** %name, align 8
  ret i32 -38
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @of_translate_address(%struct.device_node* noundef %dev, i32* noundef %in_addr) local_unnamed_addr #3 {
entry:
  %host = alloca %struct.device_node*, align 8
  %0 = bitcast %struct.device_node** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.device_node* null, %struct.device_node** %host, align 8, !annotation !7
  %call = call fastcc i64 @__of_translate_address(%struct.device_node* noundef %dev, %struct.device_node* (%struct.device_node*)* noundef nonnull @of_get_parent, i32* noundef %in_addr, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.device_node** noundef nonnull %host) #16
  %1 = load %struct.device_node*, %struct.device_node** %host, align 8
  %tobool.not = icmp eq %struct.device_node* %1, null
  %spec.select = select i1 %tobool.not, i64 %call, i64 -1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i64 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__of_translate_address(%struct.device_node* noundef %dev, %struct.device_node* (%struct.device_node*)* nocapture noundef readonly %get_parent, i32* noundef %in_addr, i8* noundef %rprop, %struct.device_node** nocapture noundef writeonly %host) unnamed_addr #3 {
entry:
  %addr = alloca [4 x i32], align 4
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %pna = alloca i32, align 4
  %pns = alloca i32, align 4
  %0 = bitcast [4 x i32]* %addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = bitcast i32* %na to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15
  store i32 0, i32* %na, align 4, !annotation !7
  %2 = bitcast i32* %ns to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15
  store i32 0, i32* %ns, align 4, !annotation !7
  %3 = bitcast i32* %pna to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15
  store i32 0, i32* %pna, align 4, !annotation !7
  %4 = bitcast i32* %pns to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #15
  store i32 0, i32* %pns, align 4, !annotation !7
  store %struct.device_node* null, %struct.device_node** %host, align 8
  %call1 = call %struct.device_node* %get_parent(%struct.device_node* noundef %dev) #17, !callees !8
  %cmp = icmp eq %struct.device_node* %call1, null
  br i1 %cmp, label %bail, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.of_bus* @of_match_bus(%struct.device_node* noundef nonnull %call1) #16
  %count_cells = getelementptr inbounds %struct.of_bus, %struct.of_bus* %call2, i64 0, i32 3
  %5 = load void (%struct.device_node*, i32*, i32*)*, void (%struct.device_node*, i32*, i32*)** %count_cells, align 8
  call void %5(%struct.device_node* noundef %dev, i32* noundef nonnull %na, i32* noundef nonnull %ns) #17
  %6 = load i32, i32* %na, align 4
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, 4
  %9 = load i32, i32* %ns, align 4
  %cmp6 = icmp sgt i32 %9, 0
  %or.cond61 = select i1 %8, i1 %cmp6, i1 false
  br i1 %or.cond61, label %if.end9, label %bail

if.end9:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 0
  %10 = bitcast i32* %in_addr to i8*
  %mul = shl nuw nsw i32 %6, 2
  %11 = zext i32 %mul to i64
  %call10 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %10, i64 noundef %11) #17
  %call1398 = call %struct.device_node* %get_parent(%struct.device_node* noundef nonnull %call1) #17, !callees !8
  %cmp1499 = icmp eq %struct.device_node* %call1398, null
  br i1 %cmp1499, label %if.then16, label %if.end20

if.then16:                                        ; preds = %cleanup, %if.end9
  %12 = load i32, i32* %na, align 4
  %call19 = call fastcc i64 @of_read_number(i32* noundef nonnull %arraydecay, i32 noundef %12) #16
  br label %bail

if.end20:                                         ; preds = %if.end9, %cleanup
  %call13102 = phi %struct.device_node* [ %call13, %cleanup ], [ %call1398, %if.end9 ]
  %parent.0101 = phi %struct.device_node* [ %call13102, %cleanup ], [ %call1, %if.end9 ]
  %bus.0100 = phi %struct.of_bus* [ %call31, %cleanup ], [ %call2, %if.end9 ]
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %parent.0101, i64 0, i32 3
  %call21 = call %struct.logic_pio_hwaddr* @find_io_range_by_fwnode(%struct.fwnode_handle* noundef %fwnode) #17
  %tobool.not = icmp eq %struct.logic_pio_hwaddr* %call21, null
  br i1 %tobool.not, label %if.end30, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end20
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %call21, i64 0, i32 5
  %13 = load i64, i64* %flags, align 8
  %cmp23.not = icmp eq i64 %13, 1
  br i1 %cmp23.not, label %if.end30, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %add.ptr = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 1
  %14 = load i32, i32* %na, align 4
  %sub = add i32 %14, -1
  %call27 = call fastcc i64 @of_read_number(i32* noundef %add.ptr, i32 noundef %sub) #16
  store %struct.device_node* %parent.0101, %struct.device_node** %host, align 8
  br label %bail

if.end30:                                         ; preds = %land.lhs.true22, %if.end20
  %call31 = call fastcc %struct.of_bus* @of_match_bus(%struct.device_node* noundef nonnull %call13102) #16
  %count_cells32 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %call31, i64 0, i32 3
  %15 = load void (%struct.device_node*, i32*, i32*)*, void (%struct.device_node*, i32*, i32*)** %count_cells32, align 8
  call void %15(%struct.device_node* noundef nonnull %parent.0101, i32* noundef nonnull %pna, i32* noundef nonnull %pns) #17
  %16 = load i32, i32* %pna, align 4
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 4
  %19 = load i32, i32* %pns, align 4
  %cmp39 = icmp sgt i32 %19, 0
  %or.cond63 = select i1 %18, i1 %cmp39, i1 false
  br i1 %or.cond63, label %if.end44, label %do.end

do.end:                                           ; preds = %if.end30
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* noundef nonnull %parent.0101) #18
  br label %bail

if.end44:                                         ; preds = %if.end30
  %20 = load i32, i32* %na, align 4
  %21 = load i32, i32* %ns, align 4
  %call47 = call fastcc i32 @of_translate_one(%struct.device_node* noundef nonnull %parent.0101, %struct.of_bus* noundef %bus.0100, %struct.of_bus* noundef %call31, i32* noundef nonnull %arraydecay, i32 noundef %20, i32 noundef %21, i32 noundef %16, i8* noundef %rprop) #16
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup, label %bail

cleanup:                                          ; preds = %if.end44
  %22 = load i32, i32* %pna, align 4
  store i32 %22, i32* %na, align 4
  %23 = load i32, i32* %pns, align 4
  store i32 %23, i32* %ns, align 4
  %call13 = call %struct.device_node* %get_parent(%struct.device_node* noundef nonnull %call13102) #17, !callees !8
  %cmp14 = icmp eq %struct.device_node* %call13, null
  br i1 %cmp14, label %if.then16, label %if.end20

bail:                                             ; preds = %if.end44, %do.end, %if.then25, %if.then16, %if.end, %entry
  %result.2 = phi i64 [ -1, %entry ], [ -1, %if.end ], [ -1, %do.end ], [ %call27, %if.then25 ], [ %call19, %if.then16 ], [ -1, %if.end44 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i64 %result.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node* noundef) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @of_translate_dma_address(%struct.device_node* noundef %dev, i32* noundef %in_addr) local_unnamed_addr #3 {
entry:
  %host = alloca %struct.device_node*, align 8
  %0 = bitcast %struct.device_node** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.device_node* null, %struct.device_node** %host, align 8, !annotation !7
  %call = call fastcc i64 @__of_translate_address(%struct.device_node* noundef %dev, %struct.device_node* (%struct.device_node*)* noundef nonnull @__of_get_dma_parent, i32* noundef %in_addr, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.device_node** noundef nonnull %host) #16
  %1 = load %struct.device_node*, %struct.device_node** %host, align 8
  %tobool.not = icmp eq %struct.device_node* %1, null
  %spec.select = select i1 %tobool.not, i64 %call, i64 -1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i64 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.device_node* @__of_get_dma_parent(%struct.device_node* noundef %np) #3 {
entry:
  %args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @of_property_match_string(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #17
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef %np) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call, %struct.of_phandle_args* noundef nonnull %args) #17
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call %struct.device_node* @of_get_parent(%struct.device_node* noundef %np) #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %np7 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.device_node* [ %call1, %if.then ], [ %call5, %if.then4 ], [ %1, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #15
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32* @__of_get_address(%struct.device_node* noundef %dev, i32 noundef %index, i32 noundef %bar_no, i64* noundef writeonly %size, i32* noundef writeonly %flags) local_unnamed_addr #3 {
entry:
  %psize = alloca i32, align 4
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %0 = bitcast i32* %psize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 0, i32* %psize, align 4, !annotation !7
  %1 = bitcast i32* %na to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15
  store i32 0, i32* %na, align 4, !annotation !7
  %2 = bitcast i32* %ns to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15
  store i32 0, i32* %ns, align 4, !annotation !7
  %call = call %struct.device_node* @of_get_parent(%struct.device_node* noundef %dev) #17
  %cmp = icmp eq %struct.device_node* %call, null
  br i1 %cmp, label %cleanup49, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.of_bus* @of_match_bus(%struct.device_node* noundef nonnull %call) #16
  %name = getelementptr inbounds %struct.of_bus, %struct.of_bus* %call1, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #17
  %tobool = icmp ne i32 %call2, 0
  %cmp3 = icmp sgt i32 %bar_no, -1
  %or.cond = and i1 %cmp3, %tobool
  br i1 %or.cond, label %cleanup49, label %if.end5

if.end5:                                          ; preds = %if.end
  %count_cells = getelementptr inbounds %struct.of_bus, %struct.of_bus* %call1, i64 0, i32 3
  %4 = load void (%struct.device_node*, i32*, i32*)*, void (%struct.device_node*, i32*, i32*)** %count_cells, align 8
  call void %4(%struct.device_node* noundef %dev, i32* noundef nonnull %na, i32* noundef nonnull %ns) #17
  %5 = load i32, i32* %na, align 4
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %if.end10, label %cleanup49

if.end10:                                         ; preds = %if.end5
  %addresses = getelementptr inbounds %struct.of_bus, %struct.of_bus* %call1, i64 0, i32 1
  %8 = load i8*, i8** %addresses, align 8
  %call11 = call i8* @of_get_property(%struct.device_node* noundef %dev, i8* noundef %8, i32* noundef nonnull %psize) #17
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %cleanup49, label %if.end14

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %psize, align 4
  %div = lshr i32 %9, 2
  store i32 %div, i32* %psize, align 4
  %10 = load i32, i32* %na, align 4
  %11 = load i32, i32* %ns, align 4
  %add = add i32 %11, %10
  %cmp15.not95 = icmp ult i32 %div, %add
  br i1 %cmp15.not95, label %cleanup49, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end14
  %12 = bitcast i8* %call11 to i32*
  %mul = shl i32 %bar_no, 2
  %add32 = add i32 %mul, 16
  %cmp34 = icmp sgt i32 %index, -1
  %idx.ext47 = sext i32 %add to i64
  br label %cond.end

cond.end:                                         ; preds = %for.body.lr.ph, %for.inc
  %13 = phi i32 [ %div, %for.body.lr.ph ], [ %sub, %for.inc ]
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %prop.096 = phi i32* [ %12, %for.body.lr.ph ], [ %add.ptr48, %for.inc ]
  %14 = load i32, i32* %prop.096, align 4
  %call28 = call fastcc i32 @__fswab32(i32 noundef %14) #19
  %and31 = and i32 %call28, 255
  %cmp33 = icmp eq i32 %and31, %add32
  %or.cond99 = select i1 %cmp3, i1 %cmp33, i1 false
  br i1 %or.cond99, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %cmp36 = icmp eq i32 %i.098, %index
  %or.cond91 = select i1 %cmp34, i1 %cmp36, i1 false
  br i1 %or.cond91, label %if.then37, label %for.inc

if.then37:                                        ; preds = %cond.end, %lor.lhs.false
  %tobool38.not = icmp eq i64* %size, null
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.then37
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr i32, i32* %prop.096, i64 %idx.ext
  %call40 = call fastcc i64 @of_read_number(i32* noundef %add.ptr, i32 noundef %11) #16
  store i64 %call40, i64* %size, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then37
  %tobool42.not = icmp eq i32* %flags, null
  br i1 %tobool42.not, label %cleanup49, label %if.then43

if.then43:                                        ; preds = %if.end41
  %get_flags = getelementptr inbounds %struct.of_bus, %struct.of_bus* %call1, i64 0, i32 7
  %15 = load i32 (i32*)*, i32 (i32*)** %get_flags, align 8
  %call44 = call i32 %15(i32* noundef %prop.096) #17
  store i32 %call44, i32* %flags, align 4
  br label %cleanup49

for.inc:                                          ; preds = %lor.lhs.false
  %sub = sub i32 %13, %add
  store i32 %sub, i32* %psize, align 4
  %add.ptr48 = getelementptr i32, i32* %prop.096, i64 %idx.ext47
  %inc = add i32 %i.098, 1
  %cmp15.not = icmp ult i32 %sub, %add
  br i1 %cmp15.not, label %cleanup49, label %cond.end

cleanup49:                                        ; preds = %for.inc, %if.end14, %if.end41, %if.then43, %if.end, %if.end10, %if.end5, %entry
  %retval.2 = phi i32* [ null, %entry ], [ null, %if.end5 ], [ null, %if.end10 ], [ null, %if.end ], [ %prop.096, %if.then43 ], [ %prop.096, %if.end41 ], [ null, %if.end14 ], [ null, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.of_bus* @of_match_bus(%struct.device_node* noundef %np) unnamed_addr #3 {
entry:
  %0 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** getelementptr inbounds ([2 x %struct.of_bus], [2 x %struct.of_bus]* @of_busses, i64 0, i64 0, i32 2), align 8
  %tobool.not = icmp eq i32 (%struct.device_node*)* %0, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 %0(%struct.device_node* noundef %np) #17
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %for.inc, label %if.then

if.then:                                          ; preds = %lor.lhs.false.1, %for.inc, %lor.lhs.false, %entry
  %i.017.lcssa = phi i64 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.inc ], [ 1, %lor.lhs.false.1 ]
  %arrayidx = getelementptr [2 x %struct.of_bus], [2 x %struct.of_bus]* @of_busses, i64 0, i64 %i.017.lcssa
  ret %struct.of_bus* %arrayidx

for.inc:                                          ; preds = %lor.lhs.false
  %1 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** getelementptr inbounds ([2 x %struct.of_bus], [2 x %struct.of_bus]* @of_busses, i64 0, i64 1, i32 2), align 8
  %tobool.not.1 = icmp eq i32 (%struct.device_node*)* %1, null
  br i1 %tobool.not.1, label %if.then, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %call.1 = call i32 %1(%struct.device_node* noundef %np) #17
  %tobool5.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool5.not.1, label %for.inc.1, label %if.then

for.inc.1:                                        ; preds = %lor.lhs.false.1
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/address.c\22; .popsection; .long 14472b - 14470b; .short 370; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !9
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #5 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_number(i32* nocapture noundef readonly %cell, i32 noundef %size) unnamed_addr #6 {
entry:
  %tobool.not19 = icmp eq i32 %size, 0
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %dec22.in = phi i32 [ %dec22, %for.body ], [ %size, %entry ]
  %r.021 = phi i64 [ %or9, %for.body ], [ 0, %entry ]
  %cell.addr.020 = phi i32* [ %incdec.ptr, %for.body ], [ %cell, %entry ]
  %dec22 = add i32 %dec22.in, -1
  %shl = shl i64 %r.021, 32
  %0 = load i32, i32* %cell.addr.020, align 4
  %call = call fastcc i32 @__fswab32(i32 noundef %0) #19
  %conv = zext i32 %call to i64
  %or9 = or i64 %shl, %conv
  %incdec.ptr = getelementptr i32, i32* %cell.addr.020, i64 1
  %tobool.not = icmp eq i32 %dec22, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i64 [ 0, %entry ], [ %or9, %for.body ]
  ret i64 %r.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_pci_range_parser_init(%struct.of_pci_range_parser* nocapture noundef writeonly %parser, %struct.device_node* noundef %node) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @parser_init(%struct.of_pci_range_parser* noundef %parser, %struct.device_node* noundef %node, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @parser_init(%struct.of_pci_range_parser* nocapture noundef writeonly %parser, %struct.device_node* noundef %node, i8* noundef %name) unnamed_addr #3 {
entry:
  %rlen = alloca i32, align 4
  %0 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 0, i32* %rlen, align 4, !annotation !7
  %node1 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 0
  store %struct.device_node* %node, %struct.device_node** %node1, align 8
  %call = call i32 @of_n_addr_cells(%struct.device_node* noundef %node) #17
  %pna = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 6
  store i32 %call, i32* %pna, align 8
  %call2 = call i32 @of_bus_n_addr_cells(%struct.device_node* noundef %node) #17
  %na = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 4
  store i32 %call2, i32* %na, align 8
  %call3 = call i32 @of_bus_n_size_cells(%struct.device_node* noundef %node) #17
  %ns = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 5
  store i32 %call3, i32* %ns, align 4
  %call4 = call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #17
  %tobool.not = icmp eq i32 %call4, 0
  %dma = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 7
  %frombool = zext i1 %tobool.not to i8
  store i8 %frombool, i8* %dma, align 4
  %call5 = call fastcc %struct.of_bus* @of_match_bus(%struct.device_node* noundef %node) #16
  %bus = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 1
  store %struct.of_bus* %call5, %struct.of_bus** %bus, align 8
  %call6 = call i8* @of_get_property(%struct.device_node* noundef %node, i8* noundef %name, i32* noundef nonnull %rlen) #17
  %range = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 2
  %1 = bitcast i32** %range to i8**
  store i8* %call6, i8** %1, align 8
  %cmp = icmp eq i8* %call6, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i8* %call6 to i32*
  %3 = load i32, i32* %rlen, align 4
  %conv = sext i32 %3 to i64
  %div = lshr i64 %conv, 2
  %add.ptr = getelementptr i32, i32* %2, i64 %div
  %end = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 3
  store i32* %add.ptr, i32** %end, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* nocapture noundef writeonly %parser, %struct.device_node* noundef %node) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @parser_init(%struct.of_pci_range_parser* noundef %parser, %struct.device_node* noundef %node, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* nocapture noundef %parser, %struct.of_pci_range* noundef %range) local_unnamed_addr #3 {
entry:
  %na1 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 4
  %0 = load i32, i32* %na1, align 8
  %ns2 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 5
  %1 = load i32, i32* %ns2, align 4
  %pna = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 6
  %2 = load i32, i32* %pna, align 8
  %add = add i32 %1, %0
  %add3 = add i32 %add, %2
  %tobool.not = icmp eq %struct.of_pci_range* %range, null
  br i1 %tobool.not, label %cleanup104, label %if.end

if.end:                                           ; preds = %entry
  %range4 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 2
  %3 = load i32*, i32** %range4, align 8
  %tobool5.not = icmp eq i32* %3, null
  br i1 %tobool5.not, label %cleanup104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %idx.ext = sext i32 %add3 to i64
  %add.ptr = getelementptr i32, i32* %3, i64 %idx.ext
  %end = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 3
  %4 = load i32*, i32** %end, align 8
  %cmp = icmp ugt i32* %add.ptr, %4
  br i1 %cmp, label %cleanup104, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %bus = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 1
  %5 = load %struct.of_bus*, %struct.of_bus** %bus, align 8
  %get_flags = getelementptr inbounds %struct.of_bus, %struct.of_bus* %5, i64 0, i32 7
  %6 = load i32 (i32*)*, i32 (i32*)** %get_flags, align 8
  %call = call i32 %6(i32* noundef nonnull %3) #17
  %flags = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 3
  store i32 %call, i32* %flags, align 8
  %7 = load %struct.of_bus*, %struct.of_bus** %bus, align 8
  %has_flags = getelementptr inbounds %struct.of_bus, %struct.of_bus* %7, i64 0, i32 6
  %8 = load i8, i8* %has_flags, align 8, !range !10
  %9 = zext i8 %8 to i32
  %10 = load i32*, i32** %range4, align 8
  %11 = zext i8 %8 to i64
  %add.ptr16 = getelementptr i32, i32* %10, i64 %11
  %sub = sub i32 %0, %9
  %call17 = call fastcc i64 @of_read_number(i32* noundef %add.ptr16, i32 noundef %sub) #16
  %bus_addr = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 0, i32 0
  store i64 %call17, i64* %bus_addr, align 8
  %dma = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 7
  %12 = load i8, i8* %dma, align 4, !range !10
  %tobool18.not = icmp eq i8 %12, 0
  %node24 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %node24, align 8
  %14 = load i32*, i32** %range4, align 8
  %idx.ext26 = sext i32 %0 to i64
  %add.ptr27 = getelementptr i32, i32* %14, i64 %idx.ext26
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end8
  %call23 = call i64 @of_translate_dma_address(%struct.device_node* noundef %13, i32* noundef %add.ptr27) #16
  br label %if.end30

if.else:                                          ; preds = %if.end8
  %call28 = call i64 @of_translate_address(%struct.device_node* noundef %13, i32* noundef %add.ptr27) #16
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then19
  %call23.sink = phi i64 [ %call28, %if.else ], [ %call23, %if.then19 ]
  %15 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 1
  store i64 %call23.sink, i64* %15, align 8
  %16 = load i32*, i32** %range4, align 8
  %17 = load i32, i32* %pna, align 8
  %idx.ext33 = sext i32 %17 to i64
  %add.ptr34 = getelementptr i32, i32* %16, i64 %idx.ext33
  %add.ptr36 = getelementptr i32, i32* %add.ptr34, i64 %idx.ext26
  %call37 = call fastcc i64 @of_read_number(i32* noundef %add.ptr36, i32 noundef %1) #16
  %size = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 2
  store i64 %call37, i64* %size, align 8
  %.pn177 = load i32*, i32** %range4, align 8
  %storemerge178 = getelementptr i32, i32* %.pn177, i64 %idx.ext
  store i32* %storemerge178, i32** %range4, align 8
  %add.ptr43179 = getelementptr i32, i32* %storemerge178, i64 %idx.ext
  %18 = load i32*, i32** %end, align 8
  %cmp45.not180 = icmp ugt i32* %add.ptr43179, %18
  br i1 %cmp45.not180, label %cleanup104, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end30
  %node62 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %parser, i64 0, i32 0
  br label %while.body

while.cond:                                       ; preds = %lor.lhs.false89
  %add97 = add i64 %29, %call80
  store i64 %add97, i64* %size, align 8
  %.pn = load i32*, i32** %range4, align 8
  %storemerge = getelementptr i32, i32* %.pn, i64 %idx.ext
  store i32* %storemerge, i32** %range4, align 8
  %add.ptr43 = getelementptr i32, i32* %storemerge, i64 %idx.ext
  %19 = load i32*, i32** %end, align 8
  %cmp45.not = icmp ugt i32* %add.ptr43, %19
  br i1 %cmp45.not, label %cleanup104, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %storemerge181 = phi i32* [ %storemerge178, %while.body.lr.ph ], [ %storemerge, %while.cond ]
  %20 = load %struct.of_bus*, %struct.of_bus** %bus, align 8
  %get_flags51 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %20, i64 0, i32 7
  %21 = load i32 (i32*)*, i32 (i32*)** %get_flags51, align 8
  %call53 = call i32 %21(i32* noundef %storemerge181) #17
  %22 = load i32*, i32** %range4, align 8
  %add.ptr56 = getelementptr i32, i32* %22, i64 %11
  %call58 = call fastcc i64 @of_read_number(i32* noundef %add.ptr56, i32 noundef %sub) #16
  %23 = load i8, i8* %dma, align 4, !range !10
  %tobool60.not = icmp eq i8 %23, 0
  %24 = load %struct.device_node*, %struct.device_node** %node62, align 8
  %add.ptr71 = getelementptr i32, i32* %22, i64 %idx.ext26
  br i1 %tobool60.not, label %if.else67, label %if.then61

if.then61:                                        ; preds = %while.body
  %call66 = call i64 @of_translate_dma_address(%struct.device_node* noundef %24, i32* noundef %add.ptr71) #16
  br label %if.end73

if.else67:                                        ; preds = %while.body
  %call72 = call i64 @of_translate_address(%struct.device_node* noundef %24, i32* noundef %add.ptr71) #16
  br label %if.end73

if.end73:                                         ; preds = %if.else67, %if.then61
  %cpu_addr48.0 = phi i64 [ %call66, %if.then61 ], [ %call72, %if.else67 ]
  %25 = load i32*, i32** %range4, align 8
  %26 = load i32, i32* %pna, align 8
  %idx.ext76 = sext i32 %26 to i64
  %add.ptr77 = getelementptr i32, i32* %25, i64 %idx.ext26
  %add.ptr79 = getelementptr i32, i32* %add.ptr77, i64 %idx.ext76
  %call80 = call fastcc i64 @of_read_number(i32* noundef %add.ptr79, i32 noundef %1) #16
  %27 = load i32, i32* %flags, align 8
  %cmp82.not = icmp eq i32 %call53, %27
  br i1 %cmp82.not, label %if.end84, label %cleanup104

if.end84:                                         ; preds = %if.end73
  %28 = load i64, i64* %bus_addr, align 8
  %29 = load i64, i64* %size, align 8
  %add87 = add i64 %29, %28
  %cmp88.not = icmp eq i64 %call58, %add87
  br i1 %cmp88.not, label %lor.lhs.false89, label %cleanup104

lor.lhs.false89:                                  ; preds = %if.end84
  %30 = load i64, i64* %15, align 8
  %add92 = add i64 %30, %29
  %cmp93.not = icmp eq i64 %cpu_addr48.0, %add92
  br i1 %cmp93.not, label %while.cond, label %cleanup104

cleanup104:                                       ; preds = %while.cond, %if.end73, %lor.lhs.false89, %if.end84, %if.end30, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi %struct.of_pci_range* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %range, %if.end30 ], [ %range, %if.end84 ], [ %range, %lor.lhs.false89 ], [ %range, %if.end73 ], [ %range, %while.cond ]
  ret %struct.of_pci_range* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_address_to_resource(%struct.device_node* noundef %dev, i32 noundef %index, %struct.resource* noundef %r) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__of_address_to_resource(%struct.device_node* noundef %dev, i32 noundef %index, %struct.resource* noundef %r) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__of_address_to_resource(%struct.device_node* noundef %dev, i32 noundef %index, %struct.resource* noundef %r) unnamed_addr #3 {
entry:
  %size = alloca i64, align 8
  %flags = alloca i32, align 4
  %name = alloca i8*, align 8
  %0 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 0, i64* %size, align 8, !annotation !7
  %1 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15
  store i32 0, i32* %flags, align 4, !annotation !7
  %2 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store i8* null, i8** %name, align 8
  %call = call i32* @__of_get_address(%struct.device_node* noundef %dev, i32 noundef %index, i32 noundef -1, i64* noundef nonnull %size, i32* noundef nonnull %flags) #16
  %cmp = icmp eq i32* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %index, -1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call fastcc void @of_property_read_string_index(%struct.device_node* noundef %dev, i32 noundef %index, i8** noundef nonnull %name) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 512
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end4
  %call6 = call i64 @of_translate_address(%struct.device_node* noundef %dev, i32* noundef nonnull %call) #16
  br label %if.end13

if.else:                                          ; preds = %if.end4
  %and7 = and i32 %3, 256
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.else
  %4 = load i64, i64* %size, align 8
  %call10 = call fastcc i64 @of_translate_ioport(%struct.device_node* noundef %dev, i32* noundef nonnull %call, i64 noundef %4) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then5
  %taddr.0 = phi i64 [ %call6, %if.then5 ], [ %call10, %if.then9 ]
  %cmp14 = icmp eq i64 %taddr.0, -1
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end13
  %5 = bitcast %struct.resource* %r to i8*
  %call17 = call i8* @memset(i8* noundef %5, i32 noundef 0, i64 noundef 64) #17
  %start = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 0
  store i64 %taddr.0, i64* %start, align 8
  %6 = load i64, i64* %size, align 8
  %add = add i64 %taddr.0, -1
  %sub = add i64 %add, %6
  %end = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 1
  store i64 %sub, i64* %end, align 8
  %7 = load i32, i32* %flags, align 4
  %conv = zext i32 %7 to i64
  %flags21 = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 3
  store i64 %conv, i64* %flags21, align 8
  %8 = load i8*, i8** %name, align 8
  %tobool22.not = icmp eq i8* %8, null
  br i1 %tobool22.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end16
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %dev, i64 0, i32 2
  %9 = load i8*, i8** %full_name, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end16, %cond.false
  %cond = phi i8* [ %9, %cond.false ], [ %8, %if.end16 ]
  %name23 = getelementptr inbounds %struct.resource, %struct.resource* %r, i64 0, i32 2
  store i8* %cond, i8** %name23, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else, %entry, %cond.end
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry ], [ -22, %if.else ], [ -22, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @of_iomap(%struct.device_node* noundef %np, i32 noundef %index) local_unnamed_addr #3 {
entry:
  %res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %call = call i32 @of_address_to_resource(%struct.device_node* noundef %np, i32 noundef %index, %struct.resource* noundef nonnull %res) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 128
  %tobool1.not = icmp eq i64 %and, 0
  %start10 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %2 = load i64, i64* %start10, align 8
  %call11 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %res) #16
  %3 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool14.not = icmp eq i8 %3, 0
  %or20 = select i1 %tobool14.not, i64 29273397577910035, i64 29273397577912083
  %or8 = select i1 %tobool14.not, i64 29273397577910031, i64 29273397577912079
  %or20.sink = select i1 %tobool1.not, i64 %or20, i64 %or8
  %call22 = call i8* @__ioremap(i64 noundef %2, i64 noundef %call11, i64 %or20.sink) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #15
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__ioremap(i64 noundef, i64 noundef, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_size(%struct.resource* nocapture noundef readonly %res) unnamed_addr #8 {
entry:
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %0 = load i64, i64* %end, align 8
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %sub = add i64 %0, 1
  %add = sub i64 %sub, %1
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @of_io_request_and_map(%struct.device_node* noundef %np, i32 noundef %index, i8* noundef %name) local_unnamed_addr #3 {
entry:
  %res = alloca %struct.resource, align 8
  %0 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %call = call i32 @of_address_to_resource(%struct.device_node* noundef %np, i32 noundef %index, %struct.resource* noundef nonnull %res) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i8* %name, null
  %name4 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 2
  %1 = load i8*, i8** %name4, align 8
  %name.addr.0 = select i1 %tobool2.not, i8* %1, i8* %name
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %2 = load i64, i64* %start, align 8
  %call6 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %res) #16
  %call7 = call %struct.resource* @__request_region(%struct.resource* noundef nonnull @iomem_resource, i64 noundef %2, i64 noundef %call6, i8* noundef %name.addr.0, i32 noundef 0) #17
  %tobool8.not = icmp eq %struct.resource* %call7, null
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.end11

if.end11:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  %3 = load i64, i64* %flags, align 8
  %and = and i64 %3, 128
  %tobool12.not = icmp eq i64 %and, 0
  %4 = load i64, i64* %start, align 8
  %call23 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %res) #16
  %5 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool26.not = icmp eq i8 %5, 0
  %or32 = select i1 %tobool26.not, i64 29273397577910035, i64 29273397577912083
  %or20 = select i1 %tobool26.not, i64 29273397577910031, i64 29273397577912079
  %or32.sink = select i1 %tobool12.not, i64 %or32, i64 %or20
  %call34 = call i8* @__ioremap(i64 noundef %4, i64 noundef %call23, i64 %or32.sink) #17
  %tobool36.not = icmp eq i8* %call34, null
  br i1 %tobool36.not, label %if.then37, label %cleanup

if.then37:                                        ; preds = %if.end11
  %6 = load i64, i64* %start, align 8
  %call39 = call fastcc i64 @resource_size(%struct.resource* noundef nonnull %res) #16
  call void @__release_region(%struct.resource* noundef nonnull @iomem_resource, i64 noundef %6, i64 noundef %call39) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry, %if.then37
  %.sink = phi i64 [ -12, %if.then37 ], [ -22, %entry ], [ -16, %if.end ]
  %call40 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11
  %retval.0 = phi i8* [ %call34, %if.end11 ], [ %call40, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #15
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.resource* @__request_region(%struct.resource* noundef, i64 noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(%struct.resource* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_dma_get_range(%struct.device_node* noundef %np, %struct.bus_dma_region** nocapture noundef writeonly %map) local_unnamed_addr #3 {
entry:
  %parser = alloca %struct.of_pci_range_parser, align 8
  %range = alloca %struct.of_pci_range, align 8
  %len = alloca i32, align 4
  %0 = bitcast %struct.of_pci_range_parser* %parser to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !7
  %1 = bitcast %struct.of_pci_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !7
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15
  store i32 0, i32* %len, align 4, !annotation !7
  %tobool.not68 = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not68, label %out, label %while.body

while.body:                                       ; preds = %entry, %if.end7
  %node.070 = phi %struct.device_node* [ %call8, %if.end7 ], [ %np, %entry ]
  %found_dma_ranges.0.off069 = phi i1 [ false, %if.end7 ], [ true, %entry ]
  %call1 = call i8* @of_get_property(%struct.device_node* noundef nonnull %node.070, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %len) #17
  %tobool2 = icmp ne i8* %call1, null
  %3 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %3, 0
  %or.cond = select i1 %tobool2, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end12, label %if.end

if.end:                                           ; preds = %while.body
  %or.cond38 = select i1 %found_dma_ranges.0.off069, i1 true, i1 %tobool2
  br i1 %or.cond38, label %if.end7, label %out

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc %struct.device_node* @of_get_next_dma_parent(%struct.device_node* noundef nonnull %node.070) #16
  %tobool.not = icmp eq %struct.device_node* %call8, null
  br i1 %tobool.not, label %out, label %while.body

if.end12:                                         ; preds = %while.body
  %call13 = call i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.device_node* noundef nonnull %node.070) #16
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.end12
  %num_ranges.0 = phi i32 [ 1, %if.end12 ], [ %phi.bo, %for.cond ]
  %call14 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.of_pci_range* noundef nonnull %range) #16
  %tobool15.not = icmp eq %struct.of_pci_range* %call14, null
  %phi.bo = add i32 %num_ranges.0, 1
  br i1 %tobool15.not, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %conv = sext i32 %num_ranges.0 to i64
  %call16 = call fastcc i8* @kcalloc(i64 noundef %conv) #16
  %tobool17.not = icmp eq i8* %call16, null
  br i1 %tobool17.not, label %out, label %if.end19

if.end19:                                         ; preds = %for.end
  %4 = bitcast %struct.bus_dma_region** %map to i8**
  store i8* %call16, i8** %4, align 8
  %call20 = call i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.device_node* noundef nonnull %node.070) #16
  %call227173 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.of_pci_range* noundef nonnull %range) #16
  %tobool23.not7274 = icmp eq %struct.of_pci_range* %call227173, null
  br i1 %tobool23.not7274, label %out, label %for.body24.lr.ph.lr.ph

for.body24.lr.ph.lr.ph:                           ; preds = %if.end19
  %5 = bitcast i8* %call16 to %struct.bus_dma_region*
  %cpu_addr = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 1
  %bus_addr = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 0, i32 0
  %size = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 2
  br label %for.body24.lr.ph

for.body24.lr.ph:                                 ; preds = %for.body24.lr.ph.lr.ph, %if.end31
  %r.0.ph75 = phi %struct.bus_dma_region* [ %5, %for.body24.lr.ph.lr.ph ], [ %incdec.ptr, %if.end31 ]
  br label %for.body24

for.body24:                                       ; preds = %for.body24.lr.ph, %do.end
  %6 = load i64, i64* %cpu_addr, align 8
  %cmp26 = icmp eq i64 %6, -1
  br i1 %cmp26, label %do.end, label %if.end31

do.end:                                           ; preds = %for.body24
  %7 = load i64, i64* %bus_addr, align 8
  %call30 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i64 noundef %7, %struct.device_node* noundef nonnull %node.070) #18
  %call22 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.of_pci_range* noundef nonnull %range) #16
  %tobool23.not = icmp eq %struct.of_pci_range* %call22, null
  br i1 %tobool23.not, label %out, label %for.body24

if.end31:                                         ; preds = %for.body24
  %cpu_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %r.0.ph75, i64 0, i32 0
  store i64 %6, i64* %cpu_start, align 8
  %8 = load i64, i64* %bus_addr, align 8
  %dma_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %r.0.ph75, i64 0, i32 1
  store i64 %8, i64* %dma_start, align 8
  %9 = load i64, i64* %size, align 8
  %size34 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %r.0.ph75, i64 0, i32 2
  store i64 %9, i64* %size34, align 8
  %10 = load i64, i64* %cpu_addr, align 8
  %sub = sub i64 %10, %8
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %r.0.ph75, i64 0, i32 3
  store i64 %sub, i64* %offset, align 8
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %r.0.ph75, i64 1
  %call2271 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.of_pci_range* noundef nonnull %range) #16
  %tobool23.not72 = icmp eq %struct.of_pci_range* %call2271, null
  br i1 %tobool23.not72, label %out, label %for.body24.lr.ph

out:                                              ; preds = %if.end, %if.end7, %if.end31, %do.end, %entry, %if.end19, %for.end
  %ret.0 = phi i32 [ -12, %for.end ], [ 0, %if.end19 ], [ -19, %entry ], [ 0, %do.end ], [ 0, %if.end31 ], [ -19, %if.end7 ], [ -19, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #15
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_get_next_dma_parent(%struct.device_node* noundef %np) unnamed_addr #3 {
entry:
  %call = call %struct.device_node* @__of_get_dma_parent(%struct.device_node* noundef %np) #16
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #16
  ret i8* %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @of_dma_get_max_cpu_address(%struct.device_node* noundef %np) local_unnamed_addr #10 section ".init.text" {
entry:
  %parser = alloca %struct.of_pci_range_parser, align 8
  %range = alloca %struct.of_pci_range, align 8
  %len = alloca i32, align 4
  %0 = bitcast %struct.of_pci_range_parser* %parser to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !7
  %1 = bitcast %struct.of_pci_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !7
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15
  store i32 0, i32* %len, align 4, !annotation !7
  %tobool.not = icmp eq %struct.device_node* %np, null
  %3 = load %struct.device_node*, %struct.device_node** @of_root, align 8
  %spec.select = select i1 %tobool.not, %struct.device_node* %3, %struct.device_node* %np
  %call = call i8* @of_get_property(%struct.device_node* noundef %spec.select, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %len) #17
  %tobool1 = icmp ne i8* %call, null
  %4 = load i32, i32* %len, align 4
  %tobool2 = icmp ne i32 %4, 0
  %or.cond = select i1 %tobool1, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.then3, label %if.end15

if.then3:                                         ; preds = %entry
  %call4 = call i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.device_node* noundef %spec.select) #16
  %call544 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.of_pci_range* noundef nonnull %range) #16
  %tobool6.not45 = icmp eq %struct.of_pci_range* %call544, null
  br i1 %tobool6.not45, label %if.end15, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then3
  %cpu_addr = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 1
  %size = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %cpu_end.046 = phi i64 [ 0, %for.body.lr.ph ], [ %spec.select42, %for.body ]
  %5 = load i64, i64* %cpu_addr, align 8
  %6 = load i64, i64* %size, align 8
  %add = add i64 %6, %5
  %cmp = icmp ugt i64 %add, %cpu_end.046
  %sub = add i64 %add, -1
  %spec.select42 = select i1 %cmp, i64 %sub, i64 %cpu_end.046
  %call5 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* noundef nonnull %parser, %struct.of_pci_range* noundef nonnull %range) #16
  %tobool6.not = icmp eq %struct.of_pci_range* %call5, null
  br i1 %tobool6.not, label %if.end15, label %for.body

if.end15:                                         ; preds = %for.body, %if.then3, %entry
  %max_cpu_addr.0 = phi i64 [ -1, %entry ], [ 0, %if.then3 ], [ %spec.select42, %for.body ]
  %call16 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef %spec.select, %struct.device_node* noundef null) #17
  %cmp18.not47 = icmp eq %struct.device_node* %call16, null
  br i1 %cmp18.not47, label %for.end25, label %for.body19

for.body19:                                       ; preds = %if.end15, %for.body19
  %child.049 = phi %struct.device_node* [ %call24, %for.body19 ], [ %call16, %if.end15 ]
  %max_cpu_addr.148 = phi i64 [ %spec.select43, %for.body19 ], [ %max_cpu_addr.0, %if.end15 ]
  %call20 = call i64 @of_dma_get_max_cpu_address(%struct.device_node* noundef nonnull %child.049) #20
  %cmp21 = icmp ugt i64 %max_cpu_addr.148, %call20
  %spec.select43 = select i1 %cmp21, i64 %call20, i64 %max_cpu_addr.148
  %call24 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef %spec.select, %struct.device_node* noundef nonnull %child.049) #17
  %cmp18.not = icmp eq %struct.device_node* %call24, null
  br i1 %cmp18.not, label %for.end25, label %for.body19

for.end25:                                        ; preds = %for.body19, %if.end15
  %max_cpu_addr.1.lcssa = phi i64 [ %max_cpu_addr.0, %if.end15 ], [ %spec.select43, %for.body19 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #15
  ret i64 %max_cpu_addr.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef, %struct.device_node* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @of_dma_is_coherent(%struct.device_node* noundef %np) local_unnamed_addr #3 {
entry:
  %tobool.not8 = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not8, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %node.09 = phi %struct.device_node* [ %call2, %if.end ], [ %np, %entry ]
  %call1 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef nonnull %node.09) #16
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %call2 = call fastcc %struct.device_node* @of_get_next_dma_parent(%struct.device_node* noundef nonnull %node.09) #16
  %tobool.not = icmp eq %struct.device_node* %call2, null
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %entry
  %tobool.not.lcssa = phi i1 [ false, %entry ], [ %call1, %if.end ], [ %call1, %while.body ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np) unnamed_addr #3 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* noundef null) #17
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.logic_pio_hwaddr* @find_io_range_by_fwnode(%struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_translate_one(%struct.device_node* noundef %parent, %struct.of_bus* nocapture noundef readonly %bus, %struct.of_bus* nocapture noundef readonly %pbus, i32* noundef %addr, i32 noundef %na, i32 noundef %ns, i32 noundef %pna, i8* noundef %rprop) unnamed_addr #3 {
entry:
  %rlen = alloca i32, align 4
  %0 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 0, i32* %rlen, align 4, !annotation !7
  %call = call i8* @of_get_property(%struct.device_node* noundef %parent, i8* noundef %rprop, i32* noundef nonnull %rlen) #17
  %1 = bitcast i8* %call to i32*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = call i32 @strcmp(i8* noundef %rprop, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #17
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then7, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %rlen, align 4
  %cmp6 = icmp eq i32 %2, 0
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %land.lhs.true, %if.end
  %call8 = call fastcc i64 @of_read_number(i32* noundef %addr, i32 noundef %na) #16
  %3 = bitcast i32* %addr to i8*
  %mul = shl i32 %pna, 2
  %4 = zext i32 %mul to i64
  %call9 = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef %4) #17
  br label %finish

if.end11:                                         ; preds = %if.end
  %div = lshr i32 %2, 2
  store i32 %div, i32* %rlen, align 4
  %add = add i32 %ns, %na
  %add13 = add i32 %add, %pna
  %cmp14.not69 = icmp ult i32 %div, %add13
  br i1 %cmp14.not69, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end11
  %map = getelementptr inbounds %struct.of_bus, %struct.of_bus* %bus, i64 0, i32 4
  %idx.ext = sext i32 %add13 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %ranges.070 = phi i32* [ %1, %for.body.lr.ph ], [ %add.ptr, %for.inc ]
  %5 = load i64 (i32*, i32*, i32, i32, i32)*, i64 (i32*, i32*, i32, i32, i32)** %map, align 8
  %call16 = call i64 %5(i32* noundef %addr, i32* noundef %ranges.070, i32 noundef %na, i32 noundef %ns, i32 noundef %pna) #17
  %cmp17.not = icmp eq i64 %call16, -1
  br i1 %cmp17.not, label %for.inc, label %if.end25

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %rlen, align 4
  %sub = sub i32 %6, %add13
  store i32 %sub, i32* %rlen, align 4
  %add.ptr = getelementptr i32, i32* %ranges.070, i64 %idx.ext
  %cmp14.not = icmp ult i32 %sub, %add13
  br i1 %cmp14.not, label %cleanup, label %for.body

if.end25:                                         ; preds = %for.body
  %7 = bitcast i32* %addr to i8*
  %idx.ext26 = sext i32 %na to i64
  %add.ptr27 = getelementptr i32, i32* %ranges.070, i64 %idx.ext26
  %8 = bitcast i32* %add.ptr27 to i8*
  %mul28 = shl i32 %pna, 2
  %9 = zext i32 %mul28 to i64
  %call30 = call i8* @memcpy(i8* noundef %7, i8* noundef %8, i64 noundef %9) #17
  br label %finish

finish:                                           ; preds = %if.end25, %if.then7
  %offset.2 = phi i64 [ %call8, %if.then7 ], [ %call16, %if.end25 ]
  %translate = getelementptr inbounds %struct.of_bus, %struct.of_bus* %pbus, i64 0, i32 5
  %10 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %translate, align 8
  %call32 = call i32 %10(i32* noundef %addr, i64 noundef %offset.2, i32 noundef %pna) #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end11, %land.lhs.true, %finish
  %retval.0 = phi i32 [ %call32, %finish ], [ 1, %land.lhs.true ], [ 1, %if.end11 ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(%struct.device_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.of_phandle_args* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @of_bus_isa_match(%struct.device_node* noundef %np) #3 {
entry:
  %call = call i1 @of_node_name_eq(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #17
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal void @of_bus_isa_count_cells(%struct.device_node* nocapture noundef readnone %child, i32* noundef writeonly %addrc, i32* noundef writeonly %sizec) #11 {
entry:
  %tobool.not = icmp eq i32* %addrc, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, i32* %addrc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32* %sizec, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %sizec, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal i64 @of_bus_isa_map(i32* nocapture noundef readonly %addr, i32* nocapture noundef readonly %range, i32 noundef %na, i32 noundef %ns, i32 noundef %pna) #6 {
entry:
  %0 = load i32, i32* %addr, align 4
  %1 = load i32, i32* %range, align 4
  %xor = xor i32 %1, %0
  %and = and i32 %xor, 16777216
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i32, i32* %range, i64 1
  %sub = add i32 %na, -1
  %call = call fastcc i64 @of_read_number(i32* noundef %add.ptr, i32 noundef %sub) #16
  %idx.ext = sext i32 %na to i64
  %add.ptr2 = getelementptr i32, i32* %range, i64 %idx.ext
  %idx.ext3 = sext i32 %pna to i64
  %add.ptr4 = getelementptr i32, i32* %add.ptr2, i64 %idx.ext3
  %call5 = call fastcc i64 @of_read_number(i32* noundef %add.ptr4, i32 noundef %ns) #16
  %add.ptr6 = getelementptr i32, i32* %addr, i64 1
  %call8 = call fastcc i64 @of_read_number(i32* noundef %add.ptr6, i32 noundef %sub) #16
  %cmp = icmp uge i64 %call8, %call
  %add = add i64 %call5, %call
  %cmp9.not = icmp ult i64 %call8, %add
  %or.cond = select i1 %cmp, i1 %cmp9.not, i1 false
  %sub12 = sub i64 %call8, %call
  %spec.select = select i1 %or.cond, i64 %sub12, i64 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ %spec.select, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @of_bus_isa_translate(i32* noundef %addr, i64 noundef %offset, i32 noundef %na) #3 {
entry:
  %add.ptr = getelementptr i32, i32* %addr, i64 1
  %sub = add i32 %na, -1
  %call = call i32 @of_bus_default_translate(i32* noundef %add.ptr, i64 noundef %offset, i32 noundef %sub) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @of_bus_isa_get_flags(i32* nocapture noundef readonly %addr) #12 {
entry:
  %0 = load i32, i32* %addr, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %0) #19
  %and = and i32 %call.i.i, 1
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 512, i32 256
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @of_bus_default_count_cells(%struct.device_node* noundef %dev, i32* noundef writeonly %addrc, i32* noundef writeonly %sizec) #3 {
entry:
  %tobool.not = icmp eq i32* %addrc, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @of_n_addr_cells(%struct.device_node* noundef %dev) #17
  store i32 %call, i32* %addrc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i32* %sizec, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @of_n_size_cells(%struct.device_node* noundef %dev) #17
  store i32 %call3, i32* %sizec, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal i64 @of_bus_default_map(i32* nocapture noundef readonly %addr, i32* nocapture noundef readonly %range, i32 noundef %na, i32 noundef %ns, i32 noundef %pna) #6 {
entry:
  %call = call fastcc i64 @of_read_number(i32* noundef %range, i32 noundef %na) #16
  %idx.ext = sext i32 %na to i64
  %add.ptr = getelementptr i32, i32* %range, i64 %idx.ext
  %idx.ext1 = sext i32 %pna to i64
  %add.ptr2 = getelementptr i32, i32* %add.ptr, i64 %idx.ext1
  %call3 = call fastcc i64 @of_read_number(i32* noundef %add.ptr2, i32 noundef %ns) #16
  %call4 = call fastcc i64 @of_read_number(i32* noundef %addr, i32 noundef %na) #16
  %cmp = icmp uge i64 %call4, %call
  %add = add i64 %call3, %call
  %cmp5.not = icmp ult i64 %call4, %add
  %or.cond = select i1 %cmp, i1 %cmp5.not, i1 false
  %sub = sub i64 %call4, %call
  %retval.0 = select i1 %or.cond, i64 %sub, i64 -1
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @of_bus_default_translate(i32* noundef %addr, i64 noundef %offset, i32 noundef %na) #3 {
entry:
  %call = call fastcc i64 @of_read_number(i32* noundef %addr, i32 noundef %na) #16
  %0 = bitcast i32* %addr to i8*
  %mul = shl i32 %na, 2
  %conv = sext i32 %mul to i64
  %call1 = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %conv) #17
  %add = add i64 %call, %offset
  %cmp = icmp sgt i32 %na, 1
  br i1 %cmp, label %cond.end, label %cond.end49

cond.end:                                         ; preds = %entry
  %shr = lshr i64 %add, 32
  %conv3 = trunc i64 %shr to i32
  %call22 = call fastcc i32 @__fswab32(i32 noundef %conv3) #19
  %sub = add nsw i32 %na, -2
  %1 = zext i32 %sub to i64
  %arrayidx = getelementptr i32, i32* %addr, i64 %1
  store i32 %call22, i32* %arrayidx, align 4
  br label %cond.end49

cond.end49:                                       ; preds = %cond.end, %entry
  %conv24 = trunc i64 %add to i32
  %call48 = call fastcc i32 @__fswab32(i32 noundef %conv24) #19
  %sub51 = add i32 %na, -1
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr i32, i32* %addr, i64 %idxprom52
  store i32 %call48, i32* %arrayidx53, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @of_bus_default_get_flags(i32* nocapture noundef readnone %addr) #0 {
entry:
  ret i32 512
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_node_name_eq(%struct.device_node* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(%struct.device_node* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_size_cells(%struct.device_node* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_bus_n_addr_cells(%struct.device_node* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_bus_n_size_cells(%struct.device_node* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_property_read_string_index(%struct.device_node* noundef %np, i32 noundef %index, i8** noundef %output) unnamed_addr #3 {
entry:
  %call = call i32 @of_property_read_string_helper(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** noundef %output, i64 noundef 1, i32 noundef %index) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @of_translate_ioport(%struct.device_node* noundef %dev, i32* noundef %in_addr, i64 noundef %size) unnamed_addr #3 {
entry:
  %host = alloca %struct.device_node*, align 8
  %0 = bitcast %struct.device_node** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.device_node* null, %struct.device_node** %host, align 8, !annotation !7
  %call = call fastcc i64 @__of_translate_address(%struct.device_node* noundef %dev, %struct.device_node* (%struct.device_node*)* noundef nonnull @of_get_parent, i32* noundef %in_addr, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.device_node** noundef nonnull %host) #16
  %1 = load %struct.device_node*, %struct.device_node** %host, align 8
  %tobool.not = icmp eq %struct.device_node* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i64 0, i32 3
  %call1 = call i64 @logic_pio_trans_hwaddr(%struct.fwnode_handle* noundef %fwnode, i64 noundef %call, i64 noundef %size) #17
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %port.0 = phi i64 [ %call1, %if.then ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i64 %port.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(%struct.device_node* noundef, i8* noundef, i8** noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @logic_pio_trans_hwaddr(%struct.fwnode_handle* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #3 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 32)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #20 = { cold nobuiltin "no-builtins" }

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
!8 = !{%struct.device_node* (%struct.device_node*)* @__of_get_dma_parent, %struct.device_node* (%struct.device_node*)* @of_get_parent}
!9 = !{i64 2153843203}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
