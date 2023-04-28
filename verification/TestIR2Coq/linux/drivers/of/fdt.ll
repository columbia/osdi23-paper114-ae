; ModuleID = 'drivers/of/fdt.c'
source_filename = "drivers/of/fdt.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_fdt__265_1373_of_fdt_raw_init7:\09\09\09"
module asm ".long\09of_fdt_raw_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.68, i32, i8* }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, i8*, i16, i32, i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
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
%union.anon.67 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.pipe_inode_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque

@initial_boot_params = dso_local local_unnamed_addr global i8* null, section ".data..ro_after_init", align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\013OF: fdt: Invalid device tree blob header\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\014OF: fdt: End of tree marker overwritten: %08x\0A\00", align 1
@of_fdt_unflatten_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @of_fdt_unflatten_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @of_fdt_unflatten_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\013OF: fdt: \0A unrecognized device tree list:\0A[ \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"'%s' \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"]\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"\016OF: fdt: Machine model: %s\0A\00", align 1
@dt_root_size_cells = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@dt_root_addr_cells = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"linux,usable-memory\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"hotpluggable\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"\014OF: fdt: failed to mark hotplug range 0x%llx - 0x%llx\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"chosen@0\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"rng-seed\00", align 1
@of_fdt_crc32 = internal unnamed_addr global i32 0, align 4
@.str.23 = private unnamed_addr constant [50 x i8] c"\014OF: fdt: Ignoring memory block 0x%llx - 0x%llx\0A\00", align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"\014OF: fdt: No chosen node found, continuing without\0A\00", align 1
@cap_mem_addr = internal unnamed_addr global i64 0, align 8
@cap_mem_size = internal unnamed_addr global i64 0, align 8
@of_root = external dso_local global %struct.device_node*, align 8
@.str.26 = private unnamed_addr constant [59 x i8] c"\014OF: fdt: No valid device tree found, continuing without\0A\00", align 1
@__UNIQUE_ID___addressable_of_fdt_raw_init266 = internal global i8* bitcast (i32 ()* @of_fdt_raw_init to i8*), section ".discard.addressable", align 8
@.str.27 = private unnamed_addr constant [36 x i8] c"\013OF: fdt: Error %d processing FDT\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@of_node_ktype = external dso_local global %struct.kobj_type, align 8
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@.str.30 = private unnamed_addr constant [43 x i8] c"\014OF: fdt: Cannot locate property at 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"\014OF: fdt: Cannot find property name at 0x%x\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@__fdt_scan_reserved_mem.found = internal unnamed_addr global i1 false, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"reserved-memory\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"\013OF: fdt: Reserved memory: unsupported node format, ignoring\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@.str.42 = private unnamed_addr constant [74 x i8] c"\013OF: fdt: Reserved memory: invalid reg property in '%s', skipping node.\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"no-map\00", align 1
@.str.44 = private unnamed_addr constant [92 x i8] c"\016OF: fdt: Reserved memory: failed to reserve memory for node '%s': base %pa, size %lu MiB\0A\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"linux,usable-memory-range\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"%s: Failed to allocate %llu bytes align=0x%llx\0A\00", align 1
@__func__.early_init_dt_alloc_memory_arch = private unnamed_addr constant [32 x i8] c"early_init_dt_alloc_memory_arch\00", align 1
@of_fdt_raw_init.of_fdt_raw_attr = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i16 256 }, i64 0, i8* null, %struct.address_space* ()* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @of_fdt_raw_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8
@.str.47 = private unnamed_addr constant [4 x i8] c"fdt\00", align 1
@.str.48 = private unnamed_addr constant [63 x i8] c"\014OF: fdt: not creating '/sys/firmware/fdt': CRC check failed\0A\00", align 1
@firmware_kobj = external dso_local local_unnamed_addr global %struct.kobject*, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_of_fdt_raw_init266 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @of_fdt_limit_memory(i32 noundef %limit) local_unnamed_addr #0 section ".init.text" {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %len, align 4, !annotation !7
  %1 = load i8*, i8** @initial_boot_params, align 8
  %call = call i32 @fdt_path_offset(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #18
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @initial_boot_params, align 8
  %call1 = call i8* @fdt_getprop(i8* noundef %2, i32 noundef %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* noundef null) #18
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.end11, label %cond.false

cond.false:                                       ; preds = %if.end
  %3 = bitcast i8* %call1 to i32*
  %4 = load i32, i32* %3, align 4
  %call10 = call fastcc i32 @__fswab32(i32 noundef %4) #19
  br label %if.end11

if.end11:                                         ; preds = %cond.false, %if.end
  %nr_address_cells.0 = phi i32 [ 1, %if.end ], [ %call10, %cond.false ]
  %5 = load i8*, i8** @initial_boot_params, align 8
  %call12 = call i8* @fdt_getprop(i8* noundef %5, i32 noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* noundef null) #18
  %tobool13.not = icmp eq i8* %call12, null
  br i1 %tobool13.not, label %if.end31, label %cond.false27

cond.false27:                                     ; preds = %if.end11
  %6 = bitcast i8* %call12 to i32*
  %7 = load i32, i32* %6, align 4
  %call28 = call fastcc i32 @__fswab32(i32 noundef %7) #19
  br label %if.end31

if.end31:                                         ; preds = %cond.false27, %if.end11
  %nr_size_cells.0 = phi i32 [ 1, %if.end11 ], [ %call28, %cond.false27 ]
  %8 = load i8*, i8** @initial_boot_params, align 8
  %call33 = call i32 @fdt_path_offset(i8* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #18
  %cmp34 = icmp sgt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %cleanup

if.then36:                                        ; preds = %if.end31
  %add = add i32 %nr_size_cells.0, %nr_address_cells.0
  %mul = shl i32 %add, 2
  %9 = load i8*, i8** @initial_boot_params, align 8
  %call37 = call i8* @fdt_getprop(i8* noundef %9, i32 noundef %call33, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %len) #18
  %10 = load i32, i32* %len, align 4
  %mul38 = mul i32 %mul, %limit
  %cmp39 = icmp sgt i32 %10, %mul38
  br i1 %cmp39, label %if.then41, label %cleanup

if.then41:                                        ; preds = %if.then36
  store i32 %mul38, i32* %len, align 4
  %11 = load i8*, i8** @initial_boot_params, align 8
  %call43 = call i32 @fdt_setprop(i8* noundef %11, i32 noundef %call33, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call37, i32 noundef %mul38) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then41, %if.then36, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_path_offset(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_getprop(i8* noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #3 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_setprop(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__unflatten_device_tree(i8* noundef %blob, %struct.device_node* noundef %dad, %struct.device_node** noundef %mynodes, i8* (i64, i64)* nocapture noundef readonly %dt_alloc, i1 noundef %detached) local_unnamed_addr #4 {
entry:
  %tobool = icmp ne %struct.device_node** %mynodes, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %mynodes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i8* %blob, null
  br i1 %tobool1.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = call i32 @fdt_check_header(i8* noundef nonnull %blob) #18
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end4
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0)) #20
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %call14 = call fastcc i32 @unflatten_dt_nodes(i8* noundef nonnull %blob, i8* noundef null, %struct.device_node* noundef %dad, %struct.device_node** noundef null) #21
  %cmp = icmp slt i32 %call14, 1
  br i1 %cmp, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end13
  %add = add nuw i32 %call14, 3
  %and = and i32 %add, -4
  %add18 = add nuw i32 %and, 4
  %conv = sext i32 %add18 to i64
  %call19 = call i8* %dt_alloc(i64 noundef %conv, i64 noundef 8) #18
  %tobool20.not = icmp eq i8* %call19, null
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end16
  %conv23 = sext i32 %and to i64
  %call24 = call i8* @memset(i8* noundef nonnull %call19, i32 noundef 0, i64 noundef %conv23) #18
  %add.ptr = getelementptr i8, i8* %call19, i64 %conv23
  %0 = bitcast i8* %add.ptr to i32*
  store i32 -272716322, i32* %0, align 4
  %call26 = call fastcc i32 @unflatten_dt_nodes(i8* noundef nonnull %blob, i8* noundef nonnull %call19, %struct.device_node* noundef %dad, %struct.device_node** noundef %mynodes) #21
  %1 = load i32, i32* %0, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %1) #19
  %cmp30.not88 = icmp eq i32 %call.i.i, -559038737
  br i1 %cmp30.not88, label %if.end41, label %__be32_to_cpup.exit86

__be32_to_cpup.exit86:                            ; preds = %if.end22
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call.i.i) #20
  br label %if.end41

