; ModuleID = 'drivers/of/base.c'
source_filename = "drivers/of/base.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
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
%struct.seq_file = type opaque
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.proc_dir_entry = type opaque
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.of_phandle_iterator = type { i8*, i32, %struct.device_node*, i32*, i32*, i32*, i32, i32, %struct.device_node* }
%struct.alias_prop = type { %struct.list_head, i8*, %struct.device_node*, i32, [0 x i8] }

@aliases_lookup = dso_local global %struct.list_head { %struct.list_head* @aliases_lookup, %struct.list_head* @aliases_lookup }, align 8
@of_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @of_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @of_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@devtree_lock = dso_local global %struct.raw_spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@phandle_cache = internal unnamed_addr global [128 x %struct.device_node*] zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"devicetree\00", align 1
@firmware_kobj = external dso_local local_unnamed_addr global %struct.kobject*, align 8
@of_kset = dso_local local_unnamed_addr global %struct.kset* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"\013OF: failed to register existing nodes\0A\00", align 1
@of_root = dso_local local_unnamed_addr global %struct.device_node* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"device-tree\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"/sys/firmware/devicetree/base\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"domain-idle-states\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"cpu-idle-states\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"/:\00", align 1
@of_aliases = dso_local local_unnamed_addr global %struct.device_node* null, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%s %pOF\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"\01c%c%08x\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"\013OF: %pOF: could not find phandle %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"\013OF: %pOF: could not get %s for %pOF\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"\013OF: %pOF: %s = %d found %d\0A\00", align 1
@of_parse_phandle_with_args_map.dummy_mask = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@of_parse_phandle_with_args_map.dummy_pass = internal unnamed_addr constant [17 x i32] zeroinitializer, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"#%s-cells\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%s-map\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"%s-map-mask\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"%s-map-pass-thru\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@of_chosen = dso_local local_unnamed_addr global %struct.device_node* null, align 8
@.str.29 = private unnamed_addr constant [10 x i8] c"/chosen@0\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@of_stdout_options = internal global i8* null, align 8
@of_stdout = dso_local local_unnamed_addr global %struct.device_node* null, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"\014OF: %s: ID %d >= than bitmap field %d\0A\00", align 1
@__func__.of_alias_get_alias_list = private unnamed_addr constant [24 x i8] c"of_alias_get_alias_list\00", align 1
@console_set_on_cmdline = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [9 x i8] c"l2-cache\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"next-level-cache\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"cache-level\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"\013OF: %pOF: Error: Bad %s length: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [76 x i8] c"\013OF: %pOF: Invalid %s translation - %s-mask (0x%x) ignores id-base (0x%x)\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"\016OF: %pOF: no %s translation for id 0x%x on %pOF\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @of_node_name_eq(%struct.device_node* noundef readonly %np, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %0 = load i8*, i8** %full_name, align 8
  %call = call fastcc i8* @kbasename(i8* noundef %0) #17
  %call1 = call i8* @strchrnul(i8* noundef %call, i32 noundef 64) #18
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call i64 @strlen(i8* noundef %name) #18
  %cmp = icmp eq i64 %call2, %sub.ptr.sub
  br i1 %cmp, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.end
  %call3 = call i32 @strncmp(i8* noundef %call, i8* noundef %name, i64 noundef %sub.ptr.sub) #18
  %cmp4 = icmp eq i32 %call3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.rhs, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ %cmp4, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kbasename(i8* noundef %path) unnamed_addr #0 {
entry:
  %call = call i8* @strrchr(i8* noundef %path, i32 noundef 47) #18
  %tobool.not = icmp eq i8* %call, null
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %cond = select i1 %tobool.not, i8* %path, i8* %add.ptr
  ret i8* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchrnul(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @of_node_name_prefix(%struct.device_node* noundef readonly %np, i8* noundef %prefix) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %0 = load i8*, i8** %full_name, align 8
  %call = call fastcc i8* @kbasename(i8* noundef %0) #17
  %call1 = call i64 @strlen(i8* noundef %prefix) #18
  %call2 = call i32 @strncmp(i8* noundef %call, i8* noundef %prefix, i64 noundef %call1) #18
  %cmp = icmp eq i32 %call2, 0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_bus_n_addr_cells(%struct.device_node* noundef %np) local_unnamed_addr #0 {
entry:
  %cells = alloca i32, align 4
  %0 = bitcast i32* %cells to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %cells, align 4, !annotation !7
  %tobool.not4 = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not4, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %np.addr.05 = phi %struct.device_node* [ %2, %for.inc ], [ %np, %entry ]
  %call = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %np.addr.05, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %cells) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %1 = load i32, i32* %cells, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %np.addr.05, i64 0, i32 6
  %2 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %tobool.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 1, %entry ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_value) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_n_addr_cells(%struct.device_node* noundef %np) local_unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 6
  %0 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  %spec.select = select i1 %tobool.not, %struct.device_node* %np, %struct.device_node* %0
  %call = call i32 @of_bus_n_addr_cells(%struct.device_node* noundef %spec.select) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_bus_n_size_cells(%struct.device_node* noundef %np) local_unnamed_addr #0 {
entry:
  %cells = alloca i32, align 4
  %0 = bitcast i32* %cells to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %cells, align 4, !annotation !7
  %tobool.not4 = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not4, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %np.addr.05 = phi %struct.device_node* [ %2, %for.inc ], [ %np, %entry ]
  %call = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %np.addr.05, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %cells) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %1 = load i32, i32* %cells, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %np.addr.05, i64 0, i32 6
  %2 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %tobool.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 1, %entry ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_n_size_cells(%struct.device_node* noundef %np) local_unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 6
  %0 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  %spec.select = select i1 %tobool.not, %struct.device_node* %np, %struct.device_node* %0
  %call = call i32 @of_bus_n_size_cells(%struct.device_node* noundef %spec.select) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__of_phandle_cache_inv_entry(i32 noundef %handle) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i32 %handle, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @of_phandle_cache_hash(i32 noundef %handle) #17
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [128 x %struct.device_node*], [128 x %struct.device_node*]* @phandle_cache, i64 0, i64 %idxprom
  %0 = load %struct.device_node*, %struct.device_node** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool1.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %phandle = getelementptr inbounds %struct.device_node, %struct.device_node* %0, i64 0, i32 1
  %1 = load i32, i32* %phandle, align 8
  %cmp = icmp eq i32 %1, %handle
  br i1 %cmp, label %if.then2, label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  store %struct.device_node* null, %struct.device_node** %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then2, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @of_phandle_cache_hash(i32 noundef %handle) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @hash_32_generic(i32 noundef %handle) #17
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @of_core_init() local_unnamed_addr #5 section ".init.text" {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_mutex) #18
  %0 = load %struct.kobject*, %struct.kobject** @firmware_kobj, align 8
  %call = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.kset_uevent_ops* noundef null, %struct.kobject* noundef %0) #18
  store %struct.kset* %call, %struct.kset** @of_kset, align 8
  %tobool.not = icmp eq %struct.kset* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #18
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef null) #17
  %tobool3.not27 = icmp eq %struct.device_node* %call2, null
  br i1 %tobool3.not27, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %np.028 = phi %struct.device_node* [ %call15, %for.inc ], [ %call2, %if.end ]
  %call4 = call i32 @__of_attach_node_sysfs(%struct.device_node* noundef nonnull %np.028) #18
  %phandle = getelementptr inbounds %struct.device_node, %struct.device_node* %np.028, i64 0, i32 1
  %1 = load i32, i32* %phandle, align 8
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call7 = call fastcc i32 @of_phandle_cache_hash(i32 noundef %1) #17
  %idxprom = zext i32 %call7 to i64
  %arrayidx = getelementptr [128 x %struct.device_node*], [128 x %struct.device_node*]* @phandle_cache, i64 0, i64 %idxprom
  %2 = load %struct.device_node*, %struct.device_node** %arrayidx, align 8
  %tobool8.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool8.not, label %if.then9, label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  store %struct.device_node* %np.028, %struct.device_node** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then9
  %call15 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef nonnull %np.028) #17
  %tobool3.not = icmp eq %struct.device_node* %call15, null
  br i1 %tobool3.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #18
  %3 = load %struct.device_node*, %struct.device_node** @of_root, align 8
  %tobool16.not = icmp eq %struct.device_node* %3, null
  br i1 %tobool16.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %for.end
  %call18 = call %struct.proc_dir_entry* @proc_symlink(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.proc_dir_entry* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)) #18
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then17, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kset* @kset_create_and_add(i8* noundef, %struct.kset_uevent_ops* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef readonly %prev) local_unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.device_node* %prev, null
  br i1 %tobool.not, label %if.end9.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %child = getelementptr inbounds %struct.device_node, %struct.device_node* %prev, i64 0, i32 7
  %0 = load %struct.device_node*, %struct.device_node** %child, align 8
  %tobool1.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool1.not, label %while.cond, label %if.end9

while.cond:                                       ; preds = %if.else, %land.rhs
  %np.0 = phi %struct.device_node* [ %1, %land.rhs ], [ %prev, %if.else ]
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %np.0, i64 0, i32 6
  %1 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %tobool5.not = icmp eq %struct.device_node* %1, null
  %sibling8.phi.trans.insert = getelementptr inbounds %struct.device_node, %struct.device_node* %np.0, i64 0, i32 8
  br i1 %tobool5.not, label %if.end9.sink.split, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.device_node*, %struct.device_node** %sibling8.phi.trans.insert, align 8
  %tobool6.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool6.not, label %while.cond, label %if.end9

if.end9.sink.split:                               ; preds = %while.cond, %entry
  %sibling8.phi.trans.insert.sink = phi %struct.device_node** [ @of_root, %entry ], [ %sibling8.phi.trans.insert, %while.cond ]
  %.pre = load %struct.device_node*, %struct.device_node** %sibling8.phi.trans.insert.sink, align 8
  br label %if.end9

