; ModuleID = 'fs/char_dev.c'
source_filename = "fs/char_dev.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.char_device_struct = type { %struct.char_device_struct*, i32, i32, i32, [64 x i8], %struct.cdev* }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.72, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5, [48 x i8] }
%struct.anon.5 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.6, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.39, %struct.qspinlock }
%union.anon.39 = type { %struct.atomic_t }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.57, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.27 }
%union.anon.27 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.29 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.23, [0 x i64] }
%struct.anon.23 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.24, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.10, %union.anon.61, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.61 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.37, %struct.anon.38, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.poll_table_struct = type opaque
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.37 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.38 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.36, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.36 = type { %struct.tty_buffer* }
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.41, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.77, %union.anon.78, %union.anon.79, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.82, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { %struct.rb_node }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.82 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.42, %union.anon.43, i32 }
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.blk_mq_tag_set = type opaque
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.41 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.56, i32, [12 x i8] }
%union.anon.56 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.58, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.58 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kmem_cache = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.68 = type { %struct.callback_head }
%union.anon.69 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.62 }
%union.anon.62 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.63, %union.anon.64 }
%union.anon.63 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.64 = type { i64 }
%struct.swap_info_struct = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.66 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.module = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.70 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.70 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.kobj_map = type opaque

@chrdevs_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @chrdevs_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @chrdevs_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@chrdevs = internal unnamed_addr global [255 x %struct.char_device_struct*] zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"%3d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cdev_lock = internal global %struct.spinlock zeroinitializer, align 4
@def_chr_fops = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @chrdev_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@cdev_map = internal unnamed_addr global %struct.kobj_map* null, align 8
@ktype_cdev_dynamic = internal global %struct.kobj_type { void (%struct.kobject*)* @cdev_dynamic_release, %struct.sysfs_ops* null, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@ktype_cdev_default = internal global %struct.kobj_type { void (%struct.kobject*)* @cdev_default_release, %struct.sysfs_ops* null, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"\013CHRDEV \22%s\22 major requested (%u) is greater than the maximum (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"\013CHRDEV \22%s\22 minor range requested (%u-%u) is out of range of maximum range (%u-%u) for a single major\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\013CHRDEV \22%s\22 dynamic allocation region is full\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @chrdev_show(%struct.seq_file* noundef %f, i64 noundef %offset) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @chrdevs_lock) #9
  %conv = trunc i64 %offset to i32
  %call = call fastcc i32 @major_to_index(i32 noundef %conv) #10
  %0 = zext i32 %call to i64
  %arrayidx = getelementptr [255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 %0
  %cd.010 = load %struct.char_device_struct*, %struct.char_device_struct** %arrayidx, align 8
  %tobool.not11 = icmp eq %struct.char_device_struct* %cd.010, null
  br i1 %tobool.not11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %cd.012 = phi %struct.char_device_struct* [ %cd.0, %for.inc ], [ %cd.010, %entry ]
  %major = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %cd.012, i64 0, i32 1
  %1 = load i32, i32* %major, align 8
  %conv1 = zext i32 %1 to i64
  %cmp = icmp eq i64 %conv1, %offset
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %cd.012, i64 0, i32 4, i64 0
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %1, i8* noundef %arraydecay) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %cd.012, i64 0, i32 0
  %cd.0 = load %struct.char_device_struct*, %struct.char_device_struct** %next, align 8
  %tobool.not = icmp eq %struct.char_device_struct* %cd.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @chrdevs_lock) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @major_to_index(i32 noundef %major) unnamed_addr #3 {
entry:
  %rem = urem i32 %major, 255
  ret i32 %rem
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_chrdev_region(i32 noundef %from, i32 noundef %count, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %add = add i32 %count, %from
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.0 = phi i32 [ %from, %entry ], [ %spec.select, %for.body ]
  %cmp = icmp ult i32 %n.0, %add
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %shr = lshr i32 %n.0, 20
  %0 = add i32 %n.0, 1048576
  %shl = and i32 %0, -1048576
  %cmp2 = icmp ugt i32 %shl, %add
  %spec.select = select i1 %cmp2, i32 %add, i32 %shl
  %and = and i32 %n.0, 1048575
  %sub = sub i32 %spec.select, %n.0
  %call = call fastcc %struct.char_device_struct* @__register_chrdev_region(i32 noundef %shr, i32 noundef %and, i32 noundef %sub, i8* noundef %name) #10
  %1 = bitcast %struct.char_device_struct* %call to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %1) #10
  br i1 %call4, label %for.cond7.preheader, label %for.cond

for.cond7.preheader:                              ; preds = %for.body
  %2 = bitcast %struct.char_device_struct* %call to i8*
  %cmp849 = icmp ugt i32 %n.0, %from
  br i1 %cmp849, label %for.body9, label %for.end19

