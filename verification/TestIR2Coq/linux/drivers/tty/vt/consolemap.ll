; ModuleID = 'drivers/tty/vt/consolemap.c'
source_filename = "drivers/tty/vt/consolemap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.vc = type { %struct.vc_data*, %struct.work_struct }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.consw*, i16*, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, %struct.pid*, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], i16*, i32, i32, i32, i16, %struct.vc_data**, %struct.uni_pagedir*, %struct.uni_pagedir**, %struct.uni_screen* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.atomic_t = type { i32 }
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
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.55, %struct.qspinlock }
%union.anon.55 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.63 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.64 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.consw = type { %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uni_pagedir = type { [32 x i16**], i64, i64, [4 x i8*], i16* }
%struct.uni_screen = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.kmem_cache = type opaque
%struct.unipair = type { i16, i16 }

@inv_translate = internal unnamed_addr global [63 x i32] zeroinitializer, align 4
@translations = internal global [4 x [256 x i16]] [[256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 8594, i16 8592, i16 8593, i16 8595, i16 47, i16 9608, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 160, i16 9670, i16 9618, i16 9225, i16 9228, i16 9229, i16 9226, i16 176, i16 177, i16 9617, i16 9227, i16 9496, i16 9488, i16 9484, i16 9492, i16 9532, i16 9146, i16 9147, i16 9472, i16 9148, i16 9149, i16 9500, i16 9508, i16 9524, i16 9516, i16 9474, i16 8804, i16 8805, i16 960, i16 8800, i16 163, i16 183, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], [256 x i16] [i16 0, i16 9786, i16 9787, i16 9829, i16 9830, i16 9827, i16 9824, i16 8226, i16 9688, i16 9675, i16 9689, i16 9794, i16 9792, i16 9834, i16 9835, i16 9788, i16 9654, i16 9664, i16 8597, i16 8252, i16 182, i16 167, i16 9644, i16 8616, i16 8593, i16 8595, i16 8594, i16 8592, i16 8735, i16 8596, i16 9650, i16 9660, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 8962, i16 199, i16 252, i16 233, i16 226, i16 228, i16 224, i16 229, i16 231, i16 234, i16 235, i16 232, i16 239, i16 238, i16 236, i16 196, i16 197, i16 201, i16 230, i16 198, i16 244, i16 246, i16 242, i16 251, i16 249, i16 255, i16 214, i16 220, i16 162, i16 163, i16 165, i16 8359, i16 402, i16 225, i16 237, i16 243, i16 250, i16 241, i16 209, i16 170, i16 186, i16 191, i16 8976, i16 172, i16 189, i16 188, i16 161, i16 171, i16 187, i16 9617, i16 9618, i16 9619, i16 9474, i16 9508, i16 9569, i16 9570, i16 9558, i16 9557, i16 9571, i16 9553, i16 9559, i16 9565, i16 9564, i16 9563, i16 9488, i16 9492, i16 9524, i16 9516, i16 9500, i16 9472, i16 9532, i16 9566, i16 9567, i16 9562, i16 9556, i16 9577, i16 9574, i16 9568, i16 9552, i16 9580, i16 9575, i16 9576, i16 9572, i16 9573, i16 9561, i16 9560, i16 9554, i16 9555, i16 9579, i16 9578, i16 9496, i16 9484, i16 9608, i16 9604, i16 9612, i16 9616, i16 9600, i16 945, i16 223, i16 915, i16 960, i16 931, i16 963, i16 181, i16 964, i16 934, i16 920, i16 937, i16 948, i16 8734, i16 966, i16 949, i16 8745, i16 8801, i16 177, i16 8805, i16 8804, i16 8992, i16 8993, i16 247, i16 8776, i16 176, i16 8729, i16 183, i16 8730, i16 8319, i16 178, i16 9632, i16 160], [256 x i16] [i16 -4096, i16 -4095, i16 -4094, i16 -4093, i16 -4092, i16 -4091, i16 -4090, i16 -4089, i16 -4088, i16 -4087, i16 -4086, i16 -4085, i16 -4084, i16 -4083, i16 -4082, i16 -4081, i16 -4080, i16 -4079, i16 -4078, i16 -4077, i16 -4076, i16 -4075, i16 -4074, i16 -4073, i16 -4072, i16 -4071, i16 -4070, i16 -4069, i16 -4068, i16 -4067, i16 -4066, i16 -4065, i16 -4064, i16 -4063, i16 -4062, i16 -4061, i16 -4060, i16 -4059, i16 -4058, i16 -4057, i16 -4056, i16 -4055, i16 -4054, i16 -4053, i16 -4052, i16 -4051, i16 -4050, i16 -4049, i16 -4048, i16 -4047, i16 -4046, i16 -4045, i16 -4044, i16 -4043, i16 -4042, i16 -4041, i16 -4040, i16 -4039, i16 -4038, i16 -4037, i16 -4036, i16 -4035, i16 -4034, i16 -4033, i16 -4032, i16 -4031, i16 -4030, i16 -4029, i16 -4028, i16 -4027, i16 -4026, i16 -4025, i16 -4024, i16 -4023, i16 -4022, i16 -4021, i16 -4020, i16 -4019, i16 -4018, i16 -4017, i16 -4016, i16 -4015, i16 -4014, i16 -4013, i16 -4012, i16 -4011, i16 -4010, i16 -4009, i16 -4008, i16 -4007, i16 -4006, i16 -4005, i16 -4004, i16 -4003, i16 -4002, i16 -4001, i16 -4000, i16 -3999, i16 -3998, i16 -3997, i16 -3996, i16 -3995, i16 -3994, i16 -3993, i16 -3992, i16 -3991, i16 -3990, i16 -3989, i16 -3988, i16 -3987, i16 -3986, i16 -3985, i16 -3984, i16 -3983, i16 -3982, i16 -3981, i16 -3980, i16 -3979, i16 -3978, i16 -3977, i16 -3976, i16 -3975, i16 -3974, i16 -3973, i16 -3972, i16 -3971, i16 -3970, i16 -3969, i16 -3968, i16 -3967, i16 -3966, i16 -3965, i16 -3964, i16 -3963, i16 -3962, i16 -3961, i16 -3960, i16 -3959, i16 -3958, i16 -3957, i16 -3956, i16 -3955, i16 -3954, i16 -3953, i16 -3952, i16 -3951, i16 -3950, i16 -3949, i16 -3948, i16 -3947, i16 -3946, i16 -3945, i16 -3944, i16 -3943, i16 -3942, i16 -3941, i16 -3940, i16 -3939, i16 -3938, i16 -3937, i16 -3936, i16 -3935, i16 -3934, i16 -3933, i16 -3932, i16 -3931, i16 -3930, i16 -3929, i16 -3928, i16 -3927, i16 -3926, i16 -3925, i16 -3924, i16 -3923, i16 -3922, i16 -3921, i16 -3920, i16 -3919, i16 -3918, i16 -3917, i16 -3916, i16 -3915, i16 -3914, i16 -3913, i16 -3912, i16 -3911, i16 -3910, i16 -3909, i16 -3908, i16 -3907, i16 -3906, i16 -3905, i16 -3904, i16 -3903, i16 -3902, i16 -3901, i16 -3900, i16 -3899, i16 -3898, i16 -3897, i16 -3896, i16 -3895, i16 -3894, i16 -3893, i16 -3892, i16 -3891, i16 -3890, i16 -3889, i16 -3888, i16 -3887, i16 -3886, i16 -3885, i16 -3884, i16 -3883, i16 -3882, i16 -3881, i16 -3880, i16 -3879, i16 -3878, i16 -3877, i16 -3876, i16 -3875, i16 -3874, i16 -3873, i16 -3872, i16 -3871, i16 -3870, i16 -3869, i16 -3868, i16 -3867, i16 -3866, i16 -3865, i16 -3864, i16 -3863, i16 -3862, i16 -3861, i16 -3860, i16 -3859, i16 -3858, i16 -3857, i16 -3856, i16 -3855, i16 -3854, i16 -3853, i16 -3852, i16 -3851, i16 -3850, i16 -3849, i16 -3848, i16 -3847, i16 -3846, i16 -3845, i16 -3844, i16 -3843, i16 -3842, i16 -3841]], align 2
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 8
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@dflt = internal unnamed_addr global %struct.uni_pagedir* null, align 8
@dfont_unitable = external dso_local local_unnamed_addr global [0 x i16], align 2
@dfont_unicount = external dso_local local_unnamed_addr global [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local nonnull i16* @set_translate(i32 noundef %m, %struct.vc_data* nocapture noundef readonly %vc) local_unnamed_addr #0 {
entry:
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %0 = load i16, i16* %vc_num, align 8
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr [63 x i32], [63 x i32]* @inv_translate, i64 0, i64 %idxprom
  store i32 %m, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %m to i64
  %arraydecay = getelementptr [4 x [256 x i16]], [4 x [256 x i16]]* @translations, i64 0, i64 %idxprom1, i64 0
  ret i16* %arraydecay
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i16 @inverse_translate(%struct.vc_data* nocapture noundef readonly %conp, i32 noundef %glyph, i32 noundef %use_unicode) local_unnamed_addr #1 {
entry:
  %0 = icmp ugt i32 %glyph, 511
  br i1 %0, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %conp, i64 0, i32 49
  %1 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %2 = load %struct.uni_pagedir*, %struct.uni_pagedir** %1, align 8
  %tobool.not = icmp eq %struct.uni_pagedir* %2, null
  br i1 %tobool.not, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %conv = trunc i32 %glyph to i16
  br label %cleanup

if.else3:                                         ; preds = %if.else
  %tobool4.not = icmp eq i32 %use_unicode, 0
  br i1 %tobool4.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.else3
  %inverse_trans_unicode = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %2, i64 0, i32 4
  %3 = load i16*, i16** %inverse_trans_unicode, align 8
  %tobool6.not = icmp eq i16* %3, null
  br i1 %tobool6.not, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.then5
  %conv8 = trunc i32 %glyph to i16
  br label %cleanup

if.else9:                                         ; preds = %if.then5
  %idxprom44 = zext i32 %glyph to i64
  %arrayidx = getelementptr i16, i16* %3, i64 %idxprom44
  %4 = load i16, i16* %arrayidx, align 2
  br label %cleanup

if.else11:                                        ; preds = %if.else3
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %conp, i64 0, i32 3
  %5 = load i16, i16* %vc_num, align 8
  %idxprom12 = zext i16 %5 to i64
  %arrayidx13 = getelementptr [63 x i32], [63 x i32]* @inv_translate, i64 0, i64 %idxprom12
  %6 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %2, i64 0, i32 3, i64 %idxprom14
  %7 = load i8*, i8** %arrayidx15, align 8
  %tobool16.not = icmp eq i8* %7, null
  br i1 %tobool16.not, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else11
  %conv18 = trunc i32 %glyph to i16
  br label %cleanup

if.else19:                                        ; preds = %if.else11
  %idxprom2343 = zext i32 %glyph to i64
  %arrayidx24 = getelementptr i8, i8* %7, i64 %idxprom2343
  %8 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %8 to i16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else19, %if.then17, %if.else9, %if.then7, %if.then2
  %retval.0 = phi i16 [ %4, %if.else9 ], [ %conv8, %if.then7 ], [ %conv25, %if.else19 ], [ %conv18, %if.then17 ], [ %conv, %if.then2 ], [ 0, %entry ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_set_trans_old(i8* noundef %arg) local_unnamed_addr #3 {
entry:
  %inbuf = alloca [256 x i16], align 2
  %ubuf = alloca [256 x i8], align 1
  %0 = bitcast [256 x i16]* %inbuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(512) %0, i8 0, i64 512, i1 false), !annotation !7
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %ubuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %1, i8 0, i64 256, i1 false), !annotation !7
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef %arg, i64 noundef 256) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %vector.body, label %cleanup