if.end41:                                         ; preds = %if.end22, %__be32_to_cpup.exit86
  %cmp42 = icmp slt i32 %call26, 1
  br i1 %cmp42, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.end41
  %or.cond = and i1 %tobool, %detached
  br i1 %or.cond, label %land.lhs.true49, label %cleanup

land.lhs.true49:                                  ; preds = %if.end45
  %2 = load %struct.device_node*, %struct.device_node** %mynodes, align 8
  %tobool50.not = icmp eq %struct.device_node* %2, null
  br i1 %tobool50.not, label %cleanup, label %if.then51

if.then51:                                        ; preds = %land.lhs.true49
  call fastcc void @of_node_set_flag(%struct.device_node* noundef nonnull %2) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %land.lhs.true49, %if.then51, %if.end41, %if.end16, %if.end13, %if.end, %do.end
  %retval.0 = phi i8* [ null, %do.end ], [ null, %if.end ], [ null, %if.end13 ], [ null, %if.end16 ], [ null, %if.end41 ], [ %call19, %if.then51 ], [ %call19, %land.lhs.true49 ], [ %call19, %if.end45 ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_header(i8* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @unflatten_dt_nodes(i8* noundef %blob, i8* noundef %mem, %struct.device_node* noundef %dad, %struct.device_node** noundef %nodepp) unnamed_addr #4 {
entry:
  %mem.addr = alloca i8*, align 8
  %depth = alloca i32, align 4
  %nps = alloca [64 x %struct.device_node*], align 8
  store i8* %mem, i8** %mem.addr, align 8
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %depth, align 4
  %1 = bitcast [64 x %struct.device_node*]* %nps to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(512) %1, i8 0, i64 512, i1 false), !annotation !7
  %tobool = icmp ne i8* %mem, null
  %lnot = xor i1 %tobool, true
  %tobool1 = icmp ne %struct.device_node** %nodepp, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %nodepp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool2.not = icmp eq %struct.device_node* %dad, null
  br i1 %tobool2.not, label %for.body.lr.ph, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %depth, align 4
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end, %if.then3
  %2 = phi i32 [ 1, %if.then3 ], [ 0, %if.end ]
  %3 = zext i32 %2 to i64
  %arrayidx = getelementptr [64 x %struct.device_node*], [64 x %struct.device_node*]* %nps, i64 0, i64 %3
  store %struct.device_node* %dad, %struct.device_node** %arrayidx, align 8
  %or.cond = and i1 %tobool, %tobool1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %root.0105 = phi %struct.device_node* [ %dad, %for.body.lr.ph ], [ %root.1, %for.inc ]
  %offset.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %call53, %for.inc ]
  %4 = phi i32 [ %2, %for.body.lr.ph ], [ %.pr, %for.inc ]
  %cmp6 = icmp sgt i32 %4, 63
  br i1 %cmp6, label %if.then15, label %if.end26, !prof !8

if.then15:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/fdt.c\22; .popsection; .long 14472b - 14470b; .short 316; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %idxprom27 = sext i32 %4 to i64
  %arrayidx28 = getelementptr [64 x %struct.device_node*], [64 x %struct.device_node*]* %nps, i64 0, i64 %idxprom27
  %5 = load %struct.device_node*, %struct.device_node** %arrayidx28, align 8
  %add = add nsw i32 %4, 1
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr [64 x %struct.device_node*], [64 x %struct.device_node*]* %nps, i64 0, i64 %idxprom29
  %call = call fastcc i32 @populate_node(i8* noundef %blob, i32 noundef %offset.0104, i8** noundef nonnull %mem.addr, %struct.device_node* noundef %5, %struct.device_node** noundef %arrayidx30, i1 noundef %lnot) #21
  %cmp32 = icmp slt i32 %call, 0
  br i1 %cmp32, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end26
  br i1 %or.cond, label %land.lhs.true38, label %if.end44

land.lhs.true38:                                  ; preds = %if.end35
  %6 = load %struct.device_node*, %struct.device_node** %nodepp, align 8
  %tobool39.not = icmp eq %struct.device_node* %6, null
  br i1 %tobool39.not, label %if.then40, label %if.end44

if.then40:                                        ; preds = %land.lhs.true38
  %7 = load i32, i32* %depth, align 4
  %add41 = add i32 %7, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr [64 x %struct.device_node*], [64 x %struct.device_node*]* %nps, i64 0, i64 %idxprom42
  %8 = load %struct.device_node*, %struct.device_node** %arrayidx43, align 8
  store %struct.device_node* %8, %struct.device_node** %nodepp, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %land.lhs.true38, %if.end35
  %tobool47 = icmp ne %struct.device_node* %root.0105, null
  %or.cond74 = select i1 %lnot, i1 true, i1 %tobool47
  br i1 %or.cond74, label %for.inc, label %if.then48

if.then48:                                        ; preds = %if.end44
  %9 = load i32, i32* %depth, align 4
  %add49 = add i32 %9, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr [64 x %struct.device_node*], [64 x %struct.device_node*]* %nps, i64 0, i64 %idxprom50
  %10 = load %struct.device_node*, %struct.device_node** %arrayidx51, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end44, %if.then48
  %root.1 = phi %struct.device_node* [ %root.0105, %if.then15 ], [ %root.0105, %if.end44 ], [ %10, %if.then48 ]
  %call53 = call i32 @fdt_next_node(i8* noundef %blob, i32 noundef %offset.0104, i32* noundef nonnull %depth) #18
  %.pr = load i32, i32* %depth, align 4
  %cmp = icmp sgt i32 %call53, -1
  %cmp5 = icmp sge i32 %.pr, %2
  %11 = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %11, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %12 = icmp slt i32 %call53, -1
  br i1 %12, label %do.end, label %if.end62

do.end:                                           ; preds = %for.end
  %call61 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call53) #20
  br label %cleanup