for.body9:                                        ; preds = %for.cond7.preheader, %for.body9
  %n.150 = phi i32 [ %shl12, %for.body9 ], [ %from, %for.cond7.preheader ]
  %shr10 = lshr i32 %n.150, 20
  %3 = add i32 %n.150, 1048576
  %shl12 = and i32 %3, -1048576
  %and15 = and i32 %n.150, 1048575
  %sub16 = sub i32 %shl12, %n.150
  %call17 = call fastcc %struct.char_device_struct* @__unregister_chrdev_region(i32 noundef %shr10, i32 noundef %and15, i32 noundef %sub16) #10
  %4 = bitcast %struct.char_device_struct* %call17 to i8*
  call void @kfree(i8* noundef %4) #9
  %cmp8 = icmp ult i32 %shl12, %n.0
  br i1 %cmp8, label %for.body9, label %for.end19

for.end19:                                        ; preds = %for.body9, %for.cond7.preheader
  %call20 = call fastcc i64 @PTR_ERR(i8* noundef %2) #10
  %conv = trunc i64 %call20 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.end19
  %retval.0 = phi i32 [ %conv, %for.end19 ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.char_device_struct* @__register_chrdev_region(i32 noundef %major, i32 noundef %baseminor, i32 noundef %minorct, i8* noundef %name) unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %major, 511
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8* noundef %name, i32 noundef %major, i32 noundef 511) #11
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -22) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 1048576, %baseminor
  %cmp2 = icmp ult i32 %sub, %minorct
  br i1 %cmp2, label %do.end6, label %if.end11

do.end6:                                          ; preds = %if.end
  %add = add i32 %minorct, %baseminor
  %sub8 = add i32 %add, -1
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i8* noundef %name, i32 noundef %baseminor, i32 noundef %sub8, i32 noundef 0, i32 noundef 1048575) #11
  %call10 = call fastcc i8* @ERR_PTR(i64 noundef -22) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call fastcc i8* @kzalloc(i64 noundef 96) #10
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef -12) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @mutex_lock(%struct.mutex* noundef nonnull @chrdevs_lock) #9
  %cmp17 = icmp eq i32 %major, 0
  br i1 %cmp17, label %if.then18, label %if.end28

if.then18:                                        ; preds = %if.end16
  %call19 = call fastcc i32 @find_dynamic_major() #10
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.then18
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* noundef %name) #11
  %phi.cast = sext i32 %call19 to i64
  br label %out

