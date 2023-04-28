; ModuleID = 'kernel/irq/spurious.c'
source_filename = "kernel/irq/spurious.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.63 }
%struct.module = type opaque
%union.anon.63 = type { i8* }
%struct.atomic_t = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, void (%struct.irq_desc*)*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.msi_msg = type opaque
%struct.irq_domain = type opaque
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }

@irq_wait_for_poll.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@irq_poll_cpu = internal unnamed_addr global i32 0, align 4
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str = private unnamed_addr constant [43 x i8] c"irq poll in progress on cpu %d for irq %d\0A\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [21 x i8] c"\010Disabling IRQ #%d\0A\00", align 1
@poll_spurious_irq_timer = internal global %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @poll_spurious_irqs, i32 0 }, align 8
@noirqdebug = dso_local global i8 0, section ".data..read_mostly", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\016IRQ lockup detection disabled\0A\00", align 1
@__setup_str_noirqdebug_setup = internal constant [11 x i8] c"noirqdebug\00", section ".init.rodata", align 1
@__setup_noirqdebug_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_noirqdebug_setup, i32 0, i32 0), i32 (i8*)* @noirqdebug_setup, i32 0 }, section ".init.setup", align 8
@__param_str_noirqdebug = internal constant [20 x i8] c"spurious.noirqdebug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_noirqdebug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_noirqdebug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.63 { i8* @noirqdebug } }, section "__param", align 8
@__UNIQUE_ID_noirqdebugtype247 = internal constant [34 x i8] c"spurious.parmtype=noirqdebug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noirqdebug248 = internal constant [64 x i8] c"spurious.parm=noirqdebug:Disable irq lockup detection when true\00", section ".modinfo", align 1
@__setup_str_irqfixup_setup = internal constant [9 x i8] c"irqfixup\00", section ".init.rodata", align 1
@__setup_irqfixup_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__setup_str_irqfixup_setup, i32 0, i32 0), i32 (i8*)* @irqfixup_setup, i32 0 }, section ".init.setup", align 8
@__param_str_irqfixup = internal constant [18 x i8] c"spurious.irqfixup\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@irqfixup = internal global i32 0, section ".data..read_mostly", align 4
@__param_irqfixup = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_irqfixup, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.63 { i8* bitcast (i32* @irqfixup to i8*) } }, section "__param", align 8
@__UNIQUE_ID_irqfixuptype249 = internal constant [31 x i8] c"spurious.parmtype=irqfixup:int\00", section ".modinfo", align 1
@__setup_str_irqpoll_setup = internal constant [8 x i8] c"irqpoll\00", section ".init.rodata", align 1
@__setup_irqpoll_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__setup_str_irqpoll_setup, i32 0, i32 0), i32 (i8*)* @irqpoll_setup, i32 0 }, section ".init.setup", align 8
@report_bad_irq.count = internal unnamed_addr global i32 100, align 4
@irq_poll_active = internal global %struct.atomic_t zeroinitializer, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\013irq event %d: bogus return value %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"\013irq %d: nobody cared (try booting with the \22irqpoll\22 option)\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\013handlers:\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\013[<%p>] %ps\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\01c threaded [<%p>] %ps\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"\014Misrouted IRQ fixup support enabled.\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\014This may impact system performance.\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\014Misrouted IRQ fixup and polling support enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\014This may significantly impact system performance\0A\00", align 1
@llvm.compiler.used = appending global [8 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_irqfixuptype249, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_noirqdebug248, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_noirqdebugtype247, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_irqfixup to i8*), i8* bitcast (%struct.kernel_param* @__param_noirqdebug to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_irqfixup_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_irqpoll_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_noirqdebug_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_wait_for_poll(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @irq_poll_cpu, align 4
  %call = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %cmp = icmp eq i32 %0, %2
  %.b81 = load i1, i1* @irq_wait_for_poll.__already_done, align 1
  %lnot4 = xor i1 %.b81, true
  %3 = select i1 %cmp, i1 %lnot4, i1 false
  br i1 %3, label %if.then, label %if.end43, !prof !8

if.then:                                          ; preds = %entry
  store i1 true, i1* @irq_wait_for_poll.__already_done, align 1
  %call28 = call fastcc i64 @__kern_my_cpu_offset() #9
  %add29 = add i64 %call28, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add29 to i32*
  %5 = load i32, i32* %4, align 4
  %irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %6 = load i32, i32* %irq, align 4
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %5, i32 noundef %6) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/spurious.c\22; .popsection; .long 14472b - 14470b; .short 41; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  br label %if.end43

if.end43:                                         ; preds = %if.then, %entry
  br i1 %cmp, label %return, label %do.body55.preheader

do.body55.preheader:                              ; preds = %if.end43
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  %irq_data56 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  br label %do.body55

do.body55:                                        ; preds = %do.body55.preheader, %while.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  %call5782 = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data56) #9
  br i1 %call5782, label %while.body, label %while.end