if.end62:                                         ; preds = %for.end
  br i1 %tobool, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end62
  call fastcc void @reverse_nodes(%struct.device_node* noundef %root.1) #21
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end62
  %13 = load i8*, i8** %mem.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %mem to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv66 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end65, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %conv66, %if.end65 ], [ %call, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_node_set_flag(%struct.device_node* noundef %n) unnamed_addr #4 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  call fastcc void @set_bit(i64* noundef %_flags) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @of_fdt_unflatten_tree(i64* noundef %blob, %struct.device_node* noundef %dad, %struct.device_node** noundef %mynodes) local_unnamed_addr #4 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @of_fdt_unflatten_mutex) #18
  %0 = bitcast i64* %blob to i8*
  %call = call i8* @__unflatten_device_tree(i8* noundef %0, %struct.device_node* noundef %dad, %struct.device_node** noundef %mynodes, i8* (i64, i64)* noundef nonnull @kernel_tree_alloc, i1 noundef true) #21
  call void @mutex_unlock(%struct.mutex* noundef nonnull @of_fdt_unflatten_mutex) #18
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @kernel_tree_alloc(i64 noundef %size, i64 noundef %align) #4 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef %size) #21
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @early_init_fdt_scan_reserved_mem() local_unnamed_addr #0 section ".init.text" {
entry:
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  %0 = bitcast i64* %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %base, align 8, !annotation !7
  %1 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %size, align 8, !annotation !7
  %2 = load i8*, i8** @initial_boot_params, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call10 = call i32 @fdt_get_mem_rsv(i8* noundef nonnull %2, i32 noundef 0, i64* noundef nonnull %base, i64* noundef nonnull %size) #18
  %3 = load i64, i64* %size, align 8
  %tobool1.not11 = icmp eq i64 %3, 0
  br i1 %tobool1.not11, label %for.end, label %if.end3

if.end3:                                          ; preds = %for.cond.preheader, %if.end3
  %4 = phi i64 [ %7, %if.end3 ], [ %3, %for.cond.preheader ]
  %n.012 = phi i32 [ %inc, %if.end3 ], [ 0, %for.cond.preheader ]
  %5 = load i64, i64* %base, align 8
  %call4 = call fastcc i32 @early_init_dt_reserve_memory_arch(i64 noundef %5, i64 noundef %4, i1 noundef false) #22
  %inc = add i32 %n.012, 1
  %6 = load i8*, i8** @initial_boot_params, align 8
  %call = call i32 @fdt_get_mem_rsv(i8* noundef %6, i32 noundef %inc, i64* noundef nonnull %base, i64* noundef nonnull %size) #18
  %7 = load i64, i64* %size, align 8
  %tobool1.not = icmp eq i64 %7, 0
  br i1 %tobool1.not, label %for.end, label %if.end3

for.end:                                          ; preds = %if.end3, %for.cond.preheader
  %call5 = call i32 @of_scan_flat_dt(i32 (i64, i8*, i32, i8*)* noundef nonnull @__fdt_scan_reserved_mem, i8* noundef null) #21
  call void @fdt_init_reserved_mem() #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_get_mem_rsv(i8* noundef, i32 noundef, i64* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @early_init_dt_reserve_memory_arch(i64 noundef %base, i64 noundef %size, i1 noundef %nomap) unnamed_addr #0 section ".init.text" {
entry:
  br i1 %nomap, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call i1 @memblock_is_region_reserved(i64 noundef %base, i64 noundef %size) #18
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %call2 = call i32 @memblock_mark_nomap(i64 noundef %base, i64 noundef %size) #18
  br label %return

if.end3:                                          ; preds = %entry
  %call4 = call i32 @memblock_reserve(i64 noundef %base, i64 noundef %size) #18
  br label %return

return:                                           ; preds = %if.then, %if.end3, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call4, %if.end3 ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @of_scan_flat_dt(i32 (i64, i8*, i32, i8*)* nocapture noundef readonly %it, i8* noundef %data) local_unnamed_addr #0 section ".init.text" {
entry:
  %depth = alloca i32, align 4
  %0 = load i8*, i8** @initial_boot_params, align 8
  %1 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 -1, i32* %depth, align 4
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @fdt_next_node(i8* noundef nonnull %0, i32 noundef -1, i32* noundef nonnull %depth) #18
  %cmp22 = icmp sgt i32 %call, -1
  %2 = load i32, i32* %depth, align 4
  %cmp123 = icmp sgt i32 %2, -1
  %or.cond24 = select i1 %cmp22, i1 %cmp123, i1 false
  br i1 %or.cond24, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.body
  %offset.025 = phi i32 [ %call5, %for.body ], [ %call, %if.end ]
  %call3 = call i8* @fdt_get_name(i8* noundef nonnull %0, i32 noundef %offset.025, i32* noundef null) #18
  %conv21 = zext i32 %offset.025 to i64
  %3 = load i32, i32* %depth, align 4
  %call4 = call i32 %it(i64 noundef %conv21, i8* noundef %call3, i32 noundef %3, i8* noundef %data) #18
  %call5 = call i32 @fdt_next_node(i8* noundef nonnull %0, i32 noundef %offset.025, i32* noundef nonnull %depth) #18
  %cmp = icmp sgt i32 %call5, -1
  %4 = load i32, i32* %depth, align 4
  %cmp1 = icmp sgt i32 %4, -1
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  %tobool2.not = icmp eq i32 %call4, 0
  %5 = select i1 %or.cond, i1 %tobool2.not, i1 false
  br i1 %5, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %call4, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @__fdt_scan_reserved_mem(i64 noundef %node, i8* noundef %uname, i32 noundef %depth, i8* nocapture noundef readnone %data) #0 section ".init.text" {
entry:
  %.b36 = load i1, i1* @__fdt_scan_reserved_mem.found, align 4
  %cmp = icmp ne i32 %depth, 1
  %0 = or i1 %cmp, %.b36
  br i1 %0, label %if.else, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %entry
  %call = call i32 @strcmp(i8* noundef %uname, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0)) #18
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.elsethread-pre-split

if.then:                                          ; preds = %land.lhs.true1
  %call3 = call fastcc i32 @__reserved_mem_check_root(i64 noundef %node) #22
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.36, i64 0, i64 0)) #20
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i1 true, i1* @__fdt_scan_reserved_mem.found, align 4
  br label %cleanup

if.elsethread-pre-split:                          ; preds = %land.lhs.true1
  %.b.pr = load i1, i1* @__fdt_scan_reserved_mem.found, align 4
  %spec.select = zext i1 %.b.pr to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %.b36, label %if.else9, label %cleanup

if.else9:                                         ; preds = %if.else
  %cmp12 = icmp slt i32 %depth, 2
  br i1 %cmp12, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.else9
  %1 = load i8*, i8** @initial_boot_params, align 8
  %call17 = call fastcc i1 @of_fdt_device_is_available(i8* noundef %1, i64 noundef %node) #21
  br i1 %call17, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end16
  %call20 = call fastcc i32 @__reserved_mem_reserve_reg(i64 noundef %node, i8* noundef %uname) #22
  %cmp21 = icmp eq i32 %call20, -2
  br i1 %cmp21, label %land.lhs.true22, label %cleanup