if.end9:                                          ; preds = %land.rhs, %if.end9.sink.split, %if.else
  %np.1 = phi %struct.device_node* [ %0, %if.else ], [ %.pre, %if.end9.sink.split ], [ %2, %land.rhs ]
  ret %struct.device_node* %np.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_attach_node_sysfs(%struct.device_node* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_symlink(i8* noundef, %struct.proc_dir_entry* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %name, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call fastcc %struct.property* @__of_find_property(%struct.device_node* noundef %np, i8* noundef %name, i32* noundef %lenp) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.property* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags() #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.property* @__of_find_property(%struct.device_node* noundef readonly %np, i8* noundef %name, i32* noundef writeonly %lenp) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 4
  %pp.016 = load %struct.property*, %struct.property** %properties, align 8
  %tobool1.not17 = icmp eq %struct.property* %pp.016, null
  br i1 %tobool1.not17, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %pp.018 = phi %struct.property* [ %pp.0, %for.inc ], [ %pp.016, %if.end ]
  %name2 = getelementptr inbounds %struct.property, %struct.property* %pp.018, i64 0, i32 0
  %0 = load i8*, i8** %name2, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef %name) #18
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %tobool4.not = icmp eq i32* %lenp, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.then3
  %length = getelementptr inbounds %struct.property, %struct.property* %pp.018, i64 0, i32 1
  %1 = load i32, i32* %length, align 8
  store i32 %1, i32* %lenp, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.property, %struct.property* %pp.018, i64 0, i32 3
  %pp.0 = load %struct.property*, %struct.property** %next, align 8
  %tobool1.not = icmp eq %struct.property* %pp.0, null
  br i1 %tobool1.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end, %if.then5, %if.then3, %entry
  %retval.0 = phi %struct.property* [ null, %entry ], [ %pp.018, %if.then3 ], [ %pp.018, %if.then5 ], [ null, %if.end ], [ null, %for.inc ]
  ret %struct.property* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #17
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_all_nodes(%struct.device_node* noundef readonly %prev) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef %prev) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.device_node* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__of_get_property(%struct.device_node* noundef %np, i8* noundef %name, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.property* @__of_find_property(%struct.device_node* noundef %np, i8* noundef %name, i32* noundef %lenp) #17
  %tobool.not = icmp eq %struct.property* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %value = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @of_get_property(%struct.device_node* noundef %np, i8* noundef %name, i32* noundef %lenp) local_unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef %name, i32* noundef %lenp) #17
  %tobool.not = icmp eq %struct.property* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %value = getelementptr inbounds %struct.property, %struct.property* %call, i64 0, i32 2
  %0 = load i8*, i8** %value, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i1 @arch_match_cpu_phys_id(i32 noundef %cpu, i64 noundef %phys_id) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %phys_id to i32
  %cmp = icmp eq i32 %conv, %cpu
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i1 @arch_find_n_match_cpu_physical_id(%struct.device_node* noundef %cpun, i32 noundef %cpu, i32* noundef %thread) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__of_find_n_match_cpu_property(%struct.device_node* noundef %cpun, i32 noundef %cpu, i32* noundef %thread) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__of_find_n_match_cpu_property(%struct.device_node* noundef %cpun, i32 noundef %cpu, i32* noundef writeonly %thread) unnamed_addr #0 {
entry:
  %prop_len = alloca i32, align 4
  %0 = bitcast i32* %prop_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %prop_len, align 4, !annotation !7
  %call = call i32 @of_n_addr_cells(%struct.device_node* noundef %cpun) #17
  %call1 = call i8* @of_get_property(%struct.device_node* noundef %cpun, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* noundef nonnull %prop_len) #17
  %1 = bitcast i8* %call1 to i32*
  %tobool = icmp ne i8* %call1, null
  %tobool2 = icmp ne i32 %call, 0
  %or.cond = select i1 %tobool, i1 true, i1 %tobool2
  br i1 %or.cond, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %entry
  %call4 = call i1 @arch_match_cpu_phys_id(i32 noundef %cpu, i64 noundef 0) #17
  br i1 %call4, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true3, %entry
  %or.cond23 = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond23, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %conv = sext i32 %call to i64
  %mul = shl nsw i64 %conv, 2
  %2 = load i32, i32* %prop_len, align 4
  %conv9 = sext i32 %2 to i64
  %div = udiv i64 %conv9, %mul
  %conv10 = trunc i64 %div to i32
  store i32 %conv10, i32* %prop_len, align 4
  %cmp2 = icmp sgt i32 %conv10, 0
  br i1 %cmp2, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end8, %if.end18
  %tid.04 = phi i32 [ %inc, %if.end18 ], [ 0, %if.end8 ]
  %cell.03 = phi i32* [ %add.ptr, %if.end18 ], [ %1, %if.end8 ]
  %call12 = call fastcc i64 @of_read_number(i32* noundef %cell.03, i32 noundef %call) #17
  %call13 = call i1 @arch_match_cpu_phys_id(i32 noundef %cpu, i64 noundef %call12) #17
  br i1 %call13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %for.body
  %tobool15.not = icmp eq i32* %thread, null
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.then14
  store i32 %tid.04, i32* %thread, align 4
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %add.ptr = getelementptr i32, i32* %cell.03, i64 %conv
  %inc = add nuw nsw i32 %tid.04, 1
  %3 = load i32, i32* %prop_len, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end8, %if.then14, %if.then16, %if.end, %land.lhs.true3
  %retval.0 = phi i1 [ true, %land.lhs.true3 ], [ false, %if.end ], [ true, %if.then16 ], [ true, %if.then14 ], [ false, %if.end8 ], [ false, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_cpu_node(i32 noundef %cpu, i32* noundef %thread) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_get_next_cpu_node(%struct.device_node* noundef null) #17
  %cmp.not7 = icmp eq %struct.device_node* %call, null
  br i1 %cmp.not7, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %cpun.08 = phi %struct.device_node* [ %call2, %for.inc ], [ %call, %entry ]
  %call1 = call i1 @arch_find_n_match_cpu_physical_id(%struct.device_node* noundef nonnull %cpun.08, i32 noundef %cpu, i32* noundef %thread) #17
  br i1 %call1, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call %struct.device_node* @of_get_next_cpu_node(%struct.device_node* noundef nonnull %cpun.08) #17
  %cmp.not = icmp eq %struct.device_node* %call2, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %cpun.0.lcssa = phi %struct.device_node* [ null, %entry ], [ null, %for.inc ], [ %cpun.08, %for.body ]
  ret %struct.device_node* %cpun.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_next_cpu_node(%struct.device_node* noundef readonly %prev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %prev, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %entry
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %sibling = getelementptr inbounds %struct.device_node, %struct.device_node* %prev, i64 0, i32 8
  br label %if.end7

if.else:                                          ; preds = %entry
  %call = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #17
  %call142 = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %tobool4.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool4.not, label %for.end, label %if.then5

if.then5:                                         ; preds = %if.else
  %child = getelementptr inbounds %struct.device_node, %struct.device_node* %call, i64 0, i32 7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3
  %child.sink = phi %struct.device_node** [ %child, %if.then5 ], [ %sibling, %if.then3 ]
  %call144 = phi i64 [ %call142, %if.then5 ], [ %call1, %if.then3 ]
  %0 = load %struct.device_node*, %struct.device_node** %child.sink, align 8
  %tobool8.not46 = icmp eq %struct.device_node* %0, null
  br i1 %tobool8.not46, label %for.end, label %for.body

for.body:                                         ; preds = %if.end7, %for.inc
  %next.147 = phi %struct.device_node* [ %1, %for.inc ], [ %0, %if.end7 ]
  %call9 = call i1 @of_node_name_eq(%struct.device_node* noundef nonnull %next.147, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #17
  br i1 %call9, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call11 = call fastcc i1 @__of_node_is_type(%struct.device_node* noundef nonnull %next.147, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #17
  br i1 %call11, label %for.end, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %sibling19 = getelementptr inbounds %struct.device_node, %struct.device_node* %next.147, i64 0, i32 8
  %1 = load %struct.device_node*, %struct.device_node** %sibling19, align 8
  %tobool8.not = icmp eq %struct.device_node* %1, null
  br i1 %tobool8.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %lor.lhs.false, %for.body, %if.else, %if.end7
  %call14453 = phi i64 [ %call144, %if.end7 ], [ %call142, %if.else ], [ %call144, %for.body ], [ %call144, %lor.lhs.false ], [ %call144, %for.inc ]
  %next.1.lcssa = phi %struct.device_node* [ null, %if.end7 ], [ null, %if.else ], [ null, %for.inc ], [ %next.147, %lor.lhs.false ], [ %next.147, %for.body ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call14453) #17
  ret %struct.device_node* %next.1.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_cpu_node_to_id(%struct.device_node* noundef readnone %cpu_node) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %call1 = call fastcc %struct.device_node* @of_cpu_device_node_get(i32 noundef %call) #17
  %cmp2 = icmp eq %struct.device_node* %call1, %cpu_node
  br i1 %cmp2, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ %call, %for.body ], [ -19, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_cpu_device_node_get(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call %struct.device* @get_cpu_device(i32 noundef %cpu) #18
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.device_node* @of_get_cpu_node(i32 noundef %cpu, i32* noundef null) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.device_node* [ %0, %if.end ], [ %call1, %if.then ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_cpu_state_node(%struct.device_node* noundef %cpu_node, i32 noundef %index) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @of_parse_phandle_with_args(%struct.device_node* noundef %cpu_node, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 noundef 0, %struct.of_phandle_args* noundef nonnull %args) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8
  %call1 = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 noundef %index) #17
  %tobool3.not = icmp eq %struct.device_node* %call1, null
  br i1 %tobool3.not, label %if.end5, label %cleanup7

if.end5:                                          ; preds = %if.then, %entry
  %call6 = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %cpu_node, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 noundef %index) #17
  br label %cleanup7

cleanup7:                                         ; preds = %if.then, %if.end5
  %retval.1 = phi %struct.device_node* [ %call6, %if.end5 ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #19
  ret %struct.device_node* %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef %cells_name, i32 noundef %index, %struct.of_phandle_args* noundef %out_args) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp ne i8* %cells_name, null
  %spec.select = sext i1 %tobool.not to i32
  %call = call fastcc i32 @__of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef %cells_name, i32 noundef %spec.select, i32 noundef %index, %struct.of_phandle_args* noundef %out_args) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %np, i8* noundef %phandle_name, i32 noundef %index) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.of_phandle_args, align 8
  %0 = bitcast %struct.of_phandle_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @__of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %phandle_name, i8* noundef null, i32 noundef 0, i32 noundef %index, %struct.of_phandle_args* noundef nonnull %args) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %np3 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi %struct.device_node* [ %1, %if.end2 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #19
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_device_is_compatible(%struct.device_node* noundef %device, i8* noundef %compat) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call fastcc i32 @__of_device_is_compatible(%struct.device_node* noundef %device, i8* noundef %compat, i8* noundef null, i8* noundef null) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__of_device_is_compatible(%struct.device_node* noundef %device, i8* noundef %compat, i8* noundef %type, i8* noundef %name) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %compat, null
  br i1 %tobool.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %compat, align 1
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end11, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc %struct.property* @__of_find_property(%struct.device_node* noundef %device, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32* noundef null) #17
  %call2 = call i8* @of_prop_next_string(%struct.property* noundef %call, i8* noundef null) #18
  %tobool3.not58 = icmp eq i8* %call2, null
  br i1 %tobool3.not58, label %cleanup, label %for.body

for.body:                                         ; preds = %if.then, %for.inc
  %index.060 = phi i32 [ %inc, %for.inc ], [ 0, %if.then ]
  %cp.059 = phi i8* [ %call7, %for.inc ], [ %call2, %if.then ]
  %call4 = call i32 @strcasecmp(i8* noundef nonnull %cp.059, i8* noundef nonnull %compat) #18
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %call7 = call i8* @of_prop_next_string(%struct.property* noundef %call, i8* noundef nonnull %cp.059) #18
  %inc = add i32 %index.060, 1
  %tobool3.not = icmp eq i8* %call7, null
  br i1 %tobool3.not, label %cleanup, label %for.body

for.end:                                          ; preds = %for.body
  %shl.neg = mul i32 %index.060, -4
  %sub = add i32 %shl.neg, 1073741823
  br label %if.end11

if.end11:                                         ; preds = %for.end, %land.lhs.true, %entry
  %score.1 = phi i32 [ %sub, %for.end ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %tobool12.not = icmp eq i8* %type, null
  br i1 %tobool12.not, label %if.end21, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end11
  %1 = load i8, i8* %type, align 1
  %tobool16.not = icmp eq i8 %1, 0
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %land.lhs.true13
  %call18 = call fastcc i1 @__of_node_is_type(%struct.device_node* noundef %device, i8* noundef nonnull %type) #17
  br i1 %call18, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.then17
  %add = add i32 %score.1, 2
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %land.lhs.true13, %if.end11
  %score.2 = phi i32 [ %add, %if.end20 ], [ %score.1, %land.lhs.true13 ], [ %score.1, %if.end11 ]
  %tobool22.not = icmp eq i8* %name, null
  br i1 %tobool22.not, label %cleanup, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end21
  %2 = load i8, i8* %name, align 1
  %tobool26.not = icmp eq i8 %2, 0
  br i1 %tobool26.not, label %cleanup, label %if.then27

if.then27:                                        ; preds = %land.lhs.true23
  %call28 = call i1 @of_node_name_eq(%struct.device_node* noundef %device, i8* noundef nonnull %name) #17
  %inc31 = add i32 %score.2, 1
  %spec.select = select i1 %call28, i32 %inc31, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.then, %if.then27, %if.end21, %land.lhs.true23, %if.then17
  %retval.0 = phi i32 [ 0, %if.then17 ], [ %score.2, %land.lhs.true23 ], [ %score.2, %if.end21 ], [ %spec.select, %if.then27 ], [ 0, %if.then ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_device_compatible_match(%struct.device_node* noundef %device, i8** noundef readonly %compat) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8** %compat, null
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = load i8*, i8** %compat, align 8
  %tobool1.not12 = icmp eq i8* %0, null
  br i1 %tobool1.not12, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %1 = phi i8* [ %2, %while.body ], [ %0, %while.cond.preheader ]
  %score.014 = phi i32 [ %spec.select, %while.body ], [ 0, %while.cond.preheader ]
  %compat.addr.013 = phi i8** [ %incdec.ptr, %while.body ], [ %compat, %while.cond.preheader ]
  %call = call i32 @of_device_is_compatible(%struct.device_node* noundef %device, i8* noundef nonnull %1) #17
  %cmp = icmp ugt i32 %call, %score.014
  %spec.select = select i1 %cmp, i32 %call, i32 %score.014
  %incdec.ptr = getelementptr i8*, i8** %compat.addr.013, i64 1
  %2 = load i8*, i8** %incdec.ptr, align 8
  %tobool1.not = icmp eq i8* %2, null
  br i1 %tobool1.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %while.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %while.cond.preheader ], [ %spec.select, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_machine_is_compatible(i8* noundef %compat) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #17
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @of_device_is_compatible(%struct.device_node* noundef nonnull %call, i8* noundef %compat) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rc.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %rc.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device_node* @of_find_node_by_path(i8* noundef %path) unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_find_node_opts_by_path(i8* noundef %path, i8** noundef null) #17
  ret %struct.device_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @of_device_is_available(%struct.device_node* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call fastcc i1 @__of_device_is_available(%struct.device_node* noundef %device) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret i1 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__of_device_is_available(%struct.device_node* noundef %device) unnamed_addr #0 {
entry:
  %statlen = alloca i32, align 4
  %0 = bitcast i32* %statlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %statlen, align 4, !annotation !7
  %tobool.not = icmp eq %struct.device_node* %device, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @__of_get_property(%struct.device_node* noundef nonnull %device, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i32* noundef nonnull %statlen) #17
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %1 = load i32, i32* %statlen, align 4
  %cmp3 = icmp sgt i32 %1, 0
  br i1 %cmp3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end2
  %call5 = call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #18
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %call7 = call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #18
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false, %if.end2
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %lor.lhs.false, %if.end, %entry, %if.end11
  %retval.0 = phi i1 [ false, %if.end11 ], [ false, %entry ], [ true, %if.end ], [ true, %lor.lhs.false ], [ true, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @of_device_is_big_endian(%struct.device_node* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef %device) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np) unnamed_addr #0 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32* noundef null) #17
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_parent(%struct.device_node* noundef readonly %node) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 6
  %0 = load %struct.device_node*, %struct.device_node** %parent, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body
  %retval.0 = phi %struct.device_node* [ %0, %do.body ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_next_parent(%struct.device_node* noundef readonly %node) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %parent1 = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 6
  %0 = load %struct.device_node*, %struct.device_node** %parent1, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body
  %retval.0 = phi %struct.device_node* [ %0, %do.body ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_next_child(%struct.device_node* noundef readonly %node, %struct.device_node* noundef readonly %prev) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call fastcc %struct.device_node* @__of_get_next_child(%struct.device_node* noundef %node, %struct.device_node* noundef %prev) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.device_node* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.device_node* @__of_get_next_child(%struct.device_node* noundef readonly %node, %struct.device_node* noundef readonly %prev) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.device_node* %prev, null
  %sibling = getelementptr inbounds %struct.device_node, %struct.device_node* %prev, i64 0, i32 8
  %child = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 7
  %cond.in = select i1 %tobool1.not, %struct.device_node** %child, %struct.device_node** %sibling
  %cond = load %struct.device_node*, %struct.device_node** %cond.in, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.device_node* [ %cond, %if.end ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node* noundef readonly %node, %struct.device_node* noundef readonly %prev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %tobool1.not = icmp eq %struct.device_node* %prev, null
  %sibling = getelementptr inbounds %struct.device_node, %struct.device_node* %prev, i64 0, i32 8
  %child = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 7
  %cond.in = select i1 %tobool1.not, %struct.device_node** %child, %struct.device_node** %sibling
  %next.029 = load %struct.device_node*, %struct.device_node** %cond.in, align 8
  %tobool2.not30 = icmp eq %struct.device_node* %next.029, null
  br i1 %tobool2.not30, label %for.end, label %for.body

for.body:                                         ; preds = %do.body, %for.inc
  %next.031 = phi %struct.device_node* [ %next.0, %for.inc ], [ %next.029, %do.body ]
  %call3 = call fastcc i1 @__of_device_is_available(%struct.device_node* noundef nonnull %next.031) #17
  br i1 %call3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %sibling10 = getelementptr inbounds %struct.device_node, %struct.device_node* %next.031, i64 0, i32 8
  %next.0 = load %struct.device_node*, %struct.device_node** %sibling10, align 8
  %tobool2.not = icmp eq %struct.device_node* %next.0, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %do.body
  %next.0.lcssa = phi %struct.device_node* [ null, %do.body ], [ %next.031, %for.body ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi %struct.device_node* [ %next.0.lcssa, %for.end ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__of_node_is_type(%struct.device_node* noundef %np, i8* noundef %type) unnamed_addr #0 {
entry:
  %call = call i8* @__of_get_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32* noundef null) #17
  %tobool = icmp ne %struct.device_node* %np, null
  %tobool1 = icmp ne i8* %call, null
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  %tobool3 = icmp ne i8* %type, null
  %or.cond6 = and i1 %tobool3, %or.cond
  br i1 %or.cond6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call4 = call i32 @strcmp(i8* noundef nonnull %call, i8* noundef nonnull %type) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %tobool5.not, %land.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_compatible_child(%struct.device_node* noundef %parent, i8* noundef %compatible) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %parent, %struct.device_node* noundef null) #17
  %cmp.not8 = icmp eq %struct.device_node* %call, null
  br i1 %cmp.not8, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %child.09 = phi %struct.device_node* [ %call2, %for.inc ], [ %call, %entry ]
  %call1 = call i32 @of_device_is_compatible(%struct.device_node* noundef nonnull %child.09, i8* noundef %compatible) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %call2 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %parent, %struct.device_node* noundef nonnull %child.09) #17
  %cmp.not = icmp eq %struct.device_node* %call2, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %child.0.lcssa = phi %struct.device_node* [ null, %entry ], [ %child.09, %for.body ], [ null, %for.inc ]
  ret %struct.device_node* %child.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node* noundef %node, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %node, %struct.device_node* noundef null) #17
  %cmp.not8 = icmp eq %struct.device_node* %call, null
  br i1 %cmp.not8, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %child.09 = phi %struct.device_node* [ %call2, %for.inc ], [ %call, %entry ]
  %call1 = call i1 @of_node_name_eq(%struct.device_node* noundef nonnull %child.09, i8* noundef %name) #17
  br i1 %call1, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call %struct.device_node* @of_get_next_child(%struct.device_node* noundef %node, %struct.device_node* noundef nonnull %child.09) #17
  %cmp.not = icmp eq %struct.device_node* %call2, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %child.0.lcssa = phi %struct.device_node* [ null, %entry ], [ %child.09, %for.body ], [ null, %for.inc ]
  ret %struct.device_node* %child.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @__of_find_node_by_path(%struct.device_node* noundef readonly %parent, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %call = call i64 @strcspn(i8* noundef %path, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #18
  %conv = trunc i64 %call to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %cleanup15, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.device_node* @__of_get_next_child(%struct.device_node* noundef %parent, %struct.device_node* noundef null) #17
  %cmp.not31 = icmp eq %struct.device_node* %call1, null
  br i1 %cmp.not31, label %cleanup15, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %sext = shl i64 %call, 32
  %conv4 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %child.032 = phi %struct.device_node* [ %call1, %for.body.lr.ph ], [ %call14, %for.inc ]
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %child.032, i64 0, i32 2
  %0 = load i8*, i8** %full_name, align 8
  %call3 = call fastcc i8* @kbasename(i8* noundef %0) #17
  %call5 = call i32 @strncmp(i8* noundef %path, i8* noundef %call3, i64 noundef %conv4) #18
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call8 = call i64 @strlen(i8* noundef %call3) #18
  %cmp10 = icmp eq i64 %call8, %conv4
  br i1 %cmp10, label %cleanup15, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %call14 = call fastcc %struct.device_node* @__of_get_next_child(%struct.device_node* noundef %parent, %struct.device_node* noundef nonnull %child.032) #17
  %cmp.not = icmp eq %struct.device_node* %call14, null
  br i1 %cmp.not, label %cleanup15, label %for.body

cleanup15:                                        ; preds = %for.inc, %land.lhs.true, %if.end, %entry
  %retval.2 = phi %struct.device_node* [ null, %entry ], [ null, %if.end ], [ null, %for.inc ], [ %child.032, %land.lhs.true ]
  ret %struct.device_node* %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strcspn(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @__of_find_node_by_full_path(%struct.device_node* noundef %node, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %call = call i8* @strchr(i8* noundef %path, i32 noundef 58) #18
  %tobool4.not = icmp ne i8* %call, null
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %path.addr.0 = phi i8* [ %path, %entry ], [ %call3, %while.body ]
  %node.addr.0 = phi %struct.device_node* [ %node, %entry ], [ %call2, %while.body ]
  %tobool.not = icmp eq %struct.device_node* %node.addr.0, null
  br i1 %tobool.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %0 = load i8, i8* %path.addr.0, align 1
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, i8* %path.addr.0, i64 1
  %call2 = call %struct.device_node* @__of_find_node_by_path(%struct.device_node* noundef nonnull %node.addr.0, i8* noundef %incdec.ptr) #17
  %call3 = call i8* @strchrnul(i8* noundef %incdec.ptr, i32 noundef 47) #18
  %cmp5 = icmp ult i8* %call, %call3
  %or.cond = select i1 %tobool4.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %while.end, label %while.cond

while.end:                                        ; preds = %while.body, %while.cond, %land.rhs
  %node.addr.1 = phi %struct.device_node* [ %call2, %while.body ], [ %node.addr.0, %land.rhs ], [ null, %while.cond ]
  ret %struct.device_node* %node.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_node_opts_by_path(i8* noundef %path, i8** noundef writeonly %opts) local_unnamed_addr #0 {
entry:
  %call = call i8* @strchr(i8* noundef %path, i32 noundef 58) #18
  %tobool.not = icmp eq i8** %opts, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i8* %call, null
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %cond = select i1 %tobool1.not, i8* null, i8* %add.ptr
  store i8* %cond, i8** %opts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @strcmp(i8* noundef %path, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #18
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %0 = load %struct.device_node*, %struct.device_node** @of_root, align 8
  br label %cleanup51

if.end5:                                          ; preds = %if.end
  %1 = load i8, i8* %path, align 1
  %cmp6.not = icmp eq i8 %1, 47
  br i1 %cmp6.not, label %do.body.thread, label %if.then8

do.body.thread:                                   ; preds = %if.end5
  %call3791 = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %2 = load %struct.device_node*, %struct.device_node** @of_root, align 8
  br label %if.end41

if.then8:                                         ; preds = %if.end5
  %tobool9.not = icmp eq i8* %call, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i8* @strchrnul(i8* noundef %path, i32 noundef 47) #18
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  %p.0 = phi i8* [ %call, %if.then8 ], [ %call11, %if.then10 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %path to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load %struct.device_node*, %struct.device_node** @of_aliases, align 8
  %tobool14.not = icmp eq %struct.device_node* %3, null
  br i1 %tobool14.not, label %cleanup51, label %if.end16

if.end16:                                         ; preds = %if.end12
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i64 0, i32 4
  %pp.098 = load %struct.property*, %struct.property** %properties, align 8
  %cmp17.not99 = icmp eq %struct.property* %pp.098, null
  br i1 %cmp17.not99, label %cleanup51, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end16
  %sext = shl i64 %sub.ptr.sub, 32
  %conv20 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %pp.0100 = phi %struct.property* [ %pp.098, %for.body.lr.ph ], [ %pp.0, %for.inc ]
  %name = getelementptr inbounds %struct.property, %struct.property* %pp.0100, i64 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call19 = call i64 @strlen(i8* noundef %4) #18
  %cmp21 = icmp eq i64 %call19, %conv20
  br i1 %cmp21, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8*, i8** %name, align 8
  %call25 = call i32 @strncmp(i8* noundef %5, i8* noundef %path, i64 noundef %conv20) #18
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.property, %struct.property* %pp.0100, i64 0, i32 3
  %pp.0 = load %struct.property*, %struct.property** %next, align 8
  %cmp17.not = icmp eq %struct.property* %pp.0, null
  br i1 %cmp17.not, label %cleanup51, label %for.body

cleanup:                                          ; preds = %land.lhs.true
  %value = getelementptr inbounds %struct.property, %struct.property* %pp.0100, i64 0, i32 2
  %6 = load i8*, i8** %value, align 8
  %call28 = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef %6) #17
  %tobool30.not = icmp eq %struct.device_node* %call28, null
  br i1 %tobool30.not, label %cleanup51, label %do.body

do.body:                                          ; preds = %cleanup
  %call37 = call fastcc i64 @__raw_spin_lock_irqsave() #17
  br label %if.end41

if.end41:                                         ; preds = %do.body, %do.body.thread
  %call3795 = phi i64 [ %call37, %do.body ], [ %call3791, %do.body.thread ]
  %path.addr.193 = phi i8* [ %p.0, %do.body ], [ %path, %do.body.thread ]
  %np.3 = phi %struct.device_node* [ %call28, %do.body ], [ %2, %do.body.thread ]
  %call42 = call %struct.device_node* @__of_find_node_by_full_path(%struct.device_node* noundef %np.3, i8* noundef %path.addr.193) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call3795) #17
  br label %cleanup51

cleanup51:                                        ; preds = %for.inc, %if.end16, %if.end12, %cleanup, %if.end41, %if.then3
  %retval.1 = phi %struct.device_node* [ %0, %if.then3 ], [ %call42, %if.end41 ], [ null, %cleanup ], [ null, %if.end12 ], [ null, %if.end16 ], [ null, %for.inc ]
  ret %struct.device_node* %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_node_by_name(%struct.device_node* noundef %from, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef %from) #17
  %tobool.not22 = icmp eq %struct.device_node* %call1, null
  br i1 %tobool.not22, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %np.023 = phi %struct.device_node* [ %call6, %for.inc ], [ %call1, %entry ]
  %call2 = call i1 @of_node_name_eq(%struct.device_node* noundef nonnull %np.023, i8* noundef %name) #17
  br i1 %call2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %call6 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef nonnull %np.023) #17
  %tobool.not = icmp eq %struct.device_node* %call6, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %np.0.lcssa = phi %struct.device_node* [ null, %entry ], [ %np.023, %for.body ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.device_node* %np.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_node_by_type(%struct.device_node* noundef %from, i8* noundef %type) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef %from) #17
  %tobool.not22 = icmp eq %struct.device_node* %call1, null
  br i1 %tobool.not22, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %np.023 = phi %struct.device_node* [ %call6, %for.inc ], [ %call1, %entry ]
  %call2 = call fastcc i1 @__of_node_is_type(%struct.device_node* noundef nonnull %np.023, i8* noundef %type) #17
  br i1 %call2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %call6 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef nonnull %np.023) #17
  %tobool.not = icmp eq %struct.device_node* %call6, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %np.0.lcssa = phi %struct.device_node* [ null, %entry ], [ %np.023, %for.body ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.device_node* %np.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_compatible_node(%struct.device_node* noundef %from, i8* noundef %type, i8* noundef %compatible) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef %from) #17
  %tobool.not22 = icmp eq %struct.device_node* %call1, null
  br i1 %tobool.not22, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %np.023 = phi %struct.device_node* [ %call6, %for.inc ], [ %call1, %entry ]
  %call2 = call fastcc i32 @__of_device_is_compatible(%struct.device_node* noundef nonnull %np.023, i8* noundef %compatible, i8* noundef %type, i8* noundef null) #17
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %call6 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef nonnull %np.023) #17
  %tobool.not = icmp eq %struct.device_node* %call6, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %np.0.lcssa = phi %struct.device_node* [ null, %entry ], [ %np.023, %for.body ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.device_node* %np.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_node_with_property(%struct.device_node* noundef readonly %from, i8* noundef %prop_name) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef %from) #17
  %tobool.not36 = icmp eq %struct.device_node* %call1, null
  br i1 %tobool.not36, label %out, label %for.body

for.body:                                         ; preds = %entry, %for.inc9
  %np.037 = phi %struct.device_node* [ %call10, %for.inc9 ], [ %call1, %entry ]
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %np.037, i64 0, i32 4
  %pp.033 = load %struct.property*, %struct.property** %properties, align 8
  %tobool3.not34 = icmp eq %struct.property* %pp.033, null
  br i1 %tobool3.not34, label %for.inc9, label %for.body4

for.cond2:                                        ; preds = %for.body4
  %next = getelementptr inbounds %struct.property, %struct.property* %pp.035, i64 0, i32 3
  %pp.0 = load %struct.property*, %struct.property** %next, align 8
  %tobool3.not = icmp eq %struct.property* %pp.0, null
  br i1 %tobool3.not, label %for.inc9, label %for.body4

for.body4:                                        ; preds = %for.body, %for.cond2
  %pp.035 = phi %struct.property* [ %pp.0, %for.cond2 ], [ %pp.033, %for.body ]
  %name = getelementptr inbounds %struct.property, %struct.property* %pp.035, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %call5 = call i32 @strcmp(i8* noundef %0, i8* noundef %prop_name) #18
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %out, label %for.cond2

for.inc9:                                         ; preds = %for.cond2, %for.body
  %call10 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef nonnull %np.037) #17
  %tobool.not = icmp eq %struct.device_node* %call10, null
  br i1 %tobool.not, label %out, label %for.body

out:                                              ; preds = %for.inc9, %for.body4, %entry
  %np.032 = phi %struct.device_node* [ null, %entry ], [ %np.037, %for.body4 ], [ null, %for.inc9 ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.device_node* %np.032
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef %matches, %struct.device_node* noundef %node) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call fastcc %struct.of_device_id* @__of_match_node(%struct.of_device_id* noundef %matches, %struct.device_node* noundef %node) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.of_device_id* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.of_device_id* @__of_match_node(%struct.of_device_id* noundef %matches, %struct.device_node* noundef %node) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.of_device_id* %matches, null
  br i1 %tobool.not, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry, %for.body
  %matches.addr.0 = phi %struct.of_device_id* [ %incdec.ptr, %for.body ], [ %matches, %entry ]
  %best_match.0 = phi %struct.of_device_id* [ %spec.select, %for.body ], [ null, %entry ]
  %best_score.0 = phi i32 [ %spec.select31, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %matches.addr.0, i64 0, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 8
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %for.body

lor.lhs.false:                                    ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %matches.addr.0, i64 0, i32 1, i64 0
  %1 = load i8, i8* %arrayidx2, align 8
  %tobool4.not = icmp eq i8 %1, 0
  br i1 %tobool4.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %matches.addr.0, i64 0, i32 2, i64 0
  %2 = load i8, i8* %arrayidx5, align 8
  %tobool7.not = icmp eq i8 %2, 0
  br i1 %tobool7.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond, %lor.lhs.false, %lor.rhs
  %arraydecay = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %matches.addr.0, i64 0, i32 2, i64 0
  %arraydecay10 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %matches.addr.0, i64 0, i32 1, i64 0
  %call = call fastcc i32 @__of_device_is_compatible(%struct.device_node* noundef %node, i8* noundef %arraydecay, i8* noundef %arraydecay10, i8* noundef %arrayidx) #17
  %cmp = icmp sgt i32 %call, %best_score.0
  %spec.select = select i1 %cmp, %struct.of_device_id* %matches.addr.0, %struct.of_device_id* %best_match.0
  %spec.select31 = select i1 %cmp, i32 %call, i32 %best_score.0
  %incdec.ptr = getelementptr %struct.of_device_id, %struct.of_device_id* %matches.addr.0, i64 1
  br label %for.cond

cleanup:                                          ; preds = %lor.rhs, %entry
  %retval.0 = phi %struct.of_device_id* [ null, %entry ], [ %best_match.0, %lor.rhs ]
  ret %struct.of_device_id* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* noundef %from, %struct.of_device_id* noundef %matches, %struct.of_device_id** noundef writeonly %match) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.of_device_id** %match, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  store %struct.of_device_id* null, %struct.of_device_id** %match, align 8
  br label %do.body

do.body:                                          ; preds = %entry, %if.then
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef %from) #17
  %tobool2.not35 = icmp eq %struct.device_node* %call1, null
  br i1 %tobool2.not35, label %for.end, label %for.body

for.body:                                         ; preds = %do.body, %for.inc
  %np.036 = phi %struct.device_node* [ %call12, %for.inc ], [ %call1, %do.body ]
  %call3 = call fastcc %struct.of_device_id* @__of_match_node(%struct.of_device_id* noundef %matches, %struct.device_node* noundef nonnull %np.036) #17
  %tobool4.not = icmp eq %struct.of_device_id* %call3, null
  br i1 %tobool4.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body
  br i1 %tobool.not, label %for.end, label %if.then9

if.then9:                                         ; preds = %if.then7
  store %struct.of_device_id* %call3, %struct.of_device_id** %match, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %call12 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef nonnull %np.036) #17
  %tobool2.not = icmp eq %struct.device_node* %call12, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %do.body, %if.then7, %if.then9
  %np.034 = phi %struct.device_node* [ %np.036, %if.then7 ], [ %np.036, %if.then9 ], [ null, %do.body ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret %struct.device_node* %np.034
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_modalias_node(%struct.device_node* noundef %node, i8* noundef %modalias, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %cplen = alloca i32, align 4
  %0 = bitcast i32* %cplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %cplen, align 4, !annotation !7
  %call = call i8* @of_get_property(%struct.device_node* noundef %node, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32* noundef nonnull %cplen) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i64 @strlen(i8* noundef nonnull %call) #18
  %1 = load i32, i32* %cplen, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ugt i64 %call1, %conv
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i8* @strchr(i8* noundef nonnull %call, i32 noundef 44) #18
  %tobool4.not = icmp eq i8* %call3, null
  %add.ptr = getelementptr i8, i8* %call3, i64 1
  %cond = select i1 %tobool4.not, i8* %call, i8* %add.ptr
  %conv5 = sext i32 %len to i64
  %call6 = call i64 @strlcpy(i8* noundef %modalias, i8* noundef %cond, i64 noundef %conv5) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %lor.lhs.false ], [ -19, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_node_by_phandle(i32 noundef %handle) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %handle, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @of_phandle_cache_hash(i32 noundef %handle) #17
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [128 x %struct.device_node*], [128 x %struct.device_node*]* @phandle_cache, i64 0, i64 %idxprom
  %0 = load %struct.device_node*, %struct.device_node** %arrayidx, align 8
  %tobool2.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool2.not, label %if.then12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %phandle = getelementptr inbounds %struct.device_node, %struct.device_node* %0, i64 0, i32 1
  %1 = load i32, i32* %phandle, align 8
  %cmp5 = icmp eq i32 %1, %handle
  br i1 %cmp5, label %if.end26, label %if.then12

if.then12:                                        ; preds = %if.end, %land.lhs.true
  %call13 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef null) #17
  %tobool14.not57 = icmp eq %struct.device_node* %call13, null
  br i1 %tobool14.not57, label %if.end26, label %for.body

for.body:                                         ; preds = %if.then12, %for.inc
  %np.158 = phi %struct.device_node* [ %call25, %for.inc ], [ %call13, %if.then12 ]
  %phandle15 = getelementptr inbounds %struct.device_node, %struct.device_node* %np.158, i64 0, i32 1
  %2 = load i32, i32* %phandle15, align 8
  %cmp16 = icmp eq i32 %2, %handle
  br i1 %cmp16, label %land.lhs.true18, label %for.inc

land.lhs.true18:                                  ; preds = %for.body
  %call19 = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef nonnull %np.158) #17
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %for.inc

if.then21:                                        ; preds = %land.lhs.true18
  store %struct.device_node* %np.158, %struct.device_node** %arrayidx, align 8
  br label %if.end26

for.inc:                                          ; preds = %for.body, %land.lhs.true18
  %call25 = call %struct.device_node* @__of_find_all_nodes(%struct.device_node* noundef nonnull %np.158) #17
  %tobool14.not = icmp eq %struct.device_node* %call25, null
  br i1 %tobool14.not, label %if.end26, label %for.body

if.end26:                                         ; preds = %for.inc, %if.then12, %land.lhs.true, %if.then21
  %np.2 = phi %struct.device_node* [ %np.158, %if.then21 ], [ %0, %land.lhs.true ], [ null, %if.then12 ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end26
  %retval.0 = phi %struct.device_node* [ %np.2, %if.end26 ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @of_node_check_flag(%struct.device_node* noundef %n) unnamed_addr #11 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  %0 = load volatile i64, i64* %_flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 2
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @of_print_phandle_args(i8* noundef %msg, %struct.of_phandle_args* nocapture noundef readonly %args) local_unnamed_addr #0 {
entry:
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 0
  %0 = load %struct.device_node*, %struct.device_node** %np, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* noundef %msg, %struct.device_node* noundef %0) #20
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 1
  %1 = load i32, i32* %args_count, align 8
  %cmp19 = icmp sgt i32 %1, 0
  br i1 %cmp19, label %for.body, label %do.end10

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %tobool.not = icmp eq i64 %indvars.iv, 0
  %conv5 = select i1 %tobool.not, i32 58, i32 44
  %arrayidx = getelementptr %struct.of_phandle_args, %struct.of_phandle_args* %args, i64 0, i32 2, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv5, i32 noundef %2) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, i32* %args_count, align 8
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %do.end10

do.end10:                                         ; preds = %for.body, %entry
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_phandle_iterator_init(%struct.of_phandle_iterator* noundef %it, %struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef %cells_name, i32 noundef %cell_count) local_unnamed_addr #0 {
entry:
  %size = alloca i32, align 4
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %size, align 4, !annotation !7
  %1 = bitcast %struct.of_phandle_iterator* %it to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 64) #18
  %cmp = icmp sgt i32 %cell_count, -1
  %tobool = icmp ne i8* %cells_name, null
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i8* @of_get_property(%struct.device_node* noundef %np, i8* noundef %list_name, i32* noundef nonnull %size) #17
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = bitcast i8* %call1 to i32*
  %cells_name5 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 0
  store i8* %cells_name, i8** %cells_name5, align 8
  %cell_count6 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 1
  store i32 %cell_count, i32* %cell_count6, align 8
  %parent = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 2
  store %struct.device_node* %np, %struct.device_node** %parent, align 8
  %3 = load i32, i32* %size, align 4
  %conv = sext i32 %3 to i64
  %div = lshr i64 %conv, 2
  %add.ptr = getelementptr i32, i32* %2, i64 %div
  %list_end = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 3
  store i32* %add.ptr, i32** %list_end, align 8
  %phandle_end = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 4
  %4 = bitcast i32** %phandle_end to i8**
  store i8* %call1, i8** %4, align 8
  %cur = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 5
  %5 = bitcast i32** %cur to i8**
  store i8* %call1, i8** %5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry ], [ -2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_phandle_iterator_next(%struct.of_phandle_iterator* nocapture noundef %it) local_unnamed_addr #0 {
entry:
  %count = alloca i32, align 4
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %count, align 4
  %node = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 8
  %1 = load %struct.device_node*, %struct.device_node** %node, align 8
  %tobool.not = icmp eq %struct.device_node* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %node, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cur = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 5
  %2 = load i32*, i32** %cur, align 8
  %tobool3.not = icmp eq i32* %2, null
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %phandle_end = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 4
  %3 = load i32*, i32** %phandle_end, align 8
  %list_end = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 3
  %4 = load i32*, i32** %list_end, align 8
  %cmp.not = icmp ult i32* %3, %4
  br i1 %cmp.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr i32, i32* %3, i64 1
  store i32* %incdec.ptr, i32** %cur, align 8
  %5 = load i32, i32* %3, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %5) #22
  %phandle = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 7
  store i32 %call.i.i, i32* %phandle, align 4
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %if.end57, label %if.then11

if.then11:                                        ; preds = %if.end5
  %call13 = call %struct.device_node* @of_find_node_by_phandle(i32 noundef %call.i.i) #17
  store %struct.device_node* %call13, %struct.device_node** %node, align 8
  %cells_name = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 0
  %6 = load i8*, i8** %cells_name, align 8
  %tobool15.not = icmp eq i8* %6, null
  br i1 %tobool15.not, label %if.else41, label %if.then16

if.then16:                                        ; preds = %if.then11
  %tobool18.not = icmp eq %struct.device_node* %call13, null
  br i1 %tobool18.not, label %do.end, label %if.end22

do.end:                                           ; preds = %if.then16
  %parent = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 2
  %7 = load %struct.device_node*, %struct.device_node** %parent, align 8
  %8 = load i32, i32* %phandle, align 4
  %call21 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), %struct.device_node* noundef %7, i32 noundef %8) #20
  br label %err