vector.body:                                      ; preds = %entry, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %entry ]
  %induction14 = or i64 %index, 1
  %2 = getelementptr [256 x i8], [256 x i8]* %ubuf, i64 0, i64 %index
  %3 = getelementptr [256 x i8], [256 x i8]* %ubuf, i64 0, i64 %induction14
  %4 = load i8, i8* %2, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %4 to i16
  %7 = zext i8 %5 to i16
  %8 = or i16 %6, -4096
  %9 = or i16 %7, -4096
  %10 = getelementptr [256 x i16], [256 x i16]* %inbuf, i64 0, i64 %index
  %11 = getelementptr [256 x i16], [256 x i16]* %inbuf, i64 0, i64 %induction14
  store i16 %8, i16* %10, align 2
  store i16 %9, i16* %11, align 2
  %index.next = add nuw i64 %index, 2
  %12 = icmp eq i64 %index.next, 256
  br i1 %12, label %for.end, label %vector.body, !llvm.loop !8

for.end:                                          ; preds = %vector.body
  call void @console_lock() #12
  %call5 = call i8* @memcpy(i8* noundef bitcast (i16* getelementptr inbounds ([4 x [256 x i16]], [4 x [256 x i16]]* @translations, i64 0, i64 3, i64 0) to i8*), i8* noundef nonnull %0, i64 noundef 512) #12
  call fastcc void @update_user_maps() #13
  call void @console_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_user_maps() unnamed_addr #3 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %q.025 = phi %struct.uni_pagedir* [ null, %entry ], [ %q.1, %for.inc ]
  %0 = trunc i64 %indvars.iv to i32
  %call = call i32 @vc_cons_allocated(i32 noundef %0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %indvars.iv, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 49
  %2 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %3 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %tobool1.not = icmp eq %struct.uni_pagedir* %3, null
  %cmp2.not = icmp eq %struct.uni_pagedir* %3, %q.025
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %for.inc, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %1, %struct.uni_pagedir* noundef nonnull %3, i32 noundef 3) #13
  call fastcc void @set_inverse_trans_unicode(%struct.uni_pagedir* noundef nonnull %3) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then3, %for.body
  %q.1 = phi %struct.uni_pagedir* [ %3, %if.then3 ], [ %q.025, %if.end ], [ %q.025, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_get_trans_old(i8* noundef %arg) local_unnamed_addr #3 {
entry:
  %outbuf = alloca [256 x i8], align 1
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %outbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false), !annotation !7
  call void @console_lock() #12
  %1 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %1 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %2 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr [4 x [256 x i16]], [4 x [256 x i16]]* @translations, i64 0, i64 3, i64 %indvars.iv
  %3 = load i16, i16* %arrayidx2, align 2
  %conv = zext i16 %3 to i64
  %call = call i32 @conv_uni_to_pc(%struct.vc_data* noundef %2, i64 noundef %conv) #13
  %4 = icmp ult i32 %call, 256
  %conv316 = select i1 %4, i32 %call, i32 256
  %5 = trunc i32 %conv316 to i8
  %arrayidx5 = getelementptr [256 x i8], [256 x i8]* %outbuf, i64 0, i64 %indvars.iv
  store i8 %5, i8* %arrayidx5, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call void @console_unlock() #12
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %arg, i8* noundef nonnull %0, i64 noundef 256) #12
  %tobool7.not = icmp eq i64 %call2.i, 0
  %cond8 = select i1 %tobool7.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #11
  ret i32 %cond8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @conv_uni_to_pc(%struct.vc_data* nocapture noundef readonly %conp, i64 noundef %ucs) local_unnamed_addr #1 {
entry:
  %cmp = icmp sgt i64 %ucs, 65535
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %ucs, 32
  br i1 %cmp1, label %cleanup, label %if.else3

if.else3:                                         ; preds = %if.else
  switch i64 %ucs, label %if.else8 [
    i64 65279, label %cleanup
    i64 8207, label %cleanup
    i64 8206, label %cleanup
    i64 8205, label %cleanup
    i64 8204, label %cleanup
    i64 8203, label %cleanup
  ]

if.else8:                                         ; preds = %if.else3
  %and = and i64 %ucs, -512
  %cmp9 = icmp eq i64 %and, 61440
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.else8
  %0 = trunc i64 %ucs to i32
  %conv = and i32 %0, 511
  br label %cleanup

if.end14:                                         ; preds = %if.else8
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %conp, i64 0, i32 49
  %1 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %2 = load %struct.uni_pagedir*, %struct.uni_pagedir** %1, align 8
  %tobool.not = icmp eq %struct.uni_pagedir* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end14
  %shr52 = lshr i64 %ucs, 11
  %arrayidx = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %2, i64 0, i32 0, i64 %shr52
  %3 = load i16**, i16*** %arrayidx, align 8
  %tobool18.not = icmp eq i16** %3, null
  br i1 %tobool18.not, label %cleanup, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end16
  %4 = lshr i64 %ucs, 6
  %and21 = and i64 %4, 31
  %arrayidx22 = getelementptr i16*, i16** %3, i64 %and21
  %5 = load i16*, i16** %arrayidx22, align 8
  %tobool23.not = icmp eq i16* %5, null
  br i1 %tobool23.not, label %cleanup, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %and25 = and i64 %ucs, 63
  %arrayidx26 = getelementptr i16, i16* %5, i64 %and25
  %6 = load i16, i16* %arrayidx26, align 2
  %cmp28 = icmp ult i16 %6, 512
  %conv27 = zext i16 %6 to i32
  %spec.select = select i1 %cmp28, i32 %conv27, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true24, %if.else3, %if.else3, %if.else3, %if.else3, %if.else3, %if.else3, %if.end16, %land.lhs.true19, %if.end14, %if.else, %entry, %if.then10
  %retval.0 = phi i32 [ %conv, %if.then10 ], [ -4, %entry ], [ -1, %if.else ], [ -2, %if.else3 ], [ -3, %if.end14 ], [ -4, %land.lhs.true19 ], [ -4, %if.end16 ], [ -2, %if.else3 ], [ -2, %if.else3 ], [ -2, %if.else3 ], [ -2, %if.else3 ], [ -2, %if.else3 ], [ %spec.select, %land.lhs.true24 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_set_trans_new(i16* noundef %arg) local_unnamed_addr #3 {
entry:
  %inbuf = alloca [256 x i16], align 2
  %0 = bitcast [256 x i16]* %inbuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(512) %0, i8 0, i64 512, i1 false), !annotation !7
  %1 = bitcast i16* %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 512) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @console_lock() #12
  %call2 = call i8* @memcpy(i8* noundef bitcast (i16* getelementptr inbounds ([4 x [256 x i16]], [4 x [256 x i16]]* @translations, i64 0, i64 3, i64 0) to i8*), i8* noundef nonnull %0, i64 noundef 512) #12
  call fastcc void @update_user_maps() #13
  call void @console_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_get_trans_new(i16* noundef %arg) local_unnamed_addr #3 {
