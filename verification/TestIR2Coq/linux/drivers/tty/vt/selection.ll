; ModuleID = 'drivers/tty/vt/selection.c'
source_filename = "drivers/tty/vt/selection.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.vc_selection = type { %struct.mutex, %struct.vc_data*, i8*, i32, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.consw*, i16*, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, %struct.pid*, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], i16*, i32, i32, i32, i16, %struct.vc_data**, %struct.uni_pagedir*, %struct.uni_pagedir**, %struct.uni_screen* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.tty_buffer = type { %union.anon.1, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.1 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.63, %struct.anon.64, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.62, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.62 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.20, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.25, i32 }
%union.anon.25 = type { %struct.kuid_t }
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
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28, i16, i16 }
%union.anon.28 = type { i32 }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.18, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.19, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.18 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.19 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.3, %union.anon.61, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.61 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.35, %union.anon.36, i32 }
%struct.request_queue = type opaque
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.51, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.51 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.21, i8* }
%union.anon.21 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.52, %struct.list_head, %struct.list_head, %union.anon.53 }
%struct.lockref = type { %union.anon.23 }
%union.anon.23 = type { i64 }
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.68, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.66 = type { %struct.callback_head }
%union.anon.67 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.54 }
%union.anon.54 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.68 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.55, %struct.qspinlock }
%union.anon.55 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kernfs_iattrs = type opaque
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.63 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.64 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.consw = type { %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uni_pagedir = type opaque
%struct.uni_screen = type opaque
%struct.vc = type { %struct.vc_data*, %struct.work_struct }
%struct.tiocl_selection = type { i16, i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@vc_sel = internal global %struct.vc_selection { %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.vc_selection* @vc_sel to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.vc_selection* @vc_sel to i8*), i64 16) to %struct.list_head*) } }, %struct.vc_data* null, i8* null, i32 0, i32 -1, i32 0 }, align 8
@inwordLut = internal global [4 x i32] [i32 0, i32 67100672, i32 -2013265922, i32 134217726], align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 8
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\014selection: kmalloc() failed\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clear_selection() local_unnamed_addr #0 {
entry:
  call fastcc void @highlight_pointer(i32 noundef -1) #10
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 5), align 8
  call fastcc void @highlight(i32 noundef %1, i32 noundef %2) #10
  store volatile i32 -1, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @highlight_pointer(i32 noundef %where) unnamed_addr #0 {
entry:
  %0 = load %struct.vc_data*, %struct.vc_data** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 1), align 8
  call void @complement_pos(%struct.vc_data* noundef %0, i32 noundef %where) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @highlight(i32 noundef %s, i32 noundef %e) unnamed_addr #0 {
entry:
  %0 = load %struct.vc_data*, %struct.vc_data** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 1), align 8
  %sub = sub i32 2, %s
  %add = add i32 %sub, %e
  call void @invert_screen(%struct.vc_data* noundef %0, i32 noundef %s, i32 noundef %add, i1 noundef true) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @vc_is_sel(%struct.vc_data* noundef readnone %vc) local_unnamed_addr #1 {