while.body:                                       ; preds = %do.body55, %while.body
  call fastcc void @cpu_relax() #9
  %call57 = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data56) #9
  br i1 %call57, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %do.body55
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  %call61 = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data56) #9
  br i1 %call61, label %do.body55, label %do.end62

do.end62:                                         ; preds = %while.end
  %call64 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data56) #9
  br i1 %call64, label %return, label %land.rhs65

land.rhs65:                                       ; preds = %do.end62
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %7 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool66 = icmp ne %struct.irqaction* %7, null
  br label %return

return:                                           ; preds = %do.end62, %land.rhs65, %if.end43
  %retval.0 = phi i1 [ false, %if.end43 ], [ false, %do.end62 ], [ %tobool66, %land.rhs65 ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #1 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #12, !srcloc !10
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_irq_inprogress(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #3 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 262144
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #11, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_irq_disabled(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #3 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @note_interrupt(%struct.irq_desc* noundef %desc, i32 noundef %action_ret) local_unnamed_addr #0 {
entry:
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup103

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @irq_settings_is_polled(%struct.irq_desc* noundef %desc) #9
  br i1 %call, label %cleanup103, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call fastcc i32 @bad_action_ret(i32 noundef %action_ret) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @report_bad_irq(%struct.irq_desc* noundef %desc, i32 noundef %action_ret) #9
  br label %cleanup103

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %action_ret, 2
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end25, label %if.then7

if.then7:                                         ; preds = %if.end4
  %cmp = icmp eq i32 %action_ret, 2
  %threads_handled_last = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 14
  %1 = load i32, i32* %threads_handled_last, align 8
  br i1 %cmp, label %if.then8, label %if.end25.thread

if.then8:                                         ; preds = %if.then7
  %tobool10.not = icmp sgt i32 %1, -1
  br i1 %tobool10.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then8
  %counter.i = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 13, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  %or15 = or i32 %2, -2147483648
  %cmp17.not = icmp eq i32 %or15, %1
  br i1 %cmp17.not, label %if.then29, label %if.end25.thread155

if.end25.thread155:                               ; preds = %if.end13
  store i32 %or15, i32* %threads_handled_last, align 8
  br label %if.end37

cleanup:                                          ; preds = %if.then8
  %or = or i32 %1, -2147483648
  store i32 %or, i32* %threads_handled_last, align 8
  br label %cleanup103

if.end25.thread:                                  ; preds = %if.then7
  %and23 = and i32 %1, 2147483647
  store i32 %and23, i32* %threads_handled_last, align 8
  br label %if.end37

if.end25:                                         ; preds = %if.end4
  %cmp26 = icmp eq i32 %action_ret, 0
  br i1 %cmp26, label %if.then29, label %if.end37, !prof !8

if.then29:                                        ; preds = %if.end13, %if.end25
  %last_unhandled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 11
  %3 = load i64, i64* %last_unhandled, align 8
  %add = add i64 %3, 25
  %4 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add, %4
  %cmp30 = icmp slt i64 %sub, 0
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 12
  br i1 %cmp30, label %if.end35, label %if.else33

if.else33:                                        ; preds = %if.then29
  %5 = load i32, i32* %irqs_unhandled, align 16
  %inc = add i32 %5, 1
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.else33
  %inc.sink = phi i32 [ %inc, %if.else33 ], [ 1, %if.then29 ]
  store i32 %inc.sink, i32* %irqs_unhandled, align 16
  %6 = load volatile i64, i64* @jiffies, align 64
  store i64 %6, i64* %last_unhandled, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end25.thread155, %if.end25.thread, %if.end35, %if.end25
  %cmp26149 = phi i1 [ false, %if.end25.thread ], [ true, %if.end35 ], [ false, %if.end25 ], [ false, %if.end25.thread155 ]
  %action_ret.addr.2148 = phi i32 [ %action_ret, %if.end25.thread ], [ 0, %if.end35 ], [ %action_ret, %if.end25 ], [ 1, %if.end25.thread155 ]
  %call38 = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %desc) #9
  %call39 = call fastcc i32 @try_misrouted_irq(i32 noundef %call38, %struct.irq_desc* noundef %desc, i32 noundef %action_ret.addr.2148) #9
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end56, label %if.then48, !prof !14

if.then48:                                        ; preds = %if.end37
  %call49 = call fastcc i32 @misrouted_irq(i32 noundef %call38) #9
  br i1 %cmp26149, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.then48
  %irqs_unhandled53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 12
  %7 = load i32, i32* %irqs_unhandled53, align 16
  %sub54 = sub i32 %7, %call49
  store i32 %sub54, i32* %irqs_unhandled53, align 16
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %if.then52, %if.end37
  %irqs_unhandled57 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 12
  %8 = load i32, i32* %irqs_unhandled57, align 16
  %tobool58.not = icmp eq i32 %8, 0
  br i1 %tobool58.not, label %cleanup103, label %if.end69, !prof !14

if.end69:                                         ; preds = %if.end56
  %irq_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 10
  %9 = load i32, i32* %irq_count, align 4
  %inc70 = add i32 %9, 1
  store i32 %inc70, i32* %irq_count, align 4
  %cmp72 = icmp ult i32 %inc70, 100000
  br i1 %cmp72, label %cleanup103, label %if.end82, !prof !14

if.end82:                                         ; preds = %if.end69
  store i32 0, i32* %irq_count, align 4
  %cmp85 = icmp ugt i32 %8, 99900
  br i1 %cmp85, label %if.then94, label %if.end101, !prof !8

if.then94:                                        ; preds = %if.end82
  call fastcc void @__report_bad_irq(%struct.irq_desc* noundef %desc, i32 noundef %action_ret.addr.2148) #9
  %call95 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call38) #13
  %10 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %or97 = or i32 %10, 2
  store i32 %or97, i32* %core_internal_state__do_not_mess_with_it, align 4
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  %11 = load i32, i32* %depth, align 8
  %inc98 = add i32 %11, 1
  store i32 %inc98, i32* %depth, align 8
  call void @irq_disable(%struct.irq_desc* noundef %desc) #10
  %12 = load volatile i64, i64* @jiffies, align 64
  %add99 = add i64 %12, 25
  %call100 = call i32 @mod_timer(%struct.timer_list* noundef nonnull @poll_spurious_irq_timer, i64 noundef %add99) #10
  br label %if.end101