entry:
  %outbuf = alloca [256 x i16], align 2
  %0 = bitcast [256 x i16]* %outbuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(512) %0, i8 0, i64 512, i1 false), !annotation !7
  call void @console_lock() #12
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef bitcast (i16* getelementptr inbounds ([4 x [256 x i16]], [4 x [256 x i16]]* @translations, i64 0, i64 3, i64 0) to i8*), i64 noundef 512) #12
  call void @console_unlock() #12
  %1 = bitcast i16* %arg to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %1, i8* noundef nonnull %0, i64 noundef 512) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #11
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @con_free_unimap(%struct.vc_data* nocapture noundef readonly %vc) local_unnamed_addr #3 {
entry:
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 49
  %0 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %1 = load %struct.uni_pagedir*, %struct.uni_pagedir** %0, align 8
  %tobool.not = icmp eq %struct.uni_pagedir* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store %struct.uni_pagedir* null, %struct.uni_pagedir** %0, align 8
  %refcount = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %1, i64 0, i32 1
  %2 = load i64, i64* %refcount, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %refcount, align 8
  %tobool2.not = icmp eq i64 %dec, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  call fastcc void @con_release_unimap(%struct.uni_pagedir* noundef nonnull %1) #13
  %3 = bitcast %struct.uni_pagedir* %1 to i8*
  call void @kfree(i8* noundef nonnull %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @con_release_unimap(%struct.uni_pagedir* nocapture noundef %p) unnamed_addr #3 {
entry:
  %0 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %cmp = icmp eq %struct.uni_pagedir* %0, %p
  br i1 %cmp, label %if.then, label %for.body.preheader

if.then:                                          ; preds = %entry
  store %struct.uni_pagedir* null, %struct.uni_pagedir** @dflt, align 8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end9
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end9 ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 0, i64 %indvars.iv
  %1 = load i16**, i16*** %arrayidx, align 8
  %cmp2.not = icmp eq i16** %1, null
  br i1 %cmp2.not, label %if.end9, label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.body
  %2 = bitcast i16** %1 to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #12
  %arrayidx8.1 = getelementptr i16*, i16** %1, i64 1
  %4 = bitcast i16** %arrayidx8.1 to i8**
  %5 = load i8*, i8** %4, align 8
  call void @kfree(i8* noundef %5) #12
  %arrayidx8.2 = getelementptr i16*, i16** %1, i64 2
  %6 = bitcast i16** %arrayidx8.2 to i8**
  %7 = load i8*, i8** %6, align 8
  call void @kfree(i8* noundef %7) #12
  %arrayidx8.3 = getelementptr i16*, i16** %1, i64 3
  %8 = bitcast i16** %arrayidx8.3 to i8**
  %9 = load i8*, i8** %8, align 8
  call void @kfree(i8* noundef %9) #12
  %arrayidx8.4 = getelementptr i16*, i16** %1, i64 4
  %10 = bitcast i16** %arrayidx8.4 to i8**
  %11 = load i8*, i8** %10, align 8
  call void @kfree(i8* noundef %11) #12
  %arrayidx8.5 = getelementptr i16*, i16** %1, i64 5
  %12 = bitcast i16** %arrayidx8.5 to i8**
  %13 = load i8*, i8** %12, align 8
  call void @kfree(i8* noundef %13) #12
  %arrayidx8.6 = getelementptr i16*, i16** %1, i64 6
  %14 = bitcast i16** %arrayidx8.6 to i8**
  %15 = load i8*, i8** %14, align 8
  call void @kfree(i8* noundef %15) #12
  %arrayidx8.7 = getelementptr i16*, i16** %1, i64 7
  %16 = bitcast i16** %arrayidx8.7 to i8**
  %17 = load i8*, i8** %16, align 8
  call void @kfree(i8* noundef %17) #12
  %arrayidx8.8 = getelementptr i16*, i16** %1, i64 8
  %18 = bitcast i16** %arrayidx8.8 to i8**
  %19 = load i8*, i8** %18, align 8
  call void @kfree(i8* noundef %19) #12
  %arrayidx8.9 = getelementptr i16*, i16** %1, i64 9
  %20 = bitcast i16** %arrayidx8.9 to i8**
  %21 = load i8*, i8** %20, align 8
  call void @kfree(i8* noundef %21) #12
  %arrayidx8.10 = getelementptr i16*, i16** %1, i64 10
  %22 = bitcast i16** %arrayidx8.10 to i8**
  %23 = load i8*, i8** %22, align 8
  call void @kfree(i8* noundef %23) #12
  %arrayidx8.11 = getelementptr i16*, i16** %1, i64 11
  %24 = bitcast i16** %arrayidx8.11 to i8**
  %25 = load i8*, i8** %24, align 8
  call void @kfree(i8* noundef %25) #12
  %arrayidx8.12 = getelementptr i16*, i16** %1, i64 12
  %26 = bitcast i16** %arrayidx8.12 to i8**
  %27 = load i8*, i8** %26, align 8
  call void @kfree(i8* noundef %27) #12
  %arrayidx8.13 = getelementptr i16*, i16** %1, i64 13
  %28 = bitcast i16** %arrayidx8.13 to i8**
  %29 = load i8*, i8** %28, align 8
  call void @kfree(i8* noundef %29) #12
  %arrayidx8.14 = getelementptr i16*, i16** %1, i64 14
  %30 = bitcast i16** %arrayidx8.14 to i8**
  %31 = load i8*, i8** %30, align 8
  call void @kfree(i8* noundef %31) #12
  %arrayidx8.15 = getelementptr i16*, i16** %1, i64 15
  %32 = bitcast i16** %arrayidx8.15 to i8**
  %33 = load i8*, i8** %32, align 8
  call void @kfree(i8* noundef %33) #12
  %arrayidx8.16 = getelementptr i16*, i16** %1, i64 16
  %34 = bitcast i16** %arrayidx8.16 to i8**
  %35 = load i8*, i8** %34, align 8
  call void @kfree(i8* noundef %35) #12
  %arrayidx8.17 = getelementptr i16*, i16** %1, i64 17
  %36 = bitcast i16** %arrayidx8.17 to i8**
  %37 = load i8*, i8** %36, align 8
  call void @kfree(i8* noundef %37) #12
  %arrayidx8.18 = getelementptr i16*, i16** %1, i64 18
  %38 = bitcast i16** %arrayidx8.18 to i8**
  %39 = load i8*, i8** %38, align 8
  call void @kfree(i8* noundef %39) #12
  %arrayidx8.19 = getelementptr i16*, i16** %1, i64 19
  %40 = bitcast i16** %arrayidx8.19 to i8**
  %41 = load i8*, i8** %40, align 8
  call void @kfree(i8* noundef %41) #12
  %arrayidx8.20 = getelementptr i16*, i16** %1, i64 20
  %42 = bitcast i16** %arrayidx8.20 to i8**
  %43 = load i8*, i8** %42, align 8
  call void @kfree(i8* noundef %43) #12
  %arrayidx8.21 = getelementptr i16*, i16** %1, i64 21
  %44 = bitcast i16** %arrayidx8.21 to i8**
  %45 = load i8*, i8** %44, align 8
  call void @kfree(i8* noundef %45) #12
  %arrayidx8.22 = getelementptr i16*, i16** %1, i64 22
  %46 = bitcast i16** %arrayidx8.22 to i8**
  %47 = load i8*, i8** %46, align 8
  call void @kfree(i8* noundef %47) #12
  %arrayidx8.23 = getelementptr i16*, i16** %1, i64 23
  %48 = bitcast i16** %arrayidx8.23 to i8**
  %49 = load i8*, i8** %48, align 8
  call void @kfree(i8* noundef %49) #12
  %arrayidx8.24 = getelementptr i16*, i16** %1, i64 24
  %50 = bitcast i16** %arrayidx8.24 to i8**
  %51 = load i8*, i8** %50, align 8
  call void @kfree(i8* noundef %51) #12
  %arrayidx8.25 = getelementptr i16*, i16** %1, i64 25
  %52 = bitcast i16** %arrayidx8.25 to i8**
  %53 = load i8*, i8** %52, align 8
  call void @kfree(i8* noundef %53) #12
  %arrayidx8.26 = getelementptr i16*, i16** %1, i64 26
  %54 = bitcast i16** %arrayidx8.26 to i8**
  %55 = load i8*, i8** %54, align 8
  call void @kfree(i8* noundef %55) #12
  %arrayidx8.27 = getelementptr i16*, i16** %1, i64 27
  %56 = bitcast i16** %arrayidx8.27 to i8**
  %57 = load i8*, i8** %56, align 8
  call void @kfree(i8* noundef %57) #12
  %arrayidx8.28 = getelementptr i16*, i16** %1, i64 28
  %58 = bitcast i16** %arrayidx8.28 to i8**
  %59 = load i8*, i8** %58, align 8
  call void @kfree(i8* noundef %59) #12
  %arrayidx8.29 = getelementptr i16*, i16** %1, i64 29
  %60 = bitcast i16** %arrayidx8.29 to i8**
  %61 = load i8*, i8** %60, align 8
  call void @kfree(i8* noundef %61) #12
  %arrayidx8.30 = getelementptr i16*, i16** %1, i64 30
  %62 = bitcast i16** %arrayidx8.30 to i8**
  %63 = load i8*, i8** %62, align 8
  call void @kfree(i8* noundef %63) #12
  %arrayidx8.31 = getelementptr i16*, i16** %1, i64 31
  %64 = bitcast i16** %arrayidx8.31 to i8**
  %65 = load i8*, i8** %64, align 8
  call void @kfree(i8* noundef %65) #12
  %66 = bitcast i16** %1 to i8*
  call void @kfree(i8* noundef nonnull %66) #12
  br label %if.end9

if.end9:                                          ; preds = %for.body6.preheader, %for.body
  store i16** null, i16*** %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.body18.preheader, label %for.body

for.body18.preheader:                             ; preds = %if.end9
  %arrayidx20 = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 3, i64 0
  %67 = load i8*, i8** %arrayidx20, align 8
  call void @kfree(i8* noundef %67) #12
  store i8* null, i8** %arrayidx20, align 8
  %arrayidx20.1 = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 3, i64 1
  %68 = load i8*, i8** %arrayidx20.1, align 8
  call void @kfree(i8* noundef %68) #12
  store i8* null, i8** %arrayidx20.1, align 8
  %arrayidx20.2 = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 3, i64 2
  %69 = load i8*, i8** %arrayidx20.2, align 8
  call void @kfree(i8* noundef %69) #12
  store i8* null, i8** %arrayidx20.2, align 8
  %arrayidx20.3 = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 3, i64 3
  %70 = load i8*, i8** %arrayidx20.3, align 8
  call void @kfree(i8* noundef %70) #12
  store i8* null, i8** %arrayidx20.3, align 8
  %inverse_trans_unicode = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 4
  %71 = bitcast i16** %inverse_trans_unicode to i8**
  %72 = load i8*, i8** %71, align 8
  call void @kfree(i8* noundef %72) #12
  store i16* null, i16** %inverse_trans_unicode, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_clear_unimap(%struct.vc_data* nocapture noundef readonly %vc) local_unnamed_addr #3 {
entry:
  call void @console_lock() #12
  %call = call fastcc i32 @con_do_clear_unimap(%struct.vc_data* noundef %vc) #13
  call void @console_unlock() #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @con_do_clear_unimap(%struct.vc_data* nocapture noundef readonly %vc) unnamed_addr #3 {
entry:
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 49
  %0 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %1 = load %struct.uni_pagedir*, %struct.uni_pagedir** %0, align 8
  %tobool.not = icmp eq %struct.uni_pagedir* %1, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %refcount = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %1, i64 0, i32 1
  %2 = load i64, i64* %refcount, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %refcount, align 8
  %tobool1.not = icmp eq i64 %dec, 0
  br i1 %tobool1.not, label %if.else, label %if.then.thread

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @kzalloc() #13
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %cleanup, label %if.end7

if.then.thread:                                   ; preds = %lor.lhs.false
  %call29 = call fastcc i8* @kzalloc() #13
  %tobool2.not30 = icmp eq i8* %call29, null
  br i1 %tobool2.not30, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then.thread
  %3 = load i64, i64* %refcount, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %refcount, align 8
  br label %cleanup

if.end7:                                          ; preds = %if.then.thread, %if.then
  %call31 = phi i8* [ %call29, %if.then.thread ], [ %call, %if.then ]
  %refcount8 = getelementptr inbounds i8, i8* %call31, i64 256
  %4 = bitcast i8* %refcount8 to i64*
  store i64 1, i64* %4, align 8
  %5 = bitcast %struct.uni_pagedir*** %vc_uni_pagedir_loc to i8***
  %6 = load i8**, i8*** %5, align 8
  store i8* %call31, i8** %6, align 8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %cmp = icmp eq %struct.uni_pagedir* %1, %7
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  store %struct.uni_pagedir* null, %struct.uni_pagedir** @dflt, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else
  store i64 %2, i64* %refcount, align 8
  %sum = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %1, i64 0, i32 2
  store i64 0, i64* %sum, align 8
  call fastcc void @con_release_unimap(%struct.uni_pagedir* noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end7, %if.end11, %if.then5
  %retval.0 = phi i32 [ -12, %if.then5 ], [ 0, %if.end11 ], [ 0, %if.end7 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_set_unimap(%struct.vc_data* nocapture noundef readonly %vc, i16 noundef %ct, %struct.unipair* noundef %list) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i16 %ct, 0
  br i1 %tobool.not, label %cleanup94, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.unipair* %list to i8*
  %conv = zext i16 %ct to i64
  %call = call fastcc i64 @array_size(i64 noundef %conv) #13
  %call1 = call i8* @vmemdup_user(i8* noundef %0, i64 noundef %call) #12
  %1 = bitcast i8* %call1 to %struct.unipair*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %call1) #13
  br i1 %call2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %call1) #13
  %conv5 = trunc i64 %call4 to i32
  br label %cleanup94

if.end6:                                          ; preds = %if.end
  call void @console_lock() #12
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 49
  %2 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %3 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %tobool7.not = icmp eq %struct.uni_pagedir* %3, null
  br i1 %tobool7.not, label %out_unlock, label %if.end9

if.end9:                                          ; preds = %if.end6
  %refcount = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %3, i64 0, i32 1
  %4 = load i64, i64* %refcount, align 8
  %cmp = icmp ugt i64 %4, 1
  br i1 %cmp, label %if.then11, label %if.else68

if.then11:                                        ; preds = %if.end9
  %call12 = call fastcc i32 @con_do_clear_unimap(%struct.vc_data* noundef %vc) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %out_unlock

if.end15:                                         ; preds = %if.then11
  %5 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %6 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  br label %for.body

for.body:                                         ; preds = %if.end15, %for.inc61
  %indvars.iv183 = phi i64 [ 0, %if.end15 ], [ %indvars.iv.next184, %for.inc61 ]
  %l.0174 = phi i16 [ 0, %if.end15 ], [ %l.4, %for.inc61 ]
  %arrayidx = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %3, i64 0, i32 0, i64 %indvars.iv183
  %7 = load i16**, i16*** %arrayidx, align 8
  %tobool19.not = icmp eq i16** %7, null
  br i1 %tobool19.not, label %if.else56, label %for.body24

for.body24:                                       ; preds = %for.body, %for.inc53
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %for.inc53 ], [ 0, %for.body ]
  %l.1172 = phi i16 [ %l.3, %for.inc53 ], [ %l.0174, %for.body ]
  %arrayidx26 = getelementptr i16*, i16** %7, i64 %indvars.iv180
  %8 = load i16*, i16** %arrayidx26, align 8
  %tobool27.not = icmp eq i16* %8, null
  br i1 %tobool27.not, label %if.else, label %for.body32