if.end28:                                         ; preds = %if.then18, %if.end16
  %major.addr.0 = phi i32 [ %major, %if.end16 ], [ %call19, %if.then18 ]
  %call29 = call fastcc i32 @major_to_index(i32 noundef %major.addr.0) #10
  %0 = zext i32 %call29 to i64
  %arrayidx = getelementptr [255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 %0
  %curr.0118 = load %struct.char_device_struct*, %struct.char_device_struct** %arrayidx, align 8
  %tobool.not119 = icmp eq %struct.char_device_struct* %curr.0118, null
  br i1 %tobool.not119, label %for.end, label %for.body

for.body:                                         ; preds = %if.end28, %for.inc
  %curr.0121 = phi %struct.char_device_struct* [ %curr.0, %for.inc ], [ %curr.0118, %if.end28 ]
  %prev.0120 = phi %struct.char_device_struct* [ %curr.0121, %for.inc ], [ null, %if.end28 ]
  %major30 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %curr.0121, i64 0, i32 1
  %1 = load i32, i32* %major30, align 8
  %cmp31 = icmp ult i32 %1, %major.addr.0
  br i1 %cmp31, label %for.inc, label %if.end33

if.end33:                                         ; preds = %for.body
  %cmp35 = icmp ugt i32 %1, %major.addr.0
  br i1 %cmp35, label %for.end, label %if.end37

if.end37:                                         ; preds = %if.end33
  %baseminor38 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %curr.0121, i64 0, i32 2
  %2 = load i32, i32* %baseminor38, align 4
  %minorct39 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %curr.0121, i64 0, i32 3
  %3 = load i32, i32* %minorct39, align 8
  %add40 = add i32 %3, %2
  %cmp41.not = icmp ugt i32 %add40, %baseminor
  br i1 %cmp41.not, label %if.end43, label %for.inc

if.end43:                                         ; preds = %if.end37
  %add45 = add i32 %minorct, %baseminor
  %cmp46.not = icmp ult i32 %2, %add45
  br i1 %cmp46.not, label %out, label %for.end

for.inc:                                          ; preds = %if.end37, %for.body
  %next = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %curr.0121, i64 0, i32 0
  %curr.0 = load %struct.char_device_struct*, %struct.char_device_struct** %next, align 8
  %tobool.not = icmp eq %struct.char_device_struct* %curr.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end33, %if.end28, %if.end43
  %prev.0117 = phi %struct.char_device_struct* [ %prev.0120, %if.end43 ], [ null, %if.end28 ], [ %curr.0121, %for.inc ], [ %prev.0120, %if.end33 ]
  %curr.0115 = phi %struct.char_device_struct* [ %curr.0121, %if.end43 ], [ null, %if.end28 ], [ null, %for.inc ], [ %curr.0121, %if.end33 ]
  %major49 = getelementptr inbounds i8, i8* %call12, i64 8
  %4 = bitcast i8* %major49 to i32*
  store i32 %major.addr.0, i32* %4, align 8
  %baseminor50 = getelementptr inbounds i8, i8* %call12, i64 12
  %5 = bitcast i8* %baseminor50 to i32*
  store i32 %baseminor, i32* %5, align 4
  %minorct51 = getelementptr inbounds i8, i8* %call12, i64 16
  %6 = bitcast i8* %minorct51 to i32*
  store i32 %minorct, i32* %6, align 8
  %name52 = getelementptr inbounds i8, i8* %call12, i64 20
  %call53 = call i64 @strlcpy(i8* noundef %name52, i8* noundef %name, i64 noundef 64) #9
  %tobool54.not = icmp eq %struct.char_device_struct* %prev.0117, null
  br i1 %tobool54.not, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end
  %next56 = bitcast i8* %call12 to %struct.char_device_struct**
  store %struct.char_device_struct* %curr.0115, %struct.char_device_struct** %next56, align 8
  %7 = bitcast %struct.char_device_struct** %arrayidx to i8**
  br label %if.end62

if.else:                                          ; preds = %for.end
  %next59 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %prev.0117, i64 0, i32 0
  %8 = load %struct.char_device_struct*, %struct.char_device_struct** %next59, align 8
  %next60 = bitcast i8* %call12 to %struct.char_device_struct**
  store %struct.char_device_struct* %8, %struct.char_device_struct** %next60, align 8
  %9 = bitcast %struct.char_device_struct* %prev.0117 to i8**
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then55
  %.sink = phi i8** [ %9, %if.else ], [ %7, %if.then55 ]
  store i8* %call12, i8** %.sink, align 8
  call void @mutex_unlock(%struct.mutex* noundef nonnull @chrdevs_lock) #9
  br label %cleanup

out:                                              ; preds = %if.end43, %do.end24
  %ret.0 = phi i64 [ %phi.cast, %do.end24 ], [ -16, %if.end43 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @chrdevs_lock) #9
  call void @kfree(i8* noundef nonnull %call12) #9
  %call63 = call fastcc i8* @ERR_PTR(i64 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end62, %if.then14, %do.end6, %do.end
  %retval.0.in = phi i8* [ %call1, %do.end ], [ %call10, %do.end6 ], [ %call15, %if.then14 ], [ %call63, %out ], [ %call12, %if.end62 ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.char_device_struct*
  ret %struct.char_device_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.char_device_struct* @__unregister_chrdev_region(i32 noundef %major, i32 noundef %baseminor, i32 noundef %minorct) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @major_to_index(i32 noundef %major) #10
  call void @mutex_lock(%struct.mutex* noundef nonnull @chrdevs_lock) #9
  %0 = zext i32 %call to i64
  %arrayidx = getelementptr [255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 %0
  %1 = load %struct.char_device_struct*, %struct.char_device_struct** %arrayidx, align 8
  %tobool.not26 = icmp eq %struct.char_device_struct* %1, null
  br i1 %tobool.not26, label %if.end10, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi %struct.char_device_struct* [ %6, %for.inc ], [ %1, %entry ]
  %cp.027 = phi %struct.char_device_struct** [ %next, %for.inc ], [ %arrayidx, %entry ]
  %major1 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %2, i64 0, i32 1
  %3 = load i32, i32* %major1, align 8
  %cmp = icmp eq i32 %3, %major
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %baseminor2 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %2, i64 0, i32 2
  %4 = load i32, i32* %baseminor2, align 4
  %cmp3 = icmp eq i32 %4, %baseminor
  br i1 %cmp3, label %land.lhs.true4, label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %minorct5 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %2, i64 0, i32 3
  %5 = load i32, i32* %minorct5, align 8
  %cmp6 = icmp eq i32 %5, %minorct
  br i1 %cmp6, label %if.then8, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true4
  %next = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %2, i64 0, i32 0
  %6 = load %struct.char_device_struct*, %struct.char_device_struct** %next, align 8
  %tobool.not = icmp eq %struct.char_device_struct* %6, null
  br i1 %tobool.not, label %if.end10, label %for.body

if.then8:                                         ; preds = %land.lhs.true4
  %next9 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %2, i64 0, i32 0
  %7 = load %struct.char_device_struct*, %struct.char_device_struct** %next9, align 8
  store %struct.char_device_struct* %7, %struct.char_device_struct** %cp.027, align 8
  br label %if.end10

if.end10:                                         ; preds = %for.inc, %entry, %if.then8
  %8 = phi %struct.char_device_struct* [ %2, %if.then8 ], [ null, %entry ], [ null, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @chrdevs_lock) #9
  ret %struct.char_device_struct* %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @alloc_chrdev_region(i32* nocapture noundef writeonly %dev, i32 noundef %baseminor, i32 noundef %count, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.char_device_struct* @__register_chrdev_region(i32 noundef 0, i32 noundef %baseminor, i32 noundef %count, i8* noundef %name) #10
  %0 = bitcast %struct.char_device_struct* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #10
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #10
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %major = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %call, i64 0, i32 1
  %1 = load i32, i32* %major, align 8
  %shl = shl i32 %1, 20
  %baseminor3 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %call, i64 0, i32 2
  %2 = load i32, i32* %baseminor3, align 4
  %or = or i32 %shl, %2
  store i32 %or, i32* %dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__register_chrdev(i32 noundef %major, i32 noundef %baseminor, i32 noundef %count, i8* noundef %name, %struct.file_operations* noundef %fops) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.char_device_struct* @__register_chrdev_region(i32 noundef %major, i32 noundef %baseminor, i32 noundef %count, i8* noundef %name) #10
  %0 = bitcast %struct.char_device_struct* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #10
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #10
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call %struct.cdev* @cdev_alloc() #10
  %tobool.not = icmp eq %struct.cdev* %call3, null
  br i1 %tobool.not, label %out2, label %if.end5

if.end5:                                          ; preds = %if.end
  %owner = getelementptr inbounds %struct.file_operations, %struct.file_operations* %fops, i64 0, i32 0
  %1 = load %struct.module*, %struct.module** %owner, align 8
  %owner6 = getelementptr inbounds %struct.cdev, %struct.cdev* %call3, i64 0, i32 1
  store %struct.module* %1, %struct.module** %owner6, align 8
  %ops = getelementptr inbounds %struct.cdev, %struct.cdev* %call3, i64 0, i32 2
  store %struct.file_operations* %fops, %struct.file_operations** %ops, align 8
  %kobj = getelementptr inbounds %struct.cdev, %struct.cdev* %call3, i64 0, i32 0
  %call7 = call i32 (%struct.kobject*, i8*, ...) @kobject_set_name(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %name) #9
  %major8 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %call, i64 0, i32 1
  %2 = load i32, i32* %major8, align 8
  %shl = shl i32 %2, 20
  %or = or i32 %shl, %baseminor
  %call9 = call i32 @cdev_add(%struct.cdev* noundef nonnull %call3, i32 noundef %or, i32 noundef %count) #10
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %out

if.end12:                                         ; preds = %if.end5
  %cdev13 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %call, i64 0, i32 5
  store %struct.cdev* %call3, %struct.cdev** %cdev13, align 8
  %tobool14.not = icmp eq i32 %major, 0
  br i1 %tobool14.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %if.end12
  %3 = load i32, i32* %major8, align 8
  br label %cleanup

out:                                              ; preds = %if.end5
  call void @kobject_put(%struct.kobject* noundef %kobj) #9
  br label %out2

out2:                                             ; preds = %if.end, %out
  %err.0 = phi i32 [ %call9, %out ], [ -12, %if.end ]
  %major17 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %call, i64 0, i32 1
  %4 = load i32, i32* %major17, align 8
  %call18 = call fastcc %struct.char_device_struct* @__unregister_chrdev_region(i32 noundef %4, i32 noundef %baseminor, i32 noundef %count) #10
  %5 = bitcast %struct.char_device_struct* %call18 to i8*
  call void @kfree(i8* noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end12, %out2, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %err.0, %out2 ], [ %3, %cond.false ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.cdev* @cdev_alloc() local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 104) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds i8, i8* %call, i64 80
  %0 = bitcast i8* %list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %0) #10
  %kobj = bitcast i8* %call to %struct.kobject*
  call void @kobject_init(%struct.kobject* noundef nonnull %kobj, %struct.kobj_type* noundef nonnull @ktype_cdev_dynamic) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast i8* %call to %struct.cdev*
  ret %struct.cdev* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(%struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cdev_add(%struct.cdev* noundef %p, i32 noundef %dev, i32 noundef %count) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 4
  store i32 %dev, i32* %dev1, align 8
  %count2 = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 5
  store i32 %count, i32* %count2, align 4
  %cmp = icmp eq i32 %dev, 0
  br i1 %cmp, label %if.then, label %if.end18, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/char_dev.c\22; .popsection; .long 14472b - 14470b; .short 486; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !8
  br label %cleanup

if.end18:                                         ; preds = %entry
  %0 = load %struct.kobj_map*, %struct.kobj_map** @cdev_map, align 8
  %conv19 = zext i32 %count to i64
  %1 = bitcast %struct.cdev* %p to i8*
  %call = call i32 @kobj_map(%struct.kobj_map* noundef %0, i32 noundef %dev, i64 noundef %conv19, %struct.module* noundef null, %struct.kobject* (i32, i32*, i8*)* noundef nonnull @exact_match, i32 (i32, i8*)* noundef nonnull @exact_lock, i8* noundef %1) #9
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.end18
  %parent = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 0, i32 2
  %2 = load %struct.kobject*, %struct.kobject** %parent, align 8
  %call23 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end18, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -16, %if.then ], [ %call, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_chrdev_region(i32 noundef %from, i32 noundef %count) local_unnamed_addr #0 {
entry:
  %add = add i32 %count, %from
  %cmp16 = icmp ugt i32 %add, %from
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %n.017 = phi i32 [ %spec.select, %for.body ], [ %from, %entry ]
  %shr = lshr i32 %n.017, 20
  %0 = add i32 %n.017, 1048576
  %shl = and i32 %0, -1048576
  %cmp2 = icmp ugt i32 %shl, %add
  %spec.select = select i1 %cmp2, i32 %add, i32 %shl
  %and = and i32 %n.017, 1048575
  %sub = sub i32 %spec.select, %n.017
  %call = call fastcc %struct.char_device_struct* @__unregister_chrdev_region(i32 noundef %shr, i32 noundef %and, i32 noundef %sub) #10
  %1 = bitcast %struct.char_device_struct* %call to i8*
  call void @kfree(i8* noundef %1) #9
  %cmp = icmp ugt i32 %add, %shl
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__unregister_chrdev(i32 noundef %major, i32 noundef %baseminor, i32 noundef %count, i8* nocapture noundef readnone %name) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.char_device_struct* @__unregister_chrdev_region(i32 noundef %major, i32 noundef %baseminor, i32 noundef %count) #10
  %tobool.not = icmp eq %struct.char_device_struct* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cdev = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %call, i64 0, i32 5
  %0 = load %struct.cdev*, %struct.cdev** %cdev, align 8
  %tobool1.not = icmp eq %struct.cdev* %0, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @cdev_del(%struct.cdev* noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %1 = bitcast %struct.char_device_struct* %call to i8*
  call void @kfree(i8* noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cdev_del(%struct.cdev* noundef %p) local_unnamed_addr #0 {
entry:
  %dev = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 4
  %0 = load i32, i32* %dev, align 8
  %count = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 5
  %1 = load i32, i32* %count, align 4
  call fastcc void @cdev_unmap(i32 noundef %0, i32 noundef %1) #10
  %kobj = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cdev_put(%struct.cdev* noundef %p) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cdev* %p, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cd_forget(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #9
  %i_devices = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 39
  call fastcc void @list_del_init(%struct.list_head* noundef %i_devices) #10
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40
  %i_cdev = bitcast %union.anon.72* %0 to %struct.cdev**
  store %struct.cdev* null, %struct.cdev** %i_cdev, align 8
  %i_data = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 38
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  store %struct.address_space* %i_data, %struct.address_space** %i_mapping, align 8
  call fastcc void @__raw_spin_unlock() #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @chrdev_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #0 {
entry:
  %idx = alloca i32, align 4
  call fastcc void @__raw_spin_lock() #9
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40
  %i_cdev = bitcast %union.anon.72* %0 to %struct.cdev**
  %1 = load %struct.cdev*, %struct.cdev** %i_cdev, align 8
  %tobool.not = icmp eq %struct.cdev* %1, null
  br i1 %tobool.not, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #12
  store i32 0, i32* %idx, align 4, !annotation !9
  call fastcc void @__raw_spin_unlock() #9
  %3 = load %struct.kobj_map*, %struct.kobj_map** @cdev_map, align 8
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  %4 = load i32, i32* %i_rdev, align 4
  %call = call %struct.kobject* @kobj_lookup(%struct.kobj_map* noundef %3, i32 noundef %4, i32* noundef nonnull %idx) #9
  %tobool1.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %5 = bitcast %struct.kobject* %call to %struct.cdev*
  call fastcc void @__raw_spin_lock() #9
  %6 = load %struct.cdev*, %struct.cdev** %i_cdev, align 8
  %tobool4.not = icmp eq %struct.cdev* %6, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %7 = bitcast %union.anon.72* %0 to %struct.kobject**
  store %struct.kobject* %call, %struct.kobject** %7, align 8
  %i_devices = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 39
  %list = getelementptr inbounds %struct.kobject, %struct.kobject* %call, i64 1, i32 1, i32 1
  %8 = bitcast %struct.list_head** %list to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %i_devices, %struct.list_head* noundef %8) #10
  br label %cleanup.thread

if.else:                                          ; preds = %if.end
  %call7 = call fastcc %struct.kobject* @cdev_get(%struct.cdev* noundef nonnull %6) #10
  %tobool8.not = icmp eq %struct.kobject* %call7, null
  %spec.select = select i1 %tobool8.not, i32 -6, i32 0
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %if.then5
  %p.1.ph = phi %struct.cdev* [ %6, %if.else ], [ %5, %if.then5 ]
  %new.1.ph = phi %struct.cdev* [ %5, %if.else ], [ null, %if.then5 ]
  %ret.1.ph = phi i32 [ %spec.select, %if.else ], [ 0, %if.then5 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #12
  br label %if.end18

cleanup:                                          ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #12
  br label %cleanup66

if.else13:                                        ; preds = %entry
  %call14 = call fastcc %struct.kobject* @cdev_get(%struct.cdev* noundef nonnull %1) #10
  %tobool15.not = icmp eq %struct.kobject* %call14, null
  %spec.select113 = select i1 %tobool15.not, i32 -6, i32 0
  br label %if.end18

if.end18:                                         ; preds = %if.else13, %cleanup.thread
  %p.2 = phi %struct.cdev* [ %p.1.ph, %cleanup.thread ], [ %1, %if.else13 ]
  %new.2 = phi %struct.cdev* [ %new.1.ph, %cleanup.thread ], [ null, %if.else13 ]
  %ret.2 = phi i32 [ %ret.1.ph, %cleanup.thread ], [ %spec.select113, %if.else13 ]
  call fastcc void @__raw_spin_unlock() #9
  call void @cdev_put(%struct.cdev* noundef %new.2) #10
  %tobool19.not = icmp eq i32 %ret.2, 0
  br i1 %tobool19.not, label %if.end21, label %cleanup66

if.end21:                                         ; preds = %if.end18
  %ops = getelementptr inbounds %struct.cdev, %struct.cdev* %p.2, i64 0, i32 2
  %9 = load %struct.file_operations*, %struct.file_operations** %ops, align 8
  %tobool22.not = icmp eq %struct.file_operations* %9, null
  br i1 %tobool22.not, label %out_cdev_put, label %do.body29

do.body29:                                        ; preds = %if.end21
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  store %struct.file_operations* %9, %struct.file_operations** %f_op, align 8
  %open = getelementptr inbounds %struct.file_operations, %struct.file_operations* %9, i64 0, i32 14
  %10 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open, align 8
  %tobool57.not = icmp eq i32 (%struct.inode*, %struct.file*)* %10, null
  br i1 %tobool57.not, label %cleanup66, label %if.then58

if.then58:                                        ; preds = %do.body29
  %call61 = call i32 %10(%struct.inode* noundef %inode, %struct.file* noundef %filp) #9
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup66, label %out_cdev_put

out_cdev_put:                                     ; preds = %if.end21, %if.then58
  %ret.3 = phi i32 [ %call61, %if.then58 ], [ -6, %if.end21 ]
  call void @cdev_put(%struct.cdev* noundef %p.2) #10
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup, %do.body29, %if.then58, %if.end18, %out_cdev_put
  %retval.1 = phi i32 [ %ret.3, %out_cdev_put ], [ -6, %cleanup ], [ %ret.2, %if.end18 ], [ 0, %if.then58 ], [ 0, %do.body29 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobj_map(%struct.kobj_map* noundef, i32 noundef, i64 noundef, %struct.module* noundef, %struct.kobject* (i32, i32*, i8*)* noundef, i32 (i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal %struct.kobject* @exact_match(i32 noundef %dev, i32* nocapture noundef readnone %part, i8* noundef readnone %data) #3 {
entry:
  %kobj = bitcast i8* %data to %struct.kobject*
  ret %struct.kobject* %kobj
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @exact_lock(i32 noundef %dev, i8* noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.cdev*
  %call = call fastcc %struct.kobject* @cdev_get(%struct.cdev* noundef %0) #10
  %tobool.not = icmp eq %struct.kobject* %call, null
  %cond = sext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cdev_set_parent(%struct.cdev* nocapture noundef writeonly %p, %struct.kobject* noundef %kobj) local_unnamed_addr #0 {
entry:
  %state_initialized = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_initialized, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/char_dev.c\22; .popsection; .long 14472b - 14470b; .short 510; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %parent = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 0, i32 2
  store %struct.kobject* %kobj, %struct.kobject** %parent, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cdev_device_add(%struct.cdev* noundef %cdev, %struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %0 = load i32, i32* %devt, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @cdev_set_parent(%struct.cdev* noundef %cdev, %struct.kobject* noundef %kobj) #10
  %1 = load i32, i32* %devt, align 8
  %call = call i32 @cdev_add(%struct.cdev* noundef %cdev, i32 noundef %1, i32 noundef 1) #10
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.then, %entry
  %call5 = call i32 @device_add(%struct.device* noundef %dev) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @cdev_del(%struct.cdev* noundef %cdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then7, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then7 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cdev_device_del(%struct.cdev* noundef %cdev, %struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @device_del(%struct.device* noundef %dev) #9
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %0 = load i32, i32* %devt, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @cdev_del(%struct.cdev* noundef %cdev) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cdev_unmap(i32 noundef %dev, i32 noundef %count) unnamed_addr #0 {
entry:
  %0 = load %struct.kobj_map*, %struct.kobj_map** @cdev_map, align 8
  %conv = zext i32 %count to i64
  call void @kobj_unmap(%struct.kobj_map* noundef %0, i32 noundef %dev, i64 noundef %conv) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #9
  ret i8* %call10.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cdev_init(%struct.cdev* noundef %cdev, %struct.file_operations* noundef %fops) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.cdev* %cdev to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 104) #9
  %list = getelementptr inbounds %struct.cdev, %struct.cdev* %cdev, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #10
  %kobj = getelementptr inbounds %struct.cdev, %struct.cdev* %cdev, i64 0, i32 0
  call void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef nonnull @ktype_cdev_default) #9
  %ops = getelementptr inbounds %struct.cdev, %struct.cdev* %cdev, i64 0, i32 2
  store %struct.file_operations* %fops, %struct.file_operations** %ops, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @chrdev_init() local_unnamed_addr #5 section ".init.text" {
entry:
  %call = call %struct.kobj_map* @kobj_map_init(%struct.kobject* (i32, i32*, i8*)* noundef nonnull @base_probe, %struct.mutex* noundef nonnull @chrdevs_lock) #9
  store %struct.kobj_map* %call, %struct.kobj_map** @cdev_map, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobj_map* @kobj_map_init(%struct.kobject* (i32, i32*, i8*)* noundef, %struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal noalias %struct.kobject* @base_probe(i32 noundef %dev, i32* nocapture noundef readnone %part, i8* nocapture noundef readnone %data) #3 {
entry:
  ret %struct.kobject* null
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @find_dynamic_major() unnamed_addr #7 {
entry:
  %0 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 254), align 8
  %cmp1 = icmp eq %struct.char_device_struct* %0, null
  br i1 %cmp1, label %cleanup, label %for.inc

for.inc:                                          ; preds = %entry
  %1 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 253), align 8
  %cmp1.1 = icmp eq %struct.char_device_struct* %1, null
  br i1 %cmp1.1, label %cleanup, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %2 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 252), align 8
  %cmp1.2 = icmp eq %struct.char_device_struct* %2, null
  br i1 %cmp1.2, label %cleanup, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 251), align 8
  %cmp1.3 = icmp eq %struct.char_device_struct* %3, null
  br i1 %cmp1.3, label %cleanup, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 250), align 8
  %cmp1.4 = icmp eq %struct.char_device_struct* %4, null
  br i1 %cmp1.4, label %cleanup, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 249), align 8
  %cmp1.5 = icmp eq %struct.char_device_struct* %5, null
  br i1 %cmp1.5, label %cleanup, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 248), align 8
  %cmp1.6 = icmp eq %struct.char_device_struct* %6, null
  br i1 %cmp1.6, label %cleanup, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 247), align 8
  %cmp1.7 = icmp eq %struct.char_device_struct* %7, null
  br i1 %cmp1.7, label %cleanup, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %8 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 246), align 8
  %cmp1.8 = icmp eq %struct.char_device_struct* %8, null
  br i1 %cmp1.8, label %cleanup, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %9 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 245), align 8
  %cmp1.9 = icmp eq %struct.char_device_struct* %9, null
  br i1 %cmp1.9, label %cleanup, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %10 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 244), align 8
  %cmp1.10 = icmp eq %struct.char_device_struct* %10, null
  br i1 %cmp1.10, label %cleanup, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %11 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 243), align 8
  %cmp1.11 = icmp eq %struct.char_device_struct* %11, null
  br i1 %cmp1.11, label %cleanup, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %12 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 242), align 8
  %cmp1.12 = icmp eq %struct.char_device_struct* %12, null
  br i1 %cmp1.12, label %cleanup, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %13 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 241), align 8
  %cmp1.13 = icmp eq %struct.char_device_struct* %13, null
  br i1 %cmp1.13, label %cleanup, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %14 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 240), align 8
  %cmp1.14 = icmp eq %struct.char_device_struct* %14, null
  br i1 %cmp1.14, label %cleanup, label %for.inc.14