entry:
  %0 = load %struct.vc_data*, %struct.vc_data** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 1), align 8
  %cmp = icmp eq %struct.vc_data* %0, %vc
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sel_loadlut(i8* noundef %p) local_unnamed_addr #0 {
entry:
  %tmplut = alloca [4 x i32], align 4
  %0 = bitcast [4 x i32]* %tmplut to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %add.ptr = getelementptr i8, i8* %p, i64 4
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %add.ptr, i64 noundef 16) #11
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i8* @memcpy(i8* noundef bitcast ([4 x i32]* @inwordLut to i8*), i8* noundef nonnull %0, i64 noundef 16) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_selection_user(%struct.tiocl_selection* noundef %sel, %struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %v = alloca %struct.tiocl_selection, align 2
  %0 = bitcast %struct.tiocl_selection* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(10) %0, i8 0, i64 10, i1 false), !annotation !7
  %1 = bitcast %struct.tiocl_selection* %sel to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 10) #11
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @set_selection_kernel(%struct.tiocl_selection* noundef nonnull %v, %struct.tty_struct* noundef %tty) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_selection_kernel(%struct.tiocl_selection* nocapture noundef %v, %struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 0)) #11
  call void @console_lock() #11
  %0 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %call = call fastcc i32 @vc_selection(%struct.vc_data* noundef %1, %struct.tiocl_selection* noundef %v, %struct.tty_struct* noundef %tty) #10
  call void @console_unlock() #11
  call void @mutex_unlock(%struct.mutex* noundef getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 0)) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vc_selection(%struct.vc_data* noundef %vc, %struct.tiocl_selection* nocapture noundef %v, %struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  call void @poke_blanked_console() #11
  %sel_mode = getelementptr inbounds %struct.tiocl_selection, %struct.tiocl_selection* %v, i64 0, i32 4
  %0 = load i16, i16* %sel_mode, align 2
  %cmp = icmp eq i16 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @clear_selection() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %xs = getelementptr inbounds %struct.tiocl_selection, %struct.tiocl_selection* %v, i64 0, i32 0
  %1 = load i16, i16* %xs, align 2
  %sub = add i16 %1, -1
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %2 = load i32, i32* %vc_cols, align 4
  %conv5 = add i32 %2, 65535
  %conv6 = zext i16 %sub to i32
  %conv7 = and i32 %conv5, 65535
  %cmp8 = icmp ugt i32 %conv7, %conv6
  %cond = select i1 %cmp8, i32 %conv6, i32 %conv7
  %conv12 = trunc i32 %cond to i16
  store i16 %conv12, i16* %xs, align 2
  %ys = getelementptr inbounds %struct.tiocl_selection, %struct.tiocl_selection* %v, i64 0, i32 1
  %3 = load i16, i16* %ys, align 2
  %sub15 = add i16 %3, -1
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %4 = load i32, i32* %vc_rows, align 8
  %conv18 = add i32 %4, 65535
  %conv20 = zext i16 %sub15 to i32
  %conv21 = and i32 %conv18, 65535
  %cmp22 = icmp ugt i32 %conv21, %conv20
  %cond29 = select i1 %cmp22, i32 %conv20, i32 %conv21
  %conv30 = trunc i32 %cond29 to i16
  store i16 %conv30, i16* %ys, align 2
  %xe = getelementptr inbounds %struct.tiocl_selection, %struct.tiocl_selection* %v, i64 0, i32 2
  %5 = load i16, i16* %xe, align 2
  %sub33 = add i16 %5, -1
  %6 = load i32, i32* %vc_cols, align 4
  %conv37 = add i32 %6, 65535
  %conv39 = zext i16 %sub33 to i32
  %conv40 = and i32 %conv37, 65535
  %cmp41 = icmp ugt i32 %conv40, %conv39
  %cond48 = select i1 %cmp41, i32 %conv39, i32 %conv40
  %conv49 = trunc i32 %cond48 to i16
  store i16 %conv49, i16* %xe, align 2
  %ye = getelementptr inbounds %struct.tiocl_selection, %struct.tiocl_selection* %v, i64 0, i32 3
  %7 = load i16, i16* %ye, align 2
  %sub52 = add i16 %7, -1
  %8 = load i32, i32* %vc_rows, align 8
  %conv56 = add i32 %8, 65535
  %conv58 = zext i16 %sub52 to i32
  %conv59 = and i32 %conv56, 65535
  %cmp60 = icmp ugt i32 %conv59, %conv58
  %cond67 = select i1 %cmp60, i32 %conv58, i32 %conv59
  %conv68 = trunc i32 %cond67 to i16
  store i16 %conv68, i16* %ye, align 2
  %call = call i32 @mouse_reporting() #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end81, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load i16, i16* %sel_mode, align 2
  %conv71 = zext i16 %9 to i32
  %and = and i32 %conv71, 16
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.end81, label %if.then73

if.then73:                                        ; preds = %land.lhs.true
  %and76 = and i32 %conv71, 15
  %10 = load i16, i16* %xs, align 2
  %conv78 = zext i16 %10 to i32
  %11 = load i16, i16* %ys, align 2
  %conv80 = zext i16 %11 to i32
  call void @mouse_report(%struct.tty_struct* noundef %tty, i32 noundef %and76, i32 noundef %conv78, i32 noundef %conv80) #11
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true, %if.end
  %12 = load i16, i16* %ys, align 2
  %conv83 = zext i16 %12 to i32
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %13 = load i32, i32* %vc_size_row, align 4
  %mul = mul i32 %13, %conv83
  %14 = load i16, i16* %xs, align 2
  %conv85 = zext i16 %14 to i32
  %shl = shl nuw nsw i32 %conv85, 1
  %add = add i32 %shl, %mul
  %15 = load i16, i16* %ye, align 2
  %conv87 = zext i16 %15 to i32
  %mul89 = mul i32 %13, %conv87
  %16 = load i16, i16* %xe, align 2
  %conv91 = zext i16 %16 to i32
  %shl92 = shl nuw nsw i32 %conv91, 1
  %add93 = add i32 %shl92, %mul89
  %cmp94 = icmp sgt i32 %add, %add93
  %spec.select = select i1 %cmp94, i32 %add, i32 %add93
  %spec.select153 = select i1 %cmp94, i32 %add93, i32 %add
  %17 = load %struct.vc_data*, %struct.vc_data** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 1), align 8
  %cmp98.not = icmp eq %struct.vc_data* %17, %vc
  br i1 %cmp98.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end81
  call void @clear_selection() #10
  store %struct.vc_data* %vc, %struct.vc_data** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 1), align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end81
  %18 = load i16, i16* %sel_mode, align 2
  %call103 = call fastcc i32 @vc_do_selection(%struct.vc_data* noundef %vc, i16 noundef %18, i32 noundef %spec.select153, i32 noundef %spec.select) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then73, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then73 ], [ %call103, %if.end101 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @paste_selection(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %0 = bitcast i8** %driver_data to %struct.vc_data**
  %1 = load %struct.vc_data*, %struct.vc_data** %0, align 8
  %2 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #12
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %5 = bitcast i8** %private to %struct.task_struct**
  %6 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %6, align 8
  store %struct.task_struct* %4, %struct.task_struct** %5, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @default_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %next = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 0
  store %struct.list_head* null, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* null, %struct.list_head** %prev, align 8
  call void @console_lock() #11
  call void @poke_blanked_console() #11
  call void @console_unlock() #11
  %call2 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef %tty) #11
  %tobool.not = icmp eq %struct.tty_ldisc* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 0
  call void @tty_buffer_lock_exclusive(%struct.tty_port* noundef %port) #11
  %paste_wait = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 36
  call void @add_wait_queue(%struct.wait_queue_head* noundef %paste_wait, %struct.wait_queue_entry* noundef nonnull %wait) #11
  call void @mutex_lock(%struct.mutex* noundef getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 0)) #11
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 1
  %7 = load i8*, i8** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 2), align 8
  %tobool38690 = icmp ne i8* %7, null
  %8 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 3), align 8
  %cmp8791 = icmp ne i32 %8, 0
  %9 = select i1 %tobool38690, i1 %cmp8791, i1 false
  br i1 %9, label %do.body10.lr.ph, label %while.end