for.body32:                                       ; preds = %for.body24, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body24 ]
  %l.2170 = phi i16 [ %inc49, %for.inc ], [ %l.1172, %for.body24 ]
  %arrayidx34 = getelementptr i16, i16* %8, i64 %indvars.iv
  %9 = load i16, i16* %arrayidx34, align 2
  %cmp36.not = icmp eq i16 %9, -1
  br i1 %cmp36.not, label %for.inc, label %if.then38

if.then38:                                        ; preds = %for.body32
  %call41 = call fastcc i32 @con_insert_unipair(%struct.uni_pagedir* noundef %6, i16 noundef %l.2170, i16 noundef %9) #13
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.inc, label %if.then43

if.then43:                                        ; preds = %if.then38
  %10 = load i64, i64* %refcount, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %refcount, align 8
  %11 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  store %struct.uni_pagedir* %3, %struct.uni_pagedir** %11, align 8
  call fastcc void @con_release_unimap(%struct.uni_pagedir* noundef %6) #13
  %12 = bitcast %struct.uni_pagedir* %6 to i8*
  call void @kfree(i8* noundef %12) #12
  br label %out_unlock

for.inc:                                          ; preds = %for.body32, %if.then38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc49 = add i16 %l.2170, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.inc53, label %for.body32

if.else:                                          ; preds = %for.body24
  %add = add i16 %l.1172, 64
  br label %for.inc53

for.inc53:                                        ; preds = %for.inc, %if.else
  %l.3 = phi i16 [ %add, %if.else ], [ %inc49, %for.inc ]
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %exitcond182.not = icmp eq i64 %indvars.iv.next181, 32
  br i1 %exitcond182.not, label %for.inc61, label %for.body24

if.else56:                                        ; preds = %for.body
  %add58 = add i16 %l.0174, 2048
  br label %for.inc61