for.inc.14:                                       ; preds = %for.inc.13
  %15 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 239), align 8
  %cmp1.15 = icmp eq %struct.char_device_struct* %15, null
  br i1 %cmp1.15, label %cleanup, label %for.inc.15

for.inc.15:                                       ; preds = %for.inc.14
  %16 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 238), align 8
  %cmp1.16 = icmp eq %struct.char_device_struct* %16, null
  br i1 %cmp1.16, label %cleanup, label %for.inc.16

for.inc.16:                                       ; preds = %for.inc.15
  %17 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 237), align 8
  %cmp1.17 = icmp eq %struct.char_device_struct* %17, null
  br i1 %cmp1.17, label %cleanup, label %for.inc.17

for.inc.17:                                       ; preds = %for.inc.16
  %18 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 236), align 8
  %cmp1.18 = icmp eq %struct.char_device_struct* %18, null
  br i1 %cmp1.18, label %cleanup, label %for.inc.18

for.inc.18:                                       ; preds = %for.inc.17
  %19 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 235), align 8
  %cmp1.19 = icmp eq %struct.char_device_struct* %19, null
  br i1 %cmp1.19, label %cleanup, label %for.inc.19

for.inc.19:                                       ; preds = %for.inc.18
  %20 = load %struct.char_device_struct*, %struct.char_device_struct** getelementptr inbounds ([255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 234), align 8
  %cmp1.20 = icmp eq %struct.char_device_struct* %20, null
  br i1 %cmp1.20, label %cleanup, label %for.body4

for.body4:                                        ; preds = %for.inc.19, %for.inc17
  %i.144 = phi i32 [ %dec18, %for.inc17 ], [ 511, %for.inc.19 ]
  %call = call fastcc i32 @major_to_index(i32 noundef %i.144) #10
  %21 = zext i32 %call to i64
  %arrayidx6 = getelementptr [255 x %struct.char_device_struct*], [255 x %struct.char_device_struct*]* @chrdevs, i64 0, i64 %21
  %cd.040 = load %struct.char_device_struct*, %struct.char_device_struct** %arrayidx6, align 8
  %cond41 = icmp eq %struct.char_device_struct* %cd.040, null
  br i1 %cond41, label %cleanup, label %for.body8

for.cond7:                                        ; preds = %for.body8
  %next = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %cd.042, i64 0, i32 0
  %cd.0 = load %struct.char_device_struct*, %struct.char_device_struct** %next, align 8
  %cond = icmp eq %struct.char_device_struct* %cd.0, null
  br i1 %cond, label %cleanup, label %for.body8

for.body8:                                        ; preds = %for.body4, %for.cond7
  %cd.042 = phi %struct.char_device_struct* [ %cd.0, %for.cond7 ], [ %cd.040, %for.body4 ]
  %major = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %cd.042, i64 0, i32 1
  %22 = load i32, i32* %major, align 8
  %cmp9 = icmp eq i32 %22, %i.144
  br i1 %cmp9, label %for.inc17, label %for.cond7

for.inc17:                                        ; preds = %for.body8
  %dec18 = add nsw i32 %i.144, -1
  %cmp3 = icmp ugt i32 %dec18, 383
  br i1 %cmp3, label %for.body4, label %cleanup

cleanup:                                          ; preds = %for.inc17, %for.body4, %for.cond7, %entry, %for.inc, %for.inc.1, %for.inc.2, %for.inc.3, %for.inc.4, %for.inc.5, %for.inc.6, %for.inc.7, %for.inc.8, %for.inc.9, %for.inc.10, %for.inc.11, %for.inc.12, %for.inc.13, %for.inc.14, %for.inc.15, %for.inc.16, %for.inc.17, %for.inc.18, %for.inc.19
  %retval.0 = phi i32 [ 254, %entry ], [ 253, %for.inc ], [ 252, %for.inc.1 ], [ 251, %for.inc.2 ], [ 250, %for.inc.3 ], [ 249, %for.inc.4 ], [ 248, %for.inc.5 ], [ 247, %for.inc.6 ], [ 246, %for.inc.7 ], [ 245, %for.inc.8 ], [ 244, %for.inc.9 ], [ 243, %for.inc.10 ], [ 242, %for.inc.11 ], [ 241, %for.inc.12 ], [ 240, %for.inc.13 ], [ 239, %for.inc.14 ], [ 238, %for.inc.15 ], [ 237, %for.inc.16 ], [ 236, %for.inc.17 ], [ 235, %for.inc.18 ], [ 234, %for.inc.19 ], [ %i.144, %for.cond7 ], [ %i.144, %for.body4 ], [ -16, %for.inc17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  call fastcc void @do_raw_spin_lock() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @cdev_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @cdev_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @cdev_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #12, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @cdev_lock to i8*), i8 0) #12, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobj_lookup(%struct.kobj_map* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kobject* @cdev_get(%struct.cdev* noundef %p) unnamed_addr #0 {
entry:
  %kobj2 = getelementptr inbounds %struct.cdev, %struct.cdev* %p, i64 0, i32 0
  %call3 = call %struct.kobject* @kobject_get_unless_zero(%struct.kobject* noundef %kobj2) #9
  ret %struct.kobject* %call3
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get_unless_zero(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobj_unmap(%struct.kobj_map* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cdev_dynamic_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %0 = bitcast %struct.kobject* %kobj to i8*
  %1 = bitcast %struct.kobject* %kobj to %struct.cdev*
  %parent1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %2 = load %struct.kobject*, %struct.kobject** %parent1, align 8
  call fastcc void @cdev_purge(%struct.cdev* noundef %1) #10
  call void @kfree(i8* noundef %0) #9
  call void @kobject_put(%struct.kobject* noundef %2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cdev_purge(%struct.cdev* noundef %cdev) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #9
  %list = getelementptr inbounds %struct.cdev, %struct.cdev* %cdev, i64 0, i32 3
  %call6 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #10
  %tobool.not7 = icmp eq i32 %call6, 0
  br i1 %tobool.not7, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.list_head* %list to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %2) #10
  %3 = getelementptr i8, i8* %1, i64 16
  %i_cdev = bitcast i8* %3 to %struct.cdev**
  store %struct.cdev* null, %struct.cdev** %i_cdev, align 8
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  call fastcc void @__raw_spin_unlock() #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cdev_default_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %0 = bitcast %struct.kobject* %kobj to %struct.cdev*
  %parent1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %1 = load %struct.kobject*, %struct.kobject** %parent1, align 8
  call fastcc void @cdev_purge(%struct.cdev* noundef %0) #10
  call void @kobject_put(%struct.kobject* noundef %1) #9
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }

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
!8 = !{i64 2154974004}
!9 = !{!"auto-init"}
!10 = !{i64 2154975594}
!11 = !{i64 2149548617}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148053886, i64 2148053919, i64 2148053972, i64 2148054031, i64 2148054065, i64 2148054120, i64 2148054149, i64 2148054169}
!14 = !{i64 2149555898}
!15 = !{i64 2149348128}