land.lhs.true22:                                  ; preds = %if.end19
  %call23 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32* noundef null) #21
  %tobool24.not = icmp eq i8* %call23, null
  br i1 %tobool24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  call void @fdt_reserved_mem_save_node(i64 noundef %node, i8* noundef %uname, i64 noundef 0, i64 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.elsethread-pre-split, %if.end19, %land.lhs.true22, %if.then25, %if.end16, %if.else9, %if.else, %if.end, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.end ], [ 0, %if.else ], [ 1, %if.else9 ], [ 0, %if.end16 ], [ 0, %if.then25 ], [ 0, %land.lhs.true22 ], [ 0, %if.end19 ], [ %spec.select, %if.elsethread-pre-split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdt_init_reserved_mem() local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @early_init_fdt_reserve_self() local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = ptrtoint i8* %0 to i64
  %sub = add i64 %1, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %2 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %2, %sub
  %3 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %1, %3
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  %totalsize = getelementptr inbounds i8, i8* %0, i64 4
  %4 = bitcast i8* %totalsize to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %4) #21
  %conv = zext i32 %call to i64
  %call4 = call fastcc i32 @early_init_dt_reserve_memory_arch(i64 noundef %cond, i64 noundef %conv, i1 noundef false) #22
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt32_ld(i32* nocapture noundef readonly %p) unnamed_addr #6 {
entry:
  %0 = bitcast i32* %p to i8*
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr i8, i8* %0, i64 1
  %2 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %2 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr i8, i8* %0, i64 2
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr i8, i8* %0, i64 3
  %4 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %4 to i32
  %or10 = or i32 %or7, %conv9
  ret i32 %or10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_node(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_get_name(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @of_scan_flat_dt_subnodes(i64 noundef %parent, i32 (i64, i8*, i8*)* nocapture noundef readonly %it, i8* noundef %data) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %conv = trunc i64 %parent to i32
  %call = call i32 @fdt_first_subnode(i8* noundef %0, i32 noundef %conv) #18
  %cmp20 = icmp sgt i32 %call, -1
  br i1 %cmp20, label %for.body, label %cleanup7

for.body:                                         ; preds = %entry, %for.inc
  %node.021 = phi i32 [ %call6, %for.inc ], [ %call, %entry ]
  %call2 = call i8* @fdt_get_name(i8* noundef %0, i32 noundef %node.021, i32* noundef null) #18
  %conv319 = zext i32 %node.021 to i64
  %call4 = call i32 %it(i64 noundef %conv319, i8* noundef %call2, i8* noundef %data) #18
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.inc, label %cleanup7

for.inc:                                          ; preds = %for.body
  %call6 = call i32 @fdt_next_subnode(i8* noundef %0, i32 noundef %node.021) #18
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %for.body, label %cleanup7

cleanup7:                                         ; preds = %for.body, %for.inc, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.inc ], [ %call4, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_first_subnode(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_subnode(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @of_get_flat_dt_subnode_by_name(i64 noundef %node, i8* noundef %uname) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %conv = trunc i64 %node to i32
  %call = call i32 @fdt_subnode_offset(i8* noundef %0, i32 noundef %conv, i8* noundef %uname) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_subnode_offset(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define dso_local i64 @of_get_flat_dt_root() local_unnamed_addr #7 section ".init.text" {
entry:
  ret i64 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef %name, i32* noundef %size) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %conv = trunc i64 %node to i32
  %call = call i8* @fdt_getprop(i8* noundef %0, i32 noundef %conv, i8* noundef %name, i32* noundef %size) #18
  ret i8* %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @of_flat_dt_is_compatible(i64 noundef %node, i8* noundef %compat) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %call = call fastcc i32 @of_fdt_is_compatible(i8* noundef %0, i64 noundef %node, i8* noundef %compat) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @of_fdt_is_compatible(i8* noundef %blob, i64 noundef %node, i8* noundef %compat) unnamed_addr #4 {
entry:
  %cplen = alloca i32, align 4
  %0 = bitcast i32* %cplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %cplen, align 4, !annotation !7
  %conv = trunc i64 %node to i32
  %call = call i8* @fdt_getprop(i8* noundef %blob, i32 noundef %conv, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* noundef nonnull %cplen) #18
  %cmp = icmp ne i8* %call, null
  %.pr = load i32, i32* %cplen, align 4
  %cmp225 = icmp sgt i32 %.pr, 0
  %or.cond = select i1 %cmp, i1 %cmp225, i1 false
  br i1 %or.cond, label %while.body, label %cleanup

while.body:                                       ; preds = %entry, %if.end9
  %score.027 = phi i64 [ %inc, %if.end9 ], [ 0, %entry ]
  %cp.026 = phi i8* [ %add.ptr, %if.end9 ], [ %call, %entry ]
  %inc = add i64 %score.027, 1
  %call4 = call i32 @strcasecmp(i8* noundef %cp.026, i8* noundef %compat) #18
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %while.body
  %conv8 = trunc i64 %inc to i32
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %call10 = call i64 @strlen(i8* noundef %cp.026) #18
  %add = add i64 %call10, 1
  %add.ptr = getelementptr i8, i8* %cp.026, i64 %add
  %1 = load i32, i32* %cplen, align 4
  %2 = trunc i64 %add to i32
  %conv12 = sub i32 %1, %2
  store i32 %conv12, i32* %cplen, align 4
  %cmp2 = icmp sgt i32 %conv12, 0
  br i1 %cmp2, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.end9, %entry, %if.then7
  %retval.0 = phi i32 [ %conv8, %if.then7 ], [ 0, %entry ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @of_get_flat_dt_phandle(i64 noundef %node) local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %conv = trunc i64 %node to i32
  %call = call i32 @fdt_get_phandle(i8* noundef %0, i32 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_get_phandle(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @of_flat_dt_get_machine_name() local_unnamed_addr #0 section ".init.text" {
entry:
  %call1 = call i8* @of_get_flat_dt_prop(i64 noundef 0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* noundef null) #22
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i8* @of_get_flat_dt_prop(i64 noundef 0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* noundef null) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %name.0 = phi i8* [ %call1, %entry ], [ %call2, %if.then ]
  ret i8* %name.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @of_flat_dt_match_machine(i8* noundef readnone %default_match, i8* (i8***)* nocapture noundef readonly %get_next_compat) local_unnamed_addr #0 section ".init.text" {
entry:
  %compat = alloca i8**, align 8
  %size = alloca i32, align 4
  %0 = bitcast i8*** %compat to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i8** null, i8*** %compat, align 8, !annotation !7
  %call157 = call i8* %get_next_compat(i8*** noundef nonnull %compat) #18
  %tobool.not58 = icmp eq i8* %call157, null
  br i1 %tobool.not58, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call161 = phi i8* [ %call1, %while.body ], [ %call157, %entry ]
  %best_data.060 = phi i8* [ %best_data.1, %while.body ], [ %default_match, %entry ]
  %best_score.059 = phi i32 [ %best_score.1, %while.body ], [ -2, %entry ]
  %1 = load i8**, i8*** %compat, align 8
  %call2 = call fastcc i32 @of_flat_dt_match(i8** noundef %1) #22
  %cmp.not = icmp ne i32 %call2, 0
  %cmp3 = icmp ult i32 %call2, %best_score.059
  %or.cond56 = select i1 %cmp.not, i1 %cmp3, i1 false
  %best_score.1 = select i1 %or.cond56, i32 %call2, i32 %best_score.059
  %best_data.1 = select i1 %or.cond56, i8* %call161, i8* %best_data.060
  %call1 = call i8* %get_next_compat(i8*** noundef nonnull %compat) #18
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %best_data.0.lcssa = phi i8* [ %default_match, %entry ], [ %best_data.1, %while.body ]
  %tobool4.not = icmp eq i8* %best_data.0.lcssa, null
  br i1 %tobool4.not, label %if.then5, label %do.end32

if.then5:                                         ; preds = %while.end
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #17
  store i32 0, i32* %size, align 4, !annotation !7
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0)) #20
  %call7 = call i8* @of_get_flat_dt_prop(i64 noundef 0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* noundef nonnull %size) #22
  %tobool8 = icmp ne i8* %call7, null
  %3 = load i32, i32* %size, align 4
  %cmp11 = icmp sgt i32 %3, 0
  %or.cond = select i1 %tobool8, i1 %cmp11, i1 false
  br i1 %or.cond, label %do.end15, label %do.end26

do.end15:                                         ; preds = %if.then5, %do.end15
  %prop.0 = phi i8* [ %add.ptr, %do.end15 ], [ %call7, %if.then5 ]
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef %prop.0) #20
  %call18 = call i64 @strlen(i8* noundef %prop.0) #18
  %4 = load i32, i32* %size, align 4
  %5 = trunc i64 %call18 to i32
  %6 = xor i32 %5, -1
  %conv19 = add i32 %4, %6
  store i32 %conv19, i32* %size, align 4
  %call20 = call i64 @strlen(i8* noundef %prop.0) #18
  %add21 = add i64 %call20, 1
  %add.ptr = getelementptr i8, i8* %prop.0, i64 %add21
  %.old = load i32, i32* %size, align 4
  %cmp11.old = icmp sgt i32 %.old, 0
  br i1 %cmp11.old, label %do.end15, label %do.end26

do.end26:                                         ; preds = %do.end15, %if.then5
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #17
  br label %cleanup

do.end32:                                         ; preds = %while.end
  %call34 = call i8* @of_flat_dt_get_machine_name() #22
  %call35 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call34) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end26
  %retval.0 = phi i8* [ %best_data.0.lcssa, %do.end32 ], [ null, %do.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i8* %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @of_flat_dt_match(i8** noundef readonly %compat) unnamed_addr #0 section ".init.text" {
entry:
  %tobool.not = icmp eq i8** %compat, null
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = load i8*, i8** %compat, align 8
  %tobool1.not1 = icmp eq i8* %0, null
  br i1 %tobool1.not1, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %1 = phi i8* [ %3, %while.body ], [ %0, %while.cond.preheader ]
  %score.03 = phi i32 [ %score.1, %while.body ], [ 0, %while.cond.preheader ]
  %compat.addr.02 = phi i8** [ %incdec.ptr, %while.body ], [ %compat, %while.cond.preheader ]
  %2 = load i8*, i8** @initial_boot_params, align 8
  %call = call fastcc i32 @of_fdt_is_compatible(i8* noundef %2, i64 noundef 0, i8* noundef nonnull %1) #21
  %tobool2.not = icmp eq i32 %call, 0
  %cmp = icmp eq i32 %score.03, 0
  %cmp3 = icmp ult i32 %call, %score.03
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %spec.select = select i1 %or.cond, i32 %call, i32 %score.03
  %score.1 = select i1 %tobool2.not, i32 %score.03, i32 %spec.select
  %incdec.ptr = getelementptr i8*, i8** %compat.addr.02, i64 1
  %3 = load i8*, i8** %incdec.ptr, align 8
  %tobool1.not = icmp eq i8* %3, null
  br i1 %tobool1.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %while.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %while.cond.preheader ], [ %score.1, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @early_init_dt_scan_root(i64 noundef %node, i8* nocapture readnone %uname, i32 noundef %depth, i8* nocapture readnone %data) #0 section ".init.text" {
entry:
  %cmp.not = icmp eq i32 %depth, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, i32* @dt_root_size_cells, align 4
  store i32 1, i32* @dt_root_addr_cells, align 4
  %call = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* noundef null) #22
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end3, label %__be32_to_cpup.exit

__be32_to_cpup.exit:                              ; preds = %if.end
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %1) #19
  store i32 %call.i.i, i32* @dt_root_size_cells, align 4
  br label %if.end3

if.end3:                                          ; preds = %__be32_to_cpup.exit, %if.end
  %call4 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* noundef null) #22
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %cleanup, label %__be32_to_cpup.exit21

__be32_to_cpup.exit21:                            ; preds = %if.end3
  %2 = bitcast i8* %call4 to i32*
  %3 = load i32, i32* %2, align 4
  %call.i.i18 = call fastcc i32 @__fswab32(i32 noundef %3) #19
  store i32 %call.i.i18, i32* @dt_root_addr_cells, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %__be32_to_cpup.exit21, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %__be32_to_cpup.exit21 ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: cold nofree noinline nosync nounwind null_pointer_is_valid optsize
define dso_local i64 @dt_mem_next_cell(i32 noundef %s, i32** nocapture noundef %cellp) local_unnamed_addr #8 section ".init.text" {
entry:
  %0 = load i32*, i32** %cellp, align 8
  %idx.ext = sext i32 %s to i64
  %add.ptr = getelementptr i32, i32* %0, i64 %idx.ext
  store i32* %add.ptr, i32** %cellp, align 8
  %call = call fastcc i64 @of_read_number(i32* noundef %0, i32 noundef %s) #21
  ret i64 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_number(i32* nocapture noundef readonly %cell, i32 noundef %size) unnamed_addr #9 {
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

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @early_init_dt_scan_memory(i64 noundef %node, i8* nocapture readnone %uname, i32 %depth, i8* nocapture readnone %data) #0 section ".init.text" {
entry:
  %reg = alloca i32*, align 8
  %l = alloca i32, align 4
  %call = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* noundef null) #22
  %0 = bitcast i32** %reg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %l, align 4, !annotation !7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #18
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end, label %cleanup33

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull %l) #22
  %2 = bitcast i32** %reg to i8**
  store i8* %call3, i8** %2, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.end7, label %if.end10