if.end22:                                         ; preds = %if.then16
  %call25 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %call13, i8* noundef nonnull %6, i32* noundef nonnull %count) #17
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end22.if.end43_crit_edge, label %if.then27

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  %.pre = load i32, i32* %count, align 4
  br label %if.end43

if.then27:                                        ; preds = %if.end22
  %cell_count = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 1
  %9 = load i32, i32* %cell_count, align 8
  %cmp28 = icmp sgt i32 %9, -1
  br i1 %cmp28, label %if.then29, label %do.end33

if.then29:                                        ; preds = %if.then27
  store i32 %9, i32* %count, align 4
  br label %if.end43

do.end33:                                         ; preds = %if.then27
  %parent35 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 2
  %10 = load %struct.device_node*, %struct.device_node** %parent35, align 8
  %11 = load i8*, i8** %cells_name, align 8
  %12 = load %struct.device_node*, %struct.device_node** %node, align 8
  %call38 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), %struct.device_node* noundef %10, i8* noundef %11, %struct.device_node* noundef %12) #20
  br label %err

if.else41:                                        ; preds = %if.then11
  %cell_count42 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 1
  %13 = load i32, i32* %cell_count42, align 8
  store i32 %13, i32* %count, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end22.if.end43_crit_edge, %if.then29, %if.else41
  %14 = phi i32 [ %.pre, %if.end22.if.end43_crit_edge ], [ %9, %if.then29 ], [ %13, %if.else41 ]
  %15 = load i32*, i32** %cur, align 8
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr i32, i32* %15, i64 %idx.ext
  %16 = load i32*, i32** %list_end, align 8
  %cmp46 = icmp ugt i32* %add.ptr, %16
  br i1 %cmp46, label %do.end50, label %if.end57