do.body10.lr.ph:                                  ; preds = %if.end, %do.body36
  %pasted.0.ph92 = phi i32 [ %add, %do.body36 ], [ 0, %if.end ]
  br label %do.body10

do.body10:                                        ; preds = %do.body10.lr.ph, %if.then26
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %call21 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %4) #10
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %while.end

if.end24:                                         ; preds = %do.body10
  %call25 = call fastcc i1 @tty_throttled(%struct.tty_struct* noundef %tty) #10
  br i1 %call25, label %if.then26, label %do.body36

if.then26:                                        ; preds = %if.end24
  call void @mutex_unlock(%struct.mutex* noundef getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 0)) #11
  call void @schedule() #11
  call void @mutex_lock(%struct.mutex* noundef getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 0)) #11
  %10 = load i8*, i8** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 2), align 8
  %tobool3 = icmp ne i8* %10, null
  %11 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 3), align 8
  %cmp = icmp ugt i32 %11, %pasted.0.ph92
  %12 = select i1 %tobool3, i1 %cmp, i1 false
  br i1 %12, label %do.body10, label %while.end

do.body36:                                        ; preds = %if.end24
  store volatile i32 0, i32* %__state, align 16
  %13 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 3), align 8
  %sub = sub i32 %13, %pasted.0.ph92
  %14 = load i8*, i8** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 2), align 8
  %idx.ext = sext i32 %pasted.0.ph92 to i64
  %add.ptr = getelementptr i8, i8* %14, i64 %idx.ext
  %call45 = call i32 @tty_ldisc_receive_buf(%struct.tty_ldisc* noundef nonnull %call2, i8* noundef %add.ptr, i8* noundef null, i32 noundef %sub) #11
  %add = add i32 %call45, %pasted.0.ph92
  %15 = load i8*, i8** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 2), align 8
  %tobool386 = icmp ne i8* %15, null
  %16 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 3), align 8
  %cmp87 = icmp ugt i32 %16, %add
  %17 = select i1 %tobool386, i1 %cmp87, i1 false
  br i1 %17, label %do.body10.lr.ph, label %while.end