for.inc61:                                        ; preds = %for.inc53, %if.else56
  %l.4 = phi i16 [ %add58, %if.else56 ], [ %l.3, %for.inc53 ]
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1
  %exitcond185.not = icmp eq i64 %indvars.iv.next184, 32
  br i1 %exitcond185.not, label %for.body76.preheader, label %for.body

if.else68:                                        ; preds = %if.end9
  %13 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %cmp69 = icmp eq %struct.uni_pagedir* %3, %13
  br i1 %cmp69, label %if.then71, label %for.body76.preheader

if.then71:                                        ; preds = %if.else68
  store %struct.uni_pagedir* null, %struct.uni_pagedir** @dflt, align 8
  br label %for.body76.preheader

for.body76.preheader:                             ; preds = %for.inc61, %if.then71, %if.else68
  %p.1 = phi %struct.uni_pagedir* [ %3, %if.then71 ], [ %3, %if.else68 ], [ %6, %for.inc61 ]
  br label %for.body76

for.body76:                                       ; preds = %for.body76.preheader, %for.body76
  %plist.0178 = phi %struct.unipair* [ %incdec.ptr, %for.body76 ], [ %1, %for.body76.preheader ]
  %err.2177 = phi i32 [ %spec.select, %for.body76 ], [ 0, %for.body76.preheader ]
  %ct.addr.0176 = phi i16 [ %dec, %for.body76 ], [ %ct, %for.body76.preheader ]
  %unicode = getelementptr inbounds %struct.unipair, %struct.unipair* %plist.0178, i64 0, i32 0
  %14 = load i16, i16* %unicode, align 2
  %fontpos = getelementptr inbounds %struct.unipair, %struct.unipair* %plist.0178, i64 0, i32 1
  %15 = load i16, i16* %fontpos, align 2
  %call77 = call fastcc i32 @con_insert_unipair(%struct.uni_pagedir* noundef %p.1, i16 noundef %14, i16 noundef %15) #13
  %tobool78.not = icmp eq i32 %call77, 0
  %spec.select = select i1 %tobool78.not, i32 %err.2177, i32 %call77
  %dec = add i16 %ct.addr.0176, -1
  %incdec.ptr = getelementptr %struct.unipair, %struct.unipair* %plist.0178, i64 1
  %tobool75.not = icmp eq i16 %dec, 0
  br i1 %tobool75.not, label %for.end82, label %for.body76

for.end82:                                        ; preds = %for.body76
  %call83 = call fastcc i32 @con_unify_unimap(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %p.1) #13
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %for.body90.preheader, label %out_unlock

for.body90.preheader:                             ; preds = %for.end82
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %p.1, i32 noundef 0) #13
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %p.1, i32 noundef 1) #13
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %p.1, i32 noundef 2) #13
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %p.1, i32 noundef 3) #13
  call fastcc void @set_inverse_trans_unicode(%struct.uni_pagedir* noundef %p.1) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.then11, %if.then43, %if.end6, %for.end82, %for.body90.preheader
  %err.4 = phi i32 [ %spec.select, %for.end82 ], [ %spec.select, %for.body90.preheader ], [ -22, %if.end6 ], [ %call12, %if.then11 ], [ %call41, %if.then43 ]
  call void @console_unlock() #12
  call void @kvfree(i8* noundef %call1) #12
  br label %cleanup94