do.end50:                                         ; preds = %if.end43
  %parent52 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 2
  %17 = load %struct.device_node*, %struct.device_node** %parent52, align 8
  %18 = load i8*, i8** %cells_name, align 8
  %cell_count54 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 1
  %19 = load i32, i32* %cell_count54, align 8
  %call55 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), %struct.device_node* noundef %17, i8* noundef %18, i32 noundef %14, i32 noundef %19) #20
  br label %err

if.end57:                                         ; preds = %if.end5, %if.end43
  %20 = phi i32 [ %14, %if.end43 ], [ 0, %if.end5 ]
  %21 = phi i32* [ %15, %if.end43 ], [ %incdec.ptr, %if.end5 ]
  %idx.ext59 = zext i32 %20 to i64
  %add.ptr60 = getelementptr i32, i32* %21, i64 %idx.ext59
  store i32* %add.ptr60, i32** %phandle_end, align 8
  %cur_count = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 6
  store i32 %20, i32* %cur_count, align 8
  br label %cleanup

err:                                              ; preds = %do.end50, %do.end33, %do.end
  %22 = load %struct.device_node*, %struct.device_node** %node, align 8
  %tobool63.not = icmp eq %struct.device_node* %22, null
  br i1 %tobool63.not, label %cleanup, label %if.then64