if.end101:                                        ; preds = %if.then94, %if.end82
  store i32 0, i32* %irqs_unhandled57, align 16
  br label %cleanup103

cleanup103:                                       ; preds = %cleanup, %if.end69, %if.end56, %entry, %lor.lhs.false, %if.end101, %if.then3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_polled(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #3 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 262144
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @bad_action_ret(i32 noundef %action_ret) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i32 %action_ret, 3
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @report_bad_irq(%struct.irq_desc* noundef %desc, i32 noundef %action_ret) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @report_bad_irq.count, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @report_bad_irq.count, align 4
  call fastcc void @__report_bad_irq(%struct.irq_desc* noundef %desc, i32 noundef %action_ret) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_get_irq(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #3 {
entry:
  %irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %irq, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_misrouted_irq(i32 noundef %irq, %struct.irq_desc* nocapture noundef readonly %desc, i32 noundef %action_ret) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @irqfixup, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %action_ret, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %cmp3 = icmp slt i32 %0, 2
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end2
  %tobool6.not = icmp eq i32 %irq, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %action9 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %1 = load %struct.irqaction*, %struct.irqaction** %action9, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %tobool10.not = icmp eq %struct.irqaction* %1, null
  br i1 %tobool10.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end8
  %flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %1, i64 0, i32 8
  %2 = load i32, i32* %flags, align 4
  %and = lshr i32 %2, 12
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.rhs, %if.end5, %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end2 ], [ 1, %if.end5 ], [ 0, %if.end8 ], [ %and.lobit, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @misrouted_irq(i32 noundef %irq) unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return() #10
  %cmp.not = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not, label %do.body, label %out

do.body:                                          ; preds = %entry
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* @irq_poll_cpu, align 4
  %call3 = call %struct.irq_desc* @irq_to_desc(i32 noundef 0) #10
  %2 = load i32, i32* @nr_irqs, align 4
  %cmp430 = icmp sgt i32 %2, 0
  br i1 %cmp430, label %for.body, label %out

for.body:                                         ; preds = %do.body, %for.inc
  %desc.033 = phi %struct.irq_desc* [ %call17, %for.inc ], [ %call3, %do.body ]
  %i.032 = phi i32 [ %inc, %for.inc ], [ 0, %do.body ]
  %ok.031 = phi i32 [ %ok.1, %for.inc ], [ 0, %do.body ]
  %tobool = icmp eq %struct.irq_desc* %desc.033, null
  %tobool6 = icmp eq i32 %i.032, 0
  %or.cond.not = or i1 %tobool6, %tobool
  %cmp9 = icmp eq i32 %i.032, %irq
  %or.cond29 = or i1 %cmp9, %or.cond.not
  br i1 %or.cond29, label %for.inc, label %if.end11

if.end11:                                         ; preds = %for.body
  %call12 = call fastcc i32 @try_one_irq(%struct.irq_desc* noundef nonnull %desc.033, i1 noundef false) #9
  %tobool13.not = icmp eq i32 %call12, 0
  %spec.select = select i1 %tobool13.not, i32 %ok.031, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body
  %ok.1 = phi i32 [ %ok.031, %for.body ], [ %spec.select, %if.end11 ]
  %inc = add nuw nsw i32 %i.032, 1
  %call17 = call %struct.irq_desc* @irq_to_desc(i32 noundef %inc) #10
  %3 = load i32, i32* @nr_irqs, align 4
  %cmp4 = icmp slt i32 %inc, %3
  br i1 %cmp4, label %for.body, label %out

out:                                              ; preds = %for.inc, %do.body, %entry
  %ok.2 = phi i32 [ 0, %entry ], [ 0, %do.body ], [ %ok.1, %for.inc ]
  call fastcc void @__ll_sc_atomic_sub() #10
  ret i32 %ok.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__report_bad_irq(%struct.irq_desc* noundef %desc, i32 noundef %action_ret) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %desc) #9
  %call1 = call fastcc i32 @bad_action_ret(i32 noundef %action_ret) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end5, label %do.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call, i32 noundef %action_ret) #13
  br label %if.end