if.end7:                                          ; preds = %if.end
  %call6 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %l) #22
  store i8* %call6, i8** %2, align 8
  %cmp8 = icmp eq i8* %call6, null
  br i1 %cmp8, label %cleanup33, label %if.end10

if.end10:                                         ; preds = %if.end, %if.end7
  %.in61 = phi i8* [ %call6, %if.end7 ], [ %call3, %if.end ]
  %3 = bitcast i8* %.in61 to i32*
  %4 = load i32, i32* %l, align 4
  %conv = sext i32 %4 to i64
  %div = lshr i64 %conv, 2
  %add.ptr = getelementptr i32, i32* %3, i64 %div
  %call11 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* noundef null) #22
  %tobool.not = icmp eq i8* %call11, null
  %sub.ptr.lhs.cast = ptrtoint i32* %add.ptr to i64
  %sub.ptr.rhs.cast52 = ptrtoint i8* %.in61 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast52
  %sub.ptr.div54 = ashr exact i64 %sub.ptr.sub53, 2
  %5 = load i32, i32* @dt_root_addr_cells, align 4
  %6 = load i32, i32* @dt_root_size_cells, align 4
  %add55 = add i32 %6, %5
  %conv1256 = sext i32 %add55 to i64
  %cmp13.not57 = icmp slt i64 %sub.ptr.div54, %conv1256
  br i1 %cmp13.not57, label %cleanup33, label %while.body

while.body:                                       ; preds = %if.end10, %cleanup
  %7 = phi i32 [ %10, %cleanup ], [ %5, %if.end10 ]
  %call15 = call i64 @dt_mem_next_cell(i32 noundef %7, i32** noundef nonnull %reg) #22
  %8 = load i32, i32* @dt_root_size_cells, align 4
  %call16 = call i64 @dt_mem_next_cell(i32 noundef %8, i32** noundef nonnull %reg) #22
  %cmp17 = icmp eq i64 %call16, 0
  br i1 %cmp17, label %cleanup, label %if.end20

if.end20:                                         ; preds = %while.body
  call void @early_init_dt_add_memory_arch(i64 noundef %call15, i64 noundef %call16) #21
  br i1 %tobool.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @memblock_mark_hotplug(i64 noundef %call15, i64 noundef %call16) #18
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end24
  %add29 = add i64 %call16, %call15
  %call30 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0), i64 noundef %call15, i64 noundef %add29) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %if.end20, %while.body
  %9 = load i32*, i32** %reg, align 8
  %sub.ptr.rhs.cast = ptrtoint i32* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %10 = load i32, i32* @dt_root_addr_cells, align 4
  %11 = load i32, i32* @dt_root_size_cells, align 4
  %add = add i32 %11, %10
  %conv12 = sext i32 %add to i64
  %cmp13.not = icmp slt i64 %sub.ptr.div, %conv12
  br i1 %cmp13.not, label %cleanup33, label %while.body

cleanup33:                                        ; preds = %cleanup, %if.end10, %if.end7, %entry, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @early_init_dt_add_memory_arch(i64 noundef %base, i64 noundef %size) local_unnamed_addr #0 section ".init.text" {
entry:
  %and = and i64 %base, 4095
  %sub = sub nuw nsw i64 4096, %and
  %cmp = icmp ugt i64 %sub, %size
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %add = add i64 %size, %base
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0), i64 noundef %base, i64 noundef %add) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i64 %and, 0
  %add7 = add i64 %base, 4095
  %and8 = and i64 %add7, -4096
  %sub6 = select i1 %cmp2, i64 0, i64 %sub
  %size.addr.0 = sub i64 %size, %sub6
  %base.addr.0 = select i1 %cmp2, i64 %base, i64 %and8
  %and10 = and i64 %size.addr.0, -4096
  %call53 = call i32 @memblock_add(i64 noundef %base.addr.0, i64 noundef %and10) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_hotplug(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @early_init_dt_scan_chosen(i64 noundef %node, i8* noundef %uname, i32 noundef %depth, i8* noundef %data) #0 section ".init.text" {
entry:
  %l = alloca i32, align 4
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %l, align 4, !annotation !7
  %cmp = icmp eq i32 %depth, 1
  %tobool = icmp ne i8* %data, null
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %lor.lhs.false1, label %cleanup

lor.lhs.false1:                                   ; preds = %entry
  %call = call i32 @strcmp(i8* noundef %uname, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #18
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false1
  %call3 = call i32 @strcmp(i8* noundef %uname, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #18
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false1
  call fastcc void @early_init_dt_check_for_usable_mem_range(i64 noundef %node) #22
  %call5 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32* noundef nonnull %l) #22
  %cmp6 = icmp ne i8* %call5, null
  %1 = load i32, i32* %l, align 4
  %cmp8 = icmp sgt i32 %1, 0
  %or.cond33 = select i1 %cmp6, i1 %cmp8, i1 false
  br i1 %or.cond33, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  %cmp11 = icmp ult i32 %1, 2048
  %cond = select i1 %cmp11, i32 %1, i32 2048
  %conv53 = zext i32 %cond to i64
  %call12 = call i64 @strlcpy(i8* noundef nonnull %data, i8* noundef nonnull %call5, i64 noundef %conv53) #18
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end
  %2 = load i8, i8* %data, align 1
  %tobool14.not = icmp eq i8 %2, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %call16 = call i64 @strlcpy(i8* noundef nonnull %data, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i64 noundef 2048) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %call19 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32* noundef nonnull %l) #22
  %tobool20 = icmp ne i8* %call19, null
  %3 = load i32, i32* %l, align 4
  %cmp22 = icmp sgt i32 %3, 0
  %or.cond34 = select i1 %tobool20, i1 %cmp22, i1 false
  br i1 %or.cond34, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.end17
  call void @add_bootloader_randomness(i8* noundef nonnull %call19, i32 noundef %3) #18
  %4 = load i8*, i8** @initial_boot_params, align 8
  %conv25 = trunc i64 %node to i32
  %call26 = call i32 @fdt_nop_property(i8* noundef %4, i32 noundef %conv25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)) #18
  %5 = load i8*, i8** @initial_boot_params, align 8
  %totalsize = getelementptr inbounds i8, i8* %5, i64 4
  %6 = bitcast i8* %totalsize to i32*
  %call27 = call fastcc i32 @fdt32_ld(i32* noundef %6) #21
  %conv28 = zext i32 %call27 to i64
  %call29 = call i32 @crc32_be(i32 noundef -1, i8* noundef %5, i64 noundef %conv28) #23
  store i32 %call29, i32* @of_fdt_crc32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then24, %entry, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %if.then24 ], [ 1, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @early_init_dt_check_for_usable_mem_range(i64 noundef %node) unnamed_addr #0 section ".init.text" {
entry:
  %prop = alloca i32*, align 8
  %len = alloca i32, align 4
  %0 = bitcast i32** %prop to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i32* noundef nonnull %len) #22
  %2 = bitcast i32** %prop to i8**
  store i8* %call, i8** %2, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %len, align 4
  %4 = load i32, i32* @dt_root_addr_cells, align 4
  %5 = load i32, i32* @dt_root_size_cells, align 4
  %add = add i32 %5, %4
  %cmp = icmp slt i32 %3, %add
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i64 @dt_mem_next_cell(i32 noundef %4, i32** noundef nonnull %prop) #21
  store i64 %call1, i64* @cap_mem_addr, align 8
  %6 = load i32, i32* @dt_root_size_cells, align 4
  %call2 = call i64 @dt_mem_next_cell(i32 noundef %6, i32** noundef nonnull %prop) #21
  store i64 %call2, i64* @cap_mem_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_bootloader_randomness(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_nop_property(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_add(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i1 @early_init_dt_verify(i8* noundef %params) local_unnamed_addr #0 section ".init.text" {
entry:
  %tobool.not = icmp eq i8* %params, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @fdt_check_header(i8* noundef nonnull %params) #18
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  store i8* %params, i8** @initial_boot_params, align 8
  %totalsize = getelementptr inbounds i8, i8* %params, i64 4
  %0 = bitcast i8* %totalsize to i32*
  %call4 = call fastcc i32 @fdt32_ld(i32* noundef %0) #21
  %conv = zext i32 %call4 to i64
  %call5 = call i32 @crc32_be(i32 noundef -1, i8* noundef nonnull %params, i64 noundef %conv) #23
  store i32 %call5, i32* @of_fdt_crc32, align 4
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @early_init_dt_scan_nodes() local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call i32 @of_scan_flat_dt(i32 (i64, i8*, i32, i8*)* noundef nonnull @early_init_dt_scan_root, i8* noundef null) #22
  %call1 = call i32 @of_scan_flat_dt(i32 (i64, i8*, i32, i8*)* noundef nonnull @early_init_dt_scan_chosen, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @boot_command_line, i64 0, i64 0)) #22
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0)) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call3 = call i32 @of_scan_flat_dt(i32 (i64, i8*, i32, i8*)* noundef nonnull @early_init_dt_scan_memory, i8* noundef null) #22
  %0 = load i64, i64* @cap_mem_addr, align 8
  %1 = load i64, i64* @cap_mem_size, align 8
  call void @memblock_cap_memory_range(i64 noundef %0, i64 noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_cap_memory_range(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i1 @early_init_dt_scan(i8* noundef %params) local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call i1 @early_init_dt_verify(i8* noundef %params) #22
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @early_init_dt_scan_nodes() #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @unflatten_device_tree() local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %call = call i8* @__unflatten_device_tree(i8* noundef %0, %struct.device_node* noundef null, %struct.device_node** noundef nonnull @of_root, i8* (i64, i64)* noundef nonnull @early_init_dt_alloc_memory_arch, i1 noundef false) #21
  call void @of_alias_scan(i8* (i64, i64)* noundef nonnull @early_init_dt_alloc_memory_arch) #18
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i8* @early_init_dt_alloc_memory_arch(i64 noundef %size, i64 noundef %align) #0 section ".init.text" {
entry:
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %size, i64 noundef %align, i64 noundef 0, i64 noundef 0, i32 noundef -1) #18
  %tobool.not = icmp eq i8* %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.early_init_dt_alloc_memory_arch, i64 0, i64 0), i64 noundef %size, i64 noundef %align) #24
  unreachable