if.then64:                                        ; preds = %err
  store %struct.device_node* null, %struct.device_node** %node, align 8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then64, %if.end, %lor.lhs.false, %if.end57
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -2, %lor.lhs.false ], [ -2, %if.end ], [ -22, %if.then64 ], [ -22, %err ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_phandle_iterator_args(%struct.of_phandle_iterator* nocapture noundef %it, i32* nocapture noundef writeonly %args, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %cur_count = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 6
  %0 = load i32, i32* %cur_count, align 8
  %cmp = icmp sgt i32 %0, %size
  br i1 %cmp, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/base.c\22; .popsection; .long 14472b - 14470b; .short 1360; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %spec.select = phi i32 [ %size, %if.then ], [ %0, %entry ]
  %cmp1729 = icmp sgt i32 %spec.select, 0
  br i1 %cmp1729, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %cur = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 5
  %wide.trip.count = zext i32 %spec.select to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load i32*, i32** %cur, align 8
  %incdec.ptr = getelementptr i32, i32* %1, i64 1
  store i32* %incdec.ptr, i32** %cur, align 8
  %2 = load i32, i32* %1, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %2) #22
  %arrayidx = getelementptr i32, i32* %args, i64 %indvars.iv
  store i32 %call.i.i, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef %cells_name, i32 noundef %cell_count, i32 noundef %index, %struct.of_phandle_args* noundef writeonly %out_args) unnamed_addr #0 {
entry:
  %it = alloca %struct.of_phandle_iterator, align 8
  %0 = bitcast %struct.of_phandle_iterator* %it to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %call = call i32 @of_phandle_iterator_init(%struct.of_phandle_iterator* noundef nonnull %it, %struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef %cells_name, i32 noundef %cell_count) #17
  %call1 = call i32 @of_phandle_iterator_next(%struct.of_phandle_iterator* noundef nonnull %it) #17
  %cmp24 = icmp eq i32 %call1, 0
  br i1 %cmp24, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %if.end10
  %cur_index.025 = phi i32 [ %inc, %if.end10 ], [ 0, %entry ]
  %cmp2 = icmp eq i32 %cur_index.025, %index
  br i1 %cmp2, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body
  %phandle = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 7
  %1 = load i32, i32* %phandle, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %tobool4.not = icmp eq %struct.of_phandle_args* %out_args, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_args, i64 0, i32 2, i64 0
  %call6 = call i32 @of_phandle_iterator_args(%struct.of_phandle_iterator* noundef nonnull %it, i32* noundef %arraydecay, i32 noundef 16) #17
  %node = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %it, i64 0, i32 8
  %2 = load %struct.device_node*, %struct.device_node** %node, align 8
  %np7 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_args, i64 0, i32 0
  store %struct.device_node* %2, %struct.device_node** %np7, align 8
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_args, i64 0, i32 1
  store i32 %call6, i32* %args_count, align 8
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %inc = add i32 %cur_index.025, 1
  %call11 = call i32 @of_phandle_iterator_next(%struct.of_phandle_iterator* noundef nonnull %it) #17
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end10, %entry, %if.then, %if.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.end ], [ -2, %if.then ], [ %call1, %entry ], [ %call11, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_parse_phandle_with_args_map(%struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef %stem_name, i32 noundef %index, %struct.of_phandle_args* noundef %out_args) local_unnamed_addr #0 {
entry:
  %initial_match_array = alloca [16 x i32], align 4
  %map_len = alloca i32, align 4
  %list_size = alloca i32, align 4
  %new_size = alloca i32, align 4
  %0 = bitcast [16 x i32]* %initial_match_array to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 0
  %1 = bitcast i32* %map_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #19
  store i32 0, i32* %map_len, align 4, !annotation !7
  %2 = bitcast i32* %list_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #19
  store i32 0, i32* %list_size, align 4, !annotation !7
  %3 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #19
  store i32 0, i32* %new_size, align 4, !annotation !7
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* noundef %stem_name) #18
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef %stem_name) #18
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %free, label %if.end6

if.end6:                                          ; preds = %if.end2
  %call7 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* noundef %stem_name) #18
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %free, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* noundef %stem_name) #18
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %free, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @__of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef nonnull %call, i32 noundef -1, i32 noundef %index, %struct.of_phandle_args* noundef %out_args) #17
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %free

if.end18:                                         ; preds = %if.end14
  %np19 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_args, i64 0, i32 0
  %4 = load %struct.device_node*, %struct.device_node** %np19, align 8
  %call20 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %4, i8* noundef nonnull %call, i32* noundef nonnull %list_size) #17
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %free, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end18
  %5 = load i32, i32* %list_size, align 4
  %cmp24344.not = icmp eq i32 %5, 0
  br i1 %cmp24344.not, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.body, %for.cond.preheader
  %tobool50.not361 = icmp eq %struct.device_node* %4, null
  br i1 %tobool50.not361, label %free, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %out_args, i64 0, i32 1
  %call51390 = call i8* @of_get_property(%struct.device_node* noundef nonnull %4, i8* noundef nonnull %call3, i32* noundef nonnull %map_len) #17
  %tobool52.not391 = icmp eq i8* %call51390, null
  br i1 %tobool52.not391, label %free, label %if.end54

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0345 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom = sext i32 %i.0345 to i64
  %arrayidx = getelementptr %struct.of_phandle_args, %struct.of_phandle_args* %out_args, i64 0, i32 2, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call47 = call fastcc i32 @__fswab32(i32 noundef %6) #22
  %arrayidx49 = getelementptr [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 %idxprom
  store i32 %call47, i32* %arrayidx49, align 4
  %inc = add nuw i32 %i.0345, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body

if.end54:                                         ; preds = %while.body.lr.ph, %for.end207
  %call51395 = phi i8* [ %call51, %for.end207 ], [ %call51390, %while.body.lr.ph ]
  %cur.0362394 = phi %struct.device_node* [ %call81, %for.end207 ], [ %4, %while.body.lr.ph ]
  %match_array.0364393 = phi i32* [ %add.ptr131, %for.end207 ], [ %arraydecay, %while.body.lr.ph ]
  %ret.0365392 = phi i32 [ 0, %for.end207 ], [ -22, %while.body.lr.ph ]
  %7 = load i32, i32* %map_len, align 4
  %conv55 = ashr i32 %7, 2
  store i32 %conv55, i32* %map_len, align 4
  %call56 = call i8* @of_get_property(%struct.device_node* noundef nonnull %cur.0362394, i8* noundef nonnull %call7, i32* noundef null) #17
  %8 = bitcast i8* %call56 to i32*
  %tobool57.not = icmp eq i8* %call56, null
  %spec.store.select = select i1 %tobool57.not, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @of_parse_phandle_with_args_map.dummy_mask, i64 0, i64 0), i32* %8
  %9 = load i32, i32* %map_len, align 4
  %10 = load i32, i32* %list_size, align 4
  %add351 = add i32 %10, 1
  %cmp61352 = icmp ugt i32 %9, %add351
  br i1 %cmp61352, label %for.cond65.preheader.preheader, label %free

for.cond65.preheader.preheader:                   ; preds = %if.end54
  %11 = bitcast i8* %call51395 to i32*
  br label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.cond65.preheader.preheader, %if.end122
  %12 = phi i32 [ %sub, %if.end122 ], [ %9, %for.cond65.preheader.preheader ]
  %13 = phi i32 [ %24, %if.end122 ], [ %10, %for.cond65.preheader.preheader ]
  %ret.1354 = phi i32 [ 0, %if.end122 ], [ %ret.0365392, %for.cond65.preheader.preheader ]
  %map.0353 = phi i32* [ %add.ptr, %if.end122 ], [ %11, %for.cond65.preheader.preheader ]
  %cmp66346.not = icmp eq i32 %13, 0
  br i1 %cmp66346.not, label %__be32_to_cpup.exit, label %for.body68.preheader

for.body68.preheader:                             ; preds = %for.cond65.preheader
  %14 = add i32 %13, -1
  %15 = zext i32 %14 to i64
  br label %for.body68

for.body68:                                       ; preds = %for.body68.preheader, %for.body68
  %16 = phi i32 [ %dec, %for.body68 ], [ %12, %for.body68.preheader ]
  %match.1349 = phi i32 [ %and76, %for.body68 ], [ 1, %for.body68.preheader ]
  %i.1348 = phi i32 [ %inc78, %for.body68 ], [ 0, %for.body68.preheader ]
  %map.1347 = phi i32* [ %incdec.ptr, %for.body68 ], [ %map.0353, %for.body68.preheader ]
  %idxprom69 = sext i32 %i.1348 to i64
  %arrayidx70 = getelementptr i32, i32* %match_array.0364393, i64 %idxprom69
  %17 = load i32, i32* %arrayidx70, align 4
  %incdec.ptr = getelementptr i32, i32* %map.1347, i64 1
  %18 = load i32, i32* %map.1347, align 4
  %xor = xor i32 %18, %17
  %arrayidx72 = getelementptr i32, i32* %spec.store.select, i64 %idxprom69
  %19 = load i32, i32* %arrayidx72, align 4
  %and73 = and i32 %xor, %19
  %tobool74.not = icmp eq i32 %and73, 0
  %lnot.ext = zext i1 %tobool74.not to i32
  %and76 = and i32 %match.1349, %lnot.ext
  %inc78 = add nuw i32 %i.1348, 1
  %dec = add i32 %16, -1
  store i32 %dec, i32* %map_len, align 4
  %exitcond376.not = icmp eq i32 %inc78, %13
  br i1 %exitcond376.not, label %for.end79.loopexit, label %for.body68

for.end79.loopexit:                               ; preds = %for.body68
  %scevgep = getelementptr i32, i32* %map.0353, i64 1
  %scevgep375 = getelementptr i32, i32* %scevgep, i64 %15
  br label %__be32_to_cpup.exit

__be32_to_cpup.exit:                              ; preds = %for.end79.loopexit, %for.cond65.preheader
  %map.1.lcssa = phi i32* [ %map.0353, %for.cond65.preheader ], [ %scevgep375, %for.end79.loopexit ]
  %match.1.lcssa = phi i32 [ 1, %for.cond65.preheader ], [ %and76, %for.end79.loopexit ]
  %20 = load i32, i32* %map.1.lcssa, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %20) #22
  %call81 = call %struct.device_node* @of_find_node_by_phandle(i32 noundef %call.i.i) #17
  %incdec.ptr82 = getelementptr i32, i32* %map.1.lcssa, i64 1
  %21 = load i32, i32* %map_len, align 4
  %dec83 = add i32 %21, -1
  store i32 %dec83, i32* %map_len, align 4
  %tobool84.not = icmp eq %struct.device_node* %call81, null
  br i1 %tobool84.not, label %free, label %if.end86

if.end86:                                         ; preds = %__be32_to_cpup.exit
  %call87 = call i1 @of_device_is_available(%struct.device_node* noundef nonnull %call81) #17
  %call90 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %call81, i8* noundef nonnull %call, i32* noundef nonnull %new_size) #17
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %free

if.end93:                                         ; preds = %if.end86
  %22 = load i32, i32* %new_size, align 4
  %cmp94 = icmp ugt i32 %22, 16
  br i1 %cmp94, label %if.then107, label %if.end118, !prof !10

if.then107:                                       ; preds = %if.end93
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/base.c\22; .popsection; .long 14472b - 14470b; .short 1629; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !12
  br label %free

if.end118:                                        ; preds = %if.end93
  %23 = load i32, i32* %map_len, align 4
  %cmp119 = icmp ult i32 %23, %22
  br i1 %cmp119, label %free, label %if.end122

if.end122:                                        ; preds = %if.end118
  %idx.ext = zext i32 %22 to i64
  %add.ptr = getelementptr i32, i32* %incdec.ptr82, i64 %idx.ext
  %sub = sub i32 %23, %22
  store i32 %sub, i32* %map_len, align 4
  %24 = load i32, i32* %list_size, align 4
  %add = add i32 %24, 1
  %cmp61 = icmp ugt i32 %sub, %add
  %tobool63.not369 = icmp eq i32 %match.1.lcssa, 0
  %not.call87 = xor i1 %call87, true
  %tobool63.not = select i1 %not.call87, i1 true, i1 %tobool63.not369
  %25 = select i1 %cmp61, i1 %tobool63.not, i1 false
  br i1 %25, label %for.cond65.preheader, label %while.end

while.end:                                        ; preds = %if.end122
  br i1 %tobool63.not, label %free, label %if.end125