cleanup94:                                        ; preds = %entry, %out_unlock, %if.then3
  %retval.0 = phi i32 [ %conv5, %if.then3 ], [ %err.4, %out_unlock ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @vmemdup_user(i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @array_size(i64 noundef %b) unnamed_addr #6 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %b, i64 4)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %retval.0 = select i1 %1, i64 -1, i64 %2
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @con_insert_unipair(%struct.uni_pagedir* nocapture noundef %p, i16 noundef %unicode, i16 noundef %fontpos) unnamed_addr #3 {
entry:
  %conv = zext i16 %unicode to i32
  %0 = lshr i32 %conv, 11
  %1 = zext i32 %0 to i64
  %arrayidx = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 0, i64 %1
  %2 = load i16**, i16*** %arrayidx, align 8
  %tobool.not = icmp eq i16** %2, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @kmalloc_array(i64 noundef 32, i64 noundef 8) #13
  %3 = bitcast i8* %call to i16**
  %4 = bitcast i16*** %arrayidx to i8**
  store i8* %call, i8** %4, align 8
  %tobool4.not = icmp eq i8* %call, null
  br i1 %tobool4.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  store i16* null, i16** %3, align 8
  %arrayidx8.1 = getelementptr i8, i8* %call, i64 8
  %5 = bitcast i8* %arrayidx8.1 to i16**
  store i16* null, i16** %5, align 8
  %arrayidx8.2 = getelementptr i8, i8* %call, i64 16
  %6 = bitcast i8* %arrayidx8.2 to i16**
  store i16* null, i16** %6, align 8
  %arrayidx8.3 = getelementptr i8, i8* %call, i64 24
  %7 = bitcast i8* %arrayidx8.3 to i16**
  store i16* null, i16** %7, align 8
  %arrayidx8.4 = getelementptr i8, i8* %call, i64 32
  %8 = bitcast i8* %arrayidx8.4 to i16**
  store i16* null, i16** %8, align 8
  %arrayidx8.5 = getelementptr i8, i8* %call, i64 40
  %9 = bitcast i8* %arrayidx8.5 to i16**
  store i16* null, i16** %9, align 8
  %arrayidx8.6 = getelementptr i8, i8* %call, i64 48
  %10 = bitcast i8* %arrayidx8.6 to i16**
  store i16* null, i16** %10, align 8
  %arrayidx8.7 = getelementptr i8, i8* %call, i64 56
  %11 = bitcast i8* %arrayidx8.7 to i16**
  store i16* null, i16** %11, align 8
  %arrayidx8.8 = getelementptr i8, i8* %call, i64 64
  %12 = bitcast i8* %arrayidx8.8 to i16**
  store i16* null, i16** %12, align 8
  %arrayidx8.9 = getelementptr i8, i8* %call, i64 72
  %13 = bitcast i8* %arrayidx8.9 to i16**
  store i16* null, i16** %13, align 8
  %arrayidx8.10 = getelementptr i8, i8* %call, i64 80
  %14 = bitcast i8* %arrayidx8.10 to i16**
  store i16* null, i16** %14, align 8
  %arrayidx8.11 = getelementptr i8, i8* %call, i64 88
  %15 = bitcast i8* %arrayidx8.11 to i16**
  store i16* null, i16** %15, align 8
  %arrayidx8.12 = getelementptr i8, i8* %call, i64 96
  %16 = bitcast i8* %arrayidx8.12 to i16**
  store i16* null, i16** %16, align 8
  %arrayidx8.13 = getelementptr i8, i8* %call, i64 104
  %17 = bitcast i8* %arrayidx8.13 to i16**
  store i16* null, i16** %17, align 8
  %arrayidx8.14 = getelementptr i8, i8* %call, i64 112
  %18 = bitcast i8* %arrayidx8.14 to i16**
  store i16* null, i16** %18, align 8
  %arrayidx8.15 = getelementptr i8, i8* %call, i64 120
  %19 = bitcast i8* %arrayidx8.15 to i16**
  store i16* null, i16** %19, align 8
  %arrayidx8.16 = getelementptr i8, i8* %call, i64 128
  %20 = bitcast i8* %arrayidx8.16 to i16**
  store i16* null, i16** %20, align 8
  %arrayidx8.17 = getelementptr i8, i8* %call, i64 136
  %21 = bitcast i8* %arrayidx8.17 to i16**
  store i16* null, i16** %21, align 8
  %arrayidx8.18 = getelementptr i8, i8* %call, i64 144
  %22 = bitcast i8* %arrayidx8.18 to i16**
  store i16* null, i16** %22, align 8
  %arrayidx8.19 = getelementptr i8, i8* %call, i64 152
  %23 = bitcast i8* %arrayidx8.19 to i16**
  store i16* null, i16** %23, align 8
  %arrayidx8.20 = getelementptr i8, i8* %call, i64 160
  %24 = bitcast i8* %arrayidx8.20 to i16**
  store i16* null, i16** %24, align 8
  %arrayidx8.21 = getelementptr i8, i8* %call, i64 168
  %25 = bitcast i8* %arrayidx8.21 to i16**
  store i16* null, i16** %25, align 8
  %arrayidx8.22 = getelementptr i8, i8* %call, i64 176
  %26 = bitcast i8* %arrayidx8.22 to i16**
  store i16* null, i16** %26, align 8
  %arrayidx8.23 = getelementptr i8, i8* %call, i64 184
  %27 = bitcast i8* %arrayidx8.23 to i16**
  store i16* null, i16** %27, align 8
  %arrayidx8.24 = getelementptr i8, i8* %call, i64 192
  %28 = bitcast i8* %arrayidx8.24 to i16**
  store i16* null, i16** %28, align 8
  %arrayidx8.25 = getelementptr i8, i8* %call, i64 200
  %29 = bitcast i8* %arrayidx8.25 to i16**
  store i16* null, i16** %29, align 8
  %arrayidx8.26 = getelementptr i8, i8* %call, i64 208
  %30 = bitcast i8* %arrayidx8.26 to i16**
  store i16* null, i16** %30, align 8
  %arrayidx8.27 = getelementptr i8, i8* %call, i64 216
  %31 = bitcast i8* %arrayidx8.27 to i16**
  store i16* null, i16** %31, align 8
  %arrayidx8.28 = getelementptr i8, i8* %call, i64 224
  %32 = bitcast i8* %arrayidx8.28 to i16**
  store i16* null, i16** %32, align 8
  %arrayidx8.29 = getelementptr i8, i8* %call, i64 232
  %33 = bitcast i8* %arrayidx8.29 to i16**
  store i16* null, i16** %33, align 8
  %arrayidx8.30 = getelementptr i8, i8* %call, i64 240
  %34 = bitcast i8* %arrayidx8.30 to i16**
  store i16* null, i16** %34, align 8
  %arrayidx8.31 = getelementptr i8, i8* %call, i64 248
  %35 = bitcast i8* %arrayidx8.31 to i16**
  store i16* null, i16** %35, align 8
  br label %if.end9

if.end9:                                          ; preds = %for.body.preheader, %entry
  %p1.0 = phi i16** [ %2, %entry ], [ %3, %for.body.preheader ]
  %36 = lshr i32 %conv, 6
  %and = and i32 %36, 31
  %37 = zext i32 %and to i64
  %arrayidx13 = getelementptr i16*, i16** %p1.0, i64 %37
  %38 = load i16*, i16** %arrayidx13, align 8
  %tobool14.not = icmp eq i16* %38, null
  br i1 %tobool14.not, label %if.then15, label %if.end23

if.then15:                                        ; preds = %if.end9
  %call16 = call fastcc i8* @kmalloc_array(i64 noundef 64, i64 noundef 2) #13
  %39 = bitcast i16** %arrayidx13 to i8**
  store i8* %call16, i8** %39, align 8
  %tobool19.not = icmp eq i8* %call16, null
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.then15
  %40 = bitcast i8* %call16 to i16*
  %call22 = call i8* @memset(i8* noundef nonnull %call16, i32 noundef 255, i64 noundef 128) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end9
  %p2.0 = phi i16* [ %38, %if.end9 ], [ %40, %if.end21 ]
  %and25 = and i32 %conv, 63
  %41 = zext i32 %and25 to i64
  %arrayidx27 = getelementptr i16, i16* %p2.0, i64 %41
  store i16 %fontpos, i16* %arrayidx27, align 2
  %conv28 = zext i16 %fontpos to i32
  %shl = shl i32 %conv28, 20
  %add = or i32 %shl, %conv
  %conv30 = sext i32 %add to i64
  %sum = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 2
  %42 = load i64, i64* %sum, align 8
  %add31 = add i64 %42, %conv30
  store i64 %add31, i64* %sum, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -12, %if.then ], [ -12, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @con_unify_unimap(%struct.vc_data* nocapture noundef readonly %conp, %struct.uni_pagedir* noundef %p) unnamed_addr #3 {
entry:
  %sum4 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc66
  %indvars.iv146 = phi i64 [ 0, %entry ], [ %indvars.iv.next147, %for.inc66 ]
  %0 = trunc i64 %indvars.iv146 to i32
  %call = call i32 @vc_cons_allocated(i32 noundef %0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc66, label %if.end

if.end:                                           ; preds = %for.body
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %indvars.iv146, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 49
  %2 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %3 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %tobool1.not = icmp eq %struct.uni_pagedir* %3, null
  %cmp2 = icmp eq %struct.uni_pagedir* %3, %p
  %or.cond116 = or i1 %tobool1.not, %cmp2
  br i1 %or.cond116, label %for.inc66, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %sum = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %3, i64 0, i32 2
  %4 = load i64, i64* %sum, align 8
  %5 = load i64, i64* %sum4, align 8
  %cmp5.not = icmp eq i64 %4, %5
  br i1 %cmp5.not, label %for.body10, label %for.inc66

for.body10:                                       ; preds = %lor.lhs.false3, %for.inc58
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.inc58 ], [ 0, %lor.lhs.false3 ]
  %arrayidx12 = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 0, i64 %indvars.iv142
  %6 = load i16**, i16*** %arrayidx12, align 8
  %arrayidx15 = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %3, i64 0, i32 0, i64 %indvars.iv142
  %7 = load i16**, i16*** %arrayidx15, align 8
  %tobool16 = icmp ne i16** %6, null
  %tobool17 = icmp ne i16** %7, null
  %or.cond = select i1 %tobool16, i1 true, i1 %tobool17
  br i1 %or.cond, label %if.end19, label %for.inc58

if.end19:                                         ; preds = %for.body10
  %or.cond73 = select i1 %tobool16, i1 %tobool17, i1 false
  br i1 %or.cond73, label %for.body27, label %for.inc66

for.body27:                                       ; preds = %if.end19, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end19 ]
  %arrayidx29 = getelementptr i16*, i16** %6, i64 %indvars.iv
  %8 = load i16*, i16** %arrayidx29, align 8
  %tobool30.not = icmp eq i16* %8, null
  %arrayidx33 = getelementptr i16*, i16** %7, i64 %indvars.iv
  %9 = load i16*, i16** %arrayidx33, align 8
  %tobool34.not = icmp eq i16* %9, null
  br i1 %tobool30.not, label %land.lhs.true31, label %lor.lhs.false40

land.lhs.true31:                                  ; preds = %for.body27
  br i1 %tobool34.not, label %for.inc, label %for.end60

lor.lhs.false40:                                  ; preds = %for.body27
  br i1 %tobool34.not, label %for.end60, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false40
  %10 = bitcast i16* %8 to i8*
  %11 = bitcast i16* %9 to i8*
  %call50 = call i32 @memcmp(i8* noundef nonnull %10, i8* noundef nonnull %11, i64 noundef 128) #12
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.inc, label %for.end60

for.inc:                                          ; preds = %if.end45, %land.lhs.true31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.inc58, label %for.body27

for.inc58:                                        ; preds = %for.inc, %for.body10
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, 32
  br i1 %exitcond145.not, label %if.then62, label %for.body10

for.end60:                                        ; preds = %land.lhs.true31, %if.end45, %lor.lhs.false40
  %12 = trunc i64 %indvars.iv142 to i32
  %cmp61 = icmp eq i32 %12, 32
  br i1 %cmp61, label %if.then62, label %for.inc66

if.then62:                                        ; preds = %for.end60, %for.inc58
  %refcount = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %3, i64 0, i32 1
  %13 = load i64, i64* %refcount, align 8
  %inc63 = add i64 %13, 1
  store i64 %inc63, i64* %refcount, align 8
  %vc_uni_pagedir_loc64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %conp, i64 0, i32 49
  %14 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc64, align 8
  store %struct.uni_pagedir* %3, %struct.uni_pagedir** %14, align 8
  call fastcc void @con_release_unimap(%struct.uni_pagedir* noundef %p) #13
  %15 = bitcast %struct.uni_pagedir* %p to i8*
  call void @kfree(i8* noundef %15) #12
  br label %cleanup69

for.inc66:                                        ; preds = %if.end19, %for.end60, %if.end, %lor.lhs.false3, %for.body
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next147, 63
  br i1 %exitcond149.not, label %cleanup69, label %for.body

cleanup69:                                        ; preds = %for.inc66, %if.then62
  %retval.0 = phi i32 [ 1, %if.then62 ], [ 0, %for.inc66 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_inverse_transl(%struct.vc_data* nocapture noundef readonly %conp, %struct.uni_pagedir* noundef %p, i32 noundef %i) unnamed_addr #3 {
entry:
  %idxprom = sext i32 %i to i64
  %tobool.not = icmp eq %struct.uni_pagedir* %p, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 3, i64 %idxprom
  %0 = load i8*, i8** %arrayidx2, align 8
  %tobool3.not = icmp eq i8* %0, null
  br i1 %tobool3.not, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #12
  store i8* %call.i.i, i8** %arrayidx2, align 8
  %tobool8.not = icmp eq i8* %call.i.i, null
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end
  %q.0 = phi i8* [ %0, %if.end ], [ %call.i.i, %if.then4 ]
  %call12 = call i8* @memset(i8* noundef nonnull %q.0, i32 noundef 0, i64 noundef 512) #12
  br label %for.body

for.body:                                         ; preds = %if.end11, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx14 = getelementptr [4 x [256 x i16]], [4 x [256 x i16]]* @translations, i64 0, i64 %idxprom, i64 %indvars.iv
  %2 = load i16, i16* %arrayidx14, align 2
  %conv = zext i16 %2 to i64
  %call15 = call i32 @conv_uni_to_pc(%struct.vc_data* noundef %conp, i64 noundef %conv) #13
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %land.lhs.true20, label %for.inc

land.lhs.true20:                                  ; preds = %for.body
  %idxprom2152 = zext i32 %call15 to i64
  %arrayidx22 = getelementptr i8, i8* %q.0, i64 %idxprom2152
  %3 = load i8, i8* %arrayidx22, align 1
  %cmp24 = icmp ult i8 %3, 32
  br i1 %cmp24, label %if.then26, label %for.inc

if.then26:                                        ; preds = %land.lhs.true20
  %conv27 = trunc i64 %indvars.iv to i8
  store i8 %conv27, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true20, %if.then26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then4, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_inverse_trans_unicode(%struct.uni_pagedir* noundef %p) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.uni_pagedir* %p, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %inverse_trans_unicode = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 4
  %0 = load i16*, i16** %inverse_trans_unicode, align 8
  %tobool1.not = icmp eq i16* %0, null
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = call fastcc i8* @kmalloc_array(i64 noundef 512, i64 noundef 2) #13
  %1 = bitcast i8* %call to i16*
  %2 = bitcast i16** %inverse_trans_unicode to i8**
  store i8* %call, i8** %2, align 8
  %tobool4.not = icmp eq i8* %call, null
  br i1 %tobool4.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %q.0 = phi i16* [ %0, %if.end ], [ %1, %if.then2 ]
  %3 = bitcast i16* %q.0 to i8*
  %call8 = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 1024) #12
  br label %for.body

for.body:                                         ; preds = %if.end7, %for.inc45
  %indvars.iv15 = phi i64 [ 0, %if.end7 ], [ %indvars.iv.next16, %for.inc45 ]
  %arrayidx = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %p, i64 0, i32 0, i64 %indvars.iv15
  %4 = load i16**, i16*** %arrayidx, align 8
  %tobool9.not = icmp eq i16** %4, null
  br i1 %tobool9.not, label %for.inc45, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.body
  %5 = shl i64 %indvars.iv15, 11
  br label %for.body14

for.body14:                                       ; preds = %for.cond12.preheader, %for.inc42
  %indvars.iv9 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next10, %for.inc42 ]
  %arrayidx16 = getelementptr i16*, i16** %4, i64 %indvars.iv9
  %6 = load i16*, i16** %arrayidx16, align 8
  %tobool17.not = icmp eq i16* %6, null
  br i1 %tobool17.not, label %for.inc42, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.body14
  %7 = shl i64 %indvars.iv9, 6
  %8 = add nuw nsw i64 %7, %5
  %9 = trunc i64 %8 to i16
  br label %for.body22