do.end5:                                          ; preds = %entry
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.end
  call void @dump_stack() #13
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #13
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  %call15 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #9
  %action18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %action.064 = load %struct.irqaction*, %struct.irqaction** %action18, align 8
  %tobool19.not65 = icmp eq %struct.irqaction* %action.064, null
  br i1 %tobool19.not65, label %do.body41, label %do.end22

do.end22:                                         ; preds = %if.end, %do.end38
  %action.066 = phi %struct.irqaction* [ %action.0, %do.end38 ], [ %action.064, %if.end ]
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.066, i64 0, i32 0
  %0 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %call25 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 (i32, i8*)* noundef %0, i32 (i32, i8*)* noundef %0) #13
  %thread_fn = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.066, i64 0, i32 4
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn, align 32
  %tobool26.not = icmp eq i32 (i32, i8*)* %1, null
  br i1 %tobool26.not, label %do.end38, label %do.end30

do.end30:                                         ; preds = %do.end22
  %call34 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 (i32, i8*)* noundef nonnull %1, i32 (i32, i8*)* noundef nonnull %1) #13
  br label %do.end38

do.end38:                                         ; preds = %do.end22, %do.end30
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #13
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.066, i64 0, i32 3
  %action.0 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %tobool19.not = icmp eq %struct.irqaction* %action.0, null
  br i1 %tobool19.not, label %do.body41, label %do.end22

do.body41:                                        ; preds = %do.end38, %if.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call15) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_disable(%struct.irq_desc* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @noirqdebug_setup(i8* nocapture readnone %str) #0 {
entry:
  store i8 1, i8* @noirqdebug, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @irqfixup_setup(i8* nocapture noundef readnone %str) #6 section ".init.text" {
entry:
  store i32 1, i32* @irqfixup, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0)) #13
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @irqpoll_setup(i8* nocapture noundef readnone %str) #6 section ".init.text" {
entry:
  store i32 2, i32* @irqfixup, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0)) #13
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0)) #13
  ret i32 1
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_one_irq(%struct.irq_desc* noundef %desc, i1 noundef %force) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  %call = call fastcc i1 @irq_settings_is_per_cpu(%struct.irq_desc* noundef %desc) #9
  br i1 %call, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @irq_settings_is_nested_thread(%struct.irq_desc* noundef %desc) #9
  br i1 %call1, label %out, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = call fastcc i1 @irq_settings_is_polled(%struct.irq_desc* noundef %desc) #9
  br i1 %call3, label %out, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call4 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #9
  %call4.not = xor i1 %call4, true
  %brmerge = or i1 %call4.not, %force
  br i1 %brmerge, label %if.end6, label %out