if.end:                                           ; preds = %entry
  ret i8* %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_alias_scan(i8* (i64, i64)* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @unflatten_and_copy_device_tree() local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.26, i64 0, i64 0)) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %totalsize = getelementptr inbounds i8, i8* %0, i64 4
  %1 = bitcast i8* %totalsize to i32*
  %call1 = call fastcc i32 @fdt32_ld(i32* noundef %1) #21
  %conv = sext i32 %call1 to i64
  %call2 = call i8* @early_init_dt_alloc_memory_arch(i64 noundef %conv, i64 noundef 64) #22
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** @initial_boot_params, align 8
  %call6 = call i8* @memcpy(i8* noundef nonnull %call2, i8* noundef %2, i64 noundef %conv) #18
  store i8* %call2, i8** @initial_boot_params, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  call void @unflatten_device_tree() #22
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @of_fdt_raw_init() #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @of_fdt_crc32, align 4
  %totalsize = getelementptr inbounds i8, i8* %0, i64 4
  %2 = bitcast i8* %totalsize to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %2) #21
  %conv = zext i32 %call to i64
  %call1 = call i32 @crc32_be(i32 noundef -1, i8* noundef nonnull %0, i64 noundef %conv) #23
  %cmp.not = icmp eq i32 %1, %call1
  br i1 %cmp.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.48, i64 0, i64 0)) #20
  br label %return

if.end5:                                          ; preds = %if.end
  %totalsize6 = getelementptr inbounds i8, i8* %0, i64 4
  %3 = bitcast i8* %totalsize6 to i32*
  %call7 = call fastcc i32 @fdt32_ld(i32* noundef %3) #21
  %conv8 = zext i32 %call7 to i64
  store i64 %conv8, i64* getelementptr inbounds (%struct.bin_attribute, %struct.bin_attribute* @of_fdt_raw_init.of_fdt_raw_attr, i64 0, i32 1), align 8
  %4 = load %struct.kobject*, %struct.kobject** @firmware_kobj, align 8
  %call9 = call i32 @sysfs_create_bin_file(%struct.kobject* noundef %4, %struct.bin_attribute* noundef nonnull @of_fdt_raw_init.of_fdt_raw_attr) #18
  br label %return

return:                                           ; preds = %entry, %if.end5, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call9, %if.end5 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @populate_node(i8* noundef %blob, i32 noundef %offset, i8** nocapture noundef %mem, %struct.device_node* noundef %dad, %struct.device_node** nocapture noundef writeonly %pnp, i1 noundef %dryrun) unnamed_addr #4 {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %len, align 4, !annotation !7
  %call = call i8* @fdt_get_name(i8* noundef %blob, i32 noundef %offset, i32* noundef nonnull %len) #18
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %pnp, align 8
  %1 = load i32, i32* %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %len, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %len, align 4
  %conv = sext i32 %inc to i64
  %add = add nsw i64 %conv, 208
  %call1 = call fastcc i8* @unflatten_dt_alloc(i8** noundef %mem, i64 noundef %add) #21
  %3 = bitcast i8* %call1 to %struct.device_node*
  br i1 %dryrun, label %if.end20.critedge, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @of_node_init(%struct.device_node* noundef %3) #21
  %add.ptr = getelementptr i8, i8* %call1, i64 208
  %full_name = getelementptr inbounds i8, i8* %call1, i64 16
  %4 = bitcast i8* %full_name to i8**
  store i8* %add.ptr, i8** %4, align 8
  %5 = load i32, i32* %len, align 4
  %conv4 = sext i32 %5 to i64
  %call5 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef nonnull %call, i64 noundef %conv4) #18
  %cmp.not = icmp eq %struct.device_node* %dad, null
  br i1 %cmp.not, label %if.then13, label %if.then7

if.then7:                                         ; preds = %if.then3
  %parent = getelementptr inbounds i8, i8* %call1, i64 104
  %6 = bitcast i8* %parent to %struct.device_node**
  store %struct.device_node* %dad, %struct.device_node** %6, align 8
  %child = getelementptr inbounds %struct.device_node, %struct.device_node* %dad, i64 0, i32 7
  %7 = load %struct.device_node*, %struct.device_node** %child, align 8
  %sibling = getelementptr inbounds i8, i8* %call1, i64 120
  %8 = bitcast i8* %sibling to %struct.device_node**
  store %struct.device_node* %7, %struct.device_node** %8, align 8
  %9 = bitcast %struct.device_node** %child to i8**
  store i8* %call1, i8** %9, align 8
  br label %if.then13

if.then13:                                        ; preds = %if.then7, %if.then3
  call fastcc void @populate_properties(i8* noundef %blob, i32 noundef %offset, i8** noundef %mem, %struct.device_node* noundef %3, i8* noundef nonnull %call, i1 noundef false) #21
  %call14 = call i8* @of_get_property(%struct.device_node* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32* noundef null) #18
  %name = bitcast i8* %call1 to i8**
  %tobool16.not = icmp eq i8* %call14, null
  %spec.store.select = select i1 %tobool16.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* %call14
  store i8* %spec.store.select, i8** %name, align 8
  br label %if.end20