for.body22:                                       ; preds = %for.cond20.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next, %for.inc ]
  %indvars8 = trunc i64 %indvars.iv to i16
  %arrayidx24 = getelementptr i16, i16* %6, i64 %indvars.iv
  %10 = load i16, i16* %arrayidx24, align 2
  %cmp27 = icmp ult i16 %10, 512
  br i1 %cmp27, label %land.lhs.true29, label %for.inc

land.lhs.true29:                                  ; preds = %for.body22
  %idxprom30 = zext i16 %10 to i64
  %arrayidx31 = getelementptr i16, i16* %q.0, i64 %idxprom30
  %11 = load i16, i16* %arrayidx31, align 2
  %cmp33 = icmp ult i16 %11, 32
  br i1 %cmp33, label %if.then35, label %for.inc

if.then35:                                        ; preds = %land.lhs.true29
  %add37 = add i16 %9, %indvars8
  store i16 %add37, i16* %arrayidx31, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body22, %land.lhs.true29, %if.then35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.inc42, label %for.body22

for.inc42:                                        ; preds = %for.inc, %for.body14
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next10, 32
  br i1 %exitcond14.not, label %for.inc45, label %for.body14

for.inc45:                                        ; preds = %for.inc42, %for.body
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond19.not = icmp eq i64 %indvars.iv.next16, 32
  br i1 %exitcond19.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc45, %if.then2, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_set_default_unimap(%struct.vc_data* nocapture noundef readonly %vc) local_unnamed_addr #3 {
entry:
  %0 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %tobool.not = icmp eq %struct.uni_pagedir* %0, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 49
  %1 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %2 = load %struct.uni_pagedir*, %struct.uni_pagedir** %1, align 8
  %cmp = icmp eq %struct.uni_pagedir* %2, %0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %refcount = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %0, i64 0, i32 1
  %3 = load i64, i64* %refcount, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %refcount, align 8
  %4 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  store %struct.uni_pagedir* %0, %struct.uni_pagedir** %4, align 8
  %tobool3.not = icmp eq %struct.uni_pagedir* %2, null
  br i1 %tobool3.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %refcount4 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %2, i64 0, i32 1
  %5 = load i64, i64* %refcount4, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %refcount4, align 8
  %tobool5.not = icmp eq i64 %dec, 0
  br i1 %tobool5.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call fastcc void @con_release_unimap(%struct.uni_pagedir* noundef nonnull %2) #13
  %6 = bitcast %struct.uni_pagedir* %2 to i8*
  call void @kfree(i8* noundef nonnull %6) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call = call fastcc i32 @con_do_clear_unimap(%struct.vc_data* noundef %vc) #13
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end8
  %vc_uni_pagedir_loc12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 49
  %7 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc12, align 8
  %8 = load %struct.uni_pagedir*, %struct.uni_pagedir** %7, align 8
  br label %for.body

for.body:                                         ; preds = %if.end11, %for.inc23
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.inc23 ]
  %q.085 = phi i16* [ getelementptr inbounds ([0 x i16], [0 x i16]* @dfont_unitable, i64 0, i64 0), %if.end11 ], [ %q.1.lcssa, %for.inc23 ]
  %err.084 = phi i32 [ 0, %if.end11 ], [ %err.1.lcssa, %for.inc23 ]
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @dfont_unicount, i64 0, i64 %indvars.iv
  %9 = load i8, i8* %arrayidx, align 1
  %tobool15.not77 = icmp eq i8 %9, 0
  br i1 %tobool15.not77, label %for.inc23, label %for.body16.lr.ph

for.body16.lr.ph:                                 ; preds = %for.body
  %conv = zext i8 %9 to i32
  %conv17 = trunc i64 %indvars.iv to i16
  br label %for.body16

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %q.180 = phi i16* [ %q.085, %for.body16.lr.ph ], [ %incdec.ptr, %for.body16 ]
  %err.179 = phi i32 [ %err.084, %for.body16.lr.ph ], [ %spec.select, %for.body16 ]
  %j.078 = phi i32 [ %conv, %for.body16.lr.ph ], [ %dec22, %for.body16 ]
  %incdec.ptr = getelementptr i16, i16* %q.180, i64 1
  %10 = load i16, i16* %q.180, align 2
  %call18 = call fastcc i32 @con_insert_unipair(%struct.uni_pagedir* noundef %8, i16 noundef %10, i16 noundef %conv17) #13
  %tobool19.not = icmp eq i32 %call18, 0
  %spec.select = select i1 %tobool19.not, i32 %err.179, i32 %call18
  %dec22 = add nsw i32 %j.078, -1
  %tobool15.not = icmp eq i32 %dec22, 0
  br i1 %tobool15.not, label %for.inc23, label %for.body16

for.inc23:                                        ; preds = %for.body16, %for.body
  %err.1.lcssa = phi i32 [ %err.084, %for.body ], [ %spec.select, %for.body16 ]
  %q.1.lcssa = phi i16* [ %q.085, %for.body ], [ %incdec.ptr, %for.body16 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.end25, label %for.body

for.end25:                                        ; preds = %for.inc23
  %call26 = call fastcc i32 @con_unify_unimap(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %8) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.body34.preheader, label %if.then28

for.body34.preheader:                             ; preds = %for.end25
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %8, i32 noundef 0) #13
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %8, i32 noundef 1) #13
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %8, i32 noundef 2) #13
  call fastcc void @set_inverse_transl(%struct.vc_data* noundef %vc, %struct.uni_pagedir* noundef %8, i32 noundef 3) #13
  call fastcc void @set_inverse_trans_unicode(%struct.uni_pagedir* noundef %8) #13
  store %struct.uni_pagedir* %8, %struct.uni_pagedir** @dflt, align 8
  br label %cleanup

if.then28:                                        ; preds = %for.end25
  %11 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc12, align 8
  %12 = load %struct.uni_pagedir*, %struct.uni_pagedir** %11, align 8
  store %struct.uni_pagedir* %12, %struct.uni_pagedir** @dflt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %land.lhs.true, %if.then6, %if.then, %for.body34.preheader, %if.then28
  %retval.0 = phi i32 [ %err.1.lcssa, %if.then28 ], [ %err.1.lcssa, %for.body34.preheader ], [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ %call, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_copy_unimap(%struct.vc_data* nocapture noundef readonly %dst_vc, %struct.vc_data* nocapture noundef readonly %src_vc) local_unnamed_addr #3 {
entry:
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %src_vc, i64 0, i32 49
  %0 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %1 = load %struct.uni_pagedir*, %struct.uni_pagedir** %0, align 8
  %tobool.not = icmp eq %struct.uni_pagedir* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %vc_uni_pagedir_loc1 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %dst_vc, i64 0, i32 49
  %2 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc1, align 8
  %3 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %cmp = icmp eq %struct.uni_pagedir* %3, %1
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @con_free_unimap(%struct.vc_data* noundef %dst_vc) #13
  %4 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %5 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %refcount = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %5, i64 0, i32 1
  %6 = load i64, i64* %refcount, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %refcount, align 8
  %7 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc1, align 8
  store %struct.uni_pagedir* %5, %struct.uni_pagedir** %7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_get_unimap(%struct.vc_data* nocapture noundef readonly %vc, i16 noundef %ct, i16* noundef %uct, %struct.unipair* noundef %list) local_unnamed_addr #3 {
entry:
  %conv = zext i16 %ct to i64
  %call = call fastcc i8* @kvmalloc_array(i64 noundef %conv) #13
  %0 = bitcast i8* %call to %struct.unipair*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @console_lock() #12
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 49
  %1 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %2 = load %struct.uni_pagedir*, %struct.uni_pagedir** %1, align 8
  %tobool1.not = icmp eq %struct.uni_pagedir* %2, null
  br i1 %tobool1.not, label %if.end45, label %for.body

for.body:                                         ; preds = %if.end, %for.inc42
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc42 ], [ 0, %if.end ]
  %ect.0146 = phi i16 [ %ect.5, %for.inc42 ], [ 0, %if.end ]
  %arrayidx = getelementptr %struct.uni_pagedir, %struct.uni_pagedir* %2, i64 0, i32 0, i64 %indvars.iv
  %3 = load i16**, i16*** %arrayidx, align 8
  %tobool5.not = icmp eq i16** %3, null
  br i1 %tobool5.not, label %for.inc42, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.body
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %4 = shl i32 %indvars.iv.tr, 11
  br label %for.body10