if.end125:                                        ; preds = %while.end
  %call126 = call i8* @of_get_property(%struct.device_node* noundef nonnull %cur.0362394, i8* noundef nonnull %call11, i32* noundef null) #17
  %26 = bitcast i8* %call126 to i32*
  %tobool127.not = icmp eq i8* %call126, null
  %spec.store.select226 = select i1 %tobool127.not, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @of_parse_phandle_with_args_map.dummy_pass, i64 0, i64 0), i32* %26
  %27 = load i32, i32* %new_size, align 4
  %idx.ext130 = zext i32 %27 to i64
  %idx.neg = sub nsw i64 0, %idx.ext130
  %add.ptr131 = getelementptr i32, i32* %add.ptr, i64 %idx.neg
  %cmp133359.not = icmp eq i32 %27, 0
  br i1 %cmp133359.not, label %for.end207, label %for.body135.lr.ph

for.body135.lr.ph:                                ; preds = %if.end125
  %28 = load i32, i32* %list_size, align 4
  br label %for.body135

for.body135:                                      ; preds = %for.body135.lr.ph, %cond.end200
  %i.2360 = phi i32 [ 0, %for.body135.lr.ph ], [ %inc206, %cond.end200 ]
  %idx.ext139 = sext i32 %i.2360 to i64
  %add.ptr140 = getelementptr i32, i32* %add.ptr131, i64 %idx.ext139
  %29 = load i32, i32* %add.ptr140, align 4
  %cmp141 = icmp ult i32 %i.2360, %28
  br i1 %cmp141, label %if.then143, label %cond.end200

if.then143:                                       ; preds = %for.body135
  %arrayidx145 = getelementptr i32, i32* %spec.store.select226, i64 %idx.ext139
  %30 = load i32, i32* %arrayidx145, align 4
  %neg = xor i32 %30, -1
  %and146 = and i32 %29, %neg
  %arrayidx149 = getelementptr %struct.of_phandle_args, %struct.of_phandle_args* %out_args, i64 0, i32 2, i64 %idx.ext139
  %31 = load i32, i32* %arrayidx149, align 4
  %call178 = call fastcc i32 @__fswab32(i32 noundef %31) #22
  %and183 = and i32 %call178, %30
  %or184 = or i32 %and183, %and146
  br label %cond.end200

cond.end200:                                      ; preds = %if.then143, %for.body135
  %val.0 = phi i32 [ %or184, %if.then143 ], [ %29, %for.body135 ]
  %call199 = call fastcc i32 @__fswab32(i32 noundef %val.0) #22
  %arrayidx204 = getelementptr %struct.of_phandle_args, %struct.of_phandle_args* %out_args, i64 0, i32 2, i64 %idx.ext139
  store i32 %call199, i32* %arrayidx204, align 4
  %inc206 = add nuw i32 %i.2360, 1
  %exitcond377.not = icmp eq i32 %inc206, %27
  br i1 %exitcond377.not, label %for.end207, label %for.body135

for.end207:                                       ; preds = %cond.end200, %if.end125
  store i32 %27, i32* %list_size, align 4
  store i32 %27, i32* %args_count, align 8
  store %struct.device_node* %call81, %struct.device_node** %np19, align 8
  %call51 = call i8* @of_get_property(%struct.device_node* noundef nonnull %call81, i8* noundef nonnull %call3, i32* noundef nonnull %map_len) #17
  %tobool52.not = icmp eq i8* %call51, null
  br i1 %tobool52.not, label %free, label %if.end54

free:                                             ; preds = %while.end, %for.end207, %if.end54, %__be32_to_cpup.exit, %if.end86, %if.end118, %while.body.lr.ph, %while.cond.preheader, %if.end18, %if.then107, %if.end14, %if.end10, %if.end6, %if.end2
  %mask_name.0 = phi i8* [ %call7, %if.end14 ], [ %call7, %if.end10 ], [ null, %if.end6 ], [ null, %if.end2 ], [ %call7, %if.then107 ], [ %call7, %if.end18 ], [ %call7, %while.cond.preheader ], [ %call7, %while.body.lr.ph ], [ %call7, %if.end118 ], [ %call7, %if.end86 ], [ %call7, %__be32_to_cpup.exit ], [ %call7, %if.end54 ], [ %call7, %for.end207 ], [ %call7, %while.end ]
  %pass_name.0 = phi i8* [ %call11, %if.end14 ], [ null, %if.end10 ], [ null, %if.end6 ], [ null, %if.end2 ], [ %call11, %if.then107 ], [ %call11, %if.end18 ], [ %call11, %while.cond.preheader ], [ %call11, %while.body.lr.ph ], [ %call11, %if.end118 ], [ %call11, %if.end86 ], [ %call11, %__be32_to_cpup.exit ], [ %call11, %if.end54 ], [ %call11, %for.end207 ], [ %call11, %while.end ]
  %ret.3 = phi i32 [ %call15, %if.end14 ], [ -12, %if.end10 ], [ -12, %if.end6 ], [ -12, %if.end2 ], [ 0, %if.then107 ], [ %call20, %if.end18 ], [ -22, %while.cond.preheader ], [ 0, %while.body.lr.ph ], [ %ret.1354, %__be32_to_cpup.exit ], [ %call90, %if.end86 ], [ 0, %if.end118 ], [ 0, %while.end ], [ 0, %for.end207 ], [ %ret.0365392, %if.end54 ]
  call void @kfree(i8* noundef %mask_name.0) #18
  call void @kfree(i8* noundef %call3) #18
  call void @kfree(i8* noundef nonnull %call) #18
  call void @kfree(i8* noundef %pass_name.0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %free
  %retval.0 = phi i32 [ %ret.3, %free ], [ -22, %entry ], [ -12, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #12 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node* noundef %np, i8* noundef %list_name, i32 noundef %cell_count, i32 noundef %index, %struct.of_phandle_args* noundef %out_args) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @__of_parse_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef null, i32 noundef %cell_count, i32 noundef %index, %struct.of_phandle_args* noundef %out_args) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_count_phandle_with_args(%struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef %cells_name) local_unnamed_addr #0 {
entry:
  %it = alloca %struct.of_phandle_iterator, align 8
  %size = alloca i32, align 4
  %0 = bitcast %struct.of_phandle_iterator* %it to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %tobool.not = icmp eq i8* %cells_name, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #19
  store i32 0, i32* %size, align 4, !annotation !7
  %call = call i8* @of_get_property(%struct.device_node* noundef %np, i8* noundef %list_name, i32* noundef nonnull %size) #17
  %tobool1.not = icmp eq i8* %call, null
  %2 = load i32, i32* %size, align 4
  %conv3 = ashr i32 %2, 2
  %retval.0 = select i1 %tobool1.not, i32 -2, i32 %conv3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #19
  br label %cleanup16

if.end5:                                          ; preds = %entry
  %call6 = call i32 @of_phandle_iterator_init(%struct.of_phandle_iterator* noundef nonnull %it, %struct.device_node* noundef %np, i8* noundef %list_name, i8* noundef nonnull %cells_name, i32 noundef -1) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %while.cond, label %cleanup16

while.cond:                                       ; preds = %if.end5, %while.body
  %cur_index.0 = phi i32 [ %add, %while.body ], [ 0, %if.end5 ]
  %call10 = call i32 @of_phandle_iterator_next(%struct.of_phandle_iterator* noundef nonnull %it) #17
  switch i32 %call10, label %cleanup16.loopexit [
    i32 0, label %while.body
    i32 -2, label %cleanup16
  ]

while.body:                                       ; preds = %while.cond
  %add = add i32 %cur_index.0, 1
  br label %while.cond

cleanup16.loopexit:                               ; preds = %while.cond
  br label %cleanup16

cleanup16:                                        ; preds = %while.cond, %cleanup16.loopexit, %if.end5, %if.then
  %retval.1 = phi i32 [ %retval.0, %if.then ], [ %call6, %if.end5 ], [ %call10, %cleanup16.loopexit ], [ %cur_index.0, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #19
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__of_add_property(%struct.device_node* nocapture noundef %np, %struct.property* noundef %prop) local_unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 3
  store %struct.property* null, %struct.property** %next1, align 8
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 4
  %0 = load %struct.property*, %struct.property** %properties, align 8
  %tobool.not11 = icmp eq %struct.property* %0, null
  br i1 %tobool.not11, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %name = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %1 = phi %struct.property* [ %0, %while.body.lr.ph ], [ %5, %if.end ]
  %next.012 = phi %struct.property** [ %properties, %while.body.lr.ph ], [ %next3, %if.end ]
  %2 = load i8*, i8** %name, align 8
  %name2 = getelementptr inbounds %struct.property, %struct.property* %1, i64 0, i32 0
  %3 = load i8*, i8** %name2, align 8
  %call = call i32 @strcmp(i8* noundef %2, i8* noundef %3) #18
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %4 = load %struct.property*, %struct.property** %next.012, align 8
  %next3 = getelementptr inbounds %struct.property, %struct.property* %4, i64 0, i32 3
  %5 = load %struct.property*, %struct.property** %next3, align 8
  %tobool.not = icmp eq %struct.property* %5, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %next.0.lcssa = phi %struct.property** [ %properties, %entry ], [ %next3, %if.end ]
  store %struct.property* %prop, %struct.property** %next.0.lcssa, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.body, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ -17, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_add_property(%struct.device_node* noundef %np, %struct.property* noundef %prop) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_mutex) #18
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call i32 @__of_add_property(%struct.device_node* noundef %np, %struct.property* noundef %prop) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %call10 = call i32 @__of_add_property_sysfs(%struct.device_node* noundef %np, %struct.property* noundef %prop) #18
  br label %if.end14

if.end14:                                         ; preds = %entry, %if.then
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #18
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_add_property_sysfs(%struct.device_node* noundef, %struct.property* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @__of_remove_property(%struct.device_node* nocapture noundef %np, %struct.property* noundef %prop) local_unnamed_addr #13 {
entry:
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %next.0 = phi %struct.property** [ %properties, %entry ], [ %next1, %for.cond ]
  %0 = load %struct.property*, %struct.property** %next.0, align 8
  %tobool.not = icmp eq %struct.property* %0, null
  %cmp = icmp eq %struct.property* %0, %prop
  %or.cond = or i1 %tobool.not, %cmp
  %next1 = getelementptr inbounds %struct.property, %struct.property* %0, i64 0, i32 3
  br i1 %or.cond, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %for.end
  %next5 = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 3
  %1 = load %struct.property*, %struct.property** %next5, align 8
  store %struct.property* %1, %struct.property** %next.0, align 8
  %deadprops = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 5
  %2 = load %struct.property*, %struct.property** %deadprops, align 8
  store %struct.property* %2, %struct.property** %next5, align 8
  store %struct.property* %prop, %struct.property** %deadprops, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_remove_property(%struct.device_node* noundef %np, %struct.property* noundef %prop) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.property* %prop, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_mutex) #18
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call i32 @__of_remove_property(%struct.device_node* noundef %np, %struct.property* noundef nonnull %prop) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  %tobool10.not = icmp eq i32 %call1, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup.sink.split

if.then11:                                        ; preds = %if.end
  call void @__of_remove_property_sysfs(%struct.device_node* noundef %np, %struct.property* noundef nonnull %prop) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then11
  %retval.0.ph = phi i32 [ 0, %if.then11 ], [ %call1, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ -19, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__of_remove_property_sysfs(%struct.device_node* noundef, %struct.property* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__of_update_property(%struct.device_node* nocapture noundef %np, %struct.property* noundef %newprop, %struct.property** nocapture noundef writeonly %oldpropp) local_unnamed_addr #0 {
entry:
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 4
  %0 = load %struct.property*, %struct.property** %properties, align 8
  %tobool.not32 = icmp eq %struct.property* %0, null
  br i1 %tobool.not32, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %name1 = getelementptr inbounds %struct.property, %struct.property* %newprop, i64 0, i32 0
  br label %for.body

for.end.thread:                                   ; preds = %for.inc, %entry
  %next.0.lcssa = phi %struct.property** [ %properties, %entry ], [ %next2, %for.inc ]
  store %struct.property* null, %struct.property** %oldpropp, align 8
  br label %if.else

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi %struct.property* [ %0, %for.body.lr.ph ], [ %4, %for.inc ]
  %next.033 = phi %struct.property** [ %properties, %for.body.lr.ph ], [ %next2, %for.inc ]
  %name = getelementptr inbounds %struct.property, %struct.property* %1, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %3 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* noundef %2, i8* noundef %3) #18
  %cmp = icmp eq i32 %call, 0
  %.pr = load %struct.property*, %struct.property** %next.033, align 8
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %next2 = getelementptr inbounds %struct.property, %struct.property* %.pr, i64 0, i32 3
  %4 = load %struct.property*, %struct.property** %next2, align 8
  %tobool.not = icmp eq %struct.property* %4, null
  br i1 %tobool.not, label %for.end.thread, label %for.body

for.end:                                          ; preds = %for.body
  store %struct.property* %.pr, %struct.property** %oldpropp, align 8
  %tobool3.not = icmp eq %struct.property* %.pr, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.end
  %next5 = getelementptr inbounds %struct.property, %struct.property* %.pr, i64 0, i32 3
  %5 = load %struct.property*, %struct.property** %next5, align 8
  %next6 = getelementptr inbounds %struct.property, %struct.property* %newprop, i64 0, i32 3
  store %struct.property* %5, %struct.property** %next6, align 8
  store %struct.property* %newprop, %struct.property** %next.033, align 8
  %deadprops = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 5
  %6 = load %struct.property*, %struct.property** %deadprops, align 8
  store %struct.property* %6, %struct.property** %next5, align 8
  store %struct.property* %.pr, %struct.property** %deadprops, align 8
  br label %if.end10

if.else:                                          ; preds = %for.end.thread, %for.end
  %next.031 = phi %struct.property** [ %next.0.lcssa, %for.end.thread ], [ %next.033, %for.end ]
  %next9 = getelementptr inbounds %struct.property, %struct.property* %newprop, i64 0, i32 3
  store %struct.property* null, %struct.property** %next9, align 8
  store %struct.property* %newprop, %struct.property** %next.031, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_update_property(%struct.device_node* noundef %np, %struct.property* noundef %newprop) local_unnamed_addr #0 {
entry:
  %oldprop = alloca %struct.property*, align 8
  %0 = bitcast %struct.property** %oldprop to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store %struct.property* null, %struct.property** %oldprop, align 8, !annotation !7
  %name = getelementptr inbounds %struct.property, %struct.property* %newprop, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_mutex) #18
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call1 = call i32 @__of_update_property(%struct.device_node* noundef %np, %struct.property* noundef %newprop, %struct.property** noundef nonnull %oldprop) #17
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  %2 = load %struct.property*, %struct.property** %oldprop, align 8
  call void @__of_update_property_sysfs(%struct.device_node* noundef %np, %struct.property* noundef %newprop, %struct.property* noundef %2) #18
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__of_update_property_sysfs(%struct.device_node* noundef, %struct.property* noundef, %struct.property* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @of_alias_scan(i8* (i64, i64)* nocapture noundef readonly %dt_alloc) local_unnamed_addr #0 {
entry:
  %name = alloca i8*, align 8
  %id = alloca i32, align 4
  %call = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)) #17
  store %struct.device_node* %call, %struct.device_node** @of_aliases, align 8
  %call1 = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #17
  store %struct.device_node* %call1, %struct.device_node** @of_chosen, align 8
  %cmp = icmp eq %struct.device_node* %call1, null
  br i1 %cmp, label %if.end, label %if.then3

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #17
  store %struct.device_node* %call2, %struct.device_node** @of_chosen, align 8
  %tobool.not = icmp eq %struct.device_node* %call2, null
  br i1 %tobool.not, label %if.end13, label %if.then3

if.then3:                                         ; preds = %entry, %if.end
  %0 = phi %struct.device_node* [ %call2, %if.end ], [ %call1, %entry ]
  %1 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #19
  store i8* null, i8** %name, align 8
  %call4 = call i32 @of_property_read_string(%struct.device_node* noundef nonnull %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8** noundef nonnull %name) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then3
  %2 = load %struct.device_node*, %struct.device_node** @of_chosen, align 8
  %call7 = call i32 @of_property_read_string(%struct.device_node* noundef %2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i8** noundef nonnull %name) #18
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3
  %3 = load i8*, i8** %name, align 8
  %tobool9.not = icmp eq i8* %3, null
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = call %struct.device_node* @of_find_node_opts_by_path(i8* noundef nonnull %3, i8** noundef nonnull @of_stdout_options) #17
  store %struct.device_node* %call11, %struct.device_node** @of_stdout, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %4 = load %struct.device_node*, %struct.device_node** @of_aliases, align 8
  %tobool14.not = icmp eq %struct.device_node* %4, null
  br i1 %tobool14.not, label %cleanup62, label %if.end16

if.end16:                                         ; preds = %if.end13
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %4, i64 0, i32 4
  %pp.095 = load %struct.property*, %struct.property** %properties, align 8
  %cmp17.not96 = icmp eq %struct.property* %pp.095, null
  br i1 %cmp17.not96, label %cleanup62, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end16
  %5 = bitcast i32* %id to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %pp.097 = phi %struct.property* [ %pp.095, %for.body.lr.ph ], [ %pp.0, %cleanup ]
  %name18 = getelementptr inbounds %struct.property, %struct.property* %pp.097, i64 0, i32 0
  %6 = load i8*, i8** %name18, align 8
  %call19 = call i64 @strlen(i8* noundef %6) #18
  %add.ptr = getelementptr i8, i8* %6, i64 %call19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #19
  store i32 0, i32* %id, align 4, !annotation !7
  %7 = load i8*, i8** %name18, align 8
  %call21 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0)) #18
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i8*, i8** %name18, align 8
  %call24 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #18
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %9 = load i8*, i8** %name18, align 8
  %call28 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0)) #18
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false26
  %value = getelementptr inbounds %struct.property, %struct.property* %pp.097, i64 0, i32 2
  %10 = load i8*, i8** %value, align 8
  %call32 = call fastcc %struct.device_node* @of_find_node_by_path(i8* noundef %10) #17
  %tobool33.not = icmp eq %struct.device_node* %call32, null
  br i1 %tobool33.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %if.end31, %while.cond
  %end.0 = phi i8* [ %add.ptr36, %while.cond ], [ %add.ptr, %if.end31 ]
  %add.ptr36 = getelementptr i8, i8* %end.0, i64 -1
  %11 = load i8, i8* %add.ptr36, align 1
  %conv = zext i8 %11 to i32
  %call37 = call fastcc i32 @isdigit(i32 noundef %conv) #17
  %tobool38 = icmp ne i32 %call37, 0
  %cmp39 = icmp ugt i8* %end.0, %6
  %12 = select i1 %tobool38, i1 %cmp39, i1 false
  br i1 %12, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %sub.ptr.lhs.cast = ptrtoint i8* %end.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv41 = trunc i64 %sub.ptr.sub to i32
  %call42 = call i32 @kstrtoint(i8* noundef %end.0, i32 noundef 10, i32* noundef nonnull %id) #18
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %cleanup, label %if.end46