if.end20.critedge:                                ; preds = %if.end
  call fastcc void @populate_properties(i8* noundef %blob, i32 noundef %offset, i8** noundef %mem, %struct.device_node* noundef %3, i8* noundef nonnull %call, i1 noundef true) #21
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end20.critedge
  %10 = bitcast %struct.device_node** %pnp to i8**
  store i8* %call1, i8** %10, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  %retval.0 = phi i32 [ 1, %if.end20 ], [ %1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @reverse_nodes(%struct.device_node* nocapture noundef %parent) unnamed_addr #12 {
entry:
  %child1 = getelementptr inbounds %struct.device_node, %struct.device_node* %parent, i64 0, i32 7
  %child.024 = load %struct.device_node*, %struct.device_node** %child1, align 8
  %tobool.not25 = icmp eq %struct.device_node* %child.024, null
  br i1 %tobool.not25, label %while.end.thread, label %while.body

while.end.thread:                                 ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %child1, align 8
  br label %while.end11

while.body:                                       ; preds = %entry, %while.body
  %child.026 = phi %struct.device_node* [ %child.0, %while.body ], [ %child.024, %entry ]
  call fastcc void @reverse_nodes(%struct.device_node* noundef nonnull %child.026) #21
  %sibling = getelementptr inbounds %struct.device_node, %struct.device_node* %child.026, i64 0, i32 8
  %child.0 = load %struct.device_node*, %struct.device_node** %sibling, align 8
  %tobool.not = icmp eq %struct.device_node* %child.0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %.pre = load %struct.device_node*, %struct.device_node** %child1, align 8
  store %struct.device_node* null, %struct.device_node** %child1, align 8
  %tobool5.not27 = icmp eq %struct.device_node* %.pre, null
  br i1 %tobool5.not27, label %while.end11, label %while.body6

while.body6:                                      ; preds = %while.end, %while.body6
  %child.129 = phi %struct.device_node* [ %0, %while.body6 ], [ %.pre, %while.end ]
  %storemerge28 = phi %struct.device_node* [ %child.129, %while.body6 ], [ null, %while.end ]
  %sibling7 = getelementptr inbounds %struct.device_node, %struct.device_node* %child.129, i64 0, i32 8
  %0 = load %struct.device_node*, %struct.device_node** %sibling7, align 8
  store %struct.device_node* %storemerge28, %struct.device_node** %sibling7, align 8
  store %struct.device_node* %child.129, %struct.device_node** %child1, align 8
  %tobool5.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool5.not, label %while.end11, label %while.body6

while.end11:                                      ; preds = %while.body6, %while.end.thread, %while.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @unflatten_dt_alloc(i8** nocapture noundef %mem, i64 noundef %size) unnamed_addr #13 {
entry:
  %0 = load i8*, i8** %mem, align 8
  %1 = ptrtoint i8* %0 to i64
  %add = add i64 %1, 7
  %and = and i64 %add, -8
  %2 = inttoptr i64 %and to i8*
  %add.ptr = getelementptr i8, i8* %2, i64 %size
  store i8* %add.ptr, i8** %mem, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @of_node_init(%struct.device_node* noundef %node) unnamed_addr #4 {
entry:
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 9
  call void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef nonnull @of_node_ktype) #18
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 3
  call fastcc void @fwnode_init(%struct.fwnode_handle* noundef %fwnode) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @populate_properties(i8* noundef %blob, i32 noundef %offset, i8** nocapture noundef %mem, %struct.device_node* nocapture noundef %np, i8* noundef %nodename, i1 noundef %dryrun) unnamed_addr #4 {
entry:
  %pname = alloca i8*, align 8
  %sz = alloca i32, align 4
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 4
  %call = call i32 @fdt_first_property_offset(i8* noundef %blob, i32 noundef %offset) #18
  %cmp134 = icmp sgt i32 %call, -1
  br i1 %cmp134, label %for.body.lr.ph, label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %entry
  %0 = bitcast i8** %pname to i8*
  %1 = bitcast i32* %sz to i8*
  %phandle = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %pprev.0138 = phi %struct.property** [ %properties, %for.body.lr.ph ], [ %pprev.1, %cleanup ]
  %cur.0136 = phi i32 [ %call, %for.body.lr.ph ], [ %call38, %cleanup ]
  %has_name.0.off0135 = phi i1 [ false, %for.body.lr.ph ], [ %has_name.2.off0, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i8* null, i8** %pname, align 8, !annotation !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %sz, align 4, !annotation !7
  %call1 = call i8* @fdt_getprop_by_offset(i8* noundef %blob, i32 noundef %cur.0136, i8** noundef nonnull %pname, i32* noundef nonnull %sz) #18
  %2 = bitcast i8* %call1 to i32*
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i32 noundef %cur.0136) #20
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = load i8*, i8** %pname, align 8
  %tobool3.not = icmp eq i8* %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0), i32 noundef %cur.0136) #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @strcmp(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #18
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i1 true, i1 %has_name.0.off0135
  %call15 = call fastcc i8* @unflatten_dt_alloc(i8** noundef %mem, i64 noundef 96) #21
  br i1 %dryrun, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end10
  %4 = load i8*, i8** %pname, align 8
  %call19 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0)) #18
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %5 = load i8*, i8** %pname, align 8
  %call21 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0)) #18
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end29

if.then23:                                        ; preds = %lor.lhs.false, %if.end18
  %6 = load i32, i32* %phandle, align 8
  %tobool24.not = icmp eq i32 %6, 0
  br i1 %tobool24.not, label %__be32_to_cpup.exit, label %if.end29

__be32_to_cpup.exit:                              ; preds = %if.then23
  %7 = load i32, i32* %2, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %7) #19
  store i32 %call.i.i, i32* %phandle, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %__be32_to_cpup.exit, %lor.lhs.false
  %8 = load i8*, i8** %pname, align 8
  %call30 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #18
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %__be32_to_cpup.exit133, label %if.end35

__be32_to_cpup.exit133:                           ; preds = %if.end29
  %9 = load i32, i32* %2, align 4
  %call.i.i130 = call fastcc i32 @__fswab32(i32 noundef %9) #19
  store i32 %call.i.i130, i32* %phandle, align 8
  br label %if.end35