for.body10:                                       ; preds = %for.cond7.preheader, %for.inc38
  %j.0144 = phi i32 [ 0, %for.cond7.preheader ], [ %inc39, %for.inc38 ]
  %p1.0143 = phi i16** [ %3, %for.cond7.preheader ], [ %incdec.ptr, %for.inc38 ]
  %ect.1142 = phi i16 [ %ect.0146, %for.cond7.preheader ], [ %ect.4, %for.inc38 ]
  %incdec.ptr = getelementptr i16*, i16** %p1.0143, i64 1
  %5 = load i16*, i16** %p1.0143, align 8
  %tobool11.not = icmp eq i16* %5, null
  br i1 %tobool11.not, label %for.inc38, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.body10
  %shl27 = shl i32 %j.0144, 6
  %add = add nuw nsw i32 %shl27, %4
  br label %for.body16

for.body16:                                       ; preds = %for.cond13.preheader, %for.inc
  %k.0141 = phi i32 [ 0, %for.cond13.preheader ], [ %inc35, %for.inc ]
  %p2.0138 = phi i16* [ %5, %for.cond13.preheader ], [ %incdec.ptr36, %for.inc ]
  %ect.2137 = phi i16 [ %ect.1142, %for.cond13.preheader ], [ %ect.3, %for.inc ]
  %6 = load i16, i16* %p2.0138, align 2
  %cmp18 = icmp ugt i16 %6, 511
  br i1 %cmp18, label %for.inc, label %if.end21

if.end21:                                         ; preds = %for.body16
  %cmp24 = icmp ult i16 %ect.2137, %ct
  br i1 %cmp24, label %if.then26, label %if.end34

if.then26:                                        ; preds = %if.end21
  %add28 = add nuw nsw i32 %add, %k.0141
  %conv29 = trunc i32 %add28 to i16
  %idxprom30 = zext i16 %ect.2137 to i64
  %unicode = getelementptr %struct.unipair, %struct.unipair* %0, i64 %idxprom30, i32 0
  store i16 %conv29, i16* %unicode, align 2
  %7 = load i16, i16* %p2.0138, align 2
  %fontpos = getelementptr %struct.unipair, %struct.unipair* %0, i64 %idxprom30, i32 1
  store i16 %7, i16* %fontpos, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.end21
  %inc = add i16 %ect.2137, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body16, %if.end34
  %ect.3 = phi i16 [ %ect.2137, %for.body16 ], [ %inc, %if.end34 ]
  %inc35 = add nuw nsw i32 %k.0141, 1
  %incdec.ptr36 = getelementptr i16, i16* %p2.0138, i64 1
  %exitcond.not = icmp eq i32 %inc35, 64
  br i1 %exitcond.not, label %for.inc38, label %for.body16

for.inc38:                                        ; preds = %for.inc, %for.body10
  %ect.4 = phi i16 [ %ect.1142, %for.body10 ], [ %ect.3, %for.inc ]
  %inc39 = add nuw nsw i32 %j.0144, 1
  %exitcond149.not = icmp eq i32 %inc39, 32
  br i1 %exitcond149.not, label %for.inc42, label %for.body10

for.inc42:                                        ; preds = %for.inc38, %for.body
  %ect.5 = phi i16 [ %ect.0146, %for.body ], [ %ect.4, %for.inc38 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond151.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond151.not, label %if.end45, label %for.body

if.end45:                                         ; preds = %for.inc42, %if.end
  %ect.6 = phi i16 [ 0, %if.end ], [ %ect.5, %for.inc42 ]
  call void @console_unlock() #12
  %8 = bitcast %struct.unipair* %list to i8*
  %conv46 = zext i16 %ect.6 to i32
  %conv47 = zext i16 %ct to i32
  %cmp48 = icmp ult i32 %conv46, %conv47
  %cond = select i1 %cmp48, i32 %conv46, i32 %conv47
  %9 = shl nuw nsw i32 %cond, 2
  %mul = zext i32 %9 to i64
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %8, i8* noundef nonnull %call, i64 noundef %mul) #12
  %tobool54.not = icmp eq i64 %call2.i, 0
  %10 = bitcast i16* %uct to i8*
  %call57 = call fastcc i64 @__range_ok(i8* noundef %10, i64 noundef 2) #13
  %tobool58.not = icmp eq i64 %call57, 0
  br i1 %tobool58.not, label %if.end67, label %if.then59

if.then59:                                        ; preds = %if.end45
  %call60 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %10) #13
  %11 = bitcast i8* %call60 to i16*
  %12 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %ect.6, i16* %11, i32 -14, i32 0) #11, !srcloc !10
  br label %if.end67

if.end67:                                         ; preds = %if.end45, %if.then59
  call void @kvfree(i8* noundef nonnull %call) #12
  %cmp76.not = icmp ugt i16 %ect.6, %ct
  %cond78 = select i1 %cmp76.not, i32 -12, i32 0
  %cond80 = select i1 %tobool54.not, i32 %cond78, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end67
  %retval.0 = phi i32 [ %cond80, %if.end67 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc_array(i64 noundef %n) unnamed_addr #3 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 4)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end, !prof !11

if.end:                                           ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call6 = call fastcc i8* @kvmalloc(i64 noundef %2) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call6, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #3 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #11, !srcloc !12
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #11, !srcloc !13
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !14
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @conv_8bit_to_uni(i8 noundef %c) local_unnamed_addr #1 {
entry:
  %idxprom = zext i8 %c to i64
  %arrayidx = getelementptr [4 x [256 x i16]], [4 x [256 x i16]]* @translations, i64 0, i64 3, i64 %idxprom
  %0 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %0 to i32
  %conv1 = zext i8 %c to i32
  %or = or i32 %conv1, 61440
  %cmp = icmp eq i32 %or, %conv
  %cond = select i1 %cmp, i32 %conv1, i32 %conv
  ret i32 %cond
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @conv_uni_to_8bit(i32 noundef %uni) local_unnamed_addr #8 {
entry:
  %0 = zext i32 %uni to i64
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr [4 x [256 x i16]], [4 x [256 x i16]]* @translations, i64 0, i64 3, i64 %indvars.iv
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %cmp1 = icmp eq i32 %conv, %uni
  %2 = trunc i64 %indvars.iv to i32
  br i1 %cmp1, label %cleanup.loopexit.split.loop.exit, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %or = or i32 %2, 61440
  %cmp6 = icmp eq i32 %or, %conv
  %cmp8 = icmp eq i64 %indvars.iv, %0
  %or.cond = and i1 %cmp8, %cmp6
  br i1 %or.cond, label %cleanup.split.loop.exit22, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup.split.loop.exit22:                        ; preds = %lor.lhs.false
  %3 = trunc i64 %indvars.iv to i32
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.inc, %cleanup.split.loop.exit22
  %retval.0 = phi i32 [ %3, %cleanup.split.loop.exit22 ], [ %4, %cleanup.loopexit.split.loop.exit ], [ -1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @console_map_init() local_unnamed_addr #9 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %0 = trunc i64 %indvars.iv to i32
  %call = call i32 @vc_cons_allocated(i32 noundef %0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %indvars.iv, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 49
  %2 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %3 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %tobool1.not = icmp eq %struct.uni_pagedir* %3, null
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i32 @con_set_default_unimap(%struct.vc_data* noundef %1) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #3 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #13
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #13
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !15

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #3 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #13
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #13
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #12
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #12
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i64 noundef %size) unnamed_addr #3 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size) unnamed_addr #3 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef 3264, i32 noundef -1) #12
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{i64 2153168969, i64 2153169007, i64 2153169024, i64 2153169058, i64 2153169080, i64 2153169106, i64 2153169124, i64 2153169286, i64 2153169327, i64 2153169349, i64 2153169395}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 4005458, i64 4005541, i64 4005765, i64 4005985, i64 4006008}
!13 = !{i64 4010160, i64 4010184}
!14 = !{i64 2151562944}
!15 = !{!"branch_weights", i32 2000, i32 1}