if.end46:                                         ; preds = %while.end
  %sext = shl i64 %sub.ptr.sub, 32
  %conv47 = ashr exact i64 %sext, 32
  %add48 = add nsw i64 %conv47, 41
  %call49 = call i8* %dt_alloc(i64 noundef %add48, i64 noundef 8) #18
  %tobool50.not = icmp eq i8* %call49, null
  br i1 %tobool50.not, label %cleanup, label %if.end52

if.end52:                                         ; preds = %if.end46
  %13 = bitcast i8* %call49 to %struct.alias_prop*
  %call56 = call i8* @memset(i8* noundef nonnull %call49, i32 noundef 0, i64 noundef %add48) #18
  %alias = getelementptr inbounds i8, i8* %call49, i64 16
  %14 = bitcast i8* %alias to i8**
  store i8* %6, i8** %14, align 8
  %15 = load i32, i32* %id, align 4
  call fastcc void @of_alias_add(%struct.alias_prop* noundef nonnull %13, %struct.device_node* noundef nonnull %call32, i32 noundef %15, i8* noundef %6, i32 noundef %conv41) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %while.end, %if.end31, %for.body, %lor.lhs.false, %lor.lhs.false26, %if.end52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #19
  %next = getelementptr inbounds %struct.property, %struct.property* %pp.097, i64 0, i32 3
  %pp.0 = load %struct.property*, %struct.property** %next, align 8
  %cmp17.not = icmp eq %struct.property* %pp.0, null
  br i1 %cmp17.not, label %cleanup62, label %for.body

cleanup62:                                        ; preds = %cleanup, %if.end16, %if.end13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(%struct.device_node* noundef, i8* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #4 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_alias_add(%struct.alias_prop* noundef %ap, %struct.device_node* noundef %np, i32 noundef %id, i8* noundef %stem, i32 noundef %stem_len) unnamed_addr #0 {
entry:
  %np1 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %ap, i64 0, i32 2
  store %struct.device_node* %np, %struct.device_node** %np1, align 8
  %id2 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %ap, i64 0, i32 3
  store i32 %id, i32* %id2, align 8
  %arraydecay = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %ap, i64 0, i32 4, i64 0
  %conv = sext i32 %stem_len to i64
  %call = call i8* @strncpy(i8* noundef %arraydecay, i8* noundef %stem, i64 noundef %conv) #18
  %arrayidx = getelementptr %struct.alias_prop, %struct.alias_prop* %ap, i64 0, i32 4, i64 %conv
  store i8 0, i8* %arrayidx, align 1
  %link = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %ap, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %link) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_alias_get_id(%struct.device_node* noundef readnone %np, i8* noundef %stem) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_mutex) #18
  %app.024 = load %struct.alias_prop*, %struct.alias_prop** bitcast (%struct.list_head* @aliases_lookup to %struct.alias_prop**), align 8
  %link25 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.024, i64 0, i32 0
  %cmp.not26 = icmp eq %struct.list_head* %link25, @aliases_lookup
  br i1 %cmp.not26, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %app.027 = phi %struct.alias_prop* [ %app.0, %for.inc ], [ %app.024, %entry ]
  %arraydecay = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.027, i64 0, i32 4, i64 0
  %call = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %stem) #18
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %np3 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.027, i64 0, i32 2
  %0 = load %struct.device_node*, %struct.device_node** %np3, align 8
  %cmp4 = icmp eq %struct.device_node* %0, %np
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %if.end
  %id6 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.027, i64 0, i32 3
  %1 = load i32, i32* %id6, align 8
  br label %for.end

for.inc:                                          ; preds = %if.end, %for.body
  %2 = bitcast %struct.alias_prop* %app.027 to %struct.alias_prop**
  %app.0 = load %struct.alias_prop*, %struct.alias_prop** %2, align 8
  %link = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @aliases_lookup
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.then5
  %id.0 = phi i32 [ %1, %if.then5 ], [ -19, %entry ], [ -19, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #18
  ret i32 %id.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_alias_get_alias_list(%struct.of_device_id* noundef %matches, i8* noundef %stem, i64* noundef %bitmap, i32 noundef %nbits) local_unnamed_addr #0 {
entry:
  call fastcc void @bitmap_zero(i64* noundef %bitmap, i32 noundef %nbits) #17
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_mutex) #18
  %app.040 = load %struct.alias_prop*, %struct.alias_prop** bitcast (%struct.list_head* @aliases_lookup to %struct.alias_prop**), align 8
  %link41 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.040, i64 0, i32 0
  %cmp.not42 = icmp eq %struct.list_head* %link41, @aliases_lookup
  br i1 %cmp.not42, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %app.044 = phi %struct.alias_prop* [ %app.0, %for.inc ], [ %app.040, %entry ]
  %ret.043 = phi i32 [ %ret.1, %for.inc ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.044, i64 0, i32 4, i64 0
  %call = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %stem) #18
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %np = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.044, i64 0, i32 2
  %0 = load %struct.device_node*, %struct.device_node** %np, align 8
  %call6 = call %struct.of_device_id* @of_match_node(%struct.of_device_id* noundef %matches, %struct.device_node* noundef %0) #17
  %tobool.not = icmp eq %struct.of_device_id* %call6, null
  br i1 %tobool.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.044, i64 0, i32 3
  %1 = load i32, i32* %id, align 8
  %cmp9.not = icmp ult i32 %1, %nbits
  br i1 %cmp9.not, label %if.else, label %do.end13

do.end13:                                         ; preds = %if.then7
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.of_alias_get_alias_list, i64 0, i64 0), i32 noundef %1, i32 noundef %nbits) #20
  br label %for.inc