if.end35:                                         ; preds = %__be32_to_cpup.exit133, %if.end29
  %10 = load i8*, i8** %pname, align 8
  %name = bitcast i8* %call15 to i8**
  store i8* %10, i8** %name, align 8
  %11 = load i32, i32* %sz, align 4
  %length = getelementptr inbounds i8, i8* %call15, i64 8
  %12 = bitcast i8* %length to i32*
  store i32 %11, i32* %12, align 8
  %value = getelementptr inbounds i8, i8* %call15, i64 16
  %13 = bitcast i8* %value to i8**
  store i8* %call1, i8** %13, align 8
  %14 = bitcast %struct.property** %pprev.0138 to i8**
  store i8* %call15, i8** %14, align 8
  %next = getelementptr inbounds i8, i8* %call15, i64 24
  %15 = bitcast i8* %next to %struct.property**
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end35, %do.end7, %do.end
  %has_name.2.off0 = phi i1 [ %spec.select, %if.end35 ], [ %has_name.0.off0135, %do.end7 ], [ %has_name.0.off0135, %do.end ], [ %spec.select, %if.end10 ]
  %pprev.1 = phi %struct.property** [ %15, %if.end35 ], [ %pprev.0138, %do.end7 ], [ %pprev.0138, %do.end ], [ %pprev.0138, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  %call38 = call i32 @fdt_next_property_offset(i8* noundef %blob, i32 noundef %cur.0136) #18
  %cmp = icmp sgt i32 %call38, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup
  br i1 %has_name.2.off0, label %if.end72, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry, %for.end
  %pprev.0.lcssa142 = phi %struct.property** [ %pprev.1, %for.end ], [ %properties, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end50
  %p.0 = phi i8* [ %incdec.ptr, %if.end50 ], [ %nodename, %while.cond.preheader ]
  %ps.0 = phi i8* [ %ps.1, %if.end50 ], [ %nodename, %while.cond.preheader ]
  %pa.0 = phi i8* [ %pa.1, %if.end50 ], [ null, %while.cond.preheader ]
  %16 = load i8, i8* %p.0, align 1
  switch i8 %16, label %if.end50.fold.split [
    i8 0, label %while.end
    i8 64, label %if.end50
    i8 47, label %if.then48
  ]

if.then48:                                        ; preds = %while.cond
  %add.ptr = getelementptr i8, i8* %p.0, i64 1
  br label %if.end50

if.end50.fold.split:                              ; preds = %while.cond
  br label %if.end50

if.end50:                                         ; preds = %while.cond, %if.end50.fold.split, %if.then48
  %ps.1 = phi i8* [ %add.ptr, %if.then48 ], [ %ps.0, %while.cond ], [ %ps.0, %if.end50.fold.split ]
  %pa.1 = phi i8* [ %pa.0, %if.then48 ], [ %p.0, %while.cond ], [ %pa.0, %if.end50.fold.split ]
  %incdec.ptr = getelementptr i8, i8* %p.0, i64 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp51 = icmp ult i8* %pa.0, %ps.0
  %spec.select127 = select i1 %cmp51, i8* %p.0, i8* %pa.0
  %sub.ptr.lhs.cast = ptrtoint i8* %spec.select127 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %ps.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = trunc i64 %sub.ptr.sub to i32
  %conv55 = add i32 %17, 1
  %conv56 = sext i32 %conv55 to i64
  %add57 = add nsw i64 %conv56, 96
  %call58 = call fastcc i8* @unflatten_dt_alloc(i8** noundef %mem, i64 noundef %add57) #21
  br i1 %dryrun, label %if.end72, label %if.then60

if.then60:                                        ; preds = %while.end
  %name61 = bitcast i8* %call58 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %name61, align 8
  %length62 = getelementptr inbounds i8, i8* %call58, i64 8
  %18 = bitcast i8* %length62 to i32*
  store i32 %conv55, i32* %18, align 8
  %add.ptr63 = getelementptr i8, i8* %call58, i64 96
  %value64 = getelementptr inbounds i8, i8* %call58, i64 16
  %19 = bitcast i8* %value64 to i8**
  store i8* %add.ptr63, i8** %19, align 8
  %20 = bitcast %struct.property** %pprev.0.lcssa142 to i8**
  store i8* %call58, i8** %20, align 8
  %21 = load i8*, i8** %19, align 8
  %sext = shl i64 %sub.ptr.sub, 32
  %conv66 = ashr exact i64 %sext, 32
  %call67 = call i8* @memcpy(i8* noundef %21, i8* noundef %ps.0, i64 noundef %conv66) #18
  %22 = load i8*, i8** %19, align 8
  %arrayidx = getelementptr i8, i8* %22, i64 %conv66
  store i8 0, i8* %arrayidx, align 1
  br label %if.end72

if.end72:                                         ; preds = %while.end, %if.then60, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @fwnode_init(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #14 {
entry:
  %ops1 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  store %struct.fwnode_operations* @of_fwnode_ops, %struct.fwnode_operations** %ops1, align 8
  %consumers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %consumers) #21
  %suppliers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %suppliers) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #14 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_first_property_offset(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fdt_getprop_by_offset(i8* noundef, i32 noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_property_offset(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #4 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #17, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #4 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #18
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @memblock_is_region_reserved(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @__reserved_mem_check_root(i64 noundef %node) unnamed_addr #0 section ".init.text" {
entry:
  %call = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* noundef null) #21
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %__be32_to_cpup.exit

__be32_to_cpup.exit:                              ; preds = %entry
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  %call.i.i = call fastcc i32 @__fswab32(i32 noundef %1) #19
  %2 = load i32, i32* @dt_root_size_cells, align 4
  %cmp.not = icmp eq i32 %call.i.i, %2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %__be32_to_cpup.exit
  %call2 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* noundef null) #21
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %cleanup, label %__be32_to_cpup.exit26

__be32_to_cpup.exit26:                            ; preds = %if.end
  %3 = bitcast i8* %call2 to i32*
  %4 = load i32, i32* %3, align 4
  %call.i.i23 = call fastcc i32 @__fswab32(i32 noundef %4) #19
  %5 = load i32, i32* @dt_root_addr_cells, align 4
  %cmp6.not = icmp eq i32 %call.i.i23, %5
  br i1 %cmp6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %__be32_to_cpup.exit26
  %call9 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32* noundef null) #21
  %tobool10.not = icmp eq i8* %call9, null
  %. = select i1 %tobool10.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %__be32_to_cpup.exit26, %entry, %__be32_to_cpup.exit
  %retval.0 = phi i32 [ -22, %__be32_to_cpup.exit ], [ -22, %entry ], [ -22, %__be32_to_cpup.exit26 ], [ -22, %if.end ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_fdt_device_is_available(i8* noundef %blob, i64 noundef %node) unnamed_addr #4 {
entry:
  %conv = trunc i64 %node to i32
  %call = call i8* @fdt_getprop(i8* noundef %blob, i32 noundef %conv, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32* noundef null) #18
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0)) #18
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #18
  %tobool4.not = icmp eq i32 %call3, 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %if.end ], [ %tobool4.not, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @__reserved_mem_reserve_reg(i64 noundef %node, i8* noundef %uname) unnamed_addr #0 section ".init.text" {
entry:
  %base = alloca i64, align 8
  %len = alloca i32, align 4
  %prop = alloca i32*, align 8
  %0 = load i32, i32* @dt_root_addr_cells, align 4
  %1 = load i32, i32* @dt_root_size_cells, align 4
  %add = add i32 %1, %0
  %mul = shl i32 %add, 2
  %2 = bitcast i64* %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 0, i64* %base, align 8, !annotation !7
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17
  store i32 0, i32* %len, align 4, !annotation !7
  %4 = bitcast i32** %prop to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #17
  %call = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %len) #21
  %5 = bitcast i32** %prop to i8**
  store i8* %call, i8** %5, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %len, align 4
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %rem = srem i32 %6, %mul
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %land.lhs.true
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.42, i64 0, i64 0), i8* noundef %uname) #20
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call7 = call i8* @of_get_flat_dt_prop(i64 noundef %node, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i32* noundef null) #21
  %cmp8 = icmp ne i8* %call7, null
  %7 = load i32, i32* %len, align 4
  %cmp10.not49 = icmp slt i32 %7, %mul
  br i1 %cmp10.not49, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end6, %if.end30
  %tobool28.not50 = phi i1 [ true, %if.end30 ], [ false, %if.end6 ]
  %8 = load i32, i32* @dt_root_addr_cells, align 4
  %call12 = call i64 @dt_mem_next_cell(i32 noundef %8, i32** noundef nonnull %prop) #21
  store i64 %call12, i64* %base, align 8
  %9 = load i32, i32* @dt_root_size_cells, align 4
  %call13 = call i64 @dt_mem_next_cell(i32 noundef %9, i32** noundef nonnull %prop) #21
  %tobool14.not = icmp eq i64 %call13, 0
  br i1 %tobool14.not, label %do.end24, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %while.body
  %10 = load i64, i64* %base, align 8
  %call17 = call fastcc i32 @early_init_dt_reserve_memory_arch(i64 noundef %10, i64 noundef %call13, i1 noundef %cmp8) #22
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end27, label %do.end24

do.end24:                                         ; preds = %while.body, %land.lhs.true15
  %div = lshr i64 %call13, 20
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.44, i64 0, i64 0), i8* noundef %uname, i64* noundef nonnull %base, i64 noundef %div) #20
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true15, %do.end24
  %11 = load i32, i32* %len, align 4
  %sub = sub i32 %11, %mul
  store i32 %sub, i32* %len, align 4
  br i1 %tobool28.not50, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end27
  %12 = load i64, i64* %base, align 8
  call void @fdt_reserved_mem_save_node(i64 noundef %node, i8* noundef %uname, i64 noundef %12, i64 noundef %call13) #18
  %.pre = load i32, i32* %len, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  %13 = phi i32 [ %.pre, %if.then29 ], [ %sub, %if.end27 ]
  %cmp10.not = icmp slt i32 %13, %mul
  br i1 %cmp10.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end30, %if.end6, %entry, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -2, %entry ], [ 0, %if.end6 ], [ 0, %if.end30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdt_reserved_mem_save_node(i64 noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @of_fdt_raw_read(%struct.file* nocapture noundef readnone %filp, %struct.kobject* nocapture noundef readnone %kobj, %struct.bin_attribute* nocapture noundef readnone %bin_attr, i8* noundef %buf, i64 noundef %off, i64 noundef returned %count) #4 {
entry:
  %0 = load i8*, i8** @initial_boot_params, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 %off
  %call = call i8* @memcpy(i8* noundef %buf, i8* noundef %add.ptr, i64 noundef %count) #18
  ret i64 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(%struct.kobject* noundef, %struct.bin_attribute* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold nofree noinline nosync nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin nounwind "no-builtins" }
attributes #19 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { nobuiltin "no-builtins" }
attributes #22 = { cold nobuiltin "no-builtins" }
attributes #23 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #24 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!9 = !{i64 2153752595}
!10 = !{i64 2147956537, i64 2147957048, i64 2147957078, i64 2147957104, i64 2147957136, i64 2147957165}