if.end6:                                          ; preds = %if.end
  %action7 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %0 = load %struct.irqaction*, %struct.irqaction** %action7, align 8
  %tobool8.not = icmp eq %struct.irqaction* %0, null
  br i1 %tobool8.not, label %out, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end6
  %flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %0, i64 0, i32 8
  %1 = load i32, i32* %flags, align 4
  %2 = and i32 %1, 640
  %3 = icmp eq i32 %2, 128
  br i1 %3, label %if.end16, label %out

if.end16:                                         ; preds = %lor.lhs.false9
  %call18 = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data) #9
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %4 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  br i1 %call18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %or = or i32 %4, 512
  store i32 %or, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %out

if.end20:                                         ; preds = %if.end16
  %or22 = or i32 %4, 8
  store i32 %or22, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end20
  %ret.0 = phi i32 [ 0, %if.end20 ], [ %spec.select, %do.body ]
  %call23 = call i32 @handle_irq_event(%struct.irq_desc* noundef %desc) #10
  %cmp = icmp eq i32 %call23, 1
  %spec.select = select i1 %cmp, i32 1, i32 %ret.0
  %5 = load %struct.irqaction*, %struct.irqaction** %action7, align 8
  %6 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and28 = and i32 %6, 512
  %tobool29 = icmp ne i32 %and28, 0
  %tobool30 = icmp ne %struct.irqaction* %5, null
  %7 = select i1 %tobool29, i1 %tobool30, i1 false
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %and32 = and i32 %6, -9
  store i32 %and32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %phi.cmp = icmp eq i32 %spec.select, 1
  %phi.cast = zext i1 %phi.cmp to i32
  br label %out