while.end:                                        ; preds = %do.body36, %if.then26, %do.body10, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ -4, %do.body10 ], [ 0, %if.then26 ], [ 0, %do.body36 ]
  call void @mutex_unlock(%struct.mutex* noundef getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 0)) #11
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %paste_wait, %struct.wait_queue_entry* noundef nonnull %wait) #11
  store volatile i32 0, i32* %__state, align 16
  call void @tty_buffer_unlock_exclusive(%struct.tty_port* noundef %port) #11
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %ret.0, %while.end ], [ -5, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @poke_blanked_console() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_lock_exclusive(%struct.tty_port* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !10

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @tty_throttled(%struct.tty_struct* noundef %tty) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %conv.i1 = and i64 %0, 1
  %tobool = icmp ne i64 %conv.i1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_receive_buf(%struct.tty_ldisc* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_unlock_exclusive(%struct.tty_port* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(%struct.tty_ldisc* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complement_pos(%struct.vc_data* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @invert_screen(%struct.vc_data* noundef, i32 noundef, i32 noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #10
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #10
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !10

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #12, !srcloc !12
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #12, !srcloc !13
  call void asm sideeffect "hint #20", "~{memory}"() #12, !srcloc !14
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mouse_reporting() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mouse_report(%struct.tty_struct* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vc_do_selection(%struct.vc_data* nocapture noundef readonly %vc, i16 noundef %mode, i32 noundef %ps, i32 noundef %pe) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %call = call i32 @vt_do_kdgkbmode(i32 noundef %0) #11
  %cmp = icmp eq i32 %call, 3
  switch i16 %mode, label %cleanup [
    i16 0, label %sw.epilog
    i16 1, label %sw.bb1
    i16 2, label %sw.bb47
    i16 3, label %sw.bb59
  ]

sw.bb1:                                           ; preds = %entry
  %call2 = call fastcc i32 @sel_pos(i32 noundef %ps, i1 noundef %cmp) #10
  %cmp3 = icmp eq i32 %call2, 32
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb1
  %new_sel_start.0 = phi i32 [ %ps, %sw.bb1 ], [ %ps.addr.0, %for.inc ]
  %ps.addr.0 = phi i32 [ %ps, %sw.bb1 ], [ %sub, %for.inc ]
  %call7 = call fastcc i32 @sel_pos(i32 noundef %ps.addr.0, i1 noundef %cmp) #10
  br i1 %cmp3, label %land.lhs.true, label %land.lhs.true11

land.lhs.true:                                    ; preds = %for.cond
  %cmp8 = icmp eq i32 %call7, 32
  br i1 %cmp8, label %if.end, label %for.end

land.lhs.true11:                                  ; preds = %for.cond
  %call14 = call fastcc i32 @inword(i32 noundef %call7) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.end, label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true11
  %1 = load i32, i32* %vc_size_row, align 4
  %rem = urem i32 %ps.addr.0, %1
  %tobool16.not = icmp eq i32 %rem, 0
  br i1 %tobool16.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end
  %sub = add i32 %ps.addr.0, -2
  br label %for.cond

for.end:                                          ; preds = %if.end, %land.lhs.true, %land.lhs.true11
  %new_sel_start.1 = phi i32 [ %ps.addr.0, %if.end ], [ %new_sel_start.0, %land.lhs.true11 ], [ %new_sel_start.0, %land.lhs.true ]
  %call20 = call fastcc i32 @sel_pos(i32 noundef %pe, i1 noundef %cmp) #10
  %cmp21 = icmp eq i32 %call20, 32
  br label %for.cond23

for.cond23:                                       ; preds = %if.end38, %for.end
  %new_sel_end.0 = phi i32 [ %pe, %for.end ], [ %pe.addr.0, %if.end38 ]
  %pe.addr.0 = phi i32 [ %pe, %for.end ], [ %add, %if.end38 ]
  %call27 = call fastcc i32 @sel_pos(i32 noundef %pe.addr.0, i1 noundef %cmp) #10
  br i1 %cmp21, label %land.lhs.true25, label %land.lhs.true32

land.lhs.true25:                                  ; preds = %for.cond23
  %cmp28 = icmp eq i32 %call27, 32
  br i1 %cmp28, label %if.end38, label %sw.epilog

land.lhs.true32:                                  ; preds = %for.cond23
  %call35 = call fastcc i32 @inword(i32 noundef %call27) #10
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %sw.epilog, label %if.end38

if.end38:                                         ; preds = %land.lhs.true25, %land.lhs.true32
  %add = add i32 %pe.addr.0, 2
  %2 = load i32, i32* %vc_size_row, align 4
  %rem40 = urem i32 %add, %2
  %tobool41.not = icmp eq i32 %rem40, 0
  br i1 %tobool41.not, label %sw.epilog, label %for.cond23

sw.bb47:                                          ; preds = %entry
  %vc_size_row48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %3 = load i32, i32* %vc_size_row48, align 4
  %rem49 = urem i32 %ps, %3
  %sub50 = sub i32 %ps, %rem49
  %rem54 = urem i32 %pe, %3
  %sub55 = add i32 %pe, -2
  %add57 = add i32 %sub55, %3
  %sub58 = sub i32 %add57, %rem54
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  call fastcc void @highlight_pointer(i32 noundef %pe) #10
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true32, %land.lhs.true25, %if.end38, %entry, %sw.bb47
  %new_sel_end.1 = phi i32 [ %sub58, %sw.bb47 ], [ %pe, %entry ], [ %new_sel_end.0, %land.lhs.true25 ], [ %new_sel_end.0, %land.lhs.true32 ], [ %pe.addr.0, %if.end38 ]
  %new_sel_start.2 = phi i32 [ %sub50, %sw.bb47 ], [ %ps, %entry ], [ %new_sel_start.1, %if.end38 ], [ %new_sel_start.1, %land.lhs.true25 ], [ %new_sel_start.1, %land.lhs.true32 ]
  call fastcc void @highlight_pointer(i32 noundef -1) #10
  %cmp60 = icmp sgt i32 %new_sel_end.1, %new_sel_start.2
  br i1 %cmp60, label %land.lhs.true62, label %if.end93

land.lhs.true62:                                  ; preds = %sw.epilog
  %vc_size_row63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %4 = load i32, i32* %vc_size_row63, align 4
  %call64 = call fastcc i32 @atedge(i32 noundef %new_sel_end.1, i32 noundef %4) #10
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %if.end93

land.lhs.true66:                                  ; preds = %land.lhs.true62
  %call68 = call fastcc i32 @sel_pos(i32 noundef %new_sel_end.1, i1 noundef %cmp) #10
  %cmp69 = icmp eq i32 %call68, 32
  br i1 %cmp69, label %for.cond73, label %if.end93

for.cond73:                                       ; preds = %land.lhs.true66, %lor.lhs.false78
  %pe.addr.1.in = phi i32 [ %pe.addr.1, %lor.lhs.false78 ], [ %new_sel_end.1, %land.lhs.true66 ]
  %pe.addr.1 = add i32 %pe.addr.1.in, 2
  %call75 = call fastcc i32 @sel_pos(i32 noundef %pe.addr.1, i1 noundef %cmp) #10
  %cmp76 = icmp eq i32 %call75, 32
  br i1 %cmp76, label %lor.lhs.false78, label %for.end86

lor.lhs.false78:                                  ; preds = %for.cond73
  %5 = load i32, i32* %vc_size_row63, align 4
  %call80 = call fastcc i32 @atedge(i32 noundef %pe.addr.1, i32 noundef %5) #10
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %for.cond73, label %for.end86

for.end86:                                        ; preds = %for.cond73, %lor.lhs.false78
  %call88 = call fastcc i32 @sel_pos(i32 noundef %pe.addr.1, i1 noundef %cmp) #10
  %cmp89 = icmp eq i32 %call88, 32
  %spec.select = select i1 %cmp89, i32 %pe.addr.1, i32 %new_sel_end.1
  br label %if.end93

if.end93:                                         ; preds = %for.end86, %land.lhs.true66, %land.lhs.true62, %sw.epilog
  %new_sel_end.2 = phi i32 [ %new_sel_end.1, %land.lhs.true62 ], [ %new_sel_end.1, %land.lhs.true66 ], [ %new_sel_end.1, %sw.epilog ], [ %spec.select, %for.end86 ]
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  %cmp94 = icmp eq i32 %6, -1
  br i1 %cmp94, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.end93
  call fastcc void @highlight(i32 noundef %new_sel_start.2, i32 noundef %new_sel_end.2) #10
  br label %if.end126

if.else:                                          ; preds = %if.end93
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  %cmp97 = icmp eq i32 %new_sel_start.2, %7
  %8 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 5), align 8
  %cmp100 = icmp eq i32 %new_sel_end.2, %8
  br i1 %cmp97, label %if.then99, label %if.else112

if.then99:                                        ; preds = %if.else
  br i1 %cmp100, label %cleanup, label %if.else103

if.else103:                                       ; preds = %if.then99
  %cmp104 = icmp sgt i32 %new_sel_end.2, %8
  br i1 %cmp104, label %if.then106, label %if.else108

if.then106:                                       ; preds = %if.else103
  %add107 = add i32 %8, 2
  call fastcc void @highlight(i32 noundef %add107, i32 noundef %new_sel_end.2) #10
  br label %if.end126

if.else108:                                       ; preds = %if.else103
  %add109 = add i32 %new_sel_end.2, 2
  call fastcc void @highlight(i32 noundef %add109, i32 noundef %8) #10
  br label %if.end126

if.else112:                                       ; preds = %if.else
  br i1 %cmp100, label %if.then115, label %if.else123

if.then115:                                       ; preds = %if.else112
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  %cmp116 = icmp slt i32 %new_sel_start.2, %9
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  br i1 %cmp116, label %if.then118, label %if.else120

if.then118:                                       ; preds = %if.then115
  %sub119 = add i32 %10, -2
  call fastcc void @highlight(i32 noundef %new_sel_start.2, i32 noundef %sub119) #10
  br label %if.end126

if.else120:                                       ; preds = %if.then115
  %sub121 = add i32 %new_sel_start.2, -2
  call fastcc void @highlight(i32 noundef %10, i32 noundef %sub121) #10
  br label %if.end126

if.else123:                                       ; preds = %if.else112
  call void @clear_selection() #10
  call fastcc void @highlight(i32 noundef %new_sel_start.2, i32 noundef %new_sel_end.2) #10
  br label %if.end126

if.end126:                                        ; preds = %if.then106, %if.else108, %if.then118, %if.else120, %if.else123, %if.then96
  store volatile i32 %new_sel_start.2, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  store i32 %new_sel_end.2, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 5), align 8
  %call128 = call fastcc i32 @vc_selection_store_chars(%struct.vc_data* noundef %vc, i1 noundef %cmp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %entry, %if.end126, %sw.bb59
  %retval.0 = phi i32 [ 0, %sw.bb59 ], [ %call128, %if.end126 ], [ -22, %entry ], [ 0, %if.then99 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmode(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sel_pos(i32 noundef %n, i1 noundef %unicode) unnamed_addr #0 {
entry:
  %0 = load %struct.vc_data*, %struct.vc_data** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 1), align 8
  br i1 %unicode, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %div = sdiv i32 %n, 2
  %call = call i32 @screen_glyph_unicode(%struct.vc_data* noundef %0, i32 noundef %div) #11
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i16 @screen_glyph(%struct.vc_data* noundef %0, i32 noundef %n) #11
  %conv = zext i16 %call1 to i32
  %call2 = call i16 @inverse_translate(%struct.vc_data* noundef %0, i32 noundef %conv, i32 noundef 0) #11
  %conv3 = zext i16 %call2 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %conv3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @inword(i32 noundef %c) unnamed_addr #1 {
entry:
  %cmp = icmp ugt i32 %c, 127
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %shr = lshr i32 %c, 5
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr [4 x i32], [4 x i32]* @inwordLut, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %and = and i32 %c, 31
  %1 = lshr i32 %0, %and
  %2 = and i32 %1, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i32 [ 1, %entry ], [ %2, %lor.rhs ]
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @atedge(i32 noundef %p, i32 noundef %size_row) unnamed_addr #6 {
entry:
  %rem = srem i32 %p, %size_row
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %add = add i32 %p, 2
  %rem1 = srem i32 %add, %size_row
  %tobool2.not = icmp eq i32 %rem1, 0
  %phi.cast = zext i1 %tobool2.not to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vc_selection_store_chars(%struct.vc_data* nocapture noundef readonly %vc, i1 noundef %unicode) unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 5), align 8
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  %sub = sub i32 %0, %1
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %div, 1
  %conv = sext i32 %add to i64
  %2 = select i1 %unicode, i64 4, i64 1
  %call = call fastcc i8* @kmalloc_array(i64 noundef %conv, i64 noundef %2) #10
  %tobool3.not = icmp eq i8* %call, null
  br i1 %tobool3.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #14
  call void @clear_selection() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 2), align 8
  call void @kfree(i8* noundef %3) #11
  store i8* %call, i8** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 2), align 8
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 4), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 5), align 8
  %cmp.not52 = icmp ugt i32 %4, %5
  br i1 %cmp.not52, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end25
  %i.055 = phi i32 [ %4, %for.body.lr.ph ], [ %add17, %if.end25 ]
  %obp.054 = phi i8* [ %call, %for.body.lr.ph ], [ %obp.2, %if.end25 ]
  %bp.053 = phi i8* [ %call, %for.body.lr.ph ], [ %bp.3, %if.end25 ]
  %call7 = call fastcc i32 @sel_pos(i32 noundef %i.055, i1 noundef %unicode) #10
  br i1 %unicode, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %call10 = call fastcc i32 @store_utf8(i32 noundef %call7, i8* noundef %bp.053) #10
  %6 = zext i32 %call10 to i64
  %add.ptr = getelementptr i8, i8* %bp.053, i64 %6
  br label %if.end12

if.else:                                          ; preds = %for.body
  %conv11 = trunc i32 %call7 to i8
  %incdec.ptr = getelementptr i8, i8* %bp.053, i64 1
  store i8 %conv11, i8* %bp.053, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %bp.1 = phi i8* [ %add.ptr, %if.then9 ], [ %incdec.ptr, %if.else ]
  %cmp13 = icmp eq i32 %call7, 32
  %spec.select = select i1 %cmp13, i8* %obp.054, i8* %bp.1
  %add17 = add i32 %i.055, 2
  %7 = load i32, i32* %vc_size_row, align 4
  %rem = urem i32 %add17, %7
  %tobool18.not = icmp eq i32 %rem, 0
  br i1 %tobool18.not, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end12
  %cmp20.not = icmp eq i8* %spec.select, %bp.1
  br i1 %cmp20.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.then19
  %incdec.ptr23 = getelementptr i8, i8* %spec.select, i64 1
  store i8 13, i8* %spec.select, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.then22, %if.end12
  %bp.3 = phi i8* [ %bp.1, %if.end12 ], [ %incdec.ptr23, %if.then22 ], [ %bp.1, %if.then19 ]
  %obp.2 = phi i8* [ %spec.select, %if.end12 ], [ %incdec.ptr23, %if.then22 ], [ %bp.1, %if.then19 ]
  %8 = load i32, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 5), align 8
  %cmp.not = icmp ugt i32 %add17, %8
  br i1 %cmp.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %if.end25
  %.pre = load i8*, i8** getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 2), align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %9 = phi i8* [ %call, %if.end ], [ %.pre, %for.end.loopexit ]
  %bp.0.lcssa = phi i8* [ %call, %if.end ], [ %bp.3, %for.end.loopexit ]
  %sub.ptr.lhs.cast = ptrtoint i8* %bp.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv27 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv27, i32* getelementptr inbounds (%struct.vc_selection, %struct.vc_selection* @vc_sel, i64 0, i32 3), align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @screen_glyph_unicode(%struct.vc_data* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i16 @inverse_translate(%struct.vc_data* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i16 @screen_glyph(%struct.vc_data* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 11456) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i32 @store_utf8(i32 noundef %c, i8* nocapture noundef writeonly %p) unnamed_addr #8 {
entry:
  %cmp = icmp ult i32 %c, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = trunc i32 %c to i8
  store i8 %conv, i8* %p, align 1
  br label %return

if.else:                                          ; preds = %entry
  %cmp1 = icmp ult i32 %c, 2048
  br i1 %cmp1, label %if.then3, label %if.else9

if.then3:                                         ; preds = %if.else
  %shr = lshr i32 %c, 6
  %0 = trunc i32 %shr to i8
  %conv4 = or i8 %0, -64
  store i8 %conv4, i8* %p, align 1
  %1 = trunc i32 %c to i8
  %2 = and i8 %1, 63
  %conv7 = or i8 %2, -128
  %arrayidx8 = getelementptr i8, i8* %p, i64 1
  store i8 %conv7, i8* %arrayidx8, align 1
  br label %return

if.else9:                                         ; preds = %if.else
  %cmp10 = icmp ult i32 %c, 65536
  br i1 %cmp10, label %if.then12, label %if.else26

if.then12:                                        ; preds = %if.else9
  %shr13 = lshr i32 %c, 12
  %3 = trunc i32 %shr13 to i8
  %conv15 = or i8 %3, -32
  store i8 %conv15, i8* %p, align 1
  %shr17 = lshr i32 %c, 6
  %4 = trunc i32 %shr17 to i8
  %5 = and i8 %4, 63
  %conv20 = or i8 %5, -128
  %arrayidx21 = getelementptr i8, i8* %p, i64 1
  store i8 %conv20, i8* %arrayidx21, align 1
  %6 = trunc i32 %c to i8
  %7 = and i8 %6, 63
  %conv24 = or i8 %7, -128
  %arrayidx25 = getelementptr i8, i8* %p, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1
  br label %return

if.else26:                                        ; preds = %if.else9
  %cmp27 = icmp ult i32 %c, 1114112
  br i1 %cmp27, label %if.then29, label %if.else48

if.then29:                                        ; preds = %if.else26
  %shr30 = lshr i32 %c, 18
  %8 = trunc i32 %shr30 to i8
  %conv32 = or i8 %8, -16
  store i8 %conv32, i8* %p, align 1
  %shr34 = lshr i32 %c, 12
  %9 = trunc i32 %shr34 to i8
  %10 = and i8 %9, 63
  %conv37 = or i8 %10, -128
  %arrayidx38 = getelementptr i8, i8* %p, i64 1
  store i8 %conv37, i8* %arrayidx38, align 1
  %shr39 = lshr i32 %c, 6
  %11 = trunc i32 %shr39 to i8
  %12 = and i8 %11, 63
  %conv42 = or i8 %12, -128
  %arrayidx43 = getelementptr i8, i8* %p, i64 2
  store i8 %conv42, i8* %arrayidx43, align 1
  %13 = trunc i32 %c to i8
  %14 = and i8 %13, 63
  %conv46 = or i8 %14, -128
  %arrayidx47 = getelementptr i8, i8* %p, i64 3
  store i8 %conv46, i8* %arrayidx47, align 1
  br label %return

if.else48:                                        ; preds = %if.else26
  store i8 -17, i8* %p, align 1
  %arrayidx50 = getelementptr i8, i8* %p, i64 1
  store i8 -65, i8* %arrayidx50, align 1
  %arrayidx51 = getelementptr i8, i8* %p, i64 2
  store i8 -67, i8* %arrayidx51, align 1
  br label %return

return:                                           ; preds = %if.else48, %if.then29, %if.then12, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 2, %if.then3 ], [ 3, %if.then12 ], [ 4, %if.then29 ], [ 3, %if.else48 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #10
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #10
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #10
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #6 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 1448321}
!9 = !{i64 2153462697}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 3991050, i64 3991133, i64 3991357, i64 3991577, i64 3991600}
!13 = !{i64 3995752, i64 3995776}
!14 = !{i64 2151548536}