if.else:                                          ; preds = %if.then7
  %conv = sext i32 %1 to i64
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %bitmap) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end, %if.else, %do.end13
  %ret.1 = phi i32 [ -75, %do.end13 ], [ %ret.043, %if.else ], [ %ret.043, %if.end ], [ %ret.043, %for.body ]
  %2 = bitcast %struct.alias_prop* %app.044 to %struct.alias_prop**
  %app.0 = load %struct.alias_prop*, %struct.alias_prop** %2, align 8
  %link = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @aliases_lookup
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %ret.0.lcssa = phi i32 [ 0, %entry ], [ %ret.1, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #18
  ret i32 %ret.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst, i32 noundef %nbits) unnamed_addr #0 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %0 = lshr i64 %sub, 3
  %conv1 = and i64 %0, 1073741816
  %1 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %conv1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_alias_get_highest_id(i8* noundef %stem) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_mutex) #18
  %app.024 = load %struct.alias_prop*, %struct.alias_prop** bitcast (%struct.list_head* @aliases_lookup to %struct.alias_prop**), align 8
  %link25 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.024, i64 0, i32 0
  %cmp.not26 = icmp eq %struct.list_head* %link25, @aliases_lookup
  br i1 %cmp.not26, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %app.028 = phi %struct.alias_prop* [ %app.0, %for.inc ], [ %app.024, %entry ]
  %id.027 = phi i32 [ %id.1, %for.inc ], [ -19, %entry ]
  %arraydecay = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.028, i64 0, i32 4, i64 0
  %call = call i32 @strcmp(i8* noundef %arraydecay, i8* noundef %stem) #18
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %id3 = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.028, i64 0, i32 3
  %0 = load i32, i32* %id3, align 8
  %cmp4 = icmp sgt i32 %0, %id.027
  %spec.select = select i1 %cmp4, i32 %0, i32 %id.027
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %id.1 = phi i32 [ %id.027, %for.body ], [ %spec.select, %if.end ]
  %1 = bitcast %struct.alias_prop* %app.028 to %struct.alias_prop**
  %app.0 = load %struct.alias_prop*, %struct.alias_prop** %1, align 8
  %link = getelementptr inbounds %struct.alias_prop, %struct.alias_prop* %app.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @aliases_lookup
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %id.0.lcssa = phi i32 [ -19, %entry ], [ %id.1, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_mutex) #18
  ret i32 %id.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @of_console_check(%struct.device_node* noundef readnone %dn, i8* noundef %name, i32 noundef %index) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %dn, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.device_node*, %struct.device_node** @of_stdout, align 8
  %cmp = icmp ne %struct.device_node* %0, %dn
  %1 = load i32, i32* @console_set_on_cmdline, align 4
  %tobool2 = icmp ne i32 %1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool2
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** @of_stdout_options, align 8
  %call = call i32 @add_preferred_console(i8* noundef %name, i32 noundef %index, i8* noundef %2) #18
  %tobool3.not = icmp eq i32 %call, 0
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i1 [ %tobool3.not, %if.end ], [ false, %lor.lhs.false ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_preferred_console(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_node* @of_find_next_cache_node(%struct.device_node* noundef %np) local_unnamed_addr #0 {
entry:
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i32 noundef 0) #17
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.device_node* @of_parse_phandle(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cache_node.0 = phi %struct.device_node* [ %call, %entry ], [ %call1, %if.then ]
  ret %struct.device_node* %cache_node.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_find_last_cache_level(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %cache_level = alloca i32, align 4
  %0 = bitcast i32* %cache_level to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %cache_level, align 4
  %call = call fastcc %struct.device_node* @of_cpu_device_node_get(i32 noundef %cpu) #17
  %tobool.not8 = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not8, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %np.09 = phi %struct.device_node* [ %call1, %while.body ], [ %call, %entry ]
  %call1 = call %struct.device_node* @of_find_next_cache_node(%struct.device_node* noundef nonnull %np.09) #17
  %tobool.not = icmp eq %struct.device_node* %call1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %prev.0.lcssa = phi %struct.device_node* [ null, %entry ], [ %np.09, %while.body ]
  %call2 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef %prev.0.lcssa, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i32* noundef nonnull %cache_level) #17
  %1 = load i32, i32* %cache_level, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @of_map_id(%struct.device_node* noundef %np, i32 noundef %id, i8* noundef %map_name, i8* noundef %map_mask_name, %struct.device_node** noundef %target, i32* noundef writeonly %id_out) local_unnamed_addr #0 {
entry:
  %map_mask = alloca i32, align 4
  %map_len = alloca i32, align 4
  %0 = bitcast i32* %map_mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %1 = bitcast i32* %map_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #19
  store i32 0, i32* %map_len, align 4, !annotation !7
  %tobool = icmp ne %struct.device_node* %np, null
  %tobool1 = icmp ne i8* %map_name, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %lor.lhs.false2, label %cleanup83

lor.lhs.false2:                                   ; preds = %entry
  %tobool3 = icmp ne %struct.device_node** %target, null
  %tobool4 = icmp ne i32* %id_out, null
  %or.cond88 = or i1 %tobool3, %tobool4
  br i1 %or.cond88, label %if.end, label %cleanup83

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i8* @of_get_property(%struct.device_node* noundef nonnull %np, i8* noundef nonnull %map_name, i32* noundef nonnull %map_len) #17
  %2 = bitcast i8* %call to i32*
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  br i1 %tobool3, label %cleanup83, label %if.end9

if.end9:                                          ; preds = %if.then6
  store i32 %id, i32* %id_out, align 4
  br label %cleanup83

if.end10:                                         ; preds = %if.end
  %3 = load i32, i32* %map_len, align 4
  %tobool11.not = icmp ne i32 %3, 0
  %4 = and i32 %3, 15
  %tobool13.not = icmp eq i32 %4, 0
  %or.cond140 = and i1 %tobool11.not, %tobool13.not
  br i1 %or.cond140, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end10
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0), %struct.device_node* noundef nonnull %np, i8* noundef nonnull %map_name, i32 noundef %3) #20
  br label %cleanup83

if.end16:                                         ; preds = %if.end10
  store i32 -1, i32* %map_mask, align 4
  %tobool17.not = icmp eq i8* %map_mask_name, null
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = call fastcc i32 @of_property_read_u32(%struct.device_node* noundef nonnull %np, i8* noundef nonnull %map_mask_name, i32* noundef nonnull %map_mask) #17
  %.pre = load i32, i32* %map_mask, align 4
  %.pr.pre = load i32, i32* %map_len, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %.pr = phi i32 [ %.pr.pre, %if.then18 ], [ %3, %if.end16 ]
  %5 = phi i32 [ %.pre, %if.then18 ], [ -1, %if.end16 ]
  %and = and i32 %5, %id
  %cmp177 = icmp sgt i32 %.pr, 0
  br i1 %cmp177, label %for.body.lr.ph, label %do.end74

for.body.lr.ph:                                   ; preds = %if.end20
  %tobool4.not = xor i1 %tobool4, true
  br label %cond.false.i.i

cond.false.i.i:                                   ; preds = %for.inc, %for.body.lr.ph
  %6 = phi i32 [ %.pr, %for.body.lr.ph ], [ %sub69, %for.inc ]
  %map.0178 = phi i32* [ %2, %for.body.lr.ph ], [ %add.ptr71, %for.inc ]
  %7 = load i32, i32* %map.0178, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %7) #22
  %add.ptr23 = getelementptr i32, i32* %map.0178, i64 1
  %8 = load i32, i32* %add.ptr23, align 4
  %call.i.i144 = call fastcc i32 @__fswab32(i32 noundef %8) #22
  %add.ptr25 = getelementptr i32, i32* %map.0178, i64 2
  %9 = load i32, i32* %add.ptr25, align 4
  %10 = load i32, i32* %map_mask, align 4
  %neg = xor i32 %10, -1
  %and29 = and i32 %call.i.i, %neg
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %cond.false.i.i
  %call36 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.40, i64 0, i64 0), %struct.device_node* noundef nonnull %np, i8* noundef nonnull %map_name, i8* noundef nonnull %map_name, i32 noundef %10, i32 noundef %call.i.i) #20
  br label %cleanup83

if.end37:                                         ; preds = %cond.false.i.i
  %add.ptr27 = getelementptr i32, i32* %map.0178, i64 3
  %11 = load i32, i32* %add.ptr27, align 4
  %call.i.i156 = call fastcc i32 @__fswab32(i32 noundef %11) #22
  %cmp38 = icmp uge i32 %and, %call.i.i
  %add = add i32 %call.i.i156, %call.i.i
  %cmp41.not = icmp ult i32 %and, %add
  %or.cond141 = select i1 %cmp38, i1 %cmp41.not, i1 false
  br i1 %or.cond141, label %if.end44, label %for.inc

if.end44:                                         ; preds = %if.end37
  %call45 = call %struct.device_node* @of_find_node_by_phandle(i32 noundef %call.i.i144) #17
  %tobool46.not = icmp eq %struct.device_node* %call45, null
  br i1 %tobool46.not, label %cleanup83, label %if.end48

if.end48:                                         ; preds = %if.end44
  br i1 %tobool3, label %if.then50, label %if.end58

if.then50:                                        ; preds = %if.end48
  %12 = load %struct.device_node*, %struct.device_node** %target, align 8
  %tobool51.not = icmp eq %struct.device_node* %12, null
  br i1 %tobool51.not, label %if.else, label %if.end53

if.else:                                          ; preds = %if.then50
  store %struct.device_node* %call45, %struct.device_node** %target, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.else
  %13 = phi %struct.device_node* [ %12, %if.then50 ], [ %call45, %if.else ]
  %cmp54.not = icmp ne %struct.device_node* %13, %call45
  %brmerge = or i1 %cmp54.not, %tobool4.not
  br i1 %brmerge, label %cleanup, label %if.then60.loopexit

if.end58:                                         ; preds = %if.end48
  %call.i.i150.le254 = call fastcc i32 @__fswab32(i32 noundef %9) #22
  br i1 %tobool4, label %if.then60, label %cleanup83

if.then60.loopexit:                               ; preds = %if.end53
  %call.i.i150.le = call fastcc i32 @__fswab32(i32 noundef %9) #22
  br label %if.then60

if.then60:                                        ; preds = %if.then60.loopexit, %if.end58
  %call.i.i150245 = phi i32 [ %call.i.i150.le, %if.then60.loopexit ], [ %call.i.i150.le254, %if.end58 ]
  %sub = sub i32 %and, %call.i.i
  %add61 = add i32 %sub, %call.i.i150245
  store i32 %add61, i32* %id_out, align 4
  br label %cleanup83

cleanup:                                          ; preds = %if.end53
  br i1 %cmp54.not, label %cleanup.for.inc_crit_edge, label %cleanup83

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  %.pre194 = load i32, i32* %map_len, align 4
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %if.end37
  %14 = phi i32 [ %.pre194, %cleanup.for.inc_crit_edge ], [ %6, %if.end37 ]
  %sub69 = add i32 %14, -16
  store i32 %sub69, i32* %map_len, align 4
  %add.ptr71 = getelementptr i32, i32* %map.0178, i64 4
  %cmp = icmp sgt i32 %sub69, 0
  br i1 %cmp, label %cond.false.i.i, label %do.end74

do.end74:                                         ; preds = %for.inc, %if.end20
  br i1 %tobool3, label %land.lhs.true77, label %cond.end

land.lhs.true77:                                  ; preds = %do.end74
  %15 = load %struct.device_node*, %struct.device_node** %target, align 8
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true77, %do.end74
  %cond = phi %struct.device_node* [ null, %do.end74 ], [ %15, %land.lhs.true77 ]
  %call79 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0), %struct.device_node* noundef nonnull %np, i8* noundef nonnull %map_name, i32 noundef %id, %struct.device_node* noundef %cond) #20
  br i1 %tobool4, label %if.then81, label %cleanup83

if.then81:                                        ; preds = %cond.end
  store i32 %id, i32* %id_out, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %if.end44, %cleanup, %if.end58, %if.then60, %do.end34, %cond.end, %if.then81, %if.then6, %entry, %lor.lhs.false2, %do.end, %if.end9
  %retval.2 = phi i32 [ -22, %do.end ], [ 0, %if.end9 ], [ -22, %lor.lhs.false2 ], [ -22, %entry ], [ -19, %if.then6 ], [ 0, %if.then81 ], [ 0, %cond.end ], [ 0, %if.end58 ], [ 0, %if.then60 ], [ -14, %do.end34 ], [ -19, %if.end44 ], [ 0, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_property_read_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values) unnamed_addr #0 {
entry:
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* noundef %np, i8* noundef %propname, i32* noundef %out_values, i64 noundef 1, i64 noundef 0) #18
  %cmp.inv = icmp slt i32 %call, 0
  %.call = select i1 %cmp.inv, i32 %call, i32 0
  ret i32 %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* noundef, i8* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @hash_32_generic(i32 noundef %val) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__hash_32_generic(i32 noundef %val) #17
  %shr = lshr i32 %call, 25
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__hash_32_generic(i32 noundef %val) unnamed_addr #4 {
entry:
  %mul = mul i32 %val, 1640531527
  ret i32 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #17
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #18
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @devtree_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #18
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #19, !srcloc !14
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #19, !srcloc !15
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #19, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @devtree_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @devtree_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #19, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @devtree_lock to i8*), i8 0) #19, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #19, !srcloc !19
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_number(i32* nocapture noundef readonly %cell, i32 noundef %size) unnamed_addr #14 {
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
  %call = call fastcc i32 @__fswab32(i32 noundef %0) #22
  %conv = zext i32 %call to i64
  %or9 = or i64 %shl, %conv
  %incdec.ptr = getelementptr i32, i32* %cell.addr.020, i64 1
  %tobool.not = icmp eq i32 %dec22, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i64 [ 0, %entry ], [ %or9, %for.body ]
  ret i64 %r.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_prop_next_string(%struct.property* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #15 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @aliases_lookup, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #15 {
entry:
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @aliases_lookup, i64 0, i32 1), align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @aliases_lookup, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !20
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #22 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = !{i64 2149791297}
!9 = !{i64 2149817140}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152616365}
!12 = !{i64 2152623838}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149098289, i64 2149098336, i64 2149098342, i64 2149098379, i64 2149098397, i64 2149099708, i64 2149099756, i64 2149099804, i64 2149099867, i64 2149099916, i64 2149098475, i64 2149098500, i64 2149098526, i64 2149098532, i64 2149099374, i64 2149099414, i64 2149099432, i64 2149099464, i64 2149099492, i64 2149099546, i64 2149099566, i64 2149099663, i64 2149098555, i64 2149098569, i64 2149098575, i64 2149098625, i64 2149098671, i64 2149098704}
!15 = !{i64 2149100468, i64 2149100515, i64 2149100521, i64 2149100558, i64 2149100576, i64 2149101519, i64 2149101567, i64 2149101615, i64 2149101678, i64 2149101727, i64 2149100654, i64 2149100679, i64 2149100705, i64 2149100711, i64 2149100748, i64 2149100754, i64 2149100804, i64 2149100850, i64 2149100883}
!16 = !{i64 2149092586, i64 2149092633, i64 2149092639, i64 2149092676, i64 2149092694, i64 2149094035, i64 2149094083, i64 2149094131, i64 2149094194, i64 2149094243, i64 2149092772, i64 2149092797, i64 2149092823, i64 2149092829, i64 2149093701, i64 2149093741, i64 2149093759, i64 2149093791, i64 2149093819, i64 2149093873, i64 2149093893, i64 2149093990, i64 2149092852, i64 2149092866, i64 2149092872, i64 2149092922, i64 2149092968, i64 2149093001}
!17 = !{i64 2147861431, i64 2147861464, i64 2147861517, i64 2147861576, i64 2147861610, i64 2147861665, i64 2147861694, i64 2147861714}
!18 = !{i64 2149760427}
!19 = !{i64 2149104302, i64 2149104349, i64 2149104355, i64 2149104392, i64 2149104410, i64 2149105721, i64 2149105769, i64 2149105817, i64 2149105880, i64 2149105929, i64 2149104488, i64 2149104513, i64 2149104539, i64 2149104545, i64 2149105387, i64 2149105427, i64 2149105445, i64 2149105477, i64 2149105505, i64 2149105559, i64 2149105579, i64 2149105676, i64 2149104568, i64 2149104582, i64 2149104588, i64 2149104638, i64 2149104684, i64 2149104717}
!20 = !{i64 2147834649, i64 2147835160, i64 2147835190, i64 2147835216, i64 2147835248, i64 2147835277}