out:                                              ; preds = %if.end, %if.end6, %lor.lhs.false9, %entry, %lor.lhs.false, %lor.lhs.false2, %do.end, %if.then19
  %ret.2 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false2 ], [ 0, %if.then19 ], [ %phi.cast, %do.end ], [ 0, %lor.lhs.false9 ], [ 0, %if.end6 ], [ 0, %if.end ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  ret i32 %ret.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @irq_poll_active, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @irq_poll_active, i64 0, i32 0)) #11, !srcloc !18
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_per_cpu(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #3 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 512
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_nested_thread(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #3 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 32768
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_irq_event(%struct.irq_desc* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @irq_poll_active, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @irq_poll_active, i64 0, i32 0)) #11, !srcloc !19
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #9
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #11, !srcloc !22
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #11, !srcloc !23
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #11, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #11, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @poll_spurious_irqs(%struct.timer_list* nocapture noundef readnone %unused) #0 {
entry:
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return() #10
  %cmp.not = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not, label %do.body, label %out

do.body:                                          ; preds = %entry
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #9
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* @irq_poll_cpu, align 4
  %call3 = call %struct.irq_desc* @irq_to_desc(i32 noundef 0) #10
  %2 = load i32, i32* @nr_irqs, align 4
  %cmp434 = icmp sgt i32 %2, 0
  br i1 %cmp434, label %for.body, label %out

for.body:                                         ; preds = %do.body, %for.inc
  %desc.036 = phi %struct.irq_desc* [ %call20, %for.inc ], [ %call3, %do.body ]
  %i.035 = phi i32 [ %inc, %for.inc ], [ 0, %do.body ]
  %tobool.not = icmp eq %struct.irq_desc* %desc.036, null
  %tobool6.not = icmp eq i32 %i.035, 0
  %or.cond = or i1 %tobool6.not, %tobool.not
  br i1 %or.cond, label %for.inc, label %if.end8

if.end8:                                          ; preds = %for.body
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc.036, i64 0, i32 6
  %3 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %and = and i32 %3, 2
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.inc, label %do.body12

do.body12:                                        ; preds = %if.end8
  call fastcc void @arch_local_irq_disable() #9
  %call15 = call fastcc i32 @try_one_irq(%struct.irq_desc* noundef nonnull %desc.036, i1 noundef true) #9
  call fastcc void @arch_local_irq_enable() #9
  br label %for.inc

for.inc:                                          ; preds = %do.body12, %if.end8, %for.body
  %inc = add nuw nsw i32 %i.035, 1
  %call20 = call %struct.irq_desc* @irq_to_desc(i32 noundef %inc) #10
  %4 = load i32, i32* @nr_irqs, align 4
  %cmp4 = icmp slt i32 %inc, %4
  br i1 %cmp4, label %for.body, label %out

out:                                              ; preds = %for.inc, %do.body, %entry
  call fastcc void @__ll_sc_atomic_sub() #10
  %5 = load volatile i64, i64* @jiffies, align 64
  %add21 = add i64 %5, 25
  %call22 = call i32 @mod_timer(%struct.timer_list* noundef nonnull @poll_spurious_irq_timer, i64 noundef %add21) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #11, !srcloc !27
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nounwind readonly }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153072356}
!10 = !{i64 2148991751, i64 2148991798, i64 2148991804, i64 2148991841, i64 2148991859, i64 2148992786, i64 2148992834, i64 2148992882, i64 2148992945, i64 2148992994, i64 2148991937, i64 2148991962, i64 2148991988, i64 2148991994, i64 2148992031, i64 2148992037, i64 2148992087, i64 2148992133, i64 2148992166}
!11 = !{i64 2149468721}
!12 = !{i64 1799497}
!13 = !{i64 2149461440}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153078392}
!16 = !{i64 2149265012}
!17 = !{i64 2147897971, i64 2147898004, i64 2147898057, i64 2147898116, i64 2147898150, i64 2147898205, i64 2147898234, i64 2147898254}
!18 = !{i64 2147798900, i64 2147799548, i64 2147799578, i64 2147799610, i64 2147799644, i64 2147799680, i64 2147799705}
!19 = !{i64 2147807769, i64 2147808285, i64 2147808315, i64 2147808342, i64 2147808376, i64 2147808406}
!20 = !{i64 2149446439}
!21 = !{i64 2149472282}
!22 = !{i64 2149218819, i64 2149218866, i64 2149218872, i64 2149218909, i64 2149218927, i64 2149220238, i64 2149220286, i64 2149220334, i64 2149220397, i64 2149220446, i64 2149219005, i64 2149219030, i64 2149219056, i64 2149219062, i64 2149219904, i64 2149219944, i64 2149219962, i64 2149219994, i64 2149220022, i64 2149220076, i64 2149220096, i64 2149220193, i64 2149219085, i64 2149219099, i64 2149219105, i64 2149219155, i64 2149219201, i64 2149219234}
!23 = !{i64 2149220998, i64 2149221045, i64 2149221051, i64 2149221088, i64 2149221106, i64 2149226110, i64 2149226158, i64 2149226206, i64 2149226269, i64 2149226318, i64 2149221184, i64 2149221209, i64 2149221235, i64 2149221241, i64 2149221278, i64 2149221284, i64 2149221334, i64 2149221380, i64 2149221413}
!24 = !{i64 2149213116, i64 2149213163, i64 2149213169, i64 2149213206, i64 2149213224, i64 2149214565, i64 2149214613, i64 2149214661, i64 2149214724, i64 2149214773, i64 2149213302, i64 2149213327, i64 2149213353, i64 2149213359, i64 2149214231, i64 2149214271, i64 2149214289, i64 2149214321, i64 2149214349, i64 2149214403, i64 2149214423, i64 2149214520, i64 2149213382, i64 2149213396, i64 2149213402, i64 2149213452, i64 2149213498, i64 2149213531}
!25 = !{i64 2149228893, i64 2149228940, i64 2149228946, i64 2149228983, i64 2149229001, i64 2149230312, i64 2149230360, i64 2149230408, i64 2149230471, i64 2149230520, i64 2149229079, i64 2149229104, i64 2149229130, i64 2149229136, i64 2149229978, i64 2149230018, i64 2149230036, i64 2149230068, i64 2149230096, i64 2149230150, i64 2149230170, i64 2149230267, i64 2149229159, i64 2149229173, i64 2149229179, i64 2149229229, i64 2149229275, i64 2149229308}
!26 = !{i64 2153075121}
!27 = !{i64 2149203660, i64 2149203707, i64 2149203713, i64 2149203750, i64 2149203768, i64 2149205108, i64 2149205156, i64 2149205204, i64 2149205267, i64 2149205316, i64 2149203846, i64 2149203871, i64 2149203897, i64 2149203903, i64 2149204774, i64 2149204814, i64 2149204832, i64 2149204864, i64 2149204892, i64 2149204946, i64 2149204966, i64 2149205063, i64 2149203926, i64 2149203940, i64 2149203946, i64 2149203996, i64 2149204042, i64 2149204075}
