; ModuleID = 'drivers/tty/vt/vt.c'
source_filename = "drivers/tty/vt/vt.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.con_initcall.init\22, \22a\22\09\09"
module asm "__initcall__kmod_vt__299_3549_con_initcon:\09\09\09"
module asm ".long\09con_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_vt__305_4326_vtconsole_class_init2:\09\09\09"
module asm ".long\09vtconsole_class_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.vc = type { %struct.vc_data*, %struct.work_struct }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.consw*, i16*, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, %struct.pid*, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], i16*, i32, i32, i32, i16, %struct.vc_data**, %struct.uni_pagedir*, %struct.uni_pagedir**, %struct.uni_screen* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.3, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.3 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.64, %struct.anon.65, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.63 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.21, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.26, i32 }
%union.anon.26 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.51, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.27 }
%union.anon.27 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.19, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.20, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.19 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.20 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.4, %union.anon.62, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.62 = type { %struct.atomic_t }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.36, %union.anon.37, i32 }
%struct.request_queue = type opaque
%union.anon.36 = type { %struct.list_head }
%union.anon.37 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.50, i32, [12 x i8] }
%union.anon.50 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.52, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.52 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.22, i8* }
%union.anon.22 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.69, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.67 = type { %struct.callback_head }
%union.anon.68 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.55 }
%union.anon.55 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.69 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.56, %struct.qspinlock }
%union.anon.56 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.64 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.65 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.consw = type { %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, {}*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, {}*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, {}*, {}* }
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uni_pagedir = type opaque
%struct.uni_screen = type { [0 x i32*] }
%struct.kparam_array = type { i32, i32, i32*, %struct.kernel_param_ops*, i8* }
%struct.con_driver = type { %struct.consw*, i8*, %struct.device*, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.console = type { [16 x i8], void (%struct.console*, i8*, i32)*, i32 (%struct.console*, i8*, i32)*, %struct.tty_driver* (%struct.console*, i32*)*, void ()*, i32 (%struct.console*, i8*)*, i32 (%struct.console*)*, i32 (%struct.console*, i8*, i32, i8*)*, i16, i16, i32, i8*, %struct.console* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.interval = type { i32, i32 }
%struct.vt_notifier_param = type { %struct.vc_data*, i32 }
%struct.tiocl_selection = type { i16, i16, i16, i16, i16 }
%struct.console_font_op = type { i32, i32, i32, i32, i32, i8* }
%struct.vc_draw_region = type { i64, i64, i32 }
%struct.rgb = type { i8, i8, i8 }

@default_utf8 = dso_local global i32 1, align 4
@__param_str_default_utf8 = internal constant [16 x i8] c"vt.default_utf8\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_default_utf8 = internal constant %struct.kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__param_str_default_utf8, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @default_utf8 to i8*) } }, section "__param", align 8
@__UNIQUE_ID_default_utf8type265 = internal constant [29 x i8] c"vt.parmtype=default_utf8:int\00", section ".modinfo", align 1
@global_cursor_default = dso_local global i32 -1, align 4
@__param_str_global_cursor_default = internal constant [25 x i8] c"vt.global_cursor_default\00", align 1
@__param_global_cursor_default = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_global_cursor_default, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @global_cursor_default to i8*) } }, section "__param", align 8
@__UNIQUE_ID_global_cursor_defaulttype266 = internal constant [38 x i8] c"vt.parmtype=global_cursor_default:int\00", section ".modinfo", align 1
@__param_str_cur_default = internal constant [15 x i8] c"vt.cur_default\00", align 1
@cur_default = internal global i32 2, align 4
@__param_cur_default = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_cur_default, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @cur_default to i8*) } }, section "__param", align 8
@__UNIQUE_ID_cur_defaulttype267 = internal constant [28 x i8] c"vt.parmtype=cur_default:int\00", section ".modinfo", align 1
@__param_str_consoleblank = internal constant [13 x i8] c"consoleblank\00", align 1
@blankinterval = internal global i32 0, align 4
@__param_consoleblank = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_consoleblank, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @blankinterval to i8*) } }, section "__param", align 8
@want_console = dso_local local_unnamed_addr global i32 -1, align 4
@vt_notifier_list = internal global %struct.atomic_notifier_head zeroinitializer, align 8
@console_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @console_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @console_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @console_callback }, align 8
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@complement_pos.old_offset = internal unnamed_addr global i32 -1, align 4
@complement_pos.old = internal unnamed_addr global i16 0, align 4
@complement_pos.oldx = internal unnamed_addr global i16 0, align 4
@complement_pos.oldy = internal unnamed_addr global i16 0, align 4
@vc_cons = dso_local global [63 x %struct.vc] zeroinitializer, align 8
@fg_console = dso_local local_unnamed_addr global i32 0, align 4
@tty0dev = internal unnamed_addr global %struct.device* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@vc_port_ops = internal constant %struct.tty_port_operations { i32 (%struct.tty_port*)* null, void (%struct.tty_port*, i32)* null, void (%struct.tty_port*)* null, i32 (%struct.tty_port*, %struct.tty_struct*)* null, void (%struct.tty_port*)* @vc_port_destruct }, align 8
@color_table = dso_local constant [16 x i8] c"\00\04\02\06\01\05\03\07\08\0C\0A\0E\09\0D\0B\0F", align 1
@default_red = dso_local global [16 x i8] c"\00\AA\00\AA\00\AA\00\AAU\FFU\FFU\FFU\FF", align 1
@__param_str_default_red = internal constant [15 x i8] c"vt.default_red\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 8
@__param_arr_default_red = internal constant %struct.kparam_array { i32 16, i32 1, i32* null, %struct.kernel_param_ops* @param_ops_byte, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @default_red, i32 0, i32 0) }, align 8
@__param_default_red = internal constant { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_array* } } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_default_red, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_array_ops, i16 420, i8 -1, i8 0, { %struct.kparam_array* } { %struct.kparam_array* @__param_arr_default_red } }, section "__param", align 8
@__UNIQUE_ID_default_redtype275 = internal constant [38 x i8] c"vt.parmtype=default_red:array of byte\00", section ".modinfo", align 1
@default_grn = dso_local global [16 x i8] c"\00\00\AAU\00\00\AA\AAUU\FF\FFUU\FF\FF", align 1
@__param_str_default_grn = internal constant [15 x i8] c"vt.default_grn\00", align 1
@__param_arr_default_grn = internal constant %struct.kparam_array { i32 16, i32 1, i32* null, %struct.kernel_param_ops* @param_ops_byte, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @default_grn, i32 0, i32 0) }, align 8
@__param_default_grn = internal constant { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_array* } } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_default_grn, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_array_ops, i16 420, i8 -1, i8 0, { %struct.kparam_array* } { %struct.kparam_array* @__param_arr_default_grn } }, section "__param", align 8
@__UNIQUE_ID_default_grntype276 = internal constant [38 x i8] c"vt.parmtype=default_grn:array of byte\00", section ".modinfo", align 1
@default_blu = dso_local global [16 x i8] c"\00\00\00\00\AA\AA\AA\AAUUUU\FF\FF\FF\FF", align 1
@__param_str_default_blu = internal constant [15 x i8] c"vt.default_blu\00", align 1
@__param_arr_default_blu = internal constant %struct.kparam_array { i32 16, i32 1, i32* null, %struct.kernel_param_ops* @param_ops_byte, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @default_blu, i32 0, i32 0) }, align 8
@__param_default_blu = internal constant { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_array* } } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_default_blu, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_array_ops, i16 420, i8 -1, i8 0, { %struct.kparam_array* } { %struct.kparam_array* @__param_arr_default_blu } }, section "__param", align 8
@__UNIQUE_ID_default_blutype277 = internal constant [38 x i8] c"vt.parmtype=default_blu:array of byte\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\1B[M%c%c%c\00", align 1
@vt_dont_switch = external dso_local local_unnamed_addr global i8, align 1
@vt_kmsg_redirect.kmsg_con = internal global i32 0, align 4
@ignore_poke = internal unnamed_addr global i1 false, align 4
@console_blanked = dso_local local_unnamed_addr global i32 0, align 4
@__param_str_color = internal constant [9 x i8] c"vt.color\00", align 1
@default_color = internal global i32 7, align 4
@__param_color = internal constant %struct.kernel_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__param_str_color, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @default_color to i8*) } }, section "__param", align 8
@__UNIQUE_ID_colortype296 = internal constant [22 x i8] c"vt.parmtype=color:int\00", section ".modinfo", align 1
@__param_str_italic = internal constant [10 x i8] c"vt.italic\00", align 1
@default_italic_color = internal global i32 2, align 4
@__param_italic = internal constant %struct.kernel_param { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__param_str_italic, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @default_italic_color to i8*) } }, section "__param", align 8
@__UNIQUE_ID_italictype297 = internal constant [23 x i8] c"vt.parmtype=italic:int\00", section ".modinfo", align 1
@__param_str_underline = internal constant [13 x i8] c"vt.underline\00", align 1
@default_underline_color = internal global i32 3, align 4
@__param_underline = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_underline, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @default_underline_color to i8*) } }, section "__param", align 8
@__UNIQUE_ID_underlinetype298 = internal constant [26 x i8] c"vt.parmtype=underline:int\00", section ".modinfo", align 1
@__UNIQUE_ID___addressable_con_init300 = internal global i8* bitcast (i32 ()* @con_init to i8*), section ".discard.addressable", align 8
@vc0_cdev = internal global %struct.cdev zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/vc/0\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Couldn't register /dev/tty0 driver\0A\00", align 1
@tty_class = external dso_local local_unnamed_addr global %struct.class*, align 8
@vt_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @vt_dev_group, %struct.attribute_group* null], align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"tty0\00", align 1
@console_driver = dso_local local_unnamed_addr global %struct.tty_driver* null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Couldn't allocate console driver\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@con_ops = internal constant %struct.tty_operations { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)* null, i32 (%struct.tty_driver*, %struct.tty_struct*)* @con_install, void (%struct.tty_driver*, %struct.tty_struct*)* null, i32 (%struct.tty_struct*, %struct.file*)* @con_open, void (%struct.tty_struct*, %struct.file*)* @con_close, void (%struct.tty_struct*)* @con_shutdown, void (%struct.tty_struct*)* @con_cleanup, i32 (%struct.tty_struct*, i8*, i32)* @con_write, i32 (%struct.tty_struct*, i8)* @con_put_char, void (%struct.tty_struct*)* @con_flush_chars, i32 (%struct.tty_struct*)* @con_write_room, i32 (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32, i64)* @vt_ioctl, i64 (%struct.tty_struct*, i32, i64)* null, void (%struct.tty_struct*, %struct.ktermios*)* null, void (%struct.tty_struct*)* @con_throttle, void (%struct.tty_struct*)* @con_unthrottle, void (%struct.tty_struct*)* @con_stop, void (%struct.tty_struct*)* @con_start, void (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*, i32)* null, void (%struct.tty_struct*, i8)* null, i32 (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32, i32)* null, i32 (%struct.tty_struct*, %struct.winsize*)* @vt_resize, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* null, i32 (%struct.tty_struct*, %struct.serial_struct*)* null, i32 (%struct.tty_struct*, %struct.serial_struct*)* null, void (%struct.tty_struct*, %struct.seq_file*)* null, i32 (%struct.seq_file*, i8*)* null }, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Couldn't register console driver\0A\00", align 1
@con_driver_map = internal unnamed_addr global [63 x %struct.consw*] zeroinitializer, align 8
@saved_fg_console = internal unnamed_addr global i32 0, align 4
@last_console = dso_local local_unnamed_addr global i32 0, align 4
@saved_last_console = internal unnamed_addr global i32 0, align 4
@saved_want_console = internal unnamed_addr global i32 0, align 4
@saved_vc_mode = internal unnamed_addr global i32 0, align 4
@saved_console_blanked = internal unnamed_addr global i32 0, align 4
@conswitchp = dso_local local_unnamed_addr global %struct.consw* null, align 8
@registered_con_driver = internal global [16 x %struct.con_driver] zeroinitializer, align 8
@con_driver_unregister_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @con_driver_unregister_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @con_driver_unregister_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @con_driver_unregister_callback }, align 8
@__UNIQUE_ID___addressable_vtconsole_class_init306 = internal global i8* bitcast (i32 ()* @vtconsole_class_init to i8*), section ".discard.addressable", align 8
@blank_state = internal unnamed_addr global i32 0, align 4
@vesa_blank_mode = internal unnamed_addr global i32 0, align 4
@console_timer = internal global %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @blank_screen_t, i32 0 }, align 8
@blank_timer_expired = internal unnamed_addr global i1 false, align 4
@vesa_off_interval = internal unnamed_addr global i32 0, align 4
@console_blank_hook = dso_local local_unnamed_addr global i32 (i32)* null, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [43 x i8] c"\014unblank_screen: tty %d not allocated ??\0A\00", align 1
@softcursor_original = internal unnamed_addr global i32 -1, align 4
@do_poke_blanked_console = dso_local local_unnamed_addr global i32 0, align 4
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@scrollback_delta = internal unnamed_addr global i32 0, align 4
@master_display_fg = internal global %struct.vc_data* null, align 8
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 8
@vc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"&vc->paste_wait\00", align 1
@dummy_con = external dso_local constant %struct.consw, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"\016Console: %s %s %dx%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"colour\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@printable = internal unnamed_addr global i1 false, align 4
@vt_console_driver = internal global %struct.console { [16 x i8] c"tty\00\00\00\00\00\00\00\00\00\00\00\00\00", void (%struct.console*, i8*, i32)* @vt_console_print, i32 (%struct.console*, i8*, i32)* null, %struct.tty_driver* (%struct.console*, i32*)* @vt_console_device, void ()* @unblank_screen, i32 (%struct.console*, i8*)* null, i32 (%struct.console*)* null, i32 (%struct.console*, i8*, i32, i8*)* null, i16 1, i16 -1, i32 0, i8* null, %struct.console* null }, align 8
@vt_console_print.printing_lock = internal global %struct.spinlock zeroinitializer, align 4
@vt_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @vt_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@vt_dev_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_active, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_tty_active, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"tty%d\0A\00", align 1
@__const.do_con_write.draw = private unnamed_addr constant { i64, i64, i32, [4 x i8] } { i64 0, i64 0, i32 -1, [4 x i8] zeroinitializer }, align 8
@.str.14 = private unnamed_addr constant [35 x i8] c"\013vt: argh, driver_data is NULL !\0A\00", align 1
@do_con_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\014con_write: tty %d not allocated\0A\00", align 1
@vc_translate_unicode.utf8_length_changes = internal unnamed_addr constant [6 x i32] [i32 127, i32 2047, i32 65535, i32 2097151, i32 67108863, i32 2147483647], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@respond_ID.vt102_id = internal constant [6 x i8] c"\1B[?6c\00", align 1
@status_report.teminal_ok = internal constant [5 x i8] c"\1B[0n\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"\1B[%d;%dR\00", align 1
@is_double_width.double_width = internal constant [12 x %struct.interval] [%struct.interval { i32 4352, i32 4447 }, %struct.interval { i32 9001, i32 9002 }, %struct.interval { i32 11904, i32 12350 }, %struct.interval { i32 12352, i32 42191 }, %struct.interval { i32 44032, i32 55203 }, %struct.interval { i32 63744, i32 64255 }, %struct.interval { i32 65040, i32 65049 }, %struct.interval { i32 65072, i32 65135 }, %struct.interval { i32 65280, i32 65376 }, %struct.interval { i32 65504, i32 65510 }, %struct.interval { i32 131072, i32 196605 }, %struct.interval { i32 196608, i32 262141 }], align 4
@vtconsole_class = internal unnamed_addr global %struct.class* null, align 8
@con_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @con_dev_group, %struct.attribute_group* null], align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"vtcon%i\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"\014Unable to create device for %s; errno = %ld\0A\00", align 1
@con_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @con_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@con_dev_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bind, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_name, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_bind = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_bind, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bind }, align 8
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_name, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"(M)\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"(S)\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"\016Console: switching \00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"\01cconsoles %d-%d \00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"\01cto %s %s %dx%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"\01cto %s\0A\00", align 1
@vtconsole_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"vtconsole\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"\014Unable to create vt console class; errno = %ld\0A\00", align 1
@llvm.compiler.used = appending global [21 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_con_init300 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_vtconsole_class_init306 to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_colortype296, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_cur_defaulttype267, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_default_blutype277, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_default_grntype276, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_default_redtype275, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_default_utf8type265, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_global_cursor_defaulttype266, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_italictype297, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_underlinetype298, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_color to i8*), i8* bitcast (%struct.kernel_param* @__param_consoleblank to i8*), i8* bitcast (%struct.kernel_param* @__param_cur_default to i8*), i8* bitcast ({ i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_array* } }* @__param_default_blu to i8*), i8* bitcast ({ i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_array* } }* @__param_default_grn to i8*), i8* bitcast ({ i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_array* } }* @__param_default_red to i8*), i8* bitcast (%struct.kernel_param* @__param_default_utf8 to i8*), i8* bitcast (%struct.kernel_param* @__param_global_cursor_default to i8*), i8* bitcast (%struct.kernel_param* @__param_italic to i8*), i8* bitcast (%struct.kernel_param* @__param_underline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_vt_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef nonnull @vt_notifier_list, %struct.notifier_block* noundef %nb) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_vt_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef nonnull @vt_notifier_list, %struct.notifier_block* noundef %nb) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @schedule_console_callback() local_unnamed_addr #0 {
entry:
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull @console_work) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vc_uniscr_check(%struct.vc_data* noundef %vc) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 510; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %vc_utf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_utf, align 8
  %2 = and i16 %bf.load, 16384
  %tobool19.not = icmp eq i16 %2, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %3 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool22.not = icmp eq %struct.uni_screen* %3, null
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end21
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %4 = load i32, i32* %vc_cols, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %5 = load i32, i32* %vc_rows, align 8
  %call25 = call fastcc %struct.uni_screen* @vc_uniscr_alloc(i32 noundef %4, i32 noundef %5) #18
  %tobool26.not = icmp eq %struct.uni_screen* %call25, null
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end24
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %6 = load i16, i16* %vc_hi_font_mask, align 8
  %7 = or i16 %6, 255
  %8 = load i32, i32* %vc_rows, align 8
  %cmp82.not = icmp eq i32 %8, 0
  br i1 %cmp82.not, label %for.end46, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end28
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %9 = load i64, i64* %vc_origin, align 8
  %10 = inttoptr i64 %9 to i16*
  %.pre = load i32, i32* %vc_cols, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.end
  %11 = phi i32 [ %16, %for.end ], [ %8, %for.body.preheader ]
  %12 = phi i32 [ %17, %for.end ], [ %.pre, %for.body.preheader ]
  %y.084 = phi i32 [ %inc45, %for.end ], [ 0, %for.body.preheader ]
  %p.083 = phi i16* [ %p.1.lcssa, %for.end ], [ %10, %for.body.preheader ]
  %idxprom = sext i32 %y.084 to i64
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %call25, i64 0, i32 0, i64 %idxprom
  %13 = load i32*, i32** %arrayidx, align 8
  %cmp3479.not = icmp eq i32 %12, 0
  br i1 %cmp3479.not, label %for.end, label %for.body36

for.body36:                                       ; preds = %for.body, %for.body36
  %x.081 = phi i32 [ %inc, %for.body36 ], [ 0, %for.body ]
  %p.180 = phi i16* [ %incdec.ptr, %for.body36 ], [ %p.083, %for.body ]
  %incdec.ptr = getelementptr i16, i16* %p.180, i64 1
  %14 = load i16, i16* %p.180, align 2
  %and77 = and i16 %14, %7
  %conv39 = zext i16 %and77 to i32
  %call40 = call i16 @inverse_translate(%struct.vc_data* noundef %vc, i32 noundef %conv39, i32 noundef 1) #17
  %conv41 = zext i16 %call40 to i32
  %idxprom42 = sext i32 %x.081 to i64
  %arrayidx43 = getelementptr i32, i32* %13, i64 %idxprom42
  store i32 %conv41, i32* %arrayidx43, align 4
  %inc = add nuw i32 %x.081, 1
  %15 = load i32, i32* %vc_cols, align 4
  %cmp34 = icmp ult i32 %inc, %15
  br i1 %cmp34, label %for.body36, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body36
  %.pre85 = load i32, i32* %vc_rows, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body
  %16 = phi i32 [ %11, %for.body ], [ %.pre85, %for.end.loopexit ]
  %17 = phi i32 [ 0, %for.body ], [ %15, %for.end.loopexit ]
  %p.1.lcssa = phi i16* [ %p.083, %for.body ], [ %incdec.ptr, %for.end.loopexit ]
  %inc45 = add nuw i32 %y.084, 1
  %cmp = icmp ult i32 %inc45, %16
  br i1 %cmp, label %for.body, label %for.end46

for.end46:                                        ; preds = %for.end, %if.end28
  store %struct.uni_screen* %call25, %struct.uni_screen** %vc_uni_screen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21, %if.end, %for.end46
  %retval.0 = phi i32 [ 0, %for.end46 ], [ -61, %if.end ], [ 0, %if.end21 ], [ -12, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.uni_screen* @vc_uniscr_alloc(i32 noundef %cols, i32 noundef %rows) unnamed_addr #0 {
entry:
  %mul1 = shl i32 %cols, 2
  %reass.add = add i32 %mul1, 8
  %reass.mul = mul i32 %reass.add, %rows
  %conv7 = zext i32 %reass.mul to i64
  %call = call i8* @vmalloc(i64 noundef %conv7) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.uni_screen*
  %lines = bitcast i8* %call to [0 x i32*]*
  %cmp32.not = icmp eq i32 %rows, 0
  br i1 %cmp32.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %arraydecay = bitcast i8* %call to i32**
  %conv3 = zext i32 %rows to i64
  %add.ptr = getelementptr i32*, i32** %arraydecay, i64 %conv3
  %1 = bitcast i32** %add.ptr to i8*
  %conv10 = zext i32 %cols to i64
  %mul11 = shl nuw nsw i64 %conv10, 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %p.033 = phi i8* [ %1, %for.body.lr.ph ], [ %add.ptr12, %for.body ]
  %arrayidx = getelementptr [0 x i32*], [0 x i32*]* %lines, i64 0, i64 %indvars.iv
  %2 = bitcast i32** %arrayidx to i8**
  store i8* %p.033, i8** %2, align 8
  %add.ptr12 = getelementptr i8, i8* %p.033, i64 %mul11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %conv3
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end, %entry
  %retval.0 = phi %struct.uni_screen* [ null, %entry ], [ %0, %if.end ], [ %0, %for.body ]
  ret %struct.uni_screen* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i16 @inverse_translate(%struct.vc_data* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vc_uniscr_copy_line(%struct.vc_data* noundef %vc, i8* noundef %dest, i1 noundef %viewed, i32 noundef %row, i32 noundef %col, i32 noundef %nr) local_unnamed_addr #0 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %tobool.not = icmp eq %struct.uni_screen* %0, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !9

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 554; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !10
  unreachable

do.end10:                                         ; preds = %entry
  %1 = load i32, i32* %vc_size_row, align 4
  %mul = mul i32 %1, %row
  %mul1 = shl i32 %col, 1
  %add = add i32 %mul, %mul1
  %call = call fastcc i16* @screenpos(%struct.vc_data* noundef %vc, i32 noundef %add, i1 noundef %viewed) #18
  %2 = ptrtoint i16* %call to i64
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %3 = load i64, i64* %vc_origin, align 8
  %cmp.not = icmp ugt i64 %3, %2
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end10
  %vc_scr_end = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 10
  %4 = load i64, i64* %vc_scr_end, align 8
  %cmp13 = icmp ugt i64 %4, %2
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %land.lhs.true
  %sub = sub i64 %2, %3
  %5 = load i32, i32* %vc_size_row, align 4
  %conv18 = zext i32 %5 to i64
  %sub.frozen = freeze i64 %sub
  %conv18.frozen = freeze i64 %conv18
  %div = udiv i64 %sub.frozen, %conv18.frozen
  %6 = mul i64 %div, %conv18.frozen
  %rem.decomposed = sub i64 %sub.frozen, %6
  %div24 = lshr i64 %rem.decomposed, 1
  %idxprom = and i64 %div, 4294967295
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom
  %7 = load i32*, i32** %arrayidx, align 8
  %arrayidx27 = getelementptr i32, i32* %7, i64 %div24
  %8 = bitcast i32* %arrayidx27 to i8*
  %conv28 = zext i32 %nr to i64
  %mul29 = shl nuw nsw i64 %conv28, 2
  %call30 = call i8* @memcpy(i8* noundef %dest, i8* noundef %8, i64 noundef %mul29) #17
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true, %do.end10
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %9 = load i16, i16* %vc_hi_font_mask, align 8
  %10 = or i16 %9, 255
  %tobool32.not68 = icmp eq i32 %nr, 0
  br i1 %tobool32.not68, label %if.end39, label %while.body.preheader

while.body.preheader:                             ; preds = %if.else
  %11 = bitcast i8* %dest to i32*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %uni_buf.071 = phi i32* [ %incdec.ptr38, %while.body ], [ %11, %while.body.preheader ]
  %p.070 = phi i16* [ %incdec.ptr, %while.body ], [ %call, %while.body.preheader ]
  %nr.addr.069 = phi i32 [ %dec, %while.body ], [ %nr, %while.body.preheader ]
  %dec = add i32 %nr.addr.069, -1
  %incdec.ptr = getelementptr i16, i16* %p.070, i64 1
  %12 = load i16, i16* %p.070, align 2
  %and67 = and i16 %12, %10
  %conv35 = zext i16 %and67 to i32
  %call36 = call i16 @inverse_translate(%struct.vc_data* noundef %vc, i32 noundef %conv35, i32 noundef 1) #17
  %conv37 = zext i16 %call36 to i32
  %incdec.ptr38 = getelementptr i32, i32* %uni_buf.071, i64 1
  store i32 %conv37, i32* %uni_buf.071, align 4
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %if.end39, label %while.body

if.end39:                                         ; preds = %while.body, %if.else, %if.then15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i16* @screenpos(%struct.vc_data* noundef %vc, i32 noundef %offset, i1 noundef %viewed) unnamed_addr #0 {
entry:
  br i1 %viewed, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %0 = load i64, i64* %vc_origin, align 8
  %conv = sext i32 %offset to i64
  %add = add i64 %0, %conv
  %1 = inttoptr i64 %add to i16*
  br label %if.end8

if.else:                                          ; preds = %entry
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %2 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_screen_pos = getelementptr inbounds %struct.consw, %struct.consw* %2, i64 0, i32 21
  %3 = load i16* (%struct.vc_data*, i32)*, i16* (%struct.vc_data*, i32)** %con_screen_pos, align 8
  %tobool1.not = icmp eq i16* (%struct.vc_data*, i32)* %3, null
  br i1 %tobool1.not, label %if.then2, label %if.else5

if.then2:                                         ; preds = %if.else
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 11
  %4 = load i64, i64* %vc_visible_origin, align 8
  %conv3 = sext i32 %offset to i64
  %add4 = add i64 %4, %conv3
  %5 = inttoptr i64 %add4 to i16*
  br label %if.end8

if.else5:                                         ; preds = %if.else
  %call = call i16* %3(%struct.vc_data* noundef %vc, i32 noundef %offset) #17
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.else5, %if.then
  %p.0 = phi i16* [ %call, %if.else5 ], [ %5, %if.then2 ], [ %1, %if.then ]
  ret i16* %p.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_region(%struct.vc_data* noundef %vc, i64 noundef %start, i32 noundef %count) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 690; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %call19 = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  call fastcc void @hide_cursor(%struct.vc_data* noundef %vc) #18
  call fastcc void @do_update_region(%struct.vc_data* noundef %vc, i64 noundef %start, i32 noundef %count) #18
  call fastcc void @set_cursor(%struct.vc_data* noundef %vc) #18
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %call = call i1 @con_is_visible(%struct.vc_data* noundef %vc) #18
  %0 = load i32, i32* @console_blanked, align 4
  %tobool.not = icmp eq i32 %0, 0
  %1 = select i1 %call, i1 %tobool.not, i1 false
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hide_cursor(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %call = call i1 @vc_is_sel(%struct.vc_data* noundef %vc) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @clear_selection() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %0 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_cursor = getelementptr inbounds %struct.consw, %struct.consw* %0, i64 0, i32 7
  %1 = load void (%struct.vc_data*, i32)*, void (%struct.vc_data*, i32)** %con_cursor, align 8
  call void %1(%struct.vc_data* noundef %vc, i32 noundef 2) #17
  call fastcc void @hide_softcursor(%struct.vc_data* noundef %vc) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_update_region(%struct.vc_data* noundef %vc, i64 noundef %start, i32 noundef %count) unnamed_addr #0 {
entry:
  %nxx = alloca i32, align 4
  %nyy = alloca i32, align 4
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %0 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_getxy = getelementptr inbounds %struct.consw, %struct.consw* %0, i64 0, i32 22
  %1 = load i64 (%struct.vc_data*, i64, i32*, i32*)*, i64 (%struct.vc_data*, i64, i32*, i32*)** %con_getxy, align 8
  %tobool.not = icmp eq i64 (%struct.vc_data*, i64, i32*, i32*)* %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %2 = load i64, i64* %vc_origin, align 8
  %sub = sub i64 %start, %2
  %div = lshr i64 %sub, 1
  %conv = trunc i64 %div to i32
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %3 = load i32, i32* %vc_cols, align 4
  %conv.frozen = freeze i32 %conv
  %.frozen = freeze i32 %3
  %div2 = udiv i32 %conv.frozen, %.frozen
  %4 = mul i32 %div2, %.frozen
  %rem.decomposed = sub i32 %conv.frozen, %4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = bitcast i32* %nxx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #19
  store i32 0, i32* %nxx, align 4, !annotation !12
  %6 = bitcast i32* %nyy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19
  store i32 0, i32* %nyy, align 4, !annotation !12
  %call = call i64 %1(%struct.vc_data* noundef %vc, i64 noundef %start, i32* noundef nonnull %nxx, i32* noundef nonnull %nyy) #17
  %7 = load i32, i32* %nxx, align 4
  %8 = load i32, i32* %nyy, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %start.addr.0 = phi i64 [ %call, %if.else ], [ %start, %if.then ]
  %xx.0 = phi i32 [ %7, %if.else ], [ %rem.decomposed, %if.then ]
  %yy.0 = phi i32 [ %8, %if.else ], [ %div2, %if.then ]
  %vc_cols7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then44, %if.end
  %start.addr.1.ph = phi i64 [ %call47, %if.then44 ], [ %start.addr.0, %if.end ]
  %count.addr.0.ph = phi i32 [ %count.addr.1.lcssa132136, %if.then44 ], [ %count, %if.end ]
  %xx.1.ph = phi i32 [ 0, %if.then44 ], [ %xx.0, %if.end ]
  %yy.1.ph = phi i32 [ %inc40, %if.then44 ], [ %yy.0, %if.end ]
  %p.0.ph.in = phi i64 [ %start.addr.1.ph, %if.then44 ], [ %start, %if.end ]
  %p.0.ph = inttoptr i64 %p.0.ph.in to i16*
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.end39
  %count.addr.0 = phi i32 [ %count.addr.1.lcssa132136, %if.end39 ], [ %count.addr.0.ph, %for.cond.outer ]
  %xx.1 = phi i32 [ 0, %if.end39 ], [ %xx.1.ph, %for.cond.outer ]
  %yy.1 = phi i32 [ %inc40, %if.end39 ], [ %yy.1.ph, %for.cond.outer ]
  %p.0 = phi i16* [ %p.1.lcssa133135, %if.end39 ], [ %p.0.ph, %for.cond.outer ]
  %9 = load i16, i16* %p.0, align 2
  %10 = load i32, i32* %vc_cols7, align 4
  %cmp104 = icmp ult i32 %xx.1, %10
  %tobool9105 = icmp ne i32 %count.addr.0, 0
  %11 = select i1 %cmp104, i1 %tobool9105, i1 false
  br i1 %11, label %while.body.preheader, label %while.end.thread

while.end.thread:                                 ; preds = %for.cond
  br i1 %tobool9105, label %if.end39, label %for.end

while.body.preheader:                             ; preds = %for.cond
  %12 = and i16 %9, -256
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.body.preheader
  %.pre121122 = phi i32 [ %.pre121123, %if.end25.while.body_crit_edge ], [ %10, %while.body.preheader ]
  %13 = phi i32 [ %19, %if.end25.while.body_crit_edge ], [ %10, %while.body.preheader ]
  %14 = phi i16 [ %.pre, %if.end25.while.body_crit_edge ], [ %9, %while.body.preheader ]
  %q.0114 = phi i16* [ %q.1, %if.end25.while.body_crit_edge ], [ %p.0, %while.body.preheader ]
  %startx.0113 = phi i32 [ %startx.1, %if.end25.while.body_crit_edge ], [ %xx.1, %while.body.preheader ]
  %attrib.0112 = phi i16 [ %attrib.1, %if.end25.while.body_crit_edge ], [ %12, %while.body.preheader ]
  %p.1109 = phi i16* [ %incdec.ptr, %if.end25.while.body_crit_edge ], [ %p.0, %while.body.preheader ]
  %xx.2107 = phi i32 [ %inc, %if.end25.while.body_crit_edge ], [ %xx.1, %while.body.preheader ]
  %count.addr.1106 = phi i32 [ %dec, %if.end25.while.body_crit_edge ], [ %count.addr.0, %while.body.preheader ]
  %15 = and i16 %14, -256
  %cmp13.not = icmp eq i16 %attrib.0112, %15
  br i1 %cmp13.not, label %if.end25, label %if.then15

if.then15:                                        ; preds = %while.body
  %cmp16 = icmp ugt i16* %p.1109, %q.0114
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.then15
  %16 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_putcs = getelementptr inbounds %struct.consw, %struct.consw* %16, i64 0, i32 6
  %17 = load void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)** %con_putcs, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %p.1109 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %q.0114 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = lshr exact i64 %sub.ptr.sub, 1
  %conv20 = trunc i64 %18 to i32
  call void %17(%struct.vc_data* noundef %vc, i16* noundef %q.0114, i32 noundef %conv20, i32 noundef %yy.1, i32 noundef %startx.0113) #17
  %.pre120 = load i16, i16* %p.1109, align 2
  %.pre121.pre = load i32, i32* %vc_cols7, align 4
  %.pre125 = and i16 %.pre120, -256
  br label %if.end25

if.end25:                                         ; preds = %if.then15, %if.then18, %while.body
  %.pre121123 = phi i32 [ %.pre121122, %while.body ], [ %.pre121.pre, %if.then18 ], [ %.pre121122, %if.then15 ]
  %19 = phi i32 [ %13, %while.body ], [ %.pre121.pre, %if.then18 ], [ %.pre121122, %if.then15 ]
  %attrib.1 = phi i16 [ %attrib.0112, %while.body ], [ %.pre125, %if.then18 ], [ %15, %if.then15 ]
  %startx.1 = phi i32 [ %startx.0113, %while.body ], [ %xx.2107, %if.then18 ], [ %xx.2107, %if.then15 ]
  %q.1 = phi i16* [ %q.0114, %while.body ], [ %p.1109, %if.then18 ], [ %p.1109, %if.then15 ]
  %incdec.ptr = getelementptr i16, i16* %p.1109, i64 1
  %inc = add nuw i32 %xx.2107, 1
  %dec = add i32 %count.addr.1106, -1
  %cmp = icmp ult i32 %inc, %19
  %tobool9 = icmp ne i32 %dec, 0
  %20 = select i1 %cmp, i1 %tobool9, i1 false
  br i1 %20, label %if.end25.while.body_crit_edge, label %while.end

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  %.pre = load i16, i16* %incdec.ptr, align 2
  br label %while.body

while.end:                                        ; preds = %if.end25
  %cmp26 = icmp ugt i16* %incdec.ptr, %q.1
  br i1 %cmp26, label %if.then28, label %if.end36

if.then28:                                        ; preds = %while.end
  %21 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_putcs30 = getelementptr inbounds %struct.consw, %struct.consw* %21, i64 0, i32 6
  %22 = load void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)** %con_putcs30, align 8
  %sub.ptr.lhs.cast31 = ptrtoint i16* %incdec.ptr to i64
  %sub.ptr.rhs.cast32 = ptrtoint i16* %q.1 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %23 = lshr exact i64 %sub.ptr.sub33, 1
  %conv35 = trunc i64 %23 to i32
  call void %22(%struct.vc_data* noundef %vc, i16* noundef %q.1, i32 noundef %conv35, i32 noundef %yy.1, i32 noundef %startx.1) #17
  br i1 %tobool9, label %if.end39, label %for.end

if.end36:                                         ; preds = %while.end
  br i1 %tobool9, label %if.end39, label %for.end

if.end39:                                         ; preds = %if.then28, %while.end.thread, %if.end36
  %count.addr.1.lcssa132136 = phi i32 [ %count.addr.0, %while.end.thread ], [ %dec, %if.end36 ], [ %dec, %if.then28 ]
  %p.1.lcssa133135 = phi i16* [ %p.0, %while.end.thread ], [ %incdec.ptr, %if.end36 ], [ %incdec.ptr, %if.then28 ]
  %inc40 = add i32 %yy.1, 1
  %24 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_getxy42 = getelementptr inbounds %struct.consw, %struct.consw* %24, i64 0, i32 22
  %25 = load i64 (%struct.vc_data*, i64, i32*, i32*)*, i64 (%struct.vc_data*, i64, i32*, i32*)** %con_getxy42, align 8
  %tobool43.not = icmp eq i64 (%struct.vc_data*, i64, i32*, i32*)* %25, null
  br i1 %tobool43.not, label %for.cond, label %if.then44

if.then44:                                        ; preds = %if.end39
  %call47 = call i64 %25(%struct.vc_data* noundef %vc, i64 noundef %start.addr.1.ph, i32* noundef null, i32* noundef null) #17
  br label %for.cond.outer

for.end:                                          ; preds = %if.then28, %while.end.thread, %if.end36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cursor(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @con_is_fg(%struct.vc_data* noundef %vc) #18
  %call.not = xor i1 %call, true
  %0 = load i32, i32* @console_blanked, align 4
  %tobool = icmp ne i32 %0, 0
  %or.cond = select i1 %call.not, i1 true, i1 %tobool
  br i1 %or.cond, label %if.end12, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %entry
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %1 = load i8, i8* %vc_mode, align 4
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.end12, label %if.end

if.end:                                           ; preds = %lor.lhs.false1
  %vc_deccm = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_deccm, align 8
  %2 = and i16 %bf.load, 32
  %tobool3.not = icmp eq i16 %2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i1 @vc_is_sel(%struct.vc_data* noundef %vc) #17
  br i1 %call5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @clear_selection() #17
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  call fastcc void @add_softcursor(%struct.vc_data* noundef %vc) #18
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 23
  %3 = load i32, i32* %vc_cursor_type, align 4
  %and = and i32 %3, 15
  %cmp8.not = icmp eq i32 %and, 1
  br i1 %cmp8.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %4 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_cursor = getelementptr inbounds %struct.consw, %struct.consw* %4, i64 0, i32 7
  %5 = load void (%struct.vc_data*, i32)*, void (%struct.vc_data*, i32)** %con_cursor, align 8
  call void %5(%struct.vc_data* noundef %vc, i32 noundef 1) #17
  br label %if.end12

if.else:                                          ; preds = %if.end
  call fastcc void @hide_cursor(%struct.vc_data* noundef %vc) #18
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %if.then10, %entry, %lor.lhs.false1, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @invert_screen(%struct.vc_data* noundef %vc, i32 noundef %offset, i32 noundef %count, i1 noundef %viewed) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 760; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %div = sdiv i32 %count, 2
  %call20 = call fastcc i16* @screenpos(%struct.vc_data* noundef %vc, i32 noundef %offset, i1 noundef %viewed) #18
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %2 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_invert_region = getelementptr inbounds %struct.consw, %struct.consw* %2, i64 0, i32 20
  %3 = load void (%struct.vc_data*, i16*, i32)*, void (%struct.vc_data*, i16*, i32)** %con_invert_region, align 8
  %tobool21.not = icmp eq void (%struct.vc_data*, i16*, i32)* %3, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  call void %3(%struct.vc_data* noundef %vc, i16* noundef %call20, i32 noundef %div) #17
  br label %if.end67

if.else:                                          ; preds = %if.end
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_can_do_color, align 8
  %4 = and i16 %bf.load, 2048
  %tobool25.not = icmp eq i16 %4, 0
  br i1 %tobool25.not, label %while.cond.preheader, label %if.else30

while.cond.preheader:                             ; preds = %if.else
  %count.off122 = add i32 %count, 1
  %5 = icmp ult i32 %count.off122, 3
  br i1 %5, label %if.end67, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %6 = add nsw i32 %div, -1
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 1
  %min.iters.check165 = icmp eq i32 %6, 0
  %9 = add nsw i32 %div, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr i16, i16* %call20, i64 %10
  %12 = icmp ult i16* %11, %call20
  %or.cond185 = select i1 %min.iters.check165, i1 true, i1 %12
  br i1 %or.cond185, label %while.body.preheader194, label %vector.ph166

vector.ph166:                                     ; preds = %while.body.preheader
  %n.vec168 = and i64 %8, 8589934590
  %cast.crd170 = trunc i64 %n.vec168 to i32
  %ind.end171 = sub i32 %div, %cast.crd170
  %ind.end173 = getelementptr i16, i16* %call20, i64 %n.vec168
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph166
  %index175 = phi i64 [ 0, %vector.ph166 ], [ %index.next181, %vector.body164 ]
  %next.gep179 = getelementptr i16, i16* %call20, i64 %index175
  %13 = or i64 %index175, 1
  %next.gep180 = getelementptr i16, i16* %call20, i64 %13
  %14 = load i16, i16* %next.gep179, align 2
  %15 = load i16, i16* %next.gep180, align 2
  %16 = xor i16 %14, 2048
  %17 = xor i16 %15, 2048
  store i16 %16, i16* %next.gep179, align 2
  store i16 %17, i16* %next.gep180, align 2
  %index.next181 = add nuw i64 %index175, 2
  %18 = icmp eq i64 %index.next181, %n.vec168
  br i1 %18, label %middle.block162, label %vector.body164, !llvm.loop !14

middle.block162:                                  ; preds = %vector.body164
  %cmp.n174 = icmp eq i64 %8, %n.vec168
  br i1 %cmp.n174, label %if.end67, label %while.body.preheader194

while.body.preheader194:                          ; preds = %while.body.preheader, %middle.block162
  %cnt.0120.ph = phi i32 [ %div, %while.body.preheader ], [ %ind.end171, %middle.block162 ]
  %q.0119.ph = phi i16* [ %call20, %while.body.preheader ], [ %ind.end173, %middle.block162 ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader194, %while.body
  %cnt.0120 = phi i32 [ %dec, %while.body ], [ %cnt.0120.ph, %while.body.preheader194 ]
  %q.0119 = phi i16* [ %incdec.ptr, %while.body ], [ %q.0119.ph, %while.body.preheader194 ]
  %dec = add i32 %cnt.0120, -1
  %19 = load i16, i16* %q.0119, align 2
  %20 = xor i16 %19, 2048
  store i16 %20, i16* %q.0119, align 2
  %incdec.ptr = getelementptr i16, i16* %q.0119, i64 1
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %if.end67, label %while.body, !llvm.loop !16

if.else30:                                        ; preds = %if.else
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %21 = load i16, i16* %vc_hi_font_mask, align 8
  %cmp = icmp eq i16 %21, 256
  %count.off121 = add i32 %count, 1
  %22 = icmp ult i32 %count.off121, 3
  br i1 %cmp, label %while.cond34.preheader, label %while.cond48.preheader

while.cond48.preheader:                           ; preds = %if.else30
  br i1 %22, label %if.end67, label %while.body51.preheader

while.body51.preheader:                           ; preds = %while.cond48.preheader
  %23 = add nsw i32 %div, -1
  %24 = zext i32 %23 to i64
  %25 = add nuw nsw i64 %24, 1
  %min.iters.check = icmp eq i32 %23, 0
  %26 = add nsw i32 %div, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr i16, i16* %call20, i64 %27
  %29 = icmp ult i16* %28, %call20
  %or.cond189 = select i1 %min.iters.check, i1 true, i1 %29
  br i1 %or.cond189, label %while.body51.preheader197, label %vector.ph

vector.ph:                                        ; preds = %while.body51.preheader
  %n.vec = and i64 %25, 8589934590
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = sub i32 %div, %cast.crd
  %ind.end131 = getelementptr i16, i16* %call20, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i16, i16* %call20, i64 %index
  %30 = or i64 %index, 1
  %next.gep133 = getelementptr i16, i16* %call20, i64 %30
  %31 = load i16, i16* %next.gep, align 2
  %32 = load i16, i16* %next.gep133, align 2
  %33 = and i16 %31, -30465
  %34 = and i16 %32, -30465
  %35 = lshr i16 %31, 4
  %36 = lshr i16 %32, 4
  %37 = and i16 %35, 1792
  %38 = and i16 %36, 1792
  %39 = or i16 %37, %33
  %40 = or i16 %38, %34
  %41 = shl i16 %31, 4
  %42 = shl i16 %32, 4
  %43 = and i16 %41, 28672
  %44 = and i16 %42, 28672
  %45 = or i16 %39, %43
  %46 = or i16 %40, %44
  store i16 %45, i16* %next.gep, align 2
  store i16 %46, i16* %next.gep133, align 2
  %index.next = add nuw i64 %index, 2
  %47 = icmp eq i64 %index.next, %n.vec
  br i1 %47, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %25, %n.vec
  br i1 %cmp.n, label %if.end67, label %while.body51.preheader197

while.body51.preheader197:                        ; preds = %while.body51.preheader, %middle.block
  %cnt.2114.ph = phi i32 [ %div, %while.body51.preheader ], [ %ind.end, %middle.block ]
  %q.2113.ph = phi i16* [ %call20, %while.body51.preheader ], [ %ind.end131, %middle.block ]
  br label %while.body51

while.cond34.preheader:                           ; preds = %if.else30
  br i1 %22, label %if.end67, label %while.body37.preheader

while.body37.preheader:                           ; preds = %while.cond34.preheader
  %48 = add nsw i32 %div, -1
  %49 = zext i32 %48 to i64
  %50 = add nuw nsw i64 %49, 1
  %min.iters.check141 = icmp eq i32 %48, 0
  %51 = add nsw i32 %div, -1
  %52 = zext i32 %51 to i64
  %53 = getelementptr i16, i16* %call20, i64 %52
  %54 = icmp ult i16* %53, %call20
  %or.cond193 = select i1 %min.iters.check141, i1 true, i1 %54
  br i1 %or.cond193, label %while.body37.preheader195, label %vector.ph142

vector.ph142:                                     ; preds = %while.body37.preheader
  %n.vec144 = and i64 %50, 8589934590
  %cast.crd146 = trunc i64 %n.vec144 to i32
  %ind.end147 = sub i32 %div, %cast.crd146
  %ind.end149 = getelementptr i16, i16* %call20, i64 %n.vec144
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph142
  %index151 = phi i64 [ 0, %vector.ph142 ], [ %index.next157, %vector.body140 ]
  %next.gep155 = getelementptr i16, i16* %call20, i64 %index151
  %55 = or i64 %index151, 1
  %next.gep156 = getelementptr i16, i16* %call20, i64 %55
  %56 = load i16, i16* %next.gep155, align 2
  %57 = load i16, i16* %next.gep156, align 2
  %58 = and i16 %56, 4607
  %59 = and i16 %57, 4607
  %60 = lshr i16 %56, 4
  %61 = lshr i16 %57, 4
  %62 = and i16 %60, 3584
  %63 = and i16 %61, 3584
  %64 = or i16 %62, %58
  %65 = or i16 %63, %59
  %66 = shl i16 %56, 4
  %67 = shl i16 %57, 4
  %68 = and i16 %66, -8192
  %69 = and i16 %67, -8192
  %70 = or i16 %64, %68
  %71 = or i16 %65, %69
  store i16 %70, i16* %next.gep155, align 2
  store i16 %71, i16* %next.gep156, align 2
  %index.next157 = add nuw i64 %index151, 2
  %72 = icmp eq i64 %index.next157, %n.vec144
  br i1 %72, label %middle.block138, label %vector.body140, !llvm.loop !18

middle.block138:                                  ; preds = %vector.body140
  %cmp.n150 = icmp eq i64 %50, %n.vec144
  br i1 %cmp.n150, label %if.end67, label %while.body37.preheader195

while.body37.preheader195:                        ; preds = %while.body37.preheader, %middle.block138
  %cnt.1117.ph = phi i32 [ %div, %while.body37.preheader ], [ %ind.end147, %middle.block138 ]
  %q.1116.ph = phi i16* [ %call20, %while.body37.preheader ], [ %ind.end149, %middle.block138 ]
  br label %while.body37

while.body37:                                     ; preds = %while.body37.preheader195, %while.body37
  %cnt.1117 = phi i32 [ %dec35, %while.body37 ], [ %cnt.1117.ph, %while.body37.preheader195 ]
  %q.1116 = phi i16* [ %incdec.ptr45, %while.body37 ], [ %q.1116.ph, %while.body37.preheader195 ]
  %dec35 = add i32 %cnt.1117, -1
  %73 = load i16, i16* %q.1116, align 2
  %and = and i16 %73, 4607
  %and40 = lshr i16 %73, 4
  %74 = and i16 %and40, 3584
  %or = or i16 %74, %and
  %and42 = shl i16 %73, 4
  %shl = and i16 %and42, -8192
  %or43 = or i16 %or, %shl
  store i16 %or43, i16* %q.1116, align 2
  %incdec.ptr45 = getelementptr i16, i16* %q.1116, i64 1
  %tobool36.not = icmp eq i32 %dec35, 0
  br i1 %tobool36.not, label %if.end67, label %while.body37, !llvm.loop !19

while.body51:                                     ; preds = %while.body51.preheader197, %while.body51
  %cnt.2114 = phi i32 [ %dec49, %while.body51 ], [ %cnt.2114.ph, %while.body51.preheader197 ]
  %q.2113 = phi i16* [ %incdec.ptr63, %while.body51 ], [ %q.2113.ph, %while.body51.preheader197 ]
  %dec49 = add i32 %cnt.2114, -1
  %75 = load i16, i16* %q.2113, align 2
  %and53 = and i16 %75, -30465
  %and55 = lshr i16 %75, 4
  %76 = and i16 %and55, 1792
  %or57 = or i16 %76, %and53
  %and59 = shl i16 %75, 4
  %shl60 = and i16 %and59, 28672
  %or61 = or i16 %or57, %shl60
  store i16 %or61, i16* %q.2113, align 2
  %incdec.ptr63 = getelementptr i16, i16* %q.2113, i64 1
  %tobool50.not = icmp eq i32 %dec49, 0
  br i1 %tobool50.not, label %if.end67, label %while.body51, !llvm.loop !20

if.end67:                                         ; preds = %while.body51, %while.body37, %while.body, %middle.block, %middle.block138, %middle.block162, %while.cond48.preheader, %while.cond34.preheader, %while.cond.preheader, %if.then22
  %call68 = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end67
  %77 = ptrtoint i16* %call20 to i64
  call fastcc void @do_update_region(%struct.vc_data* noundef %vc, i64 noundef %77, i32 noundef %div) #18
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67
  call fastcc void @notify_update(%struct.vc_data* noundef %vc) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @notify_update(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %param = alloca %struct.vt_notifier_param, align 8
  %0 = bitcast %struct.vt_notifier_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %vc1 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 0
  store %struct.vc_data* %vc, %struct.vc_data** %vc1, align 8
  %call = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @vt_notifier_list, i64 noundef 4, i8* noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @complement_pos(%struct.vc_data* noundef %vc, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 811; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %2 = load i32, i32* @complement_pos.old_offset, align 4
  %cmp21 = icmp sgt i32 %2, -1
  br i1 %cmp21, label %land.lhs.true23, label %if.end34

land.lhs.true23:                                  ; preds = %if.end
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  %3 = load i32, i32* %vc_screenbuf_size, align 8
  %cmp24 = icmp ult i32 %2, %3
  br i1 %cmp24, label %if.then26, label %if.end34

if.then26:                                        ; preds = %land.lhs.true23
  %4 = load i16, i16* @complement_pos.old, align 4
  %call27 = call fastcc i16* @screenpos(%struct.vc_data* noundef %vc, i32 noundef %2, i1 noundef true) #18
  store i16 %4, i16* %call27, align 2
  %call28 = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.then26
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %5 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_putc = getelementptr inbounds %struct.consw, %struct.consw* %5, i64 0, i32 5
  %6 = load void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)** %con_putc, align 8
  %7 = load i16, i16* @complement_pos.old, align 4
  %conv30 = zext i16 %7 to i32
  %8 = load i16, i16* @complement_pos.oldy, align 4
  %conv31 = zext i16 %8 to i32
  %9 = load i16, i16* @complement_pos.oldx, align 4
  %conv32 = zext i16 %9 to i32
  call void %6(%struct.vc_data* noundef %vc, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %conv32) #17
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then26
  call fastcc void @notify_update(%struct.vc_data* noundef %vc) #18
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true23, %if.end
  store i32 %offset, i32* @complement_pos.old_offset, align 4
  %cmp38 = icmp sgt i32 %offset, -1
  br i1 %cmp38, label %land.lhs.true40, label %if.end61

land.lhs.true40:                                  ; preds = %if.end34
  %vc_screenbuf_size41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  %10 = load i32, i32* %vc_screenbuf_size41, align 8
  %cmp42 = icmp ugt i32 %10, %offset
  br i1 %cmp42, label %if.then44, label %if.end61

if.then44:                                        ; preds = %land.lhs.true40
  %call45 = call fastcc i16* @screenpos(%struct.vc_data* noundef %vc, i32 noundef %offset, i1 noundef true) #18
  %11 = load i16, i16* %call45, align 2
  store i16 %11, i16* @complement_pos.old, align 4
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 24
  %12 = load i16, i16* %vc_complement_mask, align 8
  %xor89 = xor i16 %12, %11
  store i16 %xor89, i16* %call45, align 2
  %call49 = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call49, label %if.then50, label %if.end60

if.then50:                                        ; preds = %if.then44
  %shr91 = lshr i32 %offset, 1
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %13 = load i32, i32* %vc_cols, align 4
  %.frozen = freeze i32 %13
  %div = udiv i32 %shr91, %.frozen
  %14 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %shr91, %14
  %conv51 = trunc i32 %rem.decomposed to i16
  store i16 %conv51, i16* @complement_pos.oldx, align 4
  %conv54 = trunc i32 %div to i16
  store i16 %conv54, i16* @complement_pos.oldy, align 4
  %vc_sw55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %15 = load %struct.consw*, %struct.consw** %vc_sw55, align 8
  %con_putc56 = getelementptr inbounds %struct.consw, %struct.consw* %15, i64 0, i32 5
  %16 = load void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)** %con_putc56, align 8
  %conv57 = zext i16 %xor89 to i32
  %conv58 = and i32 %div, 65535
  %conv59 = and i32 %rem.decomposed, 65535
  call void %16(%struct.vc_data* noundef %vc, i32 noundef %conv57, i32 noundef %conv58, i32 noundef %conv59) #17
  br label %if.end60

if.end60:                                         ; preds = %if.then50, %if.then44
  call fastcc void @notify_update(%struct.vc_data* noundef %vc) #18
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %land.lhs.true40, %if.end34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @clear_buffer_attributes(%struct.vc_data* nocapture noundef readonly %vc) local_unnamed_addr #3 {
entry:
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  %0 = load i32, i32* %vc_screenbuf_size, align 8
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %1 = load i16, i16* %vc_hi_font_mask, align 8
  %2 = or i16 %1, 255
  %cmp18.not = icmp ult i32 %0, 2
  br i1 %cmp18.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %div = lshr i32 %0, 1
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %3 = load i64, i64* %vc_origin, align 8
  %4 = inttoptr i64 %3 to i16*
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %neg = xor i16 %2, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %count.020 = phi i32 [ %div, %for.body.lr.ph ], [ %dec, %for.body ]
  %p.019 = phi i16* [ %4, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %5 = load i16, i16* %p.019, align 2
  %and17 = and i16 %5, %2
  %6 = load i16, i16* %vc_video_erase_char, align 8
  %and4 = and i16 %6, %neg
  %or5 = or i16 %and4, %and17
  store i16 %or5, i16* %p.019, align 2
  %dec = add nsw i32 %count.020, -1
  %incdec.ptr = getelementptr i16, i16* %p.019, i64 1
  %cmp = icmp ugt i32 %count.020, 1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @redraw_screen(%struct.vc_data* noundef %vc, i32 noundef %is_switch) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 988; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %tobool19.not = icmp eq %struct.vc_data* %vc, null
  br i1 %tobool19.not, label %cleanup62, label %if.end21

if.end21:                                         ; preds = %if.end
  %tobool22.not = icmp eq i32 %is_switch, 0
  br i1 %tobool22.not, label %if.end37.thread, label %if.then23

if.then23:                                        ; preds = %if.end21
  %2 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %2 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %3 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %cmp = icmp eq %struct.vc_data* %3, %vc
  br i1 %cmp, label %cleanup62, label %if.end26

if.end26:                                         ; preds = %if.then23
  %call27 = call i1 @con_is_visible(%struct.vc_data* noundef nonnull %vc) #18
  %vc_display_fg = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 47
  %4 = load %struct.vc_data**, %struct.vc_data*** %vc_display_fg, align 8
  store %struct.vc_data* %vc, %struct.vc_data** %4, align 8
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %5 = load i16, i16* %vc_num, align 8
  %conv30 = zext i16 %5 to i32
  store i32 %conv30, i32* @fg_console, align 4
  call fastcc void @hide_cursor(%struct.vc_data* noundef %3) #18
  %call31 = call i1 @con_is_visible(%struct.vc_data* noundef %3) #18
  br i1 %call31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end26
  call fastcc void @save_screen(%struct.vc_data* noundef %3) #18
  call fastcc void @set_origin(%struct.vc_data* noundef %3) #18
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end26
  %6 = load %struct.device*, %struct.device** @tty0dev, align 8
  %tobool34.not = icmp eq %struct.device* %6, null
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end33
  %kobj = getelementptr inbounds %struct.device, %struct.device* %6, i64 0, i32 0
  call void @sysfs_notify(%struct.kobject* noundef %kobj, i8* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #17
  br label %if.end37

if.end37.thread:                                  ; preds = %if.end21
  call fastcc void @hide_cursor(%struct.vc_data* noundef nonnull %vc) #18
  br label %if.then39

if.end37:                                         ; preds = %if.end33, %if.then35
  br i1 %call27, label %if.end58.thread, label %if.then39

if.end58.thread:                                  ; preds = %if.end37
  call fastcc void @set_cursor(%struct.vc_data* noundef nonnull %vc) #18
  br label %if.then60

if.then39:                                        ; preds = %if.end37.thread, %if.end37
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_can_do_color, align 8
  call fastcc void @set_origin(%struct.vc_data* noundef nonnull %vc) #18
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %7 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_switch = getelementptr inbounds %struct.consw, %struct.consw* %7, i64 0, i32 9
  %con_switch40 = bitcast {}** %con_switch to i32 (%struct.vc_data*)**
  %8 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %con_switch40, align 8
  %call41 = call i32 %8(%struct.vc_data* noundef nonnull %vc) #17
  call fastcc void @set_palette(%struct.vc_data* noundef nonnull %vc) #18
  %bf.load43 = load i16, i16* %vc_can_do_color, align 8
  %bf.lshr97 = xor i16 %bf.load43, %bf.load
  %9 = and i16 %bf.lshr97, 2048
  %cmp47.not = icmp eq i16 %9, 0
  br i1 %cmp47.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.then39
  call fastcc void @update_attr(%struct.vc_data* noundef nonnull %vc) #18
  call void @clear_buffer_attributes(%struct.vc_data* noundef nonnull %vc) #18
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.then39
  %tobool51.not = icmp eq i32 %call41, 0
  br i1 %tobool51.not, label %if.end58, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.end50
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %10 = load i8, i8* %vc_mode, align 4
  %cmp54.not = icmp eq i8 %10, 1
  br i1 %cmp54.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %land.lhs.true52
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %11 = load i64, i64* %vc_origin, align 8
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  %12 = load i32, i32* %vc_screenbuf_size, align 8
  %div = lshr i32 %12, 1
  call fastcc void @do_update_region(%struct.vc_data* noundef nonnull %vc, i64 noundef %11, i32 noundef %div) #18
  br label %if.end58

if.end58:                                         ; preds = %if.end50, %land.lhs.true52, %if.then56
  call fastcc void @set_cursor(%struct.vc_data* noundef nonnull %vc) #18
  br i1 %tobool22.not, label %cleanup62, label %if.then60

if.then60:                                        ; preds = %if.end58.thread, %if.end58
  call void @vt_set_leds_compute_shiftstate() #17
  call fastcc void @notify_update(%struct.vc_data* noundef nonnull %vc) #18
  br label %cleanup62

cleanup62:                                        ; preds = %if.then23, %if.end58, %if.then60, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @con_is_visible(%struct.vc_data* noundef readonly %vc) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 4012; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %vc_display_fg = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 47
  %2 = load %struct.vc_data**, %struct.vc_data*** %vc_display_fg, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %cmp = icmp eq %struct.vc_data* %3, %vc
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @save_screen(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 941; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %2 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_save_screen = getelementptr inbounds %struct.consw, %struct.consw* %2, i64 0, i32 18
  %3 = load void (%struct.vc_data*)*, void (%struct.vc_data*)** %con_save_screen, align 8
  %tobool19.not = icmp eq void (%struct.vc_data*)* %3, null
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end
  call void %3(%struct.vc_data* noundef %vc) #17
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_origin(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 927; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %call19 = call i1 @con_is_visible(%struct.vc_data* noundef %vc) #18
  br i1 %call19, label %lor.lhs.false, label %if.then28

lor.lhs.false:                                    ; preds = %if.end
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %2 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_set_origin = getelementptr inbounds %struct.consw, %struct.consw* %2, i64 0, i32 17
  %con_set_origin20 = bitcast {}** %con_set_origin to i32 (%struct.vc_data*)**
  %3 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %con_set_origin20, align 8
  %tobool21.not = icmp eq i32 (%struct.vc_data*)* %3, null
  br i1 %tobool21.not, label %if.then28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %call26 = call i32 %3(%struct.vc_data* noundef %vc) #17
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %lor.lhs.false22.if.end29_crit_edge

lor.lhs.false22.if.end29_crit_edge:               ; preds = %lor.lhs.false22
  %vc_origin30.phi.trans.insert = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %.pre = load i64, i64* %vc_origin30.phi.trans.insert, align 8
  br label %if.end29

if.then28:                                        ; preds = %lor.lhs.false22, %lor.lhs.false, %if.end
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 15
  %4 = load i16*, i16** %vc_screenbuf, align 8
  %5 = ptrtoint i16* %4 to i64
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  store i64 %5, i64* %vc_origin, align 8
  br label %if.end29

if.end29:                                         ; preds = %lor.lhs.false22.if.end29_crit_edge, %if.then28
  %6 = phi i64 [ %.pre, %lor.lhs.false22.if.end29_crit_edge ], [ %5, %if.then28 ]
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 11
  store i64 %6, i64* %vc_visible_origin, align 8
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  %7 = load i32, i32* %vc_screenbuf_size, align 8
  %conv32 = zext i32 %7 to i64
  %add = add i64 %6, %conv32
  %vc_scr_end = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 10
  store i64 %add, i64* %vc_scr_end, align 8
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %8 = load i32, i32* %vc_size_row, align 4
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %9 = load i32, i32* %y, align 4
  %mul = mul i32 %9, %8
  %conv34 = zext i32 %mul to i64
  %add35 = add i64 %6, %conv34
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %10 = load i32, i32* %x, align 8
  %mul37 = shl i32 %10, 1
  %conv38 = zext i32 %mul37 to i64
  %add39 = add i64 %add35, %conv38
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  store i64 %add39, i64* %vc_pos, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(%struct.kobject* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_palette(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 4505; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %2 = load i8, i8* %vc_mode, align 4
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.end26, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %3 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_set_palette = getelementptr inbounds %struct.consw, %struct.consw* %3, i64 0, i32 15
  %4 = load void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i8*)** %con_set_palette, align 8
  %tobool22.not = icmp eq void (%struct.vc_data*, i8*)* %4, null
  br i1 %tobool22.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %land.lhs.true21
  call void %4(%struct.vc_data* noundef %vc, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @color_table, i64 0, i64 0)) #17
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true21, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_attr(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 2
  %0 = load i8, i8* %color, align 8
  %intensity = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 5
  %1 = load i32, i32* %intensity, align 4
  %blink = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 8
  %2 = load i8, i8* %blink, align 2, !range !27
  %tobool = icmp ne i8 %2, 0
  %underline = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 7
  %3 = load i8, i8* %underline, align 1, !range !27
  %tobool4 = icmp ne i8 %3, 0
  %reverse = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 9
  %4 = load i8, i8* %reverse, align 1, !range !27
  %vc_decscnm = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_decscnm, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %5 = zext i8 %4 to i16
  %tobool7 = icmp ne i16 %bf.clear, %5
  %italic = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 6
  %6 = load i8, i8* %italic, align 8, !range !27
  %tobool9 = icmp ne i8 %6, 0
  %call = call fastcc i8 @build_attr(%struct.vc_data* noundef %vc, i8 noundef %0, i32 noundef %1, i1 noundef %tobool, i1 noundef %tobool4, i1 noundef %tobool7, i1 noundef %tobool9) #18
  %vc_attr = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 18
  store i8 %call, i8* %vc_attr, align 1
  %7 = load i8, i8* %color, align 8
  %8 = load i8, i8* %blink, align 2, !range !27
  %tobool14 = icmp ne i8 %8, 0
  %bf.load16 = load i16, i16* %vc_decscnm, align 8
  %9 = and i16 %bf.load16, 4
  %tobool20 = icmp ne i16 %9, 0
  %call21 = call fastcc i8 @build_attr(%struct.vc_data* noundef %vc, i8 noundef %7, i32 noundef 1, i1 noundef %tobool14, i1 noundef false, i1 noundef %tobool20, i1 noundef false) #18
  %conv22 = zext i8 %call21 to i16
  %shl = shl nuw i16 %conv22, 8
  %or = or i16 %shl, 32
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  store i16 %or, i16* %vc_video_erase_char, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_set_leds_compute_shiftstate() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @vc_cons_allocated(i32 noundef %i) local_unnamed_addr #4 {
entry:
  %cmp = icmp ult i32 %i, 63
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %idxprom = zext i32 %i to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %0 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %tobool = icmp ne %struct.vc_data* %0, null
  %phi.cast = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vc_allocate(i32 noundef %currcons) local_unnamed_addr #0 {
entry:
  %param = alloca %struct.vt_notifier_param, align 8
  %0 = bitcast %struct.vt_notifier_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %4 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %4, 0
  %or.cond114 = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond114, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 1114; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %cmp = icmp ugt i32 %currcons, 62
  br i1 %cmp, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end
  %idxprom = zext i32 %currcons to i64
  %arrayidx = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom
  %d = getelementptr inbounds %struct.vc, %struct.vc* %arrayidx, i64 0, i32 0
  %5 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %tobool22.not = icmp eq %struct.vc_data* %5, null
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end21
  %call25 = call fastcc i8* @kzalloc(i64 noundef 800, i32 noundef 3264) #18
  %6 = bitcast i8* %call25 to %struct.vc_data*
  %7 = bitcast %struct.vt_notifier_param* %param to i8**
  store i8* %call25, i8** %7, align 8
  %tobool27.not = icmp eq i8* %call25, null
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end24
  %8 = bitcast %struct.vc* %arrayidx to i8**
  store i8* %call25, i8** %8, align 8
  %port = bitcast i8* %call25 to %struct.tty_port*
  call void @tty_port_init(%struct.tty_port* noundef nonnull %port) #17
  %ops = getelementptr inbounds i8, i8* %call25, i64 152
  %9 = bitcast i8* %ops to %struct.tty_port_operations**
  store %struct.tty_port_operations* @vc_port_ops, %struct.tty_port_operations** %9, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 1, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry42 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 1, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry42) #18
  %func = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 1, i32 2
  store void (%struct.work_struct*)* @vc_SAK, void (%struct.work_struct*)** %func, align 8
  call fastcc void @visual_init(%struct.vc_data* noundef nonnull %6, i32 noundef %currcons, i32 noundef 1) #18
  %vc_uni_pagedir_loc = getelementptr inbounds i8, i8* %call25, i64 784
  %10 = bitcast i8* %vc_uni_pagedir_loc to %struct.uni_pagedir***
  %11 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %10, align 8
  %12 = load %struct.uni_pagedir*, %struct.uni_pagedir** %11, align 8
  %tobool46.not = icmp eq %struct.uni_pagedir* %12, null
  br i1 %tobool46.not, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end29
  %call48 = call i32 @con_set_default_unimap(%struct.vc_data* noundef nonnull %6) #17
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end29
  %vc_cols = getelementptr inbounds i8, i8* %call25, i64 396
  %13 = bitcast i8* %vc_cols to i32*
  %14 = load i32, i32* %13, align 4
  %cmp50 = icmp ugt i32 %14, 32767
  br i1 %cmp50, label %err_free, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end49
  %vc_rows = getelementptr inbounds i8, i8* %call25, i64 400
  %15 = bitcast i8* %vc_rows to i32*
  %16 = load i32, i32* %15, align 8
  %cmp52 = icmp ugt i32 %16, 32767
  br i1 %cmp52, label %err_free, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %vc_screenbuf_size = getelementptr inbounds i8, i8* %call25, i64 464
  %17 = bitcast i8* %vc_screenbuf_size to i32*
  %18 = load i32, i32* %17, align 8
  %19 = add i32 %18, -4194305
  %20 = icmp ult i32 %19, -4194304
  br i1 %20, label %err_free, label %if.end62

if.end62:                                         ; preds = %lor.lhs.false54
  %conv55 = zext i32 %18 to i64
  %call65 = call fastcc i8* @kzalloc(i64 noundef %conv55, i32 noundef 3264) #18
  %vc_screenbuf = getelementptr inbounds i8, i8* %call25, i64 456
  %21 = bitcast i8* %vc_screenbuf to i8**
  store i8* %call65, i8** %21, align 8
  %tobool67.not = icmp eq i8* %call65, null
  br i1 %tobool67.not, label %err_free, label %if.end69

if.end69:                                         ; preds = %if.end62
  %22 = load i32, i32* @global_cursor_default, align 4
  %cmp70 = icmp eq i32 %22, -1
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end69
  store i32 1, i32* @global_cursor_default, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end69
  %23 = load i32, i32* %15, align 8
  %24 = load i32, i32* %13, align 4
  call fastcc void @vc_init(%struct.vc_data* noundef nonnull %6, i32 noundef %23, i32 noundef %24, i32 noundef 1) #18
  call void @vcs_make_sysfs(i32 noundef %currcons) #17
  %call76 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @vt_notifier_list, i64 noundef 1, i8* noundef nonnull %0) #17
  br label %cleanup

err_free:                                         ; preds = %if.end62, %if.end49, %lor.lhs.false, %lor.lhs.false54
  %err.0 = phi i32 [ -22, %if.end49 ], [ -22, %lor.lhs.false ], [ -22, %lor.lhs.false54 ], [ -12, %if.end62 ]
  call fastcc void @visual_deinit(%struct.vc_data* noundef nonnull %6) #18
  call void @kfree(i8* noundef nonnull %call25) #17
  store %struct.vc_data* null, %struct.vc_data** %d, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21, %if.end, %err_free, %if.end73
  %retval.0 = phi i32 [ %err.0, %err_free ], [ 0, %if.end73 ], [ -6, %if.end ], [ 0, %if.end21 ], [ -12, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %or) #17
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(%struct.tty_port* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc_SAK(%struct.work_struct* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @visual_init(%struct.vc_data* noundef %vc, i32 noundef %num, i32 noundef %init) unnamed_addr #0 {
entry:
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %0 = load %struct.consw*, %struct.consw** @conswitchp, align 8
  %idxprom = sext i32 %num to i64
  %arrayidx = getelementptr [63 x %struct.consw*], [63 x %struct.consw*]* @con_driver_map, i64 0, i64 %idxprom
  %1 = load %struct.consw*, %struct.consw** %arrayidx, align 8
  %tobool3.not = icmp eq %struct.consw* %1, null
  %spec.store.select = select i1 %tobool3.not, %struct.consw* %0, %struct.consw* %1
  store %struct.consw* %spec.store.select, %struct.consw** %vc_sw, align 8
  %conv = trunc i32 %num to i16
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  store i16 %conv, i16* %vc_num, align 8
  %vc_display_fg = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 47
  store %struct.vc_data** @master_display_fg, %struct.vc_data*** %vc_display_fg, align 8
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 49
  %2 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  %tobool11.not = icmp eq %struct.uni_pagedir** %2, null
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %entry
  call void @con_free_unimap(%struct.vc_data* noundef %vc) #17
  %.pre = load %struct.consw*, %struct.consw** %vc_sw, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %entry
  %3 = phi %struct.consw* [ %.pre, %if.then12 ], [ %spec.store.select, %entry ]
  %vc_uni_pagedir = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 48
  store %struct.uni_pagedir** %vc_uni_pagedir, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8
  store %struct.uni_pagedir* null, %struct.uni_pagedir** %vc_uni_pagedir, align 8
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  store i16 0, i16* %vc_hi_font_mask, align 8
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 24
  store i16 0, i16* %vc_complement_mask, align 8
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_can_do_color, align 8
  %bf.clear = and i16 %bf.load, -2049
  store i16 %bf.clear, i16* %vc_can_do_color, align 8
  %vc_cur_blink_ms = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 46
  store i16 200, i16* %vc_cur_blink_ms, align 4
  %con_init = getelementptr inbounds %struct.consw, %struct.consw* %3, i64 0, i32 2
  %4 = load void (%struct.vc_data*, i32)*, void (%struct.vc_data*, i32)** %con_init, align 8
  call void %4(%struct.vc_data* noundef %vc, i32 noundef %init) #17
  %5 = load i16, i16* %vc_complement_mask, align 8
  %tobool18.not = icmp eq i16 %5, 0
  br i1 %tobool18.not, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end13
  %bf.load21 = load i16, i16* %vc_can_do_color, align 8
  %6 = and i16 %bf.load21, 2048
  %tobool23.not = icmp eq i16 %6, 0
  %conv24 = select i1 %tobool23.not, i16 2048, i16 30464
  store i16 %conv24, i16* %vc_complement_mask, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end13
  %7 = phi i16 [ %conv24, %if.then19 ], [ %5, %if.end13 ]
  %vc_s_complement_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 25
  store i16 %7, i16* %vc_s_complement_mask, align 2
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %8 = load i32, i32* %vc_cols, align 4
  %shl = shl i32 %8, 1
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  store i32 %shl, i32* %vc_size_row, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %9 = load i32, i32* %vc_rows, align 8
  %mul = mul i32 %9, %shl
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  store i32 %mul, i32* %vc_screenbuf_size, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_default_unimap(%struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_init(%struct.vc_data* noundef %vc, i32 noundef %rows, i32 noundef %cols, i32 noundef %do_clear) unnamed_addr #0 {
entry:
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  store i32 %cols, i32* %vc_cols, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  store i32 %rows, i32* %vc_rows, align 8
  %shl = shl i32 %cols, 1
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  store i32 %shl, i32* %vc_size_row, align 4
  %mul = mul i32 %shl, %rows
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  store i32 %mul, i32* %vc_screenbuf_size, align 8
  call fastcc void @set_origin(%struct.vc_data* noundef %vc) #18
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %0 = load i64, i64* %vc_origin, align 8
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  store i64 %0, i64* %vc_pos, align 8
  call void @reset_vc(%struct.vc_data* noundef %vc) #17
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv51 = phi i64 [ 0, %entry ], [ %indvars.iv.next52, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr [16 x i8], [16 x i8]* @default_red, i64 0, i64 %indvars.iv51
  %1 = load i8, i8* %arrayidx, align 1
  %2 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx4 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %indvars.iv
  store i8 %1, i8* %arrayidx4, align 1
  %arrayidx6 = getelementptr [16 x i8], [16 x i8]* @default_grn, i64 0, i64 %indvars.iv51
  %3 = load i8, i8* %arrayidx6, align 1
  %4 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx10 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %2
  store i8 %3, i8* %arrayidx10, align 1
  %arrayidx12 = getelementptr [16 x i8], [16 x i8]* @default_blu, i64 0, i64 %indvars.iv51
  %5 = load i8, i8* %arrayidx12, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %arrayidx16 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %4
  store i8 %5, i8* %arrayidx16, align 1
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next52, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %6 = load i32, i32* @default_color, align 4
  %conv = trunc i32 %6 to i8
  %vc_def_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 19
  store i8 %conv, i8* %vc_def_color, align 2
  %7 = load i32, i32* @default_underline_color, align 4
  %conv18 = trunc i32 %7 to i8
  %vc_ulcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 20
  store i8 %conv18, i8* %vc_ulcolor, align 1
  %8 = load i32, i32* @default_italic_color, align 4
  %conv19 = trunc i32 %8 to i8
  %vc_itcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 21
  store i8 %conv19, i8* %vc_itcolor, align 8
  %vc_halfcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 22
  store i8 8, i8* %vc_halfcolor, align 1
  %paste_wait = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 36
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %paste_wait, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @vc_init.__key) #17
  call fastcc void @reset_terminal(%struct.vc_data* noundef %vc, i32 noundef %do_clear) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_make_sysfs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @visual_deinit(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %0 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_deinit = getelementptr inbounds %struct.consw, %struct.consw* %0, i64 0, i32 3
  %1 = load void (%struct.vc_data*)*, void (%struct.vc_data*)** %con_deinit, align 8
  call void %1(%struct.vc_data* noundef %vc) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vc_resize(%struct.vc_data* noundef %vc, i32 noundef %cols, i32 noundef %rows) local_unnamed_addr #0 {
entry:
  %tty = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 0, i32 1
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8
  %call = call fastcc i32 @vc_do_resize(%struct.tty_struct* noundef %0, %struct.vc_data* noundef %vc, i32 noundef %cols, i32 noundef %rows) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vc_do_resize(%struct.tty_struct* noundef %tty, %struct.vc_data* noundef %vc, i32 noundef %cols, i32 noundef %lines) unnamed_addr #0 {
entry:
  %ws = alloca i64, align 8, !annotation !12
  %tmpcast = bitcast i64* %ws to %struct.winsize*, !annotation !12
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 1206; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %tobool19.not = icmp eq %struct.vc_data* %vc, null
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end
  %vc_resize_user = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 43
  %2 = load i32, i32* %vc_resize_user, align 8
  store i32 0, i32* %vc_resize_user, align 8
  %3 = or i32 %lines, %cols
  %.not = icmp ult i32 %3, 32768
  br i1 %.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end21
  %tobool28.not = icmp eq i32 %cols, 0
  br i1 %tobool28.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end27
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %4 = load i32, i32* %vc_cols, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end27, %cond.false
  %cond = phi i32 [ %4, %cond.false ], [ %cols, %if.end27 ]
  %tobool29.not = icmp eq i32 %lines, 0
  br i1 %tobool29.not, label %cond.false31, label %cond.end32

cond.false31:                                     ; preds = %cond.end
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %5 = load i32, i32* %vc_rows, align 8
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end, %cond.false31
  %cond33 = phi i32 [ %5, %cond.false31 ], [ %lines, %cond.end ]
  %shl = shl i32 %cond, 1
  %mul = mul i32 %cond33, %shl
  %vc_cols34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %6 = load i32, i32* %vc_cols34, align 4
  %cmp35 = icmp eq i32 %cond, %6
  br i1 %cmp35, label %land.lhs.true37, label %if.end43

land.lhs.true37:                                  ; preds = %cond.end32
  %vc_rows38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %7 = load i32, i32* %vc_rows38, align 8
  %cmp39 = icmp eq i32 %cond33, %7
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %land.lhs.true37
  %call42 = call fastcc i32 @resize_screen(%struct.vc_data* noundef nonnull %vc, i32 noundef %cond, i32 noundef %cond33, i32 noundef %2) #18
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true37, %cond.end32
  %conv44 = zext i32 %mul to i64
  %8 = add i32 %mul, -1
  %9 = icmp ult i32 %8, 4194304
  br i1 %9, label %if.end50, label %cleanup

if.end50:                                         ; preds = %if.end43
  %call52 = call fastcc i8* @kzalloc(i64 noundef %conv44, i32 noundef 1051840) #18
  %tobool53.not = icmp eq i8* %call52, null
  br i1 %tobool53.not, label %cleanup, label %if.end55

if.end55:                                         ; preds = %if.end50
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %10 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool56.not = icmp eq %struct.uni_screen* %10, null
  br i1 %tobool56.not, label %if.end62, label %if.then57

if.then57:                                        ; preds = %if.end55
  %call58 = call fastcc %struct.uni_screen* @vc_uniscr_alloc(i32 noundef %cond, i32 noundef %cond33) #18
  %tobool59.not = icmp eq %struct.uni_screen* %call58, null
  br i1 %tobool59.not, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then57
  call void @kfree(i8* noundef nonnull %call52) #17
  br label %cleanup

if.end62:                                         ; preds = %if.then57, %if.end55
  %new_uniscr.0 = phi %struct.uni_screen* [ %call58, %if.then57 ], [ null, %if.end55 ]
  %call63 = call i1 @vc_is_sel(%struct.vc_data* noundef nonnull %vc) #17
  br i1 %call63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end62
  call void @clear_selection() #17
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end62
  %vc_rows66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %11 = load i32, i32* %vc_rows66, align 8
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %12 = load i32, i32* %vc_size_row, align 4
  %call67 = call fastcc i32 @resize_screen(%struct.vc_data* noundef nonnull %vc, i32 noundef %cond, i32 noundef %cond33, i32 noundef %2) #18
  %tobool69.not = icmp eq i32 %call67, 0
  br i1 %tobool69.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %if.end65
  call void @kfree(i8* noundef nonnull %call52) #17
  call fastcc void @vc_uniscr_free(%struct.uni_screen* noundef %new_uniscr.0) #18
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  store i32 %cond33, i32* %vc_rows66, align 8
  store i32 %cond, i32* %vc_cols34, align 4
  store i32 %shl, i32* %vc_size_row, align 4
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  store i32 %mul, i32* %vc_screenbuf_size, align 8
  %cmp77 = icmp ult i32 %12, %shl
  %cond82 = select i1 %cmp77, i32 %12, i32 %shl
  %conv83 = zext i32 %cond82 to i64
  %conv84 = zext i32 %shl to i64
  %sub = sub nsw i64 %conv84, %conv83
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %13 = load i64, i64* %vc_origin, align 8
  %14 = ptrtoint i8* %call52 to i64
  %add = add i64 %14, %conv44
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %15 = load i32, i32* %y, align 4
  %cmp86 = icmp ugt i32 %15, %cond33
  br i1 %cmp86, label %if.then88, label %if.end104

if.then88:                                        ; preds = %if.end72
  %sub91 = sub i32 %11, %15
  %cmp92 = icmp ult i32 %sub91, %cond33
  %sub95 = sub i32 %11, %cond33
  %div = lshr i32 %cond33, 1
  %sub98 = sub i32 %15, %div
  %first_copied_row.0 = select i1 %cmp92, i32 %sub95, i32 %sub98
  %mul100 = mul i32 %first_copied_row.0, %12
  %conv101 = zext i32 %mul100 to i64
  %add102 = add i64 %13, %conv101
  br label %if.end104

if.end104:                                        ; preds = %if.end72, %if.then88
  %first_copied_row.1 = phi i32 [ %first_copied_row.0, %if.then88 ], [ 0, %if.end72 ]
  %old_origin.0 = phi i64 [ %add102, %if.then88 ], [ %13, %if.end72 ]
  %cmp106 = icmp ult i32 %11, %cond33
  %cond111 = select i1 %cmp106, i32 %11, i32 %cond33
  %mul112 = mul i32 %cond111, %12
  %conv113 = zext i32 %mul112 to i64
  %add114 = add i64 %old_origin.0, %conv113
  %16 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %div116 = lshr i32 %cond82, 1
  call fastcc void @vc_uniscr_copy_area(%struct.uni_screen* noundef %new_uniscr.0, i32 noundef %cond, i32 noundef %cond33, %struct.uni_screen* noundef %16, i32 noundef %div116, i32 noundef %first_copied_row.1, i32 noundef %cond111) #18
  call fastcc void @vc_uniscr_set(%struct.vc_data* noundef nonnull %vc, %struct.uni_screen* noundef %new_uniscr.0) #18
  call fastcc void @update_attr(%struct.vc_data* noundef nonnull %vc) #18
  %cmp125327 = icmp ult i64 %old_origin.0, %add114
  br i1 %cmp125327, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end104
  %tobool128.not = icmp eq i64 %sub, 0
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %conv131 = trunc i64 %sub to i32
  %conv133 = zext i32 %12 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end132
  %old_origin.1329 = phi i64 [ %old_origin.0, %while.body.lr.ph ], [ %add134, %if.end132 ]
  %new_origin.0328 = phi i64 [ %14, %while.body.lr.ph ], [ %add136, %if.end132 ]
  %17 = inttoptr i64 %new_origin.0328 to i16*
  %18 = inttoptr i64 %old_origin.1329 to i16*
  call fastcc void @scr_memcpyw(i16* noundef %17, i16* noundef %18, i32 noundef %cond82) #18
  br i1 %tobool128.not, label %if.end132, label %if.then129

if.then129:                                       ; preds = %while.body
  %add130 = add i64 %new_origin.0328, %conv83
  %19 = inttoptr i64 %add130 to i16*
  %20 = load i16, i16* %vc_video_erase_char, align 8
  call fastcc void @scr_memsetw(i16* noundef %19, i16 noundef %20, i32 noundef %conv131) #18
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %while.body
  %add134 = add i64 %old_origin.1329, %conv133
  %add136 = add i64 %new_origin.0328, %conv84
  %cmp125 = icmp ult i64 %add134, %add114
  br i1 %cmp125, label %while.body, label %while.end

while.end:                                        ; preds = %if.end132, %if.end104
  %new_origin.0.lcssa = phi i64 [ %14, %if.end104 ], [ %add136, %if.end132 ]
  %cmp137 = icmp ugt i64 %add, %new_origin.0.lcssa
  br i1 %cmp137, label %if.then139, label %if.end143

if.then139:                                       ; preds = %while.end
  %21 = inttoptr i64 %new_origin.0.lcssa to i16*
  %vc_video_erase_char140 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %22 = load i16, i16* %vc_video_erase_char140, align 8
  %sub141 = sub i64 %add, %new_origin.0.lcssa
  %conv142 = trunc i64 %sub141 to i32
  call fastcc void @scr_memsetw(i16* noundef %21, i16 noundef %22, i32 noundef %conv142) #18
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %while.end
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 15
  %23 = bitcast i16** %vc_screenbuf to i8**
  %24 = load i8*, i8** %23, align 8
  store i8* %call52, i8** %23, align 8
  store i32 %mul, i32* %vc_screenbuf_size, align 8
  call fastcc void @set_origin(%struct.vc_data* noundef %vc) #18
  call void @kfree(i8* noundef %24) #17
  %vc_top = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 12
  store i32 0, i32* %vc_top, align 8
  %25 = load i32, i32* %vc_rows66, align 8
  %vc_bottom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 13
  store i32 %25, i32* %vc_bottom, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %26 = load i32, i32* %x, align 8
  %27 = load i32, i32* %y, align 4
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %26, i32 noundef %27) #18
  call fastcc void @save_cur(%struct.vc_data* noundef %vc) #18
  %tobool150.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool150.not, label %if.end159, label %if.then151

if.then151:                                       ; preds = %if.end143
  %28 = bitcast i64* %ws to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #19
  store i64 0, i64* %ws, align 8, !annotation !12
  %call152 = call i8* @memset(i8* noundef nonnull %28, i32 noundef 0, i64 noundef 8) #17
  %29 = load i32, i32* %vc_rows66, align 8
  %conv154 = trunc i32 %29 to i16
  %ws_row = bitcast i64* %ws to i16*
  store i16 %conv154, i16* %ws_row, align 8
  %30 = load i32, i32* %vc_cols34, align 4
  %conv156 = trunc i32 %30 to i16
  %ws_col = getelementptr inbounds %struct.winsize, %struct.winsize* %tmpcast, i64 0, i32 1
  store i16 %conv156, i16* %ws_col, align 2
  %vc_scan_lines = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 7
  %31 = load i32, i32* %vc_scan_lines, align 8
  %conv157 = trunc i32 %31 to i16
  %ws_ypixel = getelementptr inbounds %struct.winsize, %struct.winsize* %tmpcast, i64 0, i32 3
  store i16 %conv157, i16* %ws_ypixel, align 2
  %call158 = call i32 @tty_do_resize(%struct.tty_struct* noundef nonnull %tty, %struct.winsize* noundef nonnull %tmpcast) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #19
  br label %if.end159

if.end159:                                        ; preds = %if.then151, %if.end143
  %call160 = call i1 @con_is_visible(%struct.vc_data* noundef %vc) #18
  br i1 %call160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end159
  call void @redraw_screen(%struct.vc_data* noundef %vc, i32 noundef 0) #18
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end159
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %32 = load i16, i16* %vc_num, align 8
  %conv163 = zext i16 %32 to i32
  call void @vt_event_post(i32 noundef 8, i32 noundef %conv163, i32 noundef %conv163) #17
  call fastcc void @notify_update(%struct.vc_data* noundef %vc) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end43, %if.end21, %if.end, %if.end162, %if.then70, %if.then60, %if.then41
  %retval.0 = phi i32 [ %call42, %if.then41 ], [ %call67, %if.then70 ], [ 0, %if.end162 ], [ -12, %if.then60 ], [ -6, %if.end ], [ -22, %if.end21 ], [ -22, %if.end43 ], [ -12, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vc_data* @vc_deallocate(i32 noundef %currcons) local_unnamed_addr #0 {
entry:
  %param = alloca %struct.vt_notifier_param, align 8
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 1392; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %call19 = call i32 @vc_cons_allocated(i32 noundef %currcons) #18
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %if.then21

if.then21:                                        ; preds = %if.end
  %2 = bitcast %struct.vt_notifier_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #19
  %3 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 1
  %4 = bitcast i32* %3 to i64*, !annotation !12
  store i64 0, i64* %4, align 8, !annotation !12
  %idxprom = zext i32 %currcons to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %5 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc22 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 0
  store %struct.vc_data* %5, %struct.vc_data** %vc22, align 8
  %call23 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @vt_notifier_list, i64 noundef 2, i8* noundef nonnull %2) #17
  call void @vcs_remove_sysfs(i32 noundef %currcons) #17
  call fastcc void @visual_deinit(%struct.vc_data* noundef %5) #18
  call void @con_free_unimap(%struct.vc_data* noundef %5) #17
  %vt_pid = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i64 0, i32 34
  %6 = load %struct.pid*, %struct.pid** %vt_pid, align 8
  call void @put_pid(%struct.pid* noundef %6) #17
  call fastcc void @vc_uniscr_set(%struct.vc_data* noundef %5, %struct.uni_screen* noundef null) #18
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i64 0, i32 15
  %7 = bitcast i16** %vc_screenbuf to i8**
  %8 = load i8*, i8** %7, align 8
  call void @kfree(i8* noundef %8) #17
  store %struct.vc_data* null, %struct.vc_data** %d, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #19
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end
  %vc.0 = phi %struct.vc_data* [ %5, %if.then21 ], [ null, %if.end ]
  ret %struct.vc_data* %vc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_remove_sysfs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @con_free_unimap(%struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_uniscr_set(%struct.vc_data* nocapture noundef %vc, %struct.uni_screen* noundef %new_uniscr) unnamed_addr #0 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  call fastcc void @vc_uniscr_free(%struct.uni_screen* noundef %0) #18
  store %struct.uni_screen* %new_uniscr, %struct.uni_screen** %vc_uni_screen, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @scrollback(%struct.vc_data* nocapture noundef readonly %vc) local_unnamed_addr #0 {
entry:
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %0 = load i32, i32* %vc_rows, align 8
  %div = lshr i32 %0, 1
  %sub = sub nsw i32 0, %div
  call fastcc void @scrolldelta(i32 noundef %sub) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @scrolldelta(i32 noundef %lines) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @scrollback_delta, align 4
  %add = add i32 %0, %lines
  store i32 %add, i32* @scrollback_delta, align 4
  call void @schedule_console_callback() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @scrollfront(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %lines) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %lines, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %0 = load i32, i32* %vc_rows, align 8
  %div = lshr i32 %0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %lines.addr.0 = phi i32 [ %lines, %entry ], [ %div, %if.then ]
  call fastcc void @scrolldelta(i32 noundef %lines.addr.0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mouse_report(%struct.tty_struct* nocapture noundef readonly %tty, i32 noundef %butt, i32 noundef %mrx, i32 noundef %mry) local_unnamed_addr #0 {
entry:
  %buf = alloca i64, align 8, !annotation !12
  %0 = bitcast i64* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store i64 0, i64* %buf, align 8, !annotation !12
  %conv = add i32 %butt, 32
  %conv1 = and i32 %conv, 255
  %conv3 = add i32 %mrx, 33
  %conv4 = and i32 %conv3, 255
  %conv6 = add i32 %mry, 33
  %conv7 = and i32 %conv6, 255
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv1, i32 noundef %conv4, i32 noundef %conv7) #17
  %conv9 = sext i32 %call to i64
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %1 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call fastcc void @respond_string(i8* noundef nonnull %0, i64 noundef %conv9, %struct.tty_port* noundef %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @respond_string(i8* noundef %p, i64 noundef %len, %struct.tty_port* noundef %port) unnamed_addr #0 {
entry:
  call fastcc void @tty_insert_flip_string(%struct.tty_port* noundef %port, i8* noundef %p, i64 noundef %len) #18
  call void @tty_schedule_flip(%struct.tty_port* noundef %port) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @mouse_reporting() local_unnamed_addr #4 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_report_mouse = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 37
  %bf.load = load i16, i16* %vc_report_mouse, align 8
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_console(i32 noundef %nr) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %call = call i32 @vc_cons_allocated(i32 noundef %nr) #18
  %tobool.not = icmp ne i32 %call, 0
  %2 = load i8, i8* @vt_dont_switch, align 1
  %tobool1.not = icmp eq i8 %2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 33, i32 0
  %3 = load i8, i8* %mode, align 4
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 17
  %4 = load i8, i8* %vc_mode, align 4
  %cmp5 = icmp eq i8 %4, 1
  br i1 %cmp5, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  store i32 %nr, i32* @want_console, align 4
  call void @schedule_console_callback() #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_kmsg_redirect(i32 noundef %new) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %new, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call8.i = call fastcc i32 @__xchg_case_mb_32(i32 noundef %new) #17
  br label %return

if.else:                                          ; preds = %entry
  %0 = load i32, i32* @vt_kmsg_redirect.kmsg_con, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call8.i, %if.then ], [ %0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tioclinux(%struct.tty_struct* noundef %tty, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %arg to i8*
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !31
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 24
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %cmp.not = icmp eq %struct.tty_struct* %4, %tty
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i1 @capable(i32 noundef 21) #17
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 1) #18
  %tobool.not = icmp eq i64 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %5 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call5, i32 -14, i32 0) #19, !srcloc !32
  %asmresult = extractvalue { i32, i64 } %5, 0
  %tobool16.not = icmp eq i32 %asmresult, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end13
  %asmresult9 = extractvalue { i32, i64 } %5, 1
  %conv = trunc i64 %asmresult9 to i8
  switch i8 %conv, label %cleanup [
    i8 2, label %sw.bb
    i8 3, label %sw.bb21
    i8 4, label %sw.bb23
    i8 5, label %sw.bb24
    i8 6, label %sw.bb26
    i8 7, label %sw.bb48
    i8 10, label %sw.bb72
    i8 17, label %sw.bb74
    i8 11, label %sw.bb98
    i8 12, label %sw.bb134
    i8 13, label %sw.bb135
    i8 14, label %sw.bb165
    i8 15, label %sw.bb166
  ]

sw.bb:                                            ; preds = %if.end18
  %add.ptr = getelementptr i8, i8* %0, i64 1
  %6 = bitcast i8* %add.ptr to %struct.tiocl_selection*
  %call20 = call i32 @set_selection_user(%struct.tiocl_selection* noundef %6, %struct.tty_struct* noundef %tty) #17
  br label %cleanup

sw.bb21:                                          ; preds = %if.end18
  %call22 = call i32 @paste_selection(%struct.tty_struct* noundef %tty) #17
  br label %cleanup

sw.bb23:                                          ; preds = %if.end18
  call void @console_lock() #17
  call void @unblank_screen() #18
  call void @console_unlock() #17
  br label %cleanup

sw.bb24:                                          ; preds = %if.end18
  call void @console_lock() #17
  %call25 = call i32 @sel_loadlut(i8* noundef %0) #17
  call void @console_unlock() #17
  br label %cleanup

sw.bb26:                                          ; preds = %if.end18
  %call27 = call i32 @vt_get_shift_state() #17
  %call31 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 1) #18
  %tobool32.not = icmp eq i64 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %sw.bb26
  %conv28 = trunc i32 %call27 to i8
  %call34 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %7 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %conv28, i8* %call34, i32 -14, i32 0) #19, !srcloc !33
  br label %cleanup

sw.bb48:                                          ; preds = %if.end18
  call void @console_lock() #17
  %call49 = call i32 @mouse_reporting() #18
  call void @console_unlock() #17
  %call54 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 1) #18
  %tobool55.not = icmp eq i64 %call54, 0
  br i1 %tobool55.not, label %cleanup, label %if.then56

if.then56:                                        ; preds = %sw.bb48
  %conv50 = trunc i32 %call49 to i8
  %call57 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %8 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %conv50, i8* %call57, i32 -14, i32 0) #19, !srcloc !34
  br label %cleanup

sw.bb72:                                          ; preds = %if.end18
  call void @console_lock() #17
  %call73 = call fastcc i32 @set_vesa_blanking(i8* noundef %0) #18
  call void @console_unlock() #17
  br label %cleanup

sw.bb74:                                          ; preds = %if.end18
  %call75 = call i32 @vt_kmsg_redirect(i32 noundef -1) #18
  %call80 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 1) #18
  %tobool81.not = icmp eq i64 %call80, 0
  br i1 %tobool81.not, label %cleanup, label %if.then82

if.then82:                                        ; preds = %sw.bb74
  %conv76 = trunc i32 %call75 to i8
  %call83 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %9 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %conv76, i8* %call83, i32 -14, i32 0) #19, !srcloc !35
  br label %cleanup

sw.bb98:                                          ; preds = %if.end18
  %call99 = call i1 @capable(i32 noundef 21) #17
  br i1 %call99, label %if.else101, label %cleanup

if.else101:                                       ; preds = %sw.bb98
  %add.ptr105 = getelementptr i8, i8* %0, i64 1
  %call106 = call fastcc i64 @__range_ok(i8* noundef %add.ptr105, i64 noundef 1) #18
  %tobool107.not = icmp eq i64 %call106, 0
  br i1 %tobool107.not, label %cleanup, label %if.end123

if.end123:                                        ; preds = %if.else101
  %call109 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr105) #18
  %10 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call109, i32 -14, i32 0) #19, !srcloc !36
  %asmresult114 = extractvalue { i32, i64 } %10, 0
  %phi.cmp220 = icmp eq i32 %asmresult114, 0
  br i1 %phi.cmp220, label %if.else129, label %cleanup

if.else129:                                       ; preds = %if.end123
  %asmresult115 = extractvalue { i32, i64 } %10, 1
  %conv116 = trunc i64 %asmresult115 to i32
  %phi.cast = and i32 %conv116, 255
  %call131 = call i32 @vt_kmsg_redirect(i32 noundef %phi.cast) #18
  br label %cleanup

sw.bb134:                                         ; preds = %if.end18
  %11 = load i32, i32* @fg_console, align 4
  br label %cleanup

sw.bb135:                                         ; preds = %if.end18
  %add.ptr139 = getelementptr i8, i8* %0, i64 4
  %call140 = call fastcc i64 @__range_ok(i8* noundef %add.ptr139, i64 noundef 4) #18
  %tobool141.not = icmp eq i64 %call140, 0
  br i1 %tobool141.not, label %cleanup, label %if.end157

if.end157:                                        ; preds = %sw.bb135
  %call143 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr139) #18
  %12 = bitcast i8* %call143 to i32*
  %13 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %12, i32 -14, i32 0) #19, !srcloc !37
  %asmresult148 = extractvalue { i32, i64 } %13, 0
  %phi.cmp = icmp eq i32 %asmresult148, 0
  br i1 %phi.cmp, label %if.else163, label %cleanup

if.else163:                                       ; preds = %if.end157
  %asmresult149 = extractvalue { i32, i64 } %13, 1
  %conv150 = trunc i64 %asmresult149 to i32
  call void @console_lock() #17
  %14 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %14 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %15 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  call void @scrollfront(%struct.vc_data* noundef %15, i32 noundef %conv150) #18
  call void @console_unlock() #17
  br label %cleanup

sw.bb165:                                         ; preds = %if.end18
  call void @console_lock() #17
  store i1 true, i1* @ignore_poke, align 4
  call void @do_blank_screen(i32 noundef 0) #18
  call void @console_unlock() #17
  br label %cleanup

sw.bb166:                                         ; preds = %if.end18
  %16 = load i32, i32* @console_blanked, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb135, %if.else101, %if.end, %sw.bb, %sw.bb21, %sw.bb23, %sw.bb24, %sw.bb72, %sw.bb134, %sw.bb165, %sw.bb166, %if.else129, %if.else163, %sw.bb26, %if.then33, %sw.bb48, %if.then56, %sw.bb74, %if.then82, %sw.bb98, %if.end123, %if.end157, %if.end18, %if.end13, %land.lhs.true
  %retval.0 = phi i32 [ -1, %land.lhs.true ], [ -14, %if.end13 ], [ %16, %sw.bb166 ], [ 0, %sw.bb165 ], [ 0, %if.else163 ], [ %11, %sw.bb134 ], [ 0, %if.else129 ], [ %call73, %sw.bb72 ], [ %call25, %sw.bb24 ], [ 0, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb ], [ %7, %if.then33 ], [ -14, %sw.bb26 ], [ %8, %if.then56 ], [ -14, %sw.bb48 ], [ %9, %if.then82 ], [ -14, %sw.bb74 ], [ -1, %sw.bb98 ], [ -14, %if.end123 ], [ -14, %if.end157 ], [ -22, %if.end18 ], [ -14, %if.end ], [ -14, %if.else101 ], [ -14, %sw.bb135 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #19, !srcloc !38
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #19, !srcloc !39
  call void asm sideeffect "hint #20", "~{memory}"() #19, !srcloc !40
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_selection_user(%struct.tiocl_selection* noundef, %struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paste_selection(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unblank_screen() #0 {
entry:
  call void @do_unblank_screen(i32 noundef 0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sel_loadlut(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_get_shift_state() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @set_vesa_blanking(i8* noundef %p) unnamed_addr #0 {
entry:
  %add.ptr = getelementptr i8, i8* %p, i64 1
  %call = call fastcc i64 @__range_ok(i8* noundef %add.ptr, i64 noundef 1) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr) #18
  %0 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call1, i32 -14, i32 0) #19, !srcloc !41
  %asmresult = extractvalue { i32, i64 } %0, 0
  %asmresult5 = extractvalue { i32, i64 } %0, 1
  %conv = trunc i64 %asmresult5 to i32
  %conv6 = and i32 %conv, 255
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end
  %cmp = icmp ult i32 %conv6, 4
  %cond = select i1 %cmp, i32 %conv6, i32 0
  store i32 %cond, i32* @vesa_blank_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -14, %if.end ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_blank_screen(i32 noundef %entering_gfx) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call4 = call i32 @is_console_locked() #17
  %tobool5.not = icmp eq i32 %call4, 0
  %3 = load i32, i32* @oops_in_progress, align 4
  %tobool6.not = icmp eq i32 %3, 0
  %or.cond89 = select i1 %tobool5.not, i1 %tobool6.not, i1 false
  br i1 %or.cond89, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 4352; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %4 = load i32, i32* @console_blanked, align 4
  %tobool22.not = icmp eq i32 %4, 0
  br i1 %tobool22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end
  %5 = load i32, i32* @blank_state, align 4
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then25, label %cleanup

if.then25:                                        ; preds = %if.then23
  store i32 0, i32* @blank_state, align 4
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 14
  %6 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_blank = getelementptr inbounds %struct.consw, %struct.consw* %6, i64 0, i32 10
  %7 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %con_blank, align 8
  %8 = load i32, i32* @vesa_blank_mode, align 4
  %add = add i32 %8, 1
  %call26 = call i32 %7(%struct.vc_data* noundef %1, i32 noundef %add, i32 noundef 0) #17
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %tobool29.not = icmp eq i32 %entering_gfx, 0
  br i1 %tobool29.not, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end28
  call fastcc void @hide_cursor(%struct.vc_data* noundef %1) #18
  call fastcc void @save_screen(%struct.vc_data* noundef %1) #18
  %vc_sw31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 14
  %9 = load %struct.consw*, %struct.consw** %vc_sw31, align 8
  %con_blank32 = getelementptr inbounds %struct.consw, %struct.consw* %9, i64 0, i32 10
  %10 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %con_blank32, align 8
  %call33 = call i32 %10(%struct.vc_data* noundef %1, i32 noundef -1, i32 noundef 1) #17
  %11 = load i32, i32* @fg_console, align 4
  %add34 = add i32 %11, 1
  store i32 %add34, i32* @console_blanked, align 4
  store i32 0, i32* @blank_state, align 4
  call fastcc void @set_origin(%struct.vc_data* noundef %1) #18
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  store i32 0, i32* @blank_state, align 4
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 17
  %12 = load i8, i8* %vc_mode, align 4
  %cmp37.not = icmp eq i8 %12, 0
  br i1 %cmp37.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end35
  %13 = load i32, i32* @fg_console, align 4
  %add40 = add i32 %13, 1
  store i32 %add40, i32* @console_blanked, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  call fastcc void @hide_cursor(%struct.vc_data* noundef %1) #18
  %call42 = call i32 @del_timer_sync(%struct.timer_list* noundef nonnull @console_timer) #17
  store i1 false, i1* @blank_timer_expired, align 4
  call fastcc void @save_screen(%struct.vc_data* noundef %1) #18
  %vc_sw43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 14
  %14 = load %struct.consw*, %struct.consw** %vc_sw43, align 8
  %con_blank44 = getelementptr inbounds %struct.consw, %struct.consw* %14, i64 0, i32 10
  %15 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %con_blank44, align 8
  %16 = load i32, i32* @vesa_off_interval, align 4
  %tobool45.not = icmp eq i32 %16, 0
  %17 = load i32, i32* @vesa_blank_mode, align 4
  %add46 = add i32 %17, 1
  %cond = select i1 %tobool45.not, i32 %add46, i32 1
  %call47 = call i32 %15(%struct.vc_data* noundef %1, i32 noundef %cond, i32 noundef 0) #17
  %18 = load i32, i32* @fg_console, align 4
  %add48 = add i32 %18, 1
  store i32 %add48, i32* @console_blanked, align 4
  %tobool49.not = icmp eq i32 %call47, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end41
  call fastcc void @set_origin(%struct.vc_data* noundef %1) #18
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end41
  %19 = load i32 (i32)*, i32 (i32)** @console_blank_hook, align 8
  %tobool52.not = icmp eq i32 (i32)* %19, null
  br i1 %tobool52.not, label %if.end57, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end51
  %call54 = call i32 %19(i32 noundef 1) #17
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %cleanup

if.end57:                                         ; preds = %land.lhs.true53, %if.end51
  %20 = load i32, i32* @vesa_off_interval, align 4
  %tobool58 = icmp ne i32 %20, 0
  %21 = load i32, i32* @vesa_blank_mode, align 4
  %tobool60 = icmp ne i32 %21, 0
  %or.cond = select i1 %tobool58, i1 %tobool60, i1 false
  br i1 %or.cond, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.end57
  store i32 2, i32* @blank_state, align 4
  %22 = load volatile i64, i64* @jiffies, align 64
  %conv62 = sext i32 %20 to i64
  %add63 = add i64 %22, %conv62
  %call64 = call i32 @mod_timer(%struct.timer_list* noundef nonnull @console_timer, i64 noundef %add63) #17
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end57
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 3
  %23 = load i16, i16* %vc_num, align 8
  %conv66 = zext i16 %23 to i32
  call void @vt_event_post(i32 noundef 2, i32 noundef %conv66, i32 noundef %conv66) #17
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true53, %if.then23, %if.then25, %if.end65, %if.then39, %if.then30
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @con_init() #8 section ".init.text" {
entry:
  call void @console_lock() #17
  %0 = load %struct.consw*, %struct.consw** @conswitchp, align 8
  %tobool.not = icmp eq %struct.consw* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.consw* @dummy_con, %struct.consw** @conswitchp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.consw* [ @dummy_con, %if.then ], [ %0, %entry ]
  %con_startup = getelementptr inbounds %struct.consw, %struct.consw* %1, i64 0, i32 1
  %2 = load i8* ()*, i8* ()** %con_startup, align 8
  %call = call i8* %2() #17
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.end
  store i32 0, i32* @fg_console, align 4
  call void @console_unlock() #17
  br label %cleanup57

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %con = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 0
  %3 = load %struct.consw*, %struct.consw** %con, align 8
  %cmp4 = icmp eq %struct.consw* %3, null
  br i1 %cmp4, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %4 = load %struct.consw*, %struct.consw** @conswitchp, align 8
  store %struct.consw* %4, %struct.consw** %con, align 8
  %desc = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom.le, i32 1
  store i8* %call, i8** %desc, align 8
  %flag = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom.le, i32 6
  store i32 2, i32* %flag, align 4
  %first = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom.le, i32 4
  store i32 0, i32* %first, align 4
  %last = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom.le, i32 5
  store i32 62, i32* %last, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load %struct.consw*, %struct.consw** @conswitchp, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %cleanup
  %5 = phi %struct.consw* [ %.pre, %for.end.loopexit ], [ %4, %cleanup ]
  br label %for.body10

for.body10:                                       ; preds = %for.end, %for.body10
  %indvars.iv111 = phi i64 [ 0, %for.end ], [ %indvars.iv.next112, %for.body10 ]
  %arrayidx12 = getelementptr [63 x %struct.consw*], [63 x %struct.consw*]* @con_driver_map, i64 0, i64 %indvars.iv111
  store %struct.consw* %5, %struct.consw** %arrayidx12, align 8
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, 63
  br i1 %exitcond114.not, label %for.end15, label %for.body10

for.end15:                                        ; preds = %for.body10
  %6 = load i32, i32* @blankinterval, align 4
  %tobool16.not = icmp eq i32 %6, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %for.end15
  store i32 1, i32* @blank_state, align 4
  %7 = load volatile i64, i64* @jiffies, align 64
  %mul = mul i32 %6, 250
  %conv = sext i32 %mul to i64
  %add = add i64 %7, %conv
  %call18 = call i32 @mod_timer(%struct.timer_list* noundef nonnull @console_timer, i64 noundef %add) #17
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end15
  %call24 = call fastcc i8* @kzalloc(i64 noundef 800, i32 noundef 2048) #18
  %8 = bitcast i8* %call24 to %struct.vc_data*
  store i8* %call24, i8** bitcast ([63 x %struct.vc]* @vc_cons to i8**), align 8
  store i64 68719476704, i64* getelementptr inbounds ([63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 0, i32 1, i32 0, i32 0), align 8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef getelementptr inbounds ([63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 0, i32 1, i32 1)) #18
  store void (%struct.work_struct*)* @vc_SAK, void (%struct.work_struct*)** getelementptr inbounds ([63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 0, i32 1, i32 2), align 8
  %port = bitcast i8* %call24 to %struct.tty_port*
  call void @tty_port_init(%struct.tty_port* noundef %port) #17
  call fastcc void @visual_init(%struct.vc_data* noundef %8, i32 noundef 0, i32 noundef 1) #18
  %vc_screenbuf_size = getelementptr inbounds i8, i8* %call24, i64 464
  %9 = bitcast i8* %vc_screenbuf_size to i32*
  %10 = load i32, i32* %9, align 8
  %conv39 = zext i32 %10 to i64
  %call40 = call fastcc i8* @kzalloc(i64 noundef %conv39, i32 noundef 2048) #18
  %vc_screenbuf = getelementptr inbounds i8, i8* %call24, i64 456
  %11 = bitcast i8* %vc_screenbuf to i8**
  store i8* %call40, i8** %11, align 8
  %vc_rows = getelementptr inbounds i8, i8* %call24, i64 400
  %12 = bitcast i8* %vc_rows to i32*
  %13 = load i32, i32* %12, align 8
  %vc_cols = getelementptr inbounds i8, i8* %call24, i64 396
  %14 = bitcast i8* %vc_cols to i32*
  %15 = load i32, i32* %14, align 4
  %vc_sw = getelementptr inbounds i8, i8* %call24, i64 448
  %16 = bitcast i8* %vc_sw to %struct.consw**
  %17 = load %struct.consw*, %struct.consw** %16, align 8
  %con_save_screen = getelementptr inbounds %struct.consw, %struct.consw* %17, i64 0, i32 18
  %18 = load void (%struct.vc_data*)*, void (%struct.vc_data*)** %con_save_screen, align 8
  %tobool42.not = icmp eq void (%struct.vc_data*)* %18, null
  %lor.ext = zext i1 %tobool42.not to i32
  call fastcc void @vc_init(%struct.vc_data* noundef %8, i32 noundef %13, i32 noundef %15, i32 noundef %lor.ext) #18
  store i32 0, i32* @fg_console, align 4
  %19 = load %struct.vc_data*, %struct.vc_data** getelementptr inbounds ([63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 0, i32 0), align 8
  store %struct.vc_data* %19, %struct.vc_data** @master_display_fg, align 8
  call fastcc void @set_origin(%struct.vc_data* noundef %19) #18
  call fastcc void @save_screen(%struct.vc_data* noundef %19) #18
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i64 0, i32 1, i32 0
  %20 = load i32, i32* %x, align 8
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i64 0, i32 1, i32 1
  %21 = load i32, i32* %y, align 4
  call fastcc void @gotoxy(%struct.vc_data* noundef %19, i32 noundef %20, i32 noundef %21) #18
  call fastcc void @csi_J(%struct.vc_data* noundef %19, i32 noundef 0) #18
  call void @redraw_screen(%struct.vc_data* noundef %19, i32 noundef 0) #18
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i64 0, i32 37
  %bf.load = load i16, i16* %vc_can_do_color, align 8
  %22 = and i16 %bf.load, 2048
  %tobool53.not = icmp eq i16 %22, 0
  %cond = select i1 %tobool53.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %vc_cols54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i64 0, i32 4
  %23 = load i32, i32* %vc_cols54, align 4
  %vc_rows55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i64 0, i32 5
  %24 = load i32, i32* %vc_rows55, align 8
  %call56 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef %cond, i8* noundef nonnull %call, i32 noundef %23, i32 noundef %24) #21
  store i1 true, i1* @printable, align 4
  call void @console_unlock() #17
  call void @register_console(%struct.console* noundef nonnull @vt_console_driver) #17
  br label %cleanup57

cleanup57:                                        ; preds = %if.end19, %if.then2
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @vty_init(%struct.file_operations* noundef %console_fops) local_unnamed_addr #8 section ".init.text" {
entry:
  call void @cdev_init(%struct.cdev* noundef nonnull @vc0_cdev, %struct.file_operations* noundef %console_fops) #17
  %call = call i32 @cdev_add(%struct.cdev* noundef nonnull @vc0_cdev, i32 noundef 4194304, i32 noundef 1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @register_chrdev_region(i32 noundef 4194304, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #17
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)) #22
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %0 = load %struct.class*, %struct.class** @tty_class, align 8
  %call2 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, %struct.attribute_group**, i8*, ...) @device_create_with_groups(%struct.class* noundef %0, %struct.device* noundef null, i32 noundef 4194304, i8* noundef null, %struct.attribute_group** noundef getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @vt_dev_groups, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #17
  %1 = bitcast %struct.device* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %1) #18
  %spec.store.select = select i1 %call3, %struct.device* null, %struct.device* %call2
  store %struct.device* %spec.store.select, %struct.device** @tty0dev, align 8
  %call6 = call i32 @vcs_init() #17
  %call7 = call %struct.tty_driver* @__tty_alloc_driver(i32 noundef 63, %struct.module* noundef null, i64 noundef 6) #17
  store %struct.tty_driver* %call7, %struct.tty_driver** @console_driver, align 8
  %2 = bitcast %struct.tty_driver* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %2) #18
  br i1 %call8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #22
  unreachable

if.end10:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call7, i64 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %name, align 8
  %name_base = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call7, i64 0, i32 6
  store i32 1, i32* %name_base, align 8
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call7, i64 0, i32 7
  store i32 4, i32* %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call7, i64 0, i32 8
  store i32 1, i32* %minor_start, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call7, i64 0, i32 10
  store i16 2, i16* %type, align 8
  %init_termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call7, i64 0, i32 12
  %3 = bitcast %struct.ktermios* %init_termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(44) %3, i8* noundef align 4 dereferenceable(44) bitcast (%struct.ktermios* @tty_std_termios to i8*), i64 44, i1 false)
  %4 = load i32, i32* @default_utf8, align 4
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  %c_iflag = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call7, i64 0, i32 12, i32 0
  %5 = load i32, i32* %c_iflag, align 4
  %or = or i32 %5, 16384
  store i32 %or, i32* %c_iflag, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  call fastcc void @tty_set_operations(%struct.tty_driver* noundef %call7) #18
  %6 = load %struct.tty_driver*, %struct.tty_driver** @console_driver, align 8
  %call15 = call i32 @tty_register_driver(%struct.tty_driver* noundef %6) #17
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)) #22
  unreachable

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @kbd_init() #17
  call void @console_map_init() #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(%struct.cdev* noundef, %struct.file_operations* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(%struct.cdev* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @device_create_with_groups(%struct.class* noundef, %struct.device* noundef, i32 noundef, i8* noundef, %struct.attribute_group** noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #10 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcs_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_driver* @__tty_alloc_driver(i32 noundef, %struct.module* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @tty_set_operations(%struct.tty_driver* nocapture noundef writeonly %driver) unnamed_addr #11 {
entry:
  %ops = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 20
  store %struct.tty_operations* @con_ops, %struct.tty_operations** %ops, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(%struct.tty_driver* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kbd_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_map_init() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_is_bound(%struct.consw* noundef readnone %csw) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.preheader

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %for.body.preheader, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 3991; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !43
  br label %for.body.preheader

for.body.preheader:                               ; preds = %entry, %land.lhs.true, %if.then
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [63 x %struct.consw*], [63 x %struct.consw*]* @con_driver_map, i64 0, i64 %indvars.iv
  %2 = load %struct.consw*, %struct.consw** %arrayidx, align 8
  %cmp20 = icmp eq %struct.consw* %2, %csw
  br i1 %cmp20, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body, %for.cond
  %bound.0 = phi i32 [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %bound.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_debug_enter(%struct.vc_data* noundef %vc) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  store i32 %0, i32* @saved_fg_console, align 4
  %1 = load i32, i32* @last_console, align 4
  store i32 %1, i32* @saved_last_console, align 4
  %2 = load i32, i32* @want_console, align 4
  store i32 %2, i32* @saved_want_console, align 4
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %3 = load i8, i8* %vc_mode, align 4
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* @saved_vc_mode, align 4
  %4 = load i32, i32* @console_blanked, align 4
  store i32 %4, i32* @saved_console_blanked, align 4
  store i8 0, i8* %vc_mode, align 4
  store i32 0, i32* @console_blanked, align 4
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %5 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_debug_enter = getelementptr inbounds %struct.consw, %struct.consw* %5, i64 0, i32 24
  %con_debug_enter2 = bitcast {}** %con_debug_enter to i32 (%struct.vc_data*)**
  %6 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %con_debug_enter2, align 8
  %tobool.not = icmp eq i32 (%struct.vc_data*)* %6, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %6(%struct.vc_data* noundef %vc) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_debug_leave() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @saved_fg_console, align 4
  store i32 %0, i32* @fg_console, align 4
  %1 = load i32, i32* @saved_last_console, align 4
  store i32 %1, i32* @last_console, align 4
  %2 = load i32, i32* @saved_want_console, align 4
  store i32 %2, i32* @want_console, align 4
  %3 = load i32, i32* @saved_console_blanked, align 4
  store i32 %3, i32* @console_blanked, align 4
  %4 = load i32, i32* @saved_vc_mode, align 4
  %conv = trunc i32 %4 to i8
  %idxprom = sext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %5 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i64 0, i32 17
  store i8 %conv, i8* %vc_mode, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i64 0, i32 14
  %7 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_debug_leave = getelementptr inbounds %struct.consw, %struct.consw* %7, i64 0, i32 25
  %con_debug_leave4 = bitcast {}** %con_debug_leave to i32 (%struct.vc_data*)**
  %8 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %con_debug_leave4, align 8
  %tobool.not = icmp eq i32 (%struct.vc_data*)* %8, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %8(%struct.vc_data* noundef %6) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_unregister_con_driver(%struct.consw* noundef %csw) local_unnamed_addr #0 {
entry:
  %call = call i32 @con_is_bound(%struct.consw* noundef %csw) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup9

if.end:                                           ; preds = %entry
  %0 = load %struct.consw*, %struct.consw** @conswitchp, align 8
  %cmp = icmp eq %struct.consw* %0, %csw
  br i1 %cmp, label %cleanup9, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %1 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 0, i32 0), align 8
  %cmp4 = icmp eq %struct.consw* %1, %csw
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.inc.14, %for.inc.13, %for.inc.12, %for.inc.11, %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.body.preheader
  %i.018.lcssa.wide = phi i64 [ 0, %for.body.preheader ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ], [ 9, %for.inc.8 ], [ 10, %for.inc.9 ], [ 11, %for.inc.10 ], [ 12, %for.inc.11 ], [ 13, %for.inc.12 ], [ 14, %for.inc.13 ], [ 15, %for.inc.14 ]
  %con.lcssa = phi %struct.consw** [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 0, i32 0), %for.body.preheader ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 1, i32 0), %for.inc ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 2, i32 0), %for.inc.1 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 3, i32 0), %for.inc.2 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 4, i32 0), %for.inc.3 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 5, i32 0), %for.inc.4 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 6, i32 0), %for.inc.5 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 7, i32 0), %for.inc.6 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 8, i32 0), %for.inc.7 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 9, i32 0), %for.inc.8 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 10, i32 0), %for.inc.9 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 11, i32 0), %for.inc.10 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 12, i32 0), %for.inc.11 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 13, i32 0), %for.inc.12 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 14, i32 0), %for.inc.13 ], [ getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 15, i32 0), %for.inc.14 ]
  store %struct.consw* null, %struct.consw** %con.lcssa, align 8
  %flag = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %i.018.lcssa.wide, i32 6
  store i32 8, i32* %flag, align 4
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull @con_driver_unregister_work) #18
  br label %cleanup9

for.inc:                                          ; preds = %for.body.preheader
  %2 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 1, i32 0), align 8
  %cmp4.1 = icmp eq %struct.consw* %2, %csw
  br i1 %cmp4.1, label %if.then5, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %3 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 2, i32 0), align 8
  %cmp4.2 = icmp eq %struct.consw* %3, %csw
  br i1 %cmp4.2, label %if.then5, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %4 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 3, i32 0), align 8
  %cmp4.3 = icmp eq %struct.consw* %4, %csw
  br i1 %cmp4.3, label %if.then5, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %5 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 4, i32 0), align 8
  %cmp4.4 = icmp eq %struct.consw* %5, %csw
  br i1 %cmp4.4, label %if.then5, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %6 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 5, i32 0), align 8
  %cmp4.5 = icmp eq %struct.consw* %6, %csw
  br i1 %cmp4.5, label %if.then5, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %7 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 6, i32 0), align 8
  %cmp4.6 = icmp eq %struct.consw* %7, %csw
  br i1 %cmp4.6, label %if.then5, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %8 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 7, i32 0), align 8
  %cmp4.7 = icmp eq %struct.consw* %8, %csw
  br i1 %cmp4.7, label %if.then5, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %9 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 8, i32 0), align 8
  %cmp4.8 = icmp eq %struct.consw* %9, %csw
  br i1 %cmp4.8, label %if.then5, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %10 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 9, i32 0), align 8
  %cmp4.9 = icmp eq %struct.consw* %10, %csw
  br i1 %cmp4.9, label %if.then5, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %11 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 10, i32 0), align 8
  %cmp4.10 = icmp eq %struct.consw* %11, %csw
  br i1 %cmp4.10, label %if.then5, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %12 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 11, i32 0), align 8
  %cmp4.11 = icmp eq %struct.consw* %12, %csw
  br i1 %cmp4.11, label %if.then5, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %13 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 12, i32 0), align 8
  %cmp4.12 = icmp eq %struct.consw* %13, %csw
  br i1 %cmp4.12, label %if.then5, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %14 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 13, i32 0), align 8
  %cmp4.13 = icmp eq %struct.consw* %14, %csw
  br i1 %cmp4.13, label %if.then5, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %15 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 14, i32 0), align 8
  %cmp4.14 = icmp eq %struct.consw* %15, %csw
  br i1 %cmp4.14, label %if.then5, label %for.inc.14

for.inc.14:                                       ; preds = %for.inc.13
  %16 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 15, i32 0), align 8
  %cmp4.15 = icmp eq %struct.consw* %16, %csw
  br i1 %cmp4.15, label %if.then5, label %cleanup9

cleanup9:                                         ; preds = %for.inc.14, %if.then5, %if.end, %entry
  %retval.2 = phi i32 [ 0, %if.then5 ], [ -16, %entry ], [ -22, %if.end ], [ -19, %for.inc.14 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_take_over_console(%struct.consw* noundef %csw, i32 noundef %first, i32 noundef %last, i32 noundef %deflt) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_register_con_driver(%struct.consw* noundef %csw, i32 noundef %first, i32 noundef %last) #18
  %cmp = icmp eq i32 %call, -16
  %spec.store.select = select i1 %cmp, i32 0, i32 %call
  %tobool.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %entry
  call fastcc void @do_bind_con_driver(%struct.consw* noundef %csw, i32 noundef %first, i32 noundef %last, i32 noundef %deflt) #18
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %entry
  ret i32 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_register_con_driver(%struct.consw* noundef %csw, i32 noundef %first, i32 noundef %last) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = call i32 @is_console_locked() #17
  %tobool4.not = icmp eq i32 %call3, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool5.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool4.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 4111; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %2 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 0, i32 0), align 8
  %cmp25 = icmp eq %struct.consw* %2, %csw
  %3 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 1, i32 0), align 8
  %cmp25.1 = icmp eq %struct.consw* %3, %csw
  %or.cond130 = select i1 %cmp25, i1 true, i1 %cmp25.1
  %4 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 2, i32 0), align 8
  %cmp25.2 = icmp eq %struct.consw* %4, %csw
  %or.cond131 = select i1 %or.cond130, i1 true, i1 %cmp25.2
  %5 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 3, i32 0), align 8
  %cmp25.3 = icmp eq %struct.consw* %5, %csw
  %or.cond132 = select i1 %or.cond131, i1 true, i1 %cmp25.3
  %6 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 4, i32 0), align 8
  %cmp25.4 = icmp eq %struct.consw* %6, %csw
  %or.cond133 = select i1 %or.cond132, i1 true, i1 %cmp25.4
  %7 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 5, i32 0), align 8
  %cmp25.5 = icmp eq %struct.consw* %7, %csw
  %or.cond134 = select i1 %or.cond133, i1 true, i1 %cmp25.5
  %8 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 6, i32 0), align 8
  %cmp25.6 = icmp eq %struct.consw* %8, %csw
  %or.cond135 = select i1 %or.cond134, i1 true, i1 %cmp25.6
  %9 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 7, i32 0), align 8
  %cmp25.7 = icmp eq %struct.consw* %9, %csw
  %or.cond136 = select i1 %or.cond135, i1 true, i1 %cmp25.7
  %10 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 8, i32 0), align 8
  %cmp25.8 = icmp eq %struct.consw* %10, %csw
  %or.cond137 = select i1 %or.cond136, i1 true, i1 %cmp25.8
  %11 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 9, i32 0), align 8
  %cmp25.9 = icmp eq %struct.consw* %11, %csw
  %or.cond138 = select i1 %or.cond137, i1 true, i1 %cmp25.9
  %12 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 10, i32 0), align 8
  %cmp25.10 = icmp eq %struct.consw* %12, %csw
  %or.cond139 = select i1 %or.cond138, i1 true, i1 %cmp25.10
  %13 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 11, i32 0), align 8
  %cmp25.11 = icmp eq %struct.consw* %13, %csw
  %or.cond140 = select i1 %or.cond139, i1 true, i1 %cmp25.11
  %14 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 12, i32 0), align 8
  %cmp25.12 = icmp eq %struct.consw* %14, %csw
  %or.cond141 = select i1 %or.cond140, i1 true, i1 %cmp25.12
  %15 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 13, i32 0), align 8
  %cmp25.13 = icmp eq %struct.consw* %15, %csw
  %or.cond142 = select i1 %or.cond141, i1 true, i1 %cmp25.13
  %16 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 14, i32 0), align 8
  %cmp25.14 = icmp eq %struct.consw* %16, %csw
  %or.cond143 = select i1 %or.cond142, i1 true, i1 %cmp25.14
  %17 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 15, i32 0), align 8
  %cmp25.15 = icmp eq %struct.consw* %17, %csw
  %or.cond144 = select i1 %or.cond143, i1 true, i1 %cmp25.15
  br i1 %or.cond144, label %err, label %for.cond.15

for.cond.15:                                      ; preds = %if.end
  %con_startup = getelementptr inbounds %struct.consw, %struct.consw* %csw, i64 0, i32 1
  %18 = load i8* ()*, i8* ()** %con_startup, align 8
  %call29 = call i8* %18() #17
  %tobool30.not = icmp eq i8* %call29, null
  br i1 %tobool30.not, label %err, label %for.body36

for.body36:                                       ; preds = %for.cond.15, %for.inc51
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc51 ], [ 0, %for.cond.15 ]
  %arrayidx38 = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv
  %con39 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %arrayidx38, i64 0, i32 0
  %19 = load %struct.consw*, %struct.consw** %con39, align 8
  %cmp40 = icmp eq %struct.consw* %19, null
  br i1 %cmp40, label %land.lhs.true42, label %for.inc51

land.lhs.true42:                                  ; preds = %for.body36
  %flag = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 6
  %20 = load i32, i32* %flag, align 4
  %and = and i32 %20, 8
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %if.end56, label %for.inc51

for.inc51:                                        ; preds = %for.body36, %land.lhs.true42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %err, label %for.body36

if.end56:                                         ; preds = %land.lhs.true42
  %con39.le = getelementptr inbounds %struct.con_driver, %struct.con_driver* %arrayidx38, i64 0, i32 0
  %21 = trunc i64 %indvars.iv to i32
  %idxprom37.le = and i64 %indvars.iv, 4294967295
  store %struct.consw* %csw, %struct.consw** %con39.le, align 8
  %desc46 = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom37.le, i32 1
  store i8* %call29, i8** %desc46, align 8
  %node = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom37.le, i32 3
  store i32 %21, i32* %node, align 8
  store i32 3, i32* %flag, align 4
  %first48 = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom37.le, i32 4
  store i32 %first, i32* %first48, align 4
  %last49 = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom37.le, i32 5
  store i32 %last, i32* %last49, align 8
  %22 = load %struct.class*, %struct.class** @vtconsole_class, align 8
  %23 = bitcast %struct.con_driver* %arrayidx38 to i8*
  %call59 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, %struct.attribute_group**, i8*, ...) @device_create_with_groups(%struct.class* noundef %22, %struct.device* noundef null, i32 noundef %21, i8* noundef %23, %struct.attribute_group** noundef getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @con_dev_groups, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 noundef %21) #17
  %dev = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %idxprom37.le, i32 2
  store %struct.device* %call59, %struct.device** %dev, align 8
  %24 = bitcast %struct.device* %call59 to i8*
  %call61 = call fastcc i1 @IS_ERR(i8* noundef %24) #18
  br i1 %call61, label %do.end, label %if.else

do.end:                                           ; preds = %if.end56
  %25 = load i8*, i8** %desc46, align 8
  %call66 = call fastcc i64 @PTR_ERR(i8* noundef %24) #18
  %call67 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i8* noundef %25, i64 noundef %call66) #21
  store %struct.device* null, %struct.device** %dev, align 8
  br label %err

if.else:                                          ; preds = %if.end56
  call fastcc void @vtconsole_init_device(%struct.con_driver* noundef %arrayidx38) #18
  br label %err

err:                                              ; preds = %for.inc51, %if.end, %for.cond.15, %do.end, %if.else
  %retval2.1 = phi i32 [ 0, %do.end ], [ 0, %if.else ], [ -19, %for.cond.15 ], [ -16, %if.end ], [ -22, %for.inc51 ]
  ret i32 %retval2.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_bind_con_driver(%struct.consw* noundef %csw, i32 noundef %first, i32 noundef %last, i32 noundef %deflt) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %entry
  %call4 = call i32 @is_console_locked() #17
  %tobool5.not = icmp eq i32 %call4, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool6.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.then15, label %if.end16, !prof !7

if.then15:                                        ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 3641; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !45
  br label %if.end16

if.end16:                                         ; preds = %entry, %land.lhs.true, %if.then15
  %2 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 0, i32 0), align 8
  %cmp25 = icmp eq %struct.consw* %2, %csw
  br i1 %cmp25, label %if.end32, label %for.inc

for.inc:                                          ; preds = %if.end16
  %3 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 1, i32 0), align 8
  %cmp25.1 = icmp eq %struct.consw* %3, %csw
  br i1 %cmp25.1, label %if.end32, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %4 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 2, i32 0), align 8
  %cmp25.2 = icmp eq %struct.consw* %4, %csw
  br i1 %cmp25.2, label %if.end32, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %5 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 3, i32 0), align 8
  %cmp25.3 = icmp eq %struct.consw* %5, %csw
  br i1 %cmp25.3, label %if.end32, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %6 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 4, i32 0), align 8
  %cmp25.4 = icmp eq %struct.consw* %6, %csw
  br i1 %cmp25.4, label %if.end32, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %7 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 5, i32 0), align 8
  %cmp25.5 = icmp eq %struct.consw* %7, %csw
  br i1 %cmp25.5, label %if.end32, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %8 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 6, i32 0), align 8
  %cmp25.6 = icmp eq %struct.consw* %8, %csw
  br i1 %cmp25.6, label %if.end32, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %9 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 7, i32 0), align 8
  %cmp25.7 = icmp eq %struct.consw* %9, %csw
  br i1 %cmp25.7, label %if.end32, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %10 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 8, i32 0), align 8
  %cmp25.8 = icmp eq %struct.consw* %10, %csw
  br i1 %cmp25.8, label %if.end32, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %11 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 9, i32 0), align 8
  %cmp25.9 = icmp eq %struct.consw* %11, %csw
  br i1 %cmp25.9, label %if.end32, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %12 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 10, i32 0), align 8
  %cmp25.10 = icmp eq %struct.consw* %12, %csw
  br i1 %cmp25.10, label %if.end32, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %13 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 11, i32 0), align 8
  %cmp25.11 = icmp eq %struct.consw* %13, %csw
  br i1 %cmp25.11, label %if.end32, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %14 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 12, i32 0), align 8
  %cmp25.12 = icmp eq %struct.consw* %14, %csw
  br i1 %cmp25.12, label %if.end32, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %15 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 13, i32 0), align 8
  %cmp25.13 = icmp eq %struct.consw* %15, %csw
  br i1 %cmp25.13, label %if.end32, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %16 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 14, i32 0), align 8
  %cmp25.14 = icmp eq %struct.consw* %16, %csw
  br i1 %cmp25.14, label %if.end32, label %for.inc.14

for.inc.14:                                       ; preds = %for.inc.13
  %17 = load %struct.consw*, %struct.consw** getelementptr inbounds ([16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 15, i32 0), align 8
  %cmp25.15 = icmp eq %struct.consw* %17, %csw
  br i1 %cmp25.15, label %if.end32, label %err

if.end32:                                         ; preds = %for.inc.14, %for.inc.13, %for.inc.12, %for.inc.11, %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %if.end16
  %i.09.lcssa.wide = phi i64 [ 0, %if.end16 ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ], [ 9, %for.inc.8 ], [ 10, %for.inc.9 ], [ 11, %for.inc.10 ], [ 12, %for.inc.11 ], [ 13, %for.inc.12 ], [ 14, %for.inc.13 ], [ 15, %for.inc.14 ]
  %desc28 = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %i.09.lcssa.wide, i32 1
  %18 = load i8*, i8** %desc28, align 8
  %flag = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %i.09.lcssa.wide, i32 6
  %19 = load i32, i32* %flag, align 4
  %and = and i32 %19, 2
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end32
  %con_startup = getelementptr inbounds %struct.consw, %struct.consw* %csw, i64 0, i32 1
  %20 = load i8* ()*, i8* ()** %con_startup, align 8
  %call35 = call i8* %20() #17
  %21 = load i32, i32* %flag, align 4
  %or = or i32 %21, 2
  store i32 %or, i32* %flag, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32
  %tobool38.not = icmp eq i32 %deflt, 0
  br i1 %tobool38.not, label %if.end44, label %if.end43

if.end43:                                         ; preds = %if.end37
  store %struct.consw* %csw, %struct.consw** @conswitchp, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end37
  %first45 = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %i.09.lcssa.wide, i32 4
  %22 = load i32, i32* %first45, align 4
  %cmp47 = icmp slt i32 %22, %first
  %cond = select i1 %cmp47, i32 %first, i32 %22
  %last49 = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %i.09.lcssa.wide, i32 5
  %23 = load i32, i32* %last49, align 8
  %cmp51 = icmp sgt i32 %23, %last
  %cond56 = select i1 %cmp51, i32 %last, i32 %23
  %cmp58.not10 = icmp sgt i32 %cond, %cond56
  br i1 %cmp58.not10, label %do.end, label %for.body60

for.body60:                                       ; preds = %if.end44, %cleanup
  %i.113 = phi i32 [ %inc92, %cleanup ], [ %cond, %if.end44 ]
  %j.012 = phi i32 [ %j.1, %cleanup ], [ -1, %if.end44 ]
  %k.011 = phi i32 [ %k.2, %cleanup ], [ -1, %if.end44 ]
  %idxprom61 = sext i32 %i.113 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom61, i32 0
  %24 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %arrayidx64 = getelementptr [63 x %struct.consw*], [63 x %struct.consw*]* @con_driver_map, i64 0, i64 %idxprom61
  store %struct.consw* %csw, %struct.consw** %arrayidx64, align 8
  %tobool73.not = icmp eq %struct.vc_data* %24, null
  br i1 %tobool73.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body60
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i64 0, i32 14
  %25 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %tobool74.not = icmp eq %struct.consw* %25, null
  br i1 %tobool74.not, label %cleanup, label %if.end76

if.end76:                                         ; preds = %lor.lhs.false
  %call77 = call i1 @con_is_visible(%struct.vc_data* noundef nonnull %24) #18
  br i1 %call77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end76
  call fastcc void @save_screen(%struct.vc_data* noundef nonnull %24) #18
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end76
  %k.1 = phi i32 [ %i.113, %if.then78 ], [ %k.011, %if.end76 ]
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i64 0, i32 37
  %bf.load = load i16, i16* %vc_can_do_color, align 8
  %26 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_deinit = getelementptr inbounds %struct.consw, %struct.consw* %26, i64 0, i32 3
  %27 = load void (%struct.vc_data*)*, void (%struct.vc_data*)** %con_deinit, align 8
  call void %27(%struct.vc_data* noundef nonnull %24) #17
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i64 0, i32 15
  %28 = load i16*, i16** %vc_screenbuf, align 8
  %29 = ptrtoint i16* %28 to i64
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i64 0, i32 9
  store i64 %29, i64* %vc_origin, align 8
  call fastcc void @visual_init(%struct.vc_data* noundef nonnull %24, i32 noundef %i.113, i32 noundef 0) #18
  call fastcc void @set_origin(%struct.vc_data* noundef nonnull %24) #18
  call fastcc void @update_attr(%struct.vc_data* noundef nonnull %24) #18
  %bf.load82 = load i16, i16* %vc_can_do_color, align 8
  %bf.lshr1 = xor i16 %bf.load82, %bf.load
  %30 = and i16 %bf.lshr1, 2048
  %cmp86.not = icmp eq i16 %30, 0
  br i1 %cmp86.not, label %cleanup, label %if.then88

if.then88:                                        ; preds = %if.end79
  call void @clear_buffer_attributes(%struct.vc_data* noundef nonnull %24) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then88, %for.body60, %lor.lhs.false
  %k.2 = phi i32 [ %k.011, %lor.lhs.false ], [ %k.011, %for.body60 ], [ %k.1, %if.then88 ], [ %k.1, %if.end79 ]
  %j.1 = phi i32 [ %j.012, %lor.lhs.false ], [ %j.012, %for.body60 ], [ %i.113, %if.then88 ], [ %i.113, %if.end79 ]
  %inc92 = add i32 %i.113, 1
  %cmp58.not = icmp sgt i32 %inc92, %cond56
  br i1 %cmp58.not, label %do.end, label %for.body60

do.end:                                           ; preds = %cleanup, %if.end44
  %k.0.lcssa = phi i32 [ -1, %if.end44 ], [ %k.2, %cleanup ]
  %j.0.lcssa = phi i32 [ -1, %if.end44 ], [ %j.1, %cleanup ]
  %call95 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0)) #21
  br i1 %tobool38.not, label %do.end100, label %if.end104

do.end100:                                        ; preds = %do.end
  %add = add i32 %cond, 1
  %add102 = add nsw i32 %cond56, 1
  %call103 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 noundef %add, i32 noundef %add102) #21
  br label %if.end104

if.end104:                                        ; preds = %do.end100, %do.end
  %cmp105 = icmp sgt i32 %j.0.lcssa, -1
  br i1 %cmp105, label %if.then107, label %do.end133

if.then107:                                       ; preds = %if.end104
  %idxprom1097 = zext i32 %j.0.lcssa to i64
  %d111 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom1097, i32 0
  %31 = load %struct.vc_data*, %struct.vc_data** %d111, align 8
  %vc_can_do_color116 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i64 0, i32 37
  %bf.load117 = load i16, i16* %vc_can_do_color116, align 8
  %32 = and i16 %bf.load117, 2048
  %tobool121.not = icmp eq i16 %32, 0
  %cond122 = select i1 %tobool121.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i64 0, i32 4
  %33 = load i32, i32* %vc_cols, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i64 0, i32 5
  %34 = load i32, i32* %vc_rows, align 8
  %call123 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* noundef %cond122, i8* noundef %18, i32 noundef %33, i32 noundef %34) #21
  %cmp124 = icmp sgt i32 %k.0.lcssa, -1
  br i1 %cmp124, label %if.then126, label %err

if.then126:                                       ; preds = %if.then107
  %idxprom1278 = zext i32 %k.0.lcssa to i64
  %d129 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom1278, i32 0
  %35 = load %struct.vc_data*, %struct.vc_data** %d129, align 8
  call void @redraw_screen(%struct.vc_data* noundef %35, i32 noundef 0) #18
  br label %err

do.end133:                                        ; preds = %if.end104
  %call135 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* noundef %18) #21
  br label %err

err:                                              ; preds = %for.inc.14, %do.end133, %if.then126, %if.then107
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @give_up_console(%struct.consw* noundef %csw) local_unnamed_addr #0 {
entry:
  call void @console_lock() #17
  %call = call i32 @do_unregister_con_driver(%struct.consw* noundef %csw) #18
  call void @console_unlock() #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @vtconsole_class_init() #8 section ".init.text" {
entry:
  %call = call %struct.class* @__class_create(%struct.module* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @vtconsole_class_init.__key) #17
  store %struct.class* %call, %struct.class** @vtconsole_class, align 8
  %0 = bitcast %struct.class* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #18
  br i1 %call1, label %do.end, label %for.body.preheader

do.end:                                           ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %0) #18
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0), i64 noundef %call3) #21
  store %struct.class* null, %struct.class** @vtconsole_class, align 8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end24
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end24 ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv
  %con5 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %arrayidx, i64 0, i32 0
  %1 = load %struct.consw*, %struct.consw** %con5, align 8
  %tobool.not = icmp eq %struct.consw* %1, null
  br i1 %tobool.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %dev = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 2
  %2 = load %struct.device*, %struct.device** %dev, align 8
  %tobool6.not = icmp eq %struct.device* %2, null
  br i1 %tobool6.not, label %if.then7, label %if.end24

if.then7:                                         ; preds = %land.lhs.true
  %3 = load %struct.class*, %struct.class** @vtconsole_class, align 8
  %node = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 3
  %4 = load i32, i32* %node, align 8
  %5 = bitcast %struct.con_driver* %arrayidx to i8*
  %call9 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, %struct.attribute_group**, i8*, ...) @device_create_with_groups(%struct.class* noundef %3, %struct.device* noundef null, i32 noundef %4, i8* noundef %5, %struct.attribute_group** noundef getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @con_dev_groups, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 noundef %4) #17
  store %struct.device* %call9, %struct.device** %dev, align 8
  %6 = bitcast %struct.device* %call9 to i8*
  %call12 = call fastcc i1 @IS_ERR(i8* noundef %6) #18
  br i1 %call12, label %do.end16, label %if.else

do.end16:                                         ; preds = %if.then7
  %desc = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 1
  %7 = load i8*, i8** %desc, align 8
  %call19 = call fastcc i64 @PTR_ERR(i8* noundef %6) #18
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i8* noundef %7, i64 noundef %call19) #21
  store %struct.device* null, %struct.device** %dev, align 8
  br label %if.end24

if.else:                                          ; preds = %if.then7
  call fastcc void @vtconsole_init_device(%struct.con_driver* noundef %arrayidx) #18
  br label %if.end24

if.end24:                                         ; preds = %do.end16, %if.else, %land.lhs.true, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_event_post(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_unblank_screen(i32 noundef %leaving_gfx) local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool4.not = icmp eq i32 %0, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %entry
  %call5 = call i32 @is_console_locked() #17
  %tobool6.not = icmp eq i32 %call5, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool7.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool6.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %if.then16, label %if.end17, !prof !7

if.then16:                                        ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 4417; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !46
  br label %if.end17

if.end17:                                         ; preds = %entry, %land.lhs.true, %if.then16
  store i1 false, i1* @ignore_poke, align 4
  %2 = load i32, i32* @console_blanked, align 4
  %tobool25.not = icmp eq i32 %2, 0
  br i1 %tobool25.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end17
  %3 = load i32, i32* @fg_console, align 4
  %call28 = call i32 @vc_cons_allocated(i32 noundef %3) #18
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end27
  %add = add i32 %3, 1
  %call35 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 noundef %add) #21
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %idxprom = sext i32 %3 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %4 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i64 0, i32 17
  %5 = load i8, i8* %vc_mode, align 4
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end40, label %cleanup

if.end40:                                         ; preds = %if.end36
  %6 = load i32, i32* @blankinterval, align 4
  %tobool41.not = icmp eq i32 %6, 0
  br i1 %tobool41.not, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end40
  %7 = load volatile i64, i64* @jiffies, align 64
  %mul = mul i32 %6, 250
  %conv43 = sext i32 %mul to i64
  %add44 = add i64 %7, %conv43
  %call45 = call i32 @mod_timer(%struct.timer_list* noundef nonnull @console_timer, i64 noundef %add44) #17
  store i32 1, i32* @blank_state, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end40
  store i32 0, i32* @console_blanked, align 4
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i64 0, i32 14
  %8 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_blank = getelementptr inbounds %struct.consw, %struct.consw* %8, i64 0, i32 10
  %9 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %con_blank, align 8
  %call47 = call i32 %9(%struct.vc_data* noundef %4, i32 noundef 0, i32 noundef %leaving_gfx) #17
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end46
  call void @redraw_screen(%struct.vc_data* noundef %4, i32 noundef 0) #18
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %10 = load i32 (i32)*, i32 (i32)** @console_blank_hook, align 8
  %tobool51.not = icmp eq i32 (i32)* %10, null
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end50
  %call53 = call i32 %10(i32 noundef 0) #17
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50
  call fastcc void @set_palette(%struct.vc_data* noundef %4) #18
  call fastcc void @set_cursor(%struct.vc_data* noundef %4) #18
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i64 0, i32 3
  %11 = load i16, i16* %vc_num, align 8
  %conv55 = zext i16 %11 to i32
  call void @vt_event_post(i32 noundef 4, i32 noundef %conv55, i32 noundef %conv55) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end17, %if.end54, %do.end33
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @poke_blanked_console() local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 4473; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !47
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %call21 = call i32 @del_timer(%struct.timer_list* noundef nonnull @console_timer) #17
  store i1 false, i1* @blank_timer_expired, align 4
  %.b = load i1, i1* @ignore_poke, align 4
  br i1 %.b, label %if.end39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %2 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %3 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %tobool23.not = icmp eq %struct.vc_data* %3, null
  br i1 %tobool23.not, label %if.end39, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i64 0, i32 17
  %4 = load i8, i8* %vc_mode, align 4
  %cmp = icmp eq i8 %4, 1
  br i1 %cmp, label %if.end39, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false24
  %5 = load i32, i32* @console_blanked, align 4
  %tobool32.not = icmp eq i32 %5, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @unblank_screen() #18
  br label %if.end39

if.else:                                          ; preds = %if.end31
  %6 = load i32, i32* @blankinterval, align 4
  %tobool34.not = icmp eq i32 %6, 0
  br i1 %tobool34.not, label %if.end39, label %if.then35

if.then35:                                        ; preds = %if.else
  %7 = load volatile i64, i64* @jiffies, align 64
  %mul = mul i32 %6, 250
  %conv36 = sext i32 %mul to i64
  %add = add i64 %7, %conv36
  %call37 = call i32 @mod_timer(%struct.timer_list* noundef nonnull @console_timer, i64 noundef %add) #17
  store i32 1, i32* @blank_state, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then35, %if.end, %lor.lhs.false, %lor.lhs.false24, %if.then33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(%struct.timer_list* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_set_cmap(i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %colormap = alloca [48 x i8], align 1
  %0 = getelementptr inbounds [48 x i8], [48 x i8]* %colormap, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !12
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %arg) #17
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @console_lock() #17
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv92 = phi i64 [ 0, %if.end ], [ %indvars.iv.next93, %for.body ]
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  %1 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr [48 x i8], [48 x i8]* %colormap, i64 0, i64 %indvars.iv
  %2 = load i8, i8* %arrayidx, align 1
  %arrayidx2 = getelementptr [16 x i8], [16 x i8]* @default_red, i64 0, i64 %indvars.iv92
  store i8 %2, i8* %arrayidx2, align 1
  %3 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx5 = getelementptr [48 x i8], [48 x i8]* %colormap, i64 0, i64 %1
  %4 = load i8, i8* %arrayidx5, align 1
  %arrayidx7 = getelementptr [16 x i8], [16 x i8]* @default_grn, i64 0, i64 %indvars.iv92
  store i8 %4, i8* %arrayidx7, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %arrayidx10 = getelementptr [48 x i8], [48 x i8]* %colormap, i64 0, i64 %3
  %5 = load i8, i8* %arrayidx10, align 1
  %arrayidx12 = getelementptr [16 x i8], [16 x i8]* @default_blu, i64 0, i64 %indvars.iv92
  store i8 %5, i8* %arrayidx12, align 1
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next93, 16
  br i1 %exitcond.not, label %for.body16, label %for.body

for.body16:                                       ; preds = %for.body, %for.inc55
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.inc55 ], [ 0, %for.body ]
  %6 = trunc i64 %indvars.iv107 to i32
  %call17 = call i32 @vc_cons_allocated(i32 noundef %6) #18
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc55, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.body16
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %indvars.iv107, i32 0
  br label %for.body23

for.body23:                                       ; preds = %for.cond21.preheader, %for.body23
  %indvars.iv101 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next102, %for.body23 ]
  %indvars.iv97 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next98, %for.body23 ]
  %arrayidx25 = getelementptr [16 x i8], [16 x i8]* @default_red, i64 0, i64 %indvars.iv101
  %7 = load i8, i8* %arrayidx25, align 1
  %8 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %9 = add nuw nsw i64 %indvars.iv97, 1
  %arrayidx30 = getelementptr %struct.vc_data, %struct.vc_data* %8, i64 0, i32 41, i64 %indvars.iv97
  store i8 %7, i8* %arrayidx30, align 1
  %arrayidx32 = getelementptr [16 x i8], [16 x i8]* @default_grn, i64 0, i64 %indvars.iv101
  %10 = load i8, i8* %arrayidx32, align 1
  %11 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %12 = add nuw nsw i64 %indvars.iv97, 2
  %arrayidx39 = getelementptr %struct.vc_data, %struct.vc_data* %11, i64 0, i32 41, i64 %9
  store i8 %10, i8* %arrayidx39, align 1
  %arrayidx41 = getelementptr [16 x i8], [16 x i8]* @default_blu, i64 0, i64 %indvars.iv101
  %13 = load i8, i8* %arrayidx41, align 1
  %14 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 3
  %arrayidx48 = getelementptr %struct.vc_data, %struct.vc_data* %14, i64 0, i32 41, i64 %12
  store i8 %13, i8* %arrayidx48, align 1
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next102, 16
  br i1 %exitcond106.not, label %for.end51, label %for.body23

for.end51:                                        ; preds = %for.body23
  %15 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  call fastcc void @set_palette(%struct.vc_data* noundef %15) #18
  br label %for.inc55

for.inc55:                                        ; preds = %for.body16, %for.end51
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 63
  br i1 %exitcond110.not, label %for.end57, label %for.body16

for.end57:                                        ; preds = %for.inc55
  call void @console_unlock() #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end57
  %retval.0 = phi i32 [ 0, %for.end57 ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_get_cmap(i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %colormap = alloca [48 x i8], align 1
  %0 = getelementptr inbounds [48 x i8], [48 x i8]* %colormap, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !12
  call void @console_lock() #17
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv28 = phi i64 [ 0, %entry ], [ %indvars.iv.next29, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr [16 x i8], [16 x i8]* @default_red, i64 0, i64 %indvars.iv28
  %1 = load i8, i8* %arrayidx, align 1
  %2 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx2 = getelementptr [48 x i8], [48 x i8]* %colormap, i64 0, i64 %indvars.iv
  store i8 %1, i8* %arrayidx2, align 1
  %arrayidx4 = getelementptr [16 x i8], [16 x i8]* @default_grn, i64 0, i64 %indvars.iv28
  %3 = load i8, i8* %arrayidx4, align 1
  %4 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx7 = getelementptr [48 x i8], [48 x i8]* %colormap, i64 0, i64 %2
  store i8 %3, i8* %arrayidx7, align 1
  %arrayidx9 = getelementptr [16 x i8], [16 x i8]* @default_blu, i64 0, i64 %indvars.iv28
  %5 = load i8, i8* %arrayidx9, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %arrayidx12 = getelementptr [48 x i8], [48 x i8]* %colormap, i64 0, i64 %4
  store i8 %5, i8* %arrayidx12, align 1
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next29, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call void @console_unlock() #17
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %arg, i8* noundef nonnull %0, i64 noundef 48) #17
  %tobool.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #19
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @reset_palette(%struct.vc_data* noundef %vc) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv31 = phi i64 [ 0, %entry ], [ %indvars.iv.next32, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr [16 x i8], [16 x i8]* @default_red, i64 0, i64 %indvars.iv31
  %0 = load i8, i8* %arrayidx, align 1
  %1 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx2 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %indvars.iv
  store i8 %0, i8* %arrayidx2, align 1
  %arrayidx4 = getelementptr [16 x i8], [16 x i8]* @default_grn, i64 0, i64 %indvars.iv31
  %2 = load i8, i8* %arrayidx4, align 1
  %3 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx8 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %1
  store i8 %2, i8* %arrayidx8, align 1
  %arrayidx10 = getelementptr [16 x i8], [16 x i8]* @default_blu, i64 0, i64 %indvars.iv31
  %4 = load i8, i8* %arrayidx10, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %arrayidx14 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %3
  store i8 %4, i8* %arrayidx14, align 1
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next32, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call fastcc void @set_palette(%struct.vc_data* noundef %vc) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @con_font_op(%struct.vc_data* noundef %vc, %struct.console_font_op* nocapture noundef %op) local_unnamed_addr #0 {
entry:
  %op1 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 0
  %0 = load i32, i32* %op1, align 8
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %return
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @con_font_set(%struct.vc_data* noundef %vc, %struct.console_font_op* noundef %op) #18
  br label %return

sw.bb2:                                           ; preds = %entry
  %call3 = call fastcc i32 @con_font_get(%struct.vc_data* noundef %vc, %struct.console_font_op* noundef %op) #18
  br label %return

sw.bb4:                                           ; preds = %entry
  %call5 = call fastcc i32 @con_font_default(%struct.vc_data* noundef %vc, %struct.console_font_op* noundef %op) #18
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.epilog, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -38, %sw.epilog ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @con_font_set(%struct.vc_data* noundef %vc, %struct.console_font_op* nocapture noundef readonly %op) unnamed_addr #0 {
entry:
  %font = alloca %struct.console_font, align 8
  %0 = bitcast %struct.console_font* %font to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 2
  %2 = bitcast i32* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %3 = load i8, i8* %vc_mode, align 4
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 5
  %4 = load i8*, i8** %data, align 8
  %tobool.not = icmp eq i8* %4, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %charcount = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 4
  %5 = load i32, i32* %charcount, align 8
  %cmp4 = icmp ugt i32 %5, 512
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %width = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 2
  %6 = load i32, i32* %width, align 8
  %7 = add i32 %6, -33
  %8 = icmp ult i32 %7, -32
  br i1 %8, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end7
  %height = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 3
  %9 = load i32, i32* %height, align 4
  %10 = add i32 %9, -33
  %11 = icmp ult i32 %10, -32
  br i1 %11, label %cleanup, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false13
  %add = shl nuw nsw i32 %6, 2
  %12 = add nuw nsw i32 %add, 28
  %mul = and i32 %12, -32
  %mul23 = mul nuw nsw i32 %mul, %5
  %conv2984 = zext i32 %mul23 to i64
  %call = call i8* @memdup_user(i8* noundef nonnull %4, i64 noundef %conv2984) #17
  %data30 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 3
  store i8* %call, i8** %data30, align 8
  %call32 = call fastcc i1 @IS_ERR(i8* noundef %call) #18
  br i1 %call32, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end27
  %call35 = call fastcc i64 @PTR_ERR(i8* noundef %call) #18
  %conv36 = trunc i64 %call35 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %13 = load i32, i32* %charcount, align 8
  %charcount39 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 2
  store i32 %13, i32* %charcount39, align 8
  %14 = load i32, i32* %width, align 8
  %width41 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 0
  store i32 %14, i32* %width41, align 8
  %15 = load i32, i32* %height, align 4
  %height43 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 1
  store i32 %15, i32* %height43, align 4
  call void @console_lock() #17
  %16 = load i8, i8* %vc_mode, align 4
  %cmp46.not = icmp eq i8 %16, 0
  br i1 %cmp46.not, label %if.else, label %if.end56

if.else:                                          ; preds = %if.end37
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %17 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_font_set = getelementptr inbounds %struct.consw, %struct.consw* %17, i64 0, i32 11
  %18 = load i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)** %con_font_set, align 8
  %tobool49.not = icmp eq i32 (%struct.vc_data*, %struct.console_font*, i32)* %18, null
  br i1 %tobool49.not, label %if.end56, label %if.then50

if.then50:                                        ; preds = %if.else
  %flags = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 1
  %19 = load i32, i32* %flags, align 4
  %call53 = call i32 %18(%struct.vc_data* noundef %vc, %struct.console_font* noundef nonnull %font, i32 noundef %19) #17
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.end37, %if.then50
  %rc.0 = phi i32 [ %call53, %if.then50 ], [ -22, %if.end37 ], [ -38, %if.else ]
  call void @console_unlock() #17
  %20 = load i8*, i8** %data30, align 8
  call void @kfree(i8* noundef %20) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false13, %if.end3, %if.end, %entry, %if.end56, %if.then33
  %retval.0 = phi i32 [ %conv36, %if.then33 ], [ %rc.0, %if.end56 ], [ -22, %entry ], [ -22, %if.end ], [ -22, %if.end3 ], [ -22, %lor.lhs.false13 ], [ -22, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @con_font_get(%struct.vc_data* noundef %vc, %struct.console_font_op* nocapture noundef %op) unnamed_addr #0 {
entry:
  %font = alloca %struct.console_font, align 8
  %0 = bitcast %struct.console_font* %font to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !12
  %data = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 5
  %1 = load i8*, i8** %data, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call.i4.i.i = call noalias align 4096 i8* @kmalloc_order(i64 noundef 65536, i32 noundef 3264, i32 noundef 4) #17
  %data1 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 3
  store i8* %call.i4.i.i, i8** %data1, align 8
  %tobool3.not = icmp eq i8* %call.i4.i.i, null
  br i1 %tobool3.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry, %if.then
  call void @console_lock() #17
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %2 = load i8, i8* %vc_mode, align 4
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %if.else9, label %if.end17.thread

if.else9:                                         ; preds = %if.end6
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %3 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_font_get = getelementptr inbounds %struct.consw, %struct.consw* %3, i64 0, i32 12
  %4 = load i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*)** %con_font_get, align 8
  %tobool10.not = icmp eq i32 (%struct.vc_data*, %struct.console_font*)* %4, null
  br i1 %tobool10.not, label %if.end17.thread, label %if.end17

if.end17.thread:                                  ; preds = %if.end6, %if.else9
  %rc.0.ph = phi i32 [ -38, %if.else9 ], [ -22, %if.end6 ]
  call void @console_unlock() #17
  br label %out

if.end17:                                         ; preds = %if.else9
  %call14 = call i32 %4(%struct.vc_data* noundef %vc, %struct.console_font* noundef nonnull %font) #17
  call void @console_unlock() #17
  %tobool18.not = icmp eq i32 %call14, 0
  br i1 %tobool18.not, label %if.end20, label %out

if.end20:                                         ; preds = %if.end17
  %width = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 0
  %5 = load i32, i32* %width, align 8
  %add = shl i32 %5, 2
  %6 = add i32 %add, 28
  %mul = and i32 %6, -32
  %charcount = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 2
  %7 = load i32, i32* %charcount, align 8
  %mul21 = mul i32 %mul, %7
  %8 = load i8*, i8** %data, align 8
  %tobool23.not = icmp eq i8* %8, null
  br i1 %tobool23.not, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %charcount25 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 4
  %9 = load i32, i32* %charcount25, align 8
  %cmp26 = icmp ugt i32 %7, %9
  %spec.select = select i1 %cmp26, i32 -28, i32 0
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.end20
  %rc.1 = phi i32 [ 0, %if.end20 ], [ %spec.select, %land.lhs.true ]
  %width31 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 2
  %10 = load i32, i32* %width31, align 8
  %cmp32 = icmp ugt i32 %5, %10
  br i1 %cmp32, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 1
  %11 = load i32, i32* %height, align 4
  %height34 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 3
  %12 = load i32, i32* %height34, align 4
  %cmp35 = icmp ugt i32 %11, %12
  br i1 %cmp35, label %out, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false
  %tobool39.not = icmp eq i32 %rc.1, 0
  br i1 %tobool39.not, label %if.end41, label %out

if.end41:                                         ; preds = %if.end38
  store i32 %11, i32* %height34, align 4
  store i32 %5, i32* %width31, align 8
  %charcount47 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 4
  store i32 %7, i32* %charcount47, align 8
  br i1 %tobool23.not, label %out, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.end41
  %cmp11.i.i = icmp slt i32 %mul21, 0
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !9

check_copy_size.exit.i:                           ; preds = %land.lhs.true50
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !48
  br label %out

if.then.i:                                        ; preds = %land.lhs.true50
  %conv5383 = zext i32 %mul21 to i64
  %data52 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 3
  %13 = load i8*, i8** %data52, align 8
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef nonnull %8, i8* noundef %13, i64 noundef %conv5383) #17
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %out

out:                                              ; preds = %if.then.i, %check_copy_size.exit.i, %lor.lhs.false, %if.end29, %if.end17.thread, %if.end41, %if.end38, %if.end17
  %rc.3 = phi i32 [ %call14, %if.end17 ], [ %rc.1, %if.end38 ], [ 0, %if.end41 ], [ %rc.0.ph, %if.end17.thread ], [ -28, %if.end29 ], [ -28, %lor.lhs.false ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  %data58 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 3
  %14 = load i8*, i8** %data58, align 8
  call void @kfree(i8* noundef %14) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %out
  %retval.0 = phi i32 [ %rc.3, %out ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @con_font_default(%struct.vc_data* noundef %vc, %struct.console_font_op* nocapture noundef %op) unnamed_addr #0 {
entry:
  %font = alloca %struct.console_font, align 8
  %name = alloca [32 x i8], align 1
  %0 = bitcast %struct.console_font* %font to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 2
  %2 = bitcast i32* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %width = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 0
  %width1 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 2
  %3 = load i32, i32* %width1, align 8
  store i32 %3, i32* %width, align 8
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 1
  %height2 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 3
  %4 = load i32, i32* %height2, align 4
  store i32 %4, i32* %height, align 4
  %data = getelementptr inbounds %struct.console_font, %struct.console_font* %font, i64 0, i32 3
  store i8* null, i8** %data, align 8
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %5, i8 0, i64 32, i1 false), !annotation !12
  %data3 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %op, i64 0, i32 5
  %6 = load i8*, i8** %data3, align 8
  %tobool.not = icmp eq i8* %6, null
  br i1 %tobool.not, label %if.end8, label %if.else

if.else:                                          ; preds = %entry
  %call = call i64 @strncpy_from_user(i8* noundef nonnull %5, i8* noundef nonnull %6, i64 noundef 31) #17
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.else7

if.else7:                                         ; preds = %if.else
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 31
  store i8 0, i8* %arrayidx, align 1
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.else7
  %s.0 = phi i8* [ %5, %if.else7 ], [ null, %entry ]
  call void @console_lock() #17
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 17
  %7 = load i8, i8* %vc_mode, align 4
  %cmp9.not = icmp eq i8 %7, 0
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @console_unlock() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %8 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_font_default = getelementptr inbounds %struct.consw, %struct.consw* %8, i64 0, i32 13
  %9 = load i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)** %con_font_default, align 8
  %tobool13.not = icmp eq i32 (%struct.vc_data*, %struct.console_font*, i8*)* %9, null
  br i1 %tobool13.not, label %if.end19.thread, label %if.end19

if.end19.thread:                                  ; preds = %if.end12
  call void @console_unlock() #17
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call17 = call i32 %9(%struct.vc_data* noundef %vc, %struct.console_font* noundef nonnull %font, i8* noundef %s.0) #17
  call void @console_unlock() #17
  %tobool20.not = icmp eq i32 %call17, 0
  br i1 %tobool20.not, label %if.then21, label %cleanup

if.then21:                                        ; preds = %if.end19
  %10 = load i32, i32* %width, align 8
  store i32 %10, i32* %width1, align 8
  %11 = load i32, i32* %height, align 4
  store i32 %11, i32* %height2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19.thread, %if.end19, %if.then21, %if.else, %if.then11
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -14, %if.else ], [ 0, %if.then21 ], [ %call17, %if.end19 ], [ -38, %if.end19.thread ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i16 @screen_glyph(%struct.vc_data* noundef %vc, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %call = call fastcc i16* @screenpos(%struct.vc_data* noundef %vc, i32 noundef %offset, i1 noundef true) #18
  %0 = load i16, i16* %call, align 2
  %and = and i16 %0, 255
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %1 = load i16, i16* %vc_hi_font_mask, align 8
  %and412 = and i16 %1, %0
  %tobool.not = icmp eq i16 %and412, 0
  %2 = or i16 %and, 256
  %spec.select = select i1 %tobool.not, i16 %and, i16 %2
  ret i16 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @screen_glyph_unicode(%struct.vc_data* noundef %vc, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool.not = icmp eq %struct.uni_screen* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %1 = load i32, i32* %vc_cols, align 4
  %.frozen = freeze i32 %1
  %div = udiv i32 %n, %.frozen
  %idxprom = zext i32 %div to i64
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %3 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %n, %3
  %idxprom2 = zext i32 %rem.decomposed to i64
  %arrayidx3 = getelementptr i32, i32* %2, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %n, 1
  %call = call i16 @screen_glyph(%struct.vc_data* noundef %vc, i32 noundef %mul) #18
  %conv = zext i16 %call to i32
  %call4 = call i16 @inverse_translate(%struct.vc_data* noundef %vc, i32 noundef %conv, i32 noundef 1) #17
  %conv5 = zext i16 %call4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %conv5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i16* @screen_pos(%struct.vc_data* noundef %vc, i32 noundef %w_offset, i1 noundef %viewed) local_unnamed_addr #0 {
entry:
  %mul = shl i32 %w_offset, 1
  %call = call fastcc i16* @screenpos(%struct.vc_data* noundef %vc, i32 noundef %mul, i1 noundef %viewed) #18
  ret i16* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @getconsxy(%struct.vc_data* nocapture noundef readonly %vc, i8* nocapture noundef writeonly align 1 dereferenceable(2) %xy) local_unnamed_addr #13 {
entry:
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %0 = load i32, i32* %x, align 8
  %cmp = icmp ult i32 %0, 255
  %cond = select i1 %cmp, i32 %0, i32 255
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %xy, align 1
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %y, align 4
  %cmp3 = icmp ult i32 %1, 255
  %cond8 = select i1 %cmp3, i32 %1, i32 255
  %conv9 = trunc i32 %cond8 to i8
  %arrayidx10 = getelementptr i8, i8* %xy, i64 1
  store i8 %conv9, i8* %arrayidx10, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @putconsxy(%struct.vc_data* noundef %vc, i8* nocapture noundef readonly align 1 dereferenceable(2) %xy) local_unnamed_addr #0 {
entry:
  call fastcc void @hide_cursor(%struct.vc_data* noundef %vc) #18
  %0 = load i8, i8* %xy, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr i8, i8* %xy, i64 1
  %1 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %conv, i32 noundef %conv2) #18
  call fastcc void @set_cursor(%struct.vc_data* noundef %vc) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @gotoxy(%struct.vc_data* nocapture noundef %vc, i32 noundef %new_x, i32 noundef %new_y) unnamed_addr #13 {
entry:
  %cmp = icmp slt i32 %new_x, 0
  br i1 %cmp, label %if.end9, label %if.else

if.else:                                          ; preds = %entry
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %cmp1.not = icmp ugt i32 %0, %new_x
  %sub = add i32 %0, -1
  %spec.select = select i1 %cmp1.not, i32 %new_x, i32 %sub
  br label %if.end9

if.end9:                                          ; preds = %if.else, %entry
  %sub.sink = phi i32 [ 0, %entry ], [ %spec.select, %if.else ]
  %x5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  store i32 %sub.sink, i32* %x5, align 8
  %vc_decom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_decom, align 8
  %1 = and i16 %bf.load, 8
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.end9
  %vc_top = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 12
  %2 = load i32, i32* %vc_top, align 8
  %vc_bottom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 13
  br label %if.end12

if.else11:                                        ; preds = %if.end9
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  %min_y.0 = phi i32 [ %2, %if.then10 ], [ 0, %if.else11 ]
  %max_y.0.in = phi i32* [ %vc_bottom, %if.then10 ], [ %vc_rows, %if.else11 ]
  %max_y.0 = load i32, i32* %max_y.0.in, align 4
  %cmp13 = icmp sgt i32 %min_y.0, %new_y
  %cmp17.not = icmp sgt i32 %max_y.0, %new_y
  %sub19 = add i32 %max_y.0, -1
  %spec.select60 = select i1 %cmp17.not, i32 %new_y, i32 %sub19
  %sub19.sink = select i1 %cmp13, i32 %min_y.0, i32 %spec.select60
  %y21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  store i32 %sub19.sink, i32* %y21, align 4
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %3 = load i64, i64* %vc_origin, align 8
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %4 = load i32, i32* %vc_size_row, align 4
  %mul = mul i32 %4, %sub19.sink
  %conv = zext i32 %mul to i64
  %add = add i64 %3, %conv
  %shl = shl i32 %sub.sink, 1
  %conv31 = zext i32 %shl to i64
  %add32 = add i64 %add, %conv31
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  store i64 %add32, i64* %vc_pos, align 8
  %bf.clear34 = and i16 %bf.load, -1025
  store i16 %bf.clear34, i16* %vc_decom, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i16 @vcs_scr_readw(%struct.vc_data* nocapture noundef readonly %vc, i16* noundef %org) local_unnamed_addr #4 {
entry:
  %0 = ptrtoint i16* %org to i64
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %1 = load i64, i64* %vc_pos, align 8
  %cmp = icmp eq i64 %1, %0
  %2 = load i32, i32* @softcursor_original, align 4
  %cmp1 = icmp ne i32 %2, -1
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = trunc i32 %2 to i16
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %org, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i16 [ %conv, %if.then ], [ %3, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vcs_scr_writew(%struct.vc_data* noundef %vc, i16 noundef %val, i16* noundef %org) local_unnamed_addr #0 {
entry:
  store i16 %val, i16* %org, align 2
  %0 = ptrtoint i16* %org to i64
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %1 = load i64, i64* %vc_pos, align 8
  %cmp = icmp eq i64 %1, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* @softcursor_original, align 4
  call fastcc void @add_softcursor(%struct.vc_data* noundef %vc) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_softcursor(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %0 = load i64, i64* %vc_pos, align 8
  %1 = inttoptr i64 %0 to i16*
  %2 = load i16, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 23
  %3 = load i32, i32* %vc_cursor_type, align 4
  %and = and i32 %3, 16
  %tobool.not = icmp ne i32 %and, 0
  %4 = load i32, i32* @softcursor_original, align 4
  %cmp.not = icmp eq i32 %4, -1
  %or.cond = select i1 %tobool.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end3, label %cleanup

if.end3:                                          ; preds = %entry
  store i32 %conv, i32* @softcursor_original, align 4
  %and4 = lshr i32 %3, 8
  %shr = and i32 %and4, 65280
  %or = or i32 %shr, %conv
  %and5 = and i32 %3, 65280
  %xor = xor i32 %or, %and5
  %and6 = and i32 %3, 32
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %5 = xor i32 %xor, %conv
  %6 = and i32 %5, 28672
  %cmp10 = icmp eq i32 %6, 0
  %xor13 = xor i32 %xor, 28672
  %spec.select = select i1 %cmp10, i32 %xor13, i32 %xor
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end3
  %i.0 = phi i32 [ %xor, %if.end3 ], [ %spec.select, %land.lhs.true ]
  %and15 = and i32 %3, 64
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end25, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end14
  %and19 = lshr i32 %i.0, 4
  %7 = xor i32 %and19, %i.0
  %8 = and i32 %7, 1792
  %cmp21 = icmp eq i32 %8, 0
  %xor24 = xor i32 %i.0, 1792
  %spec.select54 = select i1 %cmp21, i32 %xor24, i32 %i.0
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true17, %if.end14
  %i.1 = phi i32 [ %i.0, %if.end14 ], [ %spec.select54, %land.lhs.true17 ]
  %conv26 = trunc i32 %i.1 to i16
  store i16 %conv26, i16* %1, align 2
  %call = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call, label %if.then28, label %cleanup

if.then28:                                        ; preds = %if.end25
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %9 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_putc = getelementptr inbounds %struct.consw, %struct.consw* %9, i64 0, i32 5
  %10 = load void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)** %con_putc, align 8
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %11 = load i32, i32* %y, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %12 = load i32, i32* %x, align 8
  call void %10(%struct.vc_data* noundef %vc, i32 noundef %i.1, i32 noundef %11, i32 noundef %12) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then28, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vcs_scr_updated(%struct.vc_data* noundef %vc) local_unnamed_addr #0 {
entry:
  call fastcc void @notify_update(%struct.vc_data* noundef %vc) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @vc_scrolldelta_helper(%struct.vc_data* nocapture noundef %c, i32 noundef %lines, i32 noundef %rolled_over, i8* noundef %base, i32 noundef %size) local_unnamed_addr #13 {
entry:
  %0 = ptrtoint i8* %base to i64
  %vc_scr_end = getelementptr inbounds %struct.vc_data, %struct.vc_data* %c, i64 0, i32 10
  %1 = load i64, i64* %vc_scr_end, align 8
  %sub.ptr.sub = sub i64 %1, %0
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %c, i64 0, i32 11
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %c, i64 0, i32 9
  %2 = load i64, i64* %vc_origin, align 8
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %c, i64 0, i32 6
  %3 = load i32, i32* %vc_size_row, align 4
  %mul = shl i32 %3, 2
  %tobool.not = icmp eq i32 %lines, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %vc_visible_origin, align 8
  %conv = zext i32 %rolled_over to i64
  %conv9 = sext i32 %mul to i64
  %add = add i64 %sub.ptr.sub, %conv9
  %cmp = icmp slt i64 %add, %conv
  %conv12 = trunc i64 %sub.ptr.sub to i32
  %add14 = add i32 %3, %rolled_over
  %from.0 = select i1 %cmp, i32 %conv12, i32 0
  %wrap.0 = select i1 %cmp, i32 %add14, i32 %size
  %conv16 = sext i32 %from.0 to i64
  %5 = add i64 %conv16, %0
  %conv17 = sext i32 %wrap.0 to i64
  %sub = sub i64 %conv17, %5
  %add18 = add i64 %sub, %4
  %rem = srem i64 %add18, %conv17
  %mul21 = mul i32 %3, %lines
  %6 = trunc i64 %rem to i32
  %conv24 = add i32 %mul21, %6
  %sub26 = add i64 %2, %conv17
  %add28 = sub i64 %sub26, %5
  %rem30 = srem i64 %add28, %conv17
  %conv31 = trunc i64 %rem30 to i32
  %mul32 = shl i32 %3, 3
  %cmp33 = icmp sgt i32 %mul32, %conv31
  %spec.store.select = select i1 %cmp33, i32 0, i32 %mul
  %cmp37 = icmp slt i32 %conv24, %spec.store.select
  %spec.store.select59 = select i1 %cmp37, i32 0, i32 %conv24
  %sub41 = sub i32 %conv31, %spec.store.select
  %cmp42 = icmp sgt i32 %spec.store.select59, %sub41
  %from_off.0 = select i1 %cmp42, i32 %conv31, i32 %spec.store.select59
  %add46 = add i32 %from_off.0, %from.0
  %rem47 = srem i32 %add46, %wrap.0
  %conv48 = sext i32 %rem47 to i64
  %add49 = add i64 %conv48, %0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %storemerge = phi i64 [ %add49, %if.end ], [ %2, %entry ]
  store i64 %storemerge, i64* %vc_visible_origin, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @console_callback(%struct.work_struct* nocapture noundef readnone %ignored) #0 {
entry:
  call void @console_lock() #17
  %0 = load i32, i32* @want_console, align 4
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @fg_console, align 4
  %cmp1.not = icmp eq i32 %0, %1
  br i1 %cmp1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call = call i32 @vc_cons_allocated(i32 noundef %0) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %idxprom = sext i32 %1 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %2 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  call fastcc void @hide_cursor(%struct.vc_data* noundef %2) #18
  %3 = load i32, i32* @want_console, align 4
  %idxprom3 = sext i32 %3 to i64
  %d5 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom3, i32 0
  %4 = load %struct.vc_data*, %struct.vc_data** %d5, align 8
  call void @change_console(%struct.vc_data* noundef %4) #17
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true, %if.then
  store i32 -1, i32* @want_console, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %5 = load i32, i32* @do_poke_blanked_console, align 4
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  store i32 0, i32* @do_poke_blanked_console, align 4
  call void @poke_blanked_console() #18
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %6 = load i32, i32* @scrollback_delta, align 4
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %if.end23, label %if.then11

if.then11:                                        ; preds = %if.end9
  %7 = load i32, i32* @fg_console, align 4
  %idxprom12 = sext i32 %7 to i64
  %d14 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom12, i32 0
  %8 = load %struct.vc_data*, %struct.vc_data** %d14, align 8
  call void @clear_selection() #17
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i64 0, i32 17
  %9 = load i8, i8* %vc_mode, align 4
  %cmp15 = icmp eq i8 %9, 0
  br i1 %cmp15, label %land.lhs.true17, label %if.end22

land.lhs.true17:                                  ; preds = %if.then11
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i64 0, i32 14
  %10 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_scrolldelta = getelementptr inbounds %struct.consw, %struct.consw* %10, i64 0, i32 16
  %11 = load void (%struct.vc_data*, i32)*, void (%struct.vc_data*, i32)** %con_scrolldelta, align 8
  %tobool18.not = icmp eq void (%struct.vc_data*, i32)* %11, null
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %land.lhs.true17
  %12 = load i32, i32* @scrollback_delta, align 4
  call void %11(%struct.vc_data* noundef %8, i32 noundef %12) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true17, %if.then11
  store i32 0, i32* @scrollback_delta, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end9
  %.b = load i1, i1* @blank_timer_expired, align 4
  br i1 %.b, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @do_blank_screen(i32 noundef 0) #18
  store i1 false, i1* @blank_timer_expired, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  %13 = load i32, i32* @fg_console, align 4
  %idxprom27 = sext i32 %13 to i64
  %d29 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom27, i32 0
  %14 = load %struct.vc_data*, %struct.vc_data** %d29, align 8
  call fastcc void @notify_update(%struct.vc_data* noundef %14) #18
  call void @console_unlock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @change_console(%struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_selection() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @vmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @vc_is_sel(%struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hide_softcursor(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @softcursor_original, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i32 %0 to i16
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %1 = load i64, i64* %vc_pos, align 8
  %2 = inttoptr i64 %1 to i16*
  store i16 %conv, i16* %2, align 2
  %call = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %3 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_putc = getelementptr inbounds %struct.consw, %struct.consw* %3, i64 0, i32 5
  %4 = load void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)** %con_putc, align 8
  %5 = load i32, i32* @softcursor_original, align 4
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %6 = load i32, i32* %y, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %7 = load i32, i32* %x, align 8
  call void %4(%struct.vc_data* noundef %vc, i32 noundef %5, i32 noundef %6, i32 noundef %7) #17
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -1, i32* @softcursor_original, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @con_is_fg(%struct.vc_data* nocapture noundef readonly %vc) unnamed_addr #4 {
entry:
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %0 = load i16, i16* %vc_num, align 8
  %conv = zext i16 %0 to i32
  %1 = load i32, i32* @fg_console, align 4
  %cmp = icmp eq i32 %1, %conv
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @build_attr(%struct.vc_data* noundef %vc, i8 noundef %_color, i32 noundef %_intensity, i1 noundef %_blink, i1 noundef %_underline, i1 noundef %_reverse, i1 noundef %_italic) unnamed_addr #0 {
entry:
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %0 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_build_attr = getelementptr inbounds %struct.consw, %struct.consw* %0, i64 0, i32 19
  %1 = load i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)** %con_build_attr, align 8
  %tobool.not = icmp eq i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8 %1(%struct.vc_data* noundef %vc, i8 noundef %_color, i32 noundef %_intensity, i1 noundef %_blink, i1 noundef %_underline, i1 noundef %_reverse, i1 noundef %_italic) #17
  br label %return

if.end:                                           ; preds = %entry
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_can_do_color, align 8
  %2 = and i16 %bf.load, 2048
  %tobool10.not = icmp eq i16 %2, 0
  br i1 %tobool10.not, label %if.then11, label %if.end26

if.then11:                                        ; preds = %if.end
  %shl = select i1 %_italic, i32 2, i32 0
  %shl15 = select i1 %_underline, i32 4, i32 0
  %shl19 = select i1 %_reverse, i32 8, i32 0
  %shl23 = select i1 %_blink, i32 128, i32 0
  %or = or i32 %shl23, %_intensity
  %or16 = or i32 %or, %shl15
  %or20 = or i32 %or16, %shl19
  %or24 = or i32 %or20, %shl
  %conv25 = trunc i32 %or24 to i8
  br label %return

if.end26:                                         ; preds = %if.end
  br i1 %_italic, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  %3 = and i8 %_color, -16
  %vc_itcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 21
  %4 = load i8, i8* %vc_itcolor, align 8
  %or31113 = or i8 %4, %3
  br label %if.end50

if.else:                                          ; preds = %if.end26
  br i1 %_underline, label %if.then34, label %if.else40

if.then34:                                        ; preds = %if.else
  %5 = and i8 %_color, -16
  %vc_ulcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 20
  %6 = load i8, i8* %vc_ulcolor, align 1
  %or38112 = or i8 %6, %5
  br label %if.end50

if.else40:                                        ; preds = %if.else
  %cmp = icmp eq i32 %_intensity, 0
  br i1 %cmp, label %if.then42, label %if.end50

if.then42:                                        ; preds = %if.else40
  %7 = and i8 %_color, -16
  %vc_halfcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 22
  %8 = load i8, i8* %vc_halfcolor, align 1
  %or46111 = or i8 %8, %7
  br label %if.end50

if.end50:                                         ; preds = %if.then34, %if.then42, %if.else40, %if.then28
  %a.0 = phi i8 [ %or31113, %if.then28 ], [ %or38112, %if.then34 ], [ %or46111, %if.then42 ], [ %_color, %if.else40 ]
  br i1 %_reverse, label %if.then52, label %if.end62

if.then52:                                        ; preds = %if.end50
  %and54 = and i8 %a.0, -120
  %or58 = call i8 @llvm.fshl.i8(i8 %a.0, i8 %a.0, i8 4)
  %and59 = and i8 %or58, 119
  %or60 = or i8 %and59, %and54
  br label %if.end62

if.end62:                                         ; preds = %if.then52, %if.end50
  %a.1 = phi i8 [ %or60, %if.then52 ], [ %a.0, %if.end50 ]
  %9 = xor i8 %a.1, -128
  %spec.select = select i1 %_blink, i8 %9, i8 %a.1
  %cmp68 = icmp eq i32 %_intensity, 2
  %10 = xor i8 %spec.select, 8
  %a.3 = select i1 %cmp68, i8 %10, i8 %spec.select
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %11 = load i16, i16* %vc_hi_font_mask, align 8
  %cmp76 = icmp eq i16 %11, 256
  %shl80 = zext i1 %cmp76 to i8
  %a.4 = shl i8 %a.3, %shl80
  br label %return

return:                                           ; preds = %if.then11, %if.end62, %if.then
  %retval.1 = phi i8 [ %call, %if.then ], [ %a.4, %if.end62 ], [ %conv25, %if.then11 ]
  ret i8 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmalloc_order(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @vc_port_destruct(%struct.tty_port* noundef %port) #0 {
entry:
  %0 = bitcast %struct.tty_port* %port to i8*
  call void @kfree(i8* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @resize_screen(%struct.vc_data* noundef %vc, i32 noundef %width, i32 noundef %height, i32 noundef %user) unnamed_addr #0 {
entry:
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %0 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_resize = getelementptr inbounds %struct.consw, %struct.consw* %0, i64 0, i32 14
  %1 = load i32 (%struct.vc_data*, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32)** %con_resize, align 8
  %tobool.not = icmp eq i32 (%struct.vc_data*, i32, i32, i32)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.vc_data* noundef %vc, i32 noundef %width, i32 noundef %height, i32 noundef %user) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_uniscr_free(%struct.uni_screen* noundef %uniscr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.uni_screen* %uniscr to i8*
  call void @vfree(i8* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_uniscr_copy_area(%struct.uni_screen* noundef readonly %dst, i32 noundef %dst_cols, i32 noundef %dst_rows, %struct.uni_screen* nocapture noundef readonly %src, i32 noundef %src_cols, i32 noundef %src_top_row, i32 noundef %src_bot_row) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.uni_screen* %dst, null
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp41 = icmp ugt i32 %src_bot_row, %src_top_row
  br i1 %cmp41, label %while.body.lr.ph, label %while.cond11.preheader

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %conv = zext i32 %src_cols to i64
  %mul = shl nuw nsw i64 %conv, 2
  %sub = sub i32 %dst_cols, %src_cols
  %tobool4.not = icmp eq i32 %sub, 0
  %conv7 = zext i32 %sub to i64
  %0 = zext i32 %src_top_row to i64
  %1 = sub i32 %src_bot_row, %src_top_row
  br label %while.body

while.cond11.preheader:                           ; preds = %if.end9, %while.cond.preheader
  %dst_row.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %1, %if.end9 ]
  %cmp1244 = icmp ult i32 %dst_row.0.lcssa, %dst_rows
  br i1 %cmp1244, label %while.body14.lr.ph, label %cleanup

while.body14.lr.ph:                               ; preds = %while.cond11.preheader
  %conv19 = zext i32 %dst_cols to i64
  %2 = zext i32 %dst_row.0.lcssa to i64
  %3 = zext i32 %dst_rows to i64
  br label %while.body14

while.body:                                       ; preds = %while.body.lr.ph, %if.end9
  %indvars.iv46 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next47, %if.end9 ]
  %indvars.iv = phi i64 [ %0, %while.body.lr.ph ], [ %indvars.iv.next, %if.end9 ]
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %src, i64 0, i32 0, i64 %indvars.iv
  %4 = bitcast i32** %arrayidx to i8**
  %5 = load i8*, i8** %4, align 8
  %arrayidx3 = getelementptr %struct.uni_screen, %struct.uni_screen* %dst, i64 0, i32 0, i64 %indvars.iv46
  %6 = load i32*, i32** %arrayidx3, align 8
  %7 = bitcast i32* %6 to i8*
  %call = call i8* @memcpy(i8* noundef %7, i8* noundef %5, i64 noundef %mul) #17
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %while.body
  %add.ptr = getelementptr i32, i32* %6, i64 %conv
  %call8 = call i8* @memset32(i32* noundef %add.ptr, i32 noundef 32, i64 noundef %conv7) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %while.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next47 to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %while.cond11.preheader, label %while.body

while.body14:                                     ; preds = %while.body14.lr.ph, %while.body14
  %indvars.iv51 = phi i64 [ %2, %while.body14.lr.ph ], [ %indvars.iv.next52, %while.body14 ]
  %arrayidx18 = getelementptr %struct.uni_screen, %struct.uni_screen* %dst, i64 0, i32 0, i64 %indvars.iv51
  %8 = load i32*, i32** %arrayidx18, align 8
  %call20 = call i8* @memset32(i32* noundef %8, i32 noundef 32, i64 noundef %conv19) #17
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %cmp12 = icmp ult i64 %indvars.iv.next52, %3
  br i1 %cmp12, label %while.body14, label %cleanup

cleanup:                                          ; preds = %while.body14, %while.cond11.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @scr_memcpyw(i16* noundef %d, i16* noundef %s, i32 noundef %count) unnamed_addr #0 {
entry:
  %0 = bitcast i16* %d to i8*
  %1 = bitcast i16* %s to i8*
  %conv = zext i32 %count to i64
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %conv) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @scr_memsetw(i16* noundef %s, i16 noundef %c, i32 noundef %count) unnamed_addr #0 {
entry:
  %div = lshr i32 %count, 1
  %conv = zext i32 %div to i64
  %call = call i8* @memset16(i16* noundef %s, i16 noundef %c, i64 noundef %conv) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @save_cur(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %saved_state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 2
  %0 = bitcast %struct.vc_state* %saved_state to i8*
  %state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1
  %1 = bitcast %struct.vc_state* %state to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 20) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_do_resize(%struct.tty_struct* noundef, %struct.winsize* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset32(i32* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset16(i16* noundef, i16 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_insert_flip_string(%struct.tty_port* noundef %port, i8* noundef %chars, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* noundef %port, i8* noundef %chars, i8 noundef 0, i64 noundef %size) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_schedule_flip(%struct.tty_port* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* noundef, i8* noundef, i8 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32(i32 noundef %x) unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* nonnull elementtype(i32) @vt_kmsg_redirect.kmsg_con, i32 %x, i32* nonnull elementtype(i32) @vt_kmsg_redirect.kmsg_con) #19, !srcloc !49
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_vc(%struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @reset_terminal(%struct.vc_data* noundef %vc, i32 noundef %do_clear) unnamed_addr #0 {
entry:
  %vc_top = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 12
  store i32 0, i32* %vc_top, align 8
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %0 = load i32, i32* %vc_rows, align 8
  %vc_bottom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 13
  store i32 %0, i32* %vc_bottom, align 4
  %vc_state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 30
  store i32 0, i32* %vc_state, align 4
  %vc_priv = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_priv, align 8
  %bf.clear = and i16 %bf.load, -897
  store i16 %bf.clear, i16* %vc_priv, align 8
  %call = call i16* @set_translate(i32 noundef 0, %struct.vc_data* noundef %vc) #17
  %vc_translate = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 42
  store i16* %call, i16** %vc_translate, align 8
  %arrayidx = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 3, i64 0
  store i8 0, i8* %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 3, i64 1
  store i8 1, i8* %arrayidx3, align 1
  %charset = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 4
  %bf.load5 = load i8, i8* %charset, align 1
  %bf.clear6 = and i8 %bf.load5, -2
  store i8 %bf.clear6, i8* %charset, align 1
  %bf.load8 = load i16, i16* %vc_priv, align 8
  %1 = load i32, i32* @default_utf8, align 4
  %2 = trunc i32 %1 to i16
  %bf.value = shl i16 %2, 14
  %bf.shl = and i16 %bf.value, 16384
  %bf.clear15 = and i16 %bf.load8, -29824
  %bf.set16 = or i16 %bf.shl, %bf.clear15
  %vc_utf_count = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 38
  store i8 0, i8* %vc_utf_count, align 2
  %3 = load i32, i32* @global_cursor_default, align 4
  %4 = trunc i32 %3 to i16
  %bf.value33 = shl i16 %4, 5
  %bf.shl34 = and i16 %bf.value33, 32
  %bf.set31 = or i16 %bf.set16, %bf.shl34
  %bf.set36 = or i16 %bf.set31, 16
  store i16 %bf.set36, i16* %vc_priv, align 8
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %5 = load i16, i16* %vc_num, align 8
  %conv41 = zext i16 %5 to i32
  call void @vt_reset_keyboard(i32 noundef %conv41) #17
  %6 = load i32, i32* @cur_default, align 4
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 23
  store i32 %6, i32* %vc_cursor_type, align 4
  %vc_s_complement_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 25
  %7 = load i16, i16* %vc_s_complement_mask, align 2
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 24
  store i16 %7, i16* %vc_complement_mask, align 8
  call fastcc void @default_attr(%struct.vc_data* noundef %vc) #18
  call fastcc void @update_attr(%struct.vc_data* noundef %vc) #18
  %arraydecay = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 40, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 8, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 16, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 24, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 32, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 40, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 48, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 56, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 64, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 72, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 80, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 88, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 96, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 104, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 112, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 120, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 128, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 136, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 144, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 152, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 160, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 168, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 176, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 184, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 192, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 200, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 208, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 216, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 224, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 232, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 240, i64* noundef %arraydecay) #18
  call fastcc void @set_bit(i64 noundef 248, i64* noundef %arraydecay) #18
  %vc_bell_pitch = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 44
  store i32 750, i32* %vc_bell_pitch, align 4
  %vc_bell_duration = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 45
  store i32 31, i32* %vc_bell_duration, align 8
  %vc_cur_blink_ms = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 46
  store i16 200, i16* %vc_cur_blink_ms, align 4
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef 0) #18
  call fastcc void @save_cur(%struct.vc_data* noundef %vc) #18
  %tobool.not = icmp eq i32 %do_clear, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @csi_J(%struct.vc_data* noundef %vc, i32 noundef 2) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i16* @set_translate(i32 noundef, %struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_reset_keyboard(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @default_attr(%struct.vc_data* nocapture noundef %vc) unnamed_addr #13 {
entry:
  %intensity = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 5
  store i32 1, i32* %intensity, align 4
  %italic = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 6
  store i8 0, i8* %italic, align 8
  %underline = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 7
  store i8 0, i8* %underline, align 1
  %reverse = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 9
  store i8 0, i8* %reverse, align 1
  %blink = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 8
  store i8 0, i8* %blink, align 2
  %vc_def_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 19
  %0 = load i8, i8* %vc_def_color, align 2
  %color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 2
  store i8 %0, i8* %color, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #17
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
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @csi_J(%struct.vc_data* noundef %vc, i32 noundef %vpar) unnamed_addr #0 {
entry:
  switch i32 %vpar, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 3, label %sw.bb22
    i32 2, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %0 = load i32, i32* %x, align 8
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %1 = load i32, i32* %vc_cols, align 4
  %sub = sub i32 %1, %0
  call fastcc void @vc_uniscr_clear_line(%struct.vc_data* noundef %vc, i32 noundef %0, i32 noundef %sub) #18
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %2 = load i32, i32* %y, align 4
  %add = add i32 %2, 1
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %3 = load i32, i32* %vc_rows, align 8
  %4 = xor i32 %2, -1
  %sub7 = add i32 %3, %4
  call fastcc void @vc_uniscr_clear_lines(%struct.vc_data* noundef %vc, i32 noundef %add, i32 noundef %sub7) #18
  %vc_scr_end = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 10
  %5 = load i64, i64* %vc_scr_end, align 8
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %6 = load i64, i64* %vc_pos, align 8
  %sub8 = sub i64 %5, %6
  %shr = lshr i64 %sub8, 1
  %conv = trunc i64 %shr to i32
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %x12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %7 = load i32, i32* %x12, align 8
  %add13 = add i32 %7, 1
  call fastcc void @vc_uniscr_clear_line(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef %add13) #18
  %y15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %8 = load i32, i32* %y15, align 4
  call fastcc void @vc_uniscr_clear_lines(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef %8) #18
  %vc_pos16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %9 = load i64, i64* %vc_pos16, align 8
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %10 = load i64, i64* %vc_origin, align 8
  %sub17 = sub i64 %9, %10
  %shr18 = lshr i64 %sub17, 1
  %11 = trunc i64 %shr18 to i32
  %conv20 = add i32 %11, 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call fastcc void @flush_scrollback(%struct.vc_data* noundef %vc) #18
  br label %sw.bb23

sw.bb23:                                          ; preds = %entry, %sw.bb22
  %vc_rows24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %12 = load i32, i32* %vc_rows24, align 8
  call fastcc void @vc_uniscr_clear_lines(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef %12) #18
  %vc_cols25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %13 = load i32, i32* %vc_cols25, align 4
  %14 = load i32, i32* %vc_rows24, align 8
  %mul = mul i32 %14, %13
  %vc_origin27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %15 = load i64, i64* %vc_origin27, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb10, %sw.bb
  %count.0 = phi i32 [ %mul, %sw.bb23 ], [ %conv20, %sw.bb10 ], [ %conv, %sw.bb ]
  %start.0.in = phi i64 [ %15, %sw.bb23 ], [ %10, %sw.bb10 ], [ %6, %sw.bb ]
  %start.0 = inttoptr i64 %start.0.in to i16*
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %16 = load i16, i16* %vc_video_erase_char, align 8
  %mul28 = shl i32 %count.0, 1
  call fastcc void @scr_memsetw(i16* noundef %start.0, i16 noundef %16, i32 noundef %mul28) #18
  %call = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call fastcc void @do_update_region(%struct.vc_data* noundef %vc, i64 noundef %start.0.in, i32 noundef %count.0) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_uniscr_clear_line(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %x, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool.not = icmp eq %struct.uni_screen* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %y, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %idxprom1 = zext i32 %x to i64
  %arrayidx2 = getelementptr i32, i32* %2, i64 %idxprom1
  %conv = zext i32 %nr to i64
  %call = call i8* @memset32(i32* noundef %arrayidx2, i32 noundef 32, i64 noundef %conv) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_uniscr_clear_lines(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %y, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool.not = icmp eq %struct.uni_screen* %0, null
  %tobool1.not6 = icmp eq i32 %nr, 0
  %or.cond = or i1 %tobool.not, %tobool1.not6
  br i1 %or.cond, label %if.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %1 = load i32, i32* %vc_cols, align 4
  %conv = zext i32 %1 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %nr.addr.08 = phi i32 [ %nr, %while.body.lr.ph ], [ %dec, %while.body ]
  %y.addr.07 = phi i32 [ %y, %while.body.lr.ph ], [ %inc, %while.body ]
  %dec = add i32 %nr.addr.08, -1
  %inc = add i32 %y.addr.07, 1
  %idxprom = zext i32 %y.addr.07 to i64
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %call = call i8* @memset32(i32* noundef %2, i32 noundef 32, i64 noundef %conv) #17
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.end, label %while.body

if.end:                                           ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_scrollback(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @ignore_console_lock_warning, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @is_console_locked() #17
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 949; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  call fastcc void @set_origin(%struct.vc_data* noundef %vc) #18
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %2 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_flush_scrollback = getelementptr inbounds %struct.consw, %struct.consw* %2, i64 0, i32 23
  %3 = load void (%struct.vc_data*)*, void (%struct.vc_data*)** %con_flush_scrollback, align 8
  %tobool19.not = icmp eq void (%struct.vc_data*)* %3, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end
  call void %3(%struct.vc_data* noundef %vc) #17
  br label %if.end29

if.else:                                          ; preds = %if.end
  %call23 = call i1 @con_is_visible(%struct.vc_data* noundef %vc) #18
  br i1 %call23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.else
  call fastcc void @hide_cursor(%struct.vc_data* noundef %vc) #18
  %4 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_switch = getelementptr inbounds %struct.consw, %struct.consw* %4, i64 0, i32 9
  %con_switch26 = bitcast {}** %con_switch to i32 (%struct.vc_data*)**
  %5 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %con_switch26, align 8
  %call27 = call i32 %5(%struct.vc_data* noundef %vc) #17
  call fastcc void @set_cursor(%struct.vc_data* noundef %vc) #18
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24, %if.then20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(%struct.console* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @vt_console_print(%struct.console* nocapture noundef readnone %co, i8* nocapture noundef readonly %b, i32 noundef %count) #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %.b = load i1, i1* @printable, align 4
  br i1 %.b, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call fastcc i32 @__raw_spin_trylock() #17
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @vt_kmsg_redirect(i32 noundef -1) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %sub = add i32 %call4, -1
  %call6 = call i32 @vc_cons_allocated(i32 noundef %sub) #18
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %idxprom10 = sext i32 %sub to i64
  %d12 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom10, i32 0
  %2 = load %struct.vc_data*, %struct.vc_data** %d12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %land.lhs.true, %if.end3
  %vc.0 = phi %struct.vc_data* [ %2, %if.then8 ], [ %1, %land.lhs.true ], [ %1, %if.end3 ]
  %3 = load i32, i32* @fg_console, align 4
  %call14 = call i32 @vc_cons_allocated(i32 noundef %3) #18
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %quit, label %if.end17

if.end17:                                         ; preds = %if.end13
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 17
  %4 = load i8, i8* %vc_mode, align 4
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.end20, label %quit

if.end20:                                         ; preds = %if.end17
  %call21 = call fastcc i1 @con_is_fg(%struct.vc_data* noundef %vc.0) #18
  br i1 %call21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  call fastcc void @hide_cursor(%struct.vc_data* noundef %vc.0) #18
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 26
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 1, i32 0
  %tobool25.not172 = icmp eq i32 %count, 0
  br i1 %tobool25.not172, label %if.end110, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end23
  %5 = load i32, i32* %x, align 8
  %conv24 = trunc i32 %5 to i16
  %6 = load i64, i64* %vc_pos, align 8
  %7 = inttoptr i64 %6 to i16*
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 37
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 14
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 1, i32 1
  %vc_attr = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 18
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %dec179.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec179, %while.cond.backedge ]
  %cnt.0178 = phi i16 [ 0, %while.body.lr.ph ], [ %cnt.0.be, %while.cond.backedge ]
  %start_x.0176 = phi i16 [ %conv24, %while.body.lr.ph ], [ %start_x.0.be, %while.cond.backedge ]
  %start.0174 = phi i16* [ %7, %while.body.lr.ph ], [ %start.0.be, %while.cond.backedge ]
  %b.addr.0173 = phi i8* [ %b, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge ]
  %dec179 = add i32 %dec179.in, -1
  %incdec.ptr = getelementptr i8, i8* %b.addr.0173, i64 1
  %8 = load i8, i8* %b.addr.0173, align 1
  %conv26 = zext i8 %8 to i32
  switch i8 %8, label %lor.lhs.false36 [
    i8 13, label %if.then38
    i8 10, label %if.then38
    i8 8, label %if.then38
  ]

lor.lhs.false36:                                  ; preds = %while.body
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %9 = and i16 %bf.load, 1024
  %tobool37.not = icmp eq i16 %9, 0
  br i1 %tobool37.not, label %if.end76, label %if.then38

if.then38:                                        ; preds = %while.body, %while.body, %while.body, %lor.lhs.false36
  %conv39 = zext i16 %cnt.0178 to i32
  %tobool40.not = icmp eq i16 %cnt.0178, 0
  br i1 %tobool40.not, label %if.end48, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.then38
  %call42 = call i1 @con_is_visible(%struct.vc_data* noundef %vc.0) #18
  br i1 %call42, label %if.then44, label %if.end48

if.then44:                                        ; preds = %land.lhs.true41
  %10 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_putcs = getelementptr inbounds %struct.consw, %struct.consw* %10, i64 0, i32 6
  %11 = load void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)** %con_putcs, align 8
  %12 = load i32, i32* %y, align 4
  %conv47 = zext i16 %start_x.0176 to i32
  call void %11(%struct.vc_data* noundef %vc.0, i16* noundef %start.0174, i32 noundef %conv39, i32 noundef %12, i32 noundef %conv47) #17
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %land.lhs.true41, %if.then38
  switch i8 %8, label %if.end62 [
    i8 8, label %if.then52
    i8 13, label %if.end62.thread
  ]

if.end62.thread:                                  ; preds = %if.end48
  call fastcc void @cr(%struct.vc_data* noundef %vc.0) #18
  %13 = load i64, i64* %vc_pos, align 8
  %14 = inttoptr i64 %13 to i16*
  %15 = load i32, i32* %x, align 8
  %conv66182 = trunc i32 %15 to i16
  br label %while.cond.backedge

if.then52:                                        ; preds = %if.end48
  call fastcc void @bs(%struct.vc_data* noundef %vc.0) #18
  %16 = load i64, i64* %vc_pos, align 8
  %17 = inttoptr i64 %16 to i16*
  %18 = load i32, i32* %x, align 8
  %conv56 = trunc i32 %18 to i16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end62, %if.end62.thread, %if.then88, %if.else, %if.then52
  %start.0.be = phi i16* [ %17, %if.then52 ], [ %20, %if.end62 ], [ %start.1, %if.else ], [ %start.1, %if.then88 ], [ %14, %if.end62.thread ]
  %start_x.0.be = phi i16 [ %conv56, %if.then52 ], [ %conv66, %if.end62 ], [ %start_x.1, %if.else ], [ %start_x.1, %if.then88 ], [ %conv66182, %if.end62.thread ]
  %cnt.0.be = phi i16 [ 0, %if.then52 ], [ 0, %if.end62 ], [ %inc, %if.else ], [ %inc, %if.then88 ], [ 0, %if.end62.thread ]
  %tobool25.not = icmp eq i32 %dec179, 0
  br i1 %tobool25.not, label %while.end, label %while.body

if.end62:                                         ; preds = %if.end48
  call fastcc void @lf(%struct.vc_data* noundef %vc.0) #18
  call fastcc void @cr(%struct.vc_data* noundef %vc.0) #18
  %19 = load i64, i64* %vc_pos, align 8
  %20 = inttoptr i64 %19 to i16*
  %21 = load i32, i32* %x, align 8
  %conv66 = trunc i32 %21 to i16
  %cond = icmp eq i8 %8, 10
  br i1 %cond, label %while.cond.backedge, label %if.end76

if.end76:                                         ; preds = %if.end62, %lor.lhs.false36
  %start.1 = phi i16* [ %20, %if.end62 ], [ %start.0174, %lor.lhs.false36 ]
  %start_x.1 = phi i16 [ %conv66, %if.end62 ], [ %start_x.0176, %lor.lhs.false36 ]
  %cnt.1 = phi i16 [ 0, %if.end62 ], [ %cnt.0178, %lor.lhs.false36 ]
  call fastcc void @vc_uniscr_putc(%struct.vc_data* noundef %vc.0, i32 noundef %conv26) #18
  %22 = load i8, i8* %vc_attr, align 1
  %conv78 = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %conv78, 8
  %add = or i32 %shl, %conv26
  %conv80 = trunc i32 %add to i16
  %23 = load i64, i64* %vc_pos, align 8
  %24 = inttoptr i64 %23 to i16*
  store i16 %conv80, i16* %24, align 2
  call fastcc void @notify_write(%struct.vc_data* noundef %vc.0, i32 noundef %conv26) #18
  %inc = add i16 %cnt.1, 1
  %25 = load i32, i32* %x, align 8
  %26 = load i32, i32* %vc_cols, align 4
  %sub85 = add i32 %26, -1
  %cmp86 = icmp eq i32 %25, %sub85
  br i1 %cmp86, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.end76
  %bf.load90 = load i16, i16* %vc_need_wrap, align 8
  %bf.set = or i16 %bf.load90, 1024
  store i16 %bf.set, i16* %vc_need_wrap, align 8
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end76
  %27 = load i64, i64* %vc_pos, align 8
  %add93 = add i64 %27, 2
  store i64 %add93, i64* %vc_pos, align 8
  %inc96 = add i32 %25, 1
  store i32 %inc96, i32* %x, align 8
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge
  %conv98 = zext i16 %cnt.0.be to i32
  %tobool99.not = icmp eq i16 %cnt.0.be, 0
  br i1 %tobool99.not, label %if.end110, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %while.end
  %call101 = call i1 @con_is_visible(%struct.vc_data* noundef %vc.0) #18
  br i1 %call101, label %if.then103, label %if.end110

if.then103:                                       ; preds = %land.lhs.true100
  %vc_sw104 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 14
  %28 = load %struct.consw*, %struct.consw** %vc_sw104, align 8
  %con_putcs105 = getelementptr inbounds %struct.consw, %struct.consw* %28, i64 0, i32 6
  %29 = load void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)** %con_putcs105, align 8
  %y108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc.0, i64 0, i32 1, i32 1
  %30 = load i32, i32* %y108, align 4
  %conv109 = zext i16 %start_x.0.be to i32
  call void %29(%struct.vc_data* noundef %vc.0, i16* noundef %start.0.be, i32 noundef %conv98, i32 noundef %30, i32 noundef %conv109) #17
  br label %if.end110

if.end110:                                        ; preds = %if.end23, %if.then103, %land.lhs.true100, %while.end
  call fastcc void @set_cursor(%struct.vc_data* noundef %vc.0) #18
  call fastcc void @notify_update(%struct.vc_data* noundef %vc.0) #18
  br label %quit

quit:                                             ; preds = %if.end17, %if.end13, %if.end110
  call fastcc void @__raw_spin_unlock() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %quit
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal %struct.tty_driver* @vt_console_device(%struct.console* nocapture noundef readonly %c, i32* nocapture noundef writeonly %index) #13 {
entry:
  %index1 = getelementptr inbounds %struct.console, %struct.console* %c, i64 0, i32 9
  %0 = load i16, i16* %index1, align 2
  %tobool.not = icmp eq i16 %0, 0
  %conv = sext i16 %0 to i32
  %sub = add nsw i32 %conv, -1
  %1 = load i32, i32* @fg_console, align 4
  %cond = select i1 %tobool.not, i32 %1, i32 %sub
  store i32 %cond, i32* %index, align 4
  %2 = load %struct.tty_driver*, %struct.tty_driver** @console_driver, align 8
  ret %struct.tty_driver* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bs(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %0 = load i32, i32* %x, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %1 = load i64, i64* %vc_pos, align 8
  %sub = add i64 %1, -2
  store i64 %sub, i64* %vc_pos, align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* %x, align 8
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  call fastcc void @notify_write(%struct.vc_data* noundef %vc, i32 noundef 8) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lf(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %y, align 4
  %add = add i32 %0, 1
  %vc_bottom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 13
  %1 = load i32, i32* %vc_bottom, align 4
  %cmp = icmp eq i32 %add, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vc_top = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 12
  %2 = load i32, i32* %vc_top, align 8
  call fastcc void @con_scroll(%struct.vc_data* noundef %vc, i32 noundef %2, i32 noundef %add, i32 noundef 0, i32 noundef 1) #18
  br label %if.end9

if.else:                                          ; preds = %entry
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %3 = load i32, i32* %vc_rows, align 8
  %sub = add i32 %3, -1
  %cmp4 = icmp ult i32 %0, %sub
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.else
  store i32 %add, i32* %y, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %4 = load i32, i32* %vc_size_row, align 4
  %conv = zext i32 %4 to i64
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %5 = load i64, i64* %vc_pos, align 8
  %add8 = add i64 %5, %conv
  store i64 %add8, i64* %vc_pos, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5, %if.then
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  call fastcc void @notify_write(%struct.vc_data* noundef %vc, i32 noundef 10) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cr(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %0 = load i32, i32* %x, align 8
  %shl = shl i32 %0, 1
  %conv = zext i32 %shl to i64
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %1 = load i64, i64* %vc_pos, align 8
  %sub = sub i64 %1, %conv
  store i64 %sub, i64* %vc_pos, align 8
  store i32 0, i32* %x, align 8
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  call fastcc void @notify_write(%struct.vc_data* noundef %vc, i32 noundef 13) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @vc_uniscr_putc(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %uc) unnamed_addr #13 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool.not = icmp eq %struct.uni_screen* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %y, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %3 = load i32, i32* %x, align 8
  %idxprom2 = zext i32 %3 to i64
  %arrayidx3 = getelementptr i32, i32* %2, i64 %idxprom2
  store i32 %uc, i32* %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @notify_write(%struct.vc_data* noundef %vc, i32 noundef %unicode) unnamed_addr #0 {
entry:
  %param = alloca %struct.vt_notifier_param, align 8
  %0 = bitcast %struct.vt_notifier_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %vc1 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 0
  store %struct.vc_data* %vc, %struct.vc_data** %vc1, align 8
  %c = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 1
  store i32 %unicode, i32* %c, align 8
  %call = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @vt_notifier_list, i64 noundef 3, i8* noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !52
  %call = call fastcc i32 @do_raw_spin_trylock() #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !53
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock() unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vt_console_print.printing_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !54

if.end.i:                                         ; preds = %entry
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vt_console_print.printing_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vt_console_print.printing_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #19, !srcloc !55
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @con_scroll(%struct.vc_data* noundef %vc, i32 noundef %t, i32 noundef %b, i32 noundef %dir, i32 noundef %nr) unnamed_addr #0 {
entry:
  %add = add i32 %nr, %t
  %cmp.not = icmp ult i32 %add, %b
  %0 = xor i32 %t, -1
  %sub1 = add i32 %0, %b
  %nr.addr.0 = select i1 %cmp.not, i32 %nr, i32 %sub1
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %1 = load i32, i32* %vc_rows, align 8
  %cmp2 = icmp ult i32 %1, %b
  br i1 %cmp2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp ule i32 %b, %t
  %cmp5 = icmp eq i32 %nr.addr.0, 0
  %or.cond = or i1 %cmp3, %cmp5
  br i1 %or.cond, label %cleanup, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false
  call fastcc void @vc_uniscr_scroll(%struct.vc_data* noundef %vc, i32 noundef %t, i32 noundef %b, i32 noundef %dir, i32 noundef %nr.addr.0) #18
  %call = call i1 @con_is_visible(%struct.vc_data* noundef %vc) #18
  br i1 %call, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end7
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %2 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_scroll = getelementptr inbounds %struct.consw, %struct.consw* %2, i64 0, i32 8
  %3 = load i1 (%struct.vc_data*, i32, i32, i32, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)** %con_scroll, align 8
  %call8 = call i1 %3(%struct.vc_data* noundef %vc, i32 noundef %t, i32 noundef %b, i32 noundef %dir, i32 noundef %nr.addr.0) #17
  br i1 %call8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.end7
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %4 = load i64, i64* %vc_origin, align 8
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %5 = load i32, i32* %vc_size_row, align 4
  %mul = mul i32 %5, %t
  %conv = zext i32 %mul to i64
  %add11 = add i64 %4, %conv
  %6 = inttoptr i64 %add11 to i16*
  %add14 = add i32 %nr.addr.0, %t
  %mul15 = mul i32 %5, %add14
  %conv16 = zext i32 %mul15 to i64
  %add17 = add i64 %4, %conv16
  %7 = inttoptr i64 %add17 to i16*
  %cmp18 = icmp eq i32 %dir, 0
  %sub22 = sub i32 %b, %add14
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end10
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %8 = load i32, i32* %vc_cols, align 4
  %mul23 = mul i32 %8, %sub22
  %idx.ext = zext i32 %mul23 to i64
  %add.ptr = getelementptr i16, i16* %6, i64 %idx.ext
  br label %if.end24

if.end24:                                         ; preds = %if.end10, %if.then20
  %clear.0 = phi i16* [ %add.ptr, %if.then20 ], [ %6, %if.end10 ]
  %d.0 = phi i16* [ %6, %if.then20 ], [ %7, %if.end10 ]
  %s.0 = phi i16* [ %7, %if.then20 ], [ %6, %if.end10 ]
  %mul28 = mul i32 %5, %sub22
  call fastcc void @scr_memmovew(i16* noundef %d.0, i16* noundef %s.0, i32 noundef %mul28) #18
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %9 = load i16, i16* %vc_video_erase_char, align 8
  %10 = load i32, i32* %vc_size_row, align 4
  %mul30 = mul i32 %10, %nr.addr.0
  call fastcc void @scr_memsetw(i16* noundef %clear.0, i16 noundef %9, i32 noundef %mul30) #18
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_uniscr_scroll(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %t, i32 noundef %b, i32 noundef %dir, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool.not = icmp eq %struct.uni_screen* %0, null
  br i1 %tobool.not, label %if.end30, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i32 %b, %t
  %sub1 = sub i32 %b, %nr
  %cmp = icmp eq i32 %dir, 1
  %sub3 = sub i32 %sub, %nr
  %spec.select = select i1 %cmp, i32 %sub3, i32 %nr
  %spec.select67 = select i1 %cmp, i32 %t, i32 %sub1
  %conv4 = zext i32 %spec.select to i64
  %conv5 = zext i32 %sub to i64
  %call = call i64 @gcd(i64 noundef %conv4, i64 noundef %conv5) #23
  %cmp676.not = icmp eq i64 %call, 0
  br i1 %cmp676.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.then, %while.end
  %i.077 = phi i32 [ %inc, %while.end ], [ 0, %if.then ]
  %add = add i32 %i.077, %t
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom
  %1 = load i32*, i32** %arrayidx, align 8
  %add869 = add i32 %i.077, %spec.select
  %cmp9.not70 = icmp ult i32 %add869, %sub
  %sub1271 = select i1 %cmp9.not70, i32 0, i32 %sub
  %spec.select6872 = sub i32 %add869, %sub1271
  %cmp1473 = icmp eq i32 %spec.select6872, %i.077
  br i1 %cmp1473, label %while.end, label %if.end17

if.end17:                                         ; preds = %for.body, %if.end17
  %spec.select6875 = phi i32 [ %spec.select68, %if.end17 ], [ %spec.select6872, %for.body ]
  %j.074 = phi i32 [ %spec.select6875, %if.end17 ], [ %i.077, %for.body ]
  %add19 = add i32 %spec.select6875, %t
  %idxprom20 = zext i32 %add19 to i64
  %arrayidx21 = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom20
  %2 = load i32*, i32** %arrayidx21, align 8
  %add23 = add i32 %j.074, %t
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom24
  store i32* %2, i32** %arrayidx25, align 8
  %add8 = add i32 %spec.select6875, %spec.select
  %cmp9.not = icmp ult i32 %add8, %sub
  %sub12 = select i1 %cmp9.not, i32 0, i32 %sub
  %spec.select68 = sub i32 %add8, %sub12
  %cmp14 = icmp eq i32 %spec.select68, %i.077
  br i1 %cmp14, label %while.end.loopexit, label %if.end17

while.end.loopexit:                               ; preds = %if.end17
  %idxprom20.le = zext i32 %add19 to i64
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.body
  %idxprom28.pre-phi = phi i64 [ %idxprom, %for.body ], [ %idxprom20.le, %while.end.loopexit ]
  %arrayidx29 = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom28.pre-phi
  store i32* %1, i32** %arrayidx29, align 8
  %inc = add i32 %i.077, 1
  %conv = zext i32 %inc to i64
  %cmp6 = icmp ugt i64 %call, %conv
  br i1 %cmp6, label %for.body, label %for.end

for.end:                                          ; preds = %while.end, %if.then
  call fastcc void @vc_uniscr_clear_lines(%struct.vc_data* noundef %vc, i32 noundef %spec.select67, i32 noundef %nr) #18
  br label %if.end30

if.end30:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @scr_memmovew(i16* noundef %d, i16* noundef %s, i32 noundef %count) unnamed_addr #0 {
entry:
  %0 = bitcast i16* %d to i8*
  %1 = bitcast i16* %s to i8*
  %conv = zext i32 %count to i64
  %call = call i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %conv) #17
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i64 @gcd(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #18
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !56
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @vt_console_print.printing_lock to i8*), i8 0) #19, !srcloc !57
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @show_tty_active(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %add = add i32 %0, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 noundef %add) #17
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @con_install(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) #0 {
entry:
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %0 = load i32, i32* %index, align 8
  call void @console_lock() #17
  %call = call i32 @vc_allocate(i32 noundef %0) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %unlock

if.end:                                           ; preds = %entry
  %idxprom = zext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %port = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 0
  %tty1 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 0, i32 1
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %tobool2.not = icmp eq %struct.tty_struct* %2, null
  br i1 %tobool2.not, label %if.end4, label %unlock

if.end4:                                          ; preds = %if.end
  %call6 = call i32 @tty_port_install(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %unlock

if.end9:                                          ; preds = %if.end4
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %3 = bitcast i8** %driver_data to %struct.vc_data**
  store %struct.vc_data* %1, %struct.vc_data** %3, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty1, align 8
  call fastcc void @tty_port_get(%struct.tty_port* noundef %port) #18
  %ws_row = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 18, i32 0
  %4 = load i16, i16* %ws_row, align 4
  %tobool14.not = icmp eq i16 %4, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.end9
  %ws_col = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 18, i32 1
  %5 = load i16, i16* %ws_col, align 2
  %tobool16.not = icmp eq i16 %5, 0
  br i1 %tobool16.not, label %if.then17, label %if.end29

if.then17:                                        ; preds = %land.lhs.true
  %6 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i64 0, i32 5
  %7 = load i32, i32* %vc_rows, align 8
  %conv = trunc i32 %7 to i16
  store i16 %conv, i16* %ws_row, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i64 0, i32 4
  %9 = load i32, i32* %vc_cols, align 4
  %conv26 = trunc i32 %9 to i16
  store i16 %conv26, i16* %ws_col, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then17, %land.lhs.true, %if.end9
  %vc_utf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 37
  %bf.load = load i16, i16* %vc_utf, align 8
  %10 = and i16 %bf.load, 16384
  %c_iflag33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %11 = load i32, i32* %c_iflag33, align 8
  %and = and i32 %11, -16385
  %12 = zext i16 %10 to i32
  %or.sink = or i32 %and, %12
  store i32 %or.sink, i32* %c_iflag33, align 8
  br label %unlock

unlock:                                           ; preds = %if.end29, %if.end, %if.end4, %entry
  %ret.0 = phi i32 [ %call, %entry ], [ %call6, %if.end4 ], [ -512, %if.end ], [ 0, %if.end29 ]
  call void @console_unlock() #17
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @con_open(%struct.tty_struct* nocapture noundef readnone %tty, %struct.file* nocapture noundef readnone %filp) #10 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @con_close(%struct.tty_struct* nocapture noundef %tty, %struct.file* nocapture noundef %filp) #10 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @con_shutdown(%struct.tty_struct* nocapture noundef readonly %tty) #0 {
entry:
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %0 = bitcast i8** %driver_data to %struct.vc_data**
  %1 = load %struct.vc_data*, %struct.vc_data** %0, align 8
  %cmp = icmp eq %struct.vc_data* %1, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !9

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 3430; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !58
  unreachable

do.end7:                                          ; preds = %entry
  call void @console_lock() #17
  %tty8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 0, i32 1
  store %struct.tty_struct* null, %struct.tty_struct** %tty8, align 8
  call void @console_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @con_cleanup(%struct.tty_struct* nocapture noundef readonly %tty) #0 {
entry:
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %0 = bitcast i8** %driver_data to %struct.vc_data**
  %1 = load %struct.vc_data*, %struct.vc_data** %0, align 8
  %port = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 0
  call void @tty_port_put(%struct.tty_port* noundef %port) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @con_write(%struct.tty_struct* nocapture noundef readonly %tty, i8* nocapture noundef readonly %buf, i32 noundef %count) #0 {
entry:
  %call = call fastcc i32 @do_con_write(%struct.tty_struct* noundef %tty, i8* noundef %buf, i32 noundef %count) #18
  call void @con_flush_chars(%struct.tty_struct* noundef %tty) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @con_put_char(%struct.tty_struct* nocapture noundef readonly %tty, i8 noundef %ch) #0 {
entry:
  %ch.addr = alloca i8, align 4
  store i8 %ch, i8* %ch.addr, align 4
  %call = call fastcc i32 @do_con_write(%struct.tty_struct* noundef %tty, i8* noundef nonnull %ch.addr, i32 noundef 1) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @con_flush_chars(%struct.tty_struct* nocapture noundef readonly %tty) #0 {
entry:
  %call = call fastcc i32 @preempt_count() #18
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #18
  %1 = and i32 %call1, 983040
  %or15 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #18
  %2 = and i32 %call4, 65280
  %or717 = or i32 %or15, %2
  %tobool.not = icmp eq i32 %or717, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @console_lock() #17
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %3 = bitcast i8** %driver_data to %struct.vc_data**
  %4 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %tobool8.not = icmp eq %struct.vc_data* %4, null
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call fastcc void @set_cursor(%struct.vc_data* noundef nonnull %4) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  call void @console_unlock() #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @con_write_room(%struct.tty_struct* nocapture noundef readonly %tty) #4 {
entry:
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %0 = load i8, i8* %stopped, align 4, !range !27
  %tobool.not = icmp eq i8 %0, 0
  %. = select i1 %tobool.not, i32 32768, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_ioctl(%struct.tty_struct* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @con_throttle(%struct.tty_struct* nocapture noundef %tty) #10 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @con_unthrottle(%struct.tty_struct* nocapture noundef readonly %tty) #0 {
entry:
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %0 = bitcast i8** %driver_data to %struct.vc_data**
  %1 = load %struct.vc_data*, %struct.vc_data** %0, align 8
  %paste_wait = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 36
  call void @__wake_up(%struct.wait_queue_head* noundef %paste_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @con_stop(%struct.tty_struct* noundef readonly %tty) #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %0 = load i32, i32* %index, align 8
  %call = call i32 @vc_cons_allocated(i32 noundef %0) #18
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  call void @vt_kbd_con_stop(i32 noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @con_start(%struct.tty_struct* noundef readonly %tty) #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %0 = load i32, i32* %index, align 8
  %call = call i32 @vc_cons_allocated(i32 noundef %0) #18
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  call void @vt_kbd_con_start(i32 noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @vt_resize(%struct.tty_struct* noundef %tty, %struct.winsize* nocapture noundef readonly %ws) #0 {
entry:
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %0 = bitcast i8** %driver_data to %struct.vc_data**
  %1 = load %struct.vc_data*, %struct.vc_data** %0, align 8
  call void @console_lock() #17
  %ws_col = getelementptr inbounds %struct.winsize, %struct.winsize* %ws, i64 0, i32 1
  %2 = load i16, i16* %ws_col, align 2
  %conv = zext i16 %2 to i32
  %ws_row = getelementptr inbounds %struct.winsize, %struct.winsize* %ws, i64 0, i32 0
  %3 = load i16, i16* %ws_row, align 2
  %conv1 = zext i16 %3 to i32
  %call = call fastcc i32 @vc_do_resize(%struct.tty_struct* noundef %tty, %struct.vc_data* noundef %1, i32 noundef %conv, i32 noundef %conv1) #18
  call void @console_unlock() #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_install(%struct.tty_port* noundef, %struct.tty_driver* noundef, %struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_port_get(%struct.tty_port* noundef %port) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_port* %port, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %kref = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 19
  %call = call fastcc i32 @kref_get_unless_zero(%struct.kref* noundef %kref) #18
  br label %return

return:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kref_get_unless_zero(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %refcount) #18
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #18
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #17
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !54

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !54

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #15 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #19, !srcloc !59
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(%struct.tty_port* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_con_write(%struct.tty_struct* nocapture noundef readonly %tty, i8* nocapture noundef readonly %buf, i32 noundef %count) unnamed_addr #0 {
entry:
  %draw = alloca %struct.vc_draw_region, align 8
  %c = alloca i32, align 4
  %param = alloca %struct.vt_notifier_param, align 8
  %rescan = alloca i8, align 4
  %0 = bitcast %struct.vc_draw_region* %draw to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #19
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) bitcast ({ i64, i64, i32, [4 x i8] }* @__const.do_con_write.draw to i8*), i64 24, i1 false)
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #19
  %2 = bitcast %struct.vt_notifier_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #19
  %3 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 1
  %4 = bitcast i32* %3 to i64*, !annotation !12
  store i64 0, i64* %4, align 8, !annotation !12
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %rescan) #19
  %call = call fastcc i32 @preempt_count() #18
  %5 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #18
  %6 = and i32 %call1, 983040
  %or109 = or i32 %6, %5
  %call4 = call fastcc i32 @preempt_count() #18
  %7 = and i32 %call4, 65280
  %or7111 = or i32 %or109, %7
  %tobool.not = icmp eq i32 %or7111, 0
  br i1 %tobool.not, label %if.end, label %cleanup70

if.end:                                           ; preds = %entry
  call void @console_lock() #17
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %8 = bitcast i8** %driver_data to %struct.vc_data**
  %9 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %cmp = icmp eq %struct.vc_data* %9, null
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #21
  br label %cleanup70.sink.split

if.end11:                                         ; preds = %if.end
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i64 0, i32 3
  %10 = load i16, i16* %vc_num, align 8
  %conv12 = zext i16 %10 to i32
  %call13 = call i32 @vc_cons_allocated(i32 noundef %conv12) #18
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end38

if.then15:                                        ; preds = %if.end11
  %.b112 = load i1, i1* @do_con_write.__already_done, align 1
  br i1 %.b112, label %cleanup70.sink.split, label %if.then23, !prof !54

if.then23:                                        ; preds = %if.then15
  store i1 true, i1* @do_con_write.__already_done, align 1
  %add = add nuw nsw i32 %conv12, 1
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 noundef %add) #21
  br label %cleanup70.sink.split

if.end38:                                         ; preds = %if.end11
  %call39 = call fastcc i1 @con_is_fg(%struct.vc_data* noundef nonnull %9) #18
  br i1 %call39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end38
  call fastcc void @hide_cursor(%struct.vc_data* noundef nonnull %9) #18
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38
  %vc42 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 0
  store %struct.vc_data* %9, %struct.vc_data** %vc42, align 8
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %11 = load i8, i8* %stopped, align 4, !range !27
  %tobool43.not113 = icmp eq i8 %11, 0
  %tobool45114 = icmp ne i32 %count, 0
  %12 = and i1 %tobool43.not113, %tobool45114
  br i1 %12, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end41
  %c53 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %param, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %buf.addr.0117 = phi i8* [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %cleanup ]
  %count.addr.0116 = phi i32 [ %count, %while.body.lr.ph ], [ %dec, %cleanup ]
  %n.0115 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup ]
  %13 = load i8, i8* %buf.addr.0117, align 1
  %conv47 = zext i8 %13 to i32
  %incdec.ptr = getelementptr i8, i8* %buf.addr.0117, i64 1
  %inc = add nuw i32 %n.0115, 1
  %dec = add i32 %count.addr.0116, -1
  br label %rescan_last_byte

rescan_last_byte:                                 ; preds = %if.end61, %while.body
  store i32 %conv47, i32* %c, align 4
  store i8 0, i8* %rescan, align 4
  %call48 = call fastcc i32 @vc_translate(%struct.vc_data* noundef nonnull %9, i32* noundef nonnull %c, i8* noundef nonnull %rescan) #18
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %cleanup, label %if.end52

if.end52:                                         ; preds = %rescan_last_byte
  store i32 %call48, i32* %c53, align 8
  %call54 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @vt_notifier_list, i64 noundef 5, i8* noundef nonnull %2) #17
  %cmp55 = icmp eq i32 %call54, 32769
  br i1 %cmp55, label %cleanup, label %if.end58

if.end58:                                         ; preds = %if.end52
  %14 = load i32, i32* %c, align 4
  %call59 = call fastcc i1 @vc_is_control(%struct.vc_data* noundef nonnull %9, i32 noundef %call48, i32 noundef %14) #18
  br i1 %call59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  call fastcc void @con_flush(%struct.vc_data* noundef nonnull %9, %struct.vc_draw_region* noundef nonnull %draw) #18
  call fastcc void @do_con_trol(%struct.tty_struct* noundef %tty, %struct.vc_data* noundef nonnull %9, i32 noundef %conv47) #18
  br label %cleanup

if.end61:                                         ; preds = %if.end58
  %call62 = call fastcc i32 @vc_con_write_normal(%struct.vc_data* noundef nonnull %9, i32 noundef %call48, i32 noundef %14, %struct.vc_draw_region* noundef nonnull %draw) #18
  %cmp63 = icmp slt i32 %call62, 0
  %15 = load i8, i8* %rescan, align 4
  %tobool67.not = icmp eq i8 %15, 0
  %or.cond = select i1 %cmp63, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %cleanup, label %rescan_last_byte

cleanup:                                          ; preds = %if.end61, %if.end52, %rescan_last_byte, %if.then60
  %16 = load i8, i8* %stopped, align 4, !range !27
  %tobool43.not = icmp eq i8 %16, 0
  %tobool45 = icmp ne i32 %dec, 0
  %17 = select i1 %tobool43.not, i1 %tobool45, i1 false
  br i1 %17, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %if.end41
  %n.0.lcssa = phi i32 [ 0, %if.end41 ], [ %inc, %cleanup ]
  call fastcc void @con_flush(%struct.vc_data* noundef nonnull %9, %struct.vc_draw_region* noundef nonnull %draw) #18
  call void @console_conditional_schedule() #17
  call fastcc void @notify_update(%struct.vc_data* noundef nonnull %9) #18
  br label %cleanup70.sink.split

cleanup70.sink.split:                             ; preds = %if.then15, %if.then23, %do.end, %while.end
  %retval.0.ph = phi i32 [ %n.0.lcssa, %while.end ], [ 0, %do.end ], [ 0, %if.then23 ], [ 0, %if.then15 ]
  call void @console_unlock() #17
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup70.sink.split, %entry
  %retval.0 = phi i32 [ %count, %entry ], [ %retval.0.ph, %cleanup70.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %rescan) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !31
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.27* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @vc_translate(%struct.vc_data* nocapture noundef %vc, i32* nocapture noundef %c, i8* nocapture noundef writeonly %rescan) unnamed_addr #13 {
entry:
  %vc_state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 30
  %0 = load i32, i32* %vc_state, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c, align 4
  br label %return

if.end:                                           ; preds = %entry
  %vc_utf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_utf, align 8
  %2 = and i16 %bf.load, 16385
  %3 = icmp eq i16 %2, 16384
  %4 = load i32, i32* %c, align 4
  br i1 %3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %call = call fastcc i32 @vc_translate_unicode(%struct.vc_data* noundef %vc, i32 noundef %4, i8* noundef %rescan) #18
  store i32 %call, i32* %c, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @vc_translate_ascii(%struct.vc_data* noundef %vc, i32 noundef %4) #18
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call7, %if.end6 ], [ %call, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vc_is_control(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %tc, i32 noundef %c) unnamed_addr #4 {
entry:
  %vc_state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 30
  %0 = load i32, i32* %vc_state, align 4
  %cmp.not = icmp ne i32 %0, 0
  %tobool.not = icmp eq i32 %tc, 0
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %return, label %if.end2

if.end2:                                          ; preds = %entry
  %cmp3 = icmp slt i32 %c, 32
  br i1 %cmp3, label %if.then4, label %if.end16

if.then4:                                         ; preds = %if.end2
  %vc_disp_ctrl = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_disp_ctrl, align 8
  %bf.clear = and i16 %bf.load, 1
  %tobool5.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %sh_prom = zext i32 %c to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, 134280449
  %tobool7 = icmp ne i64 %and, 0
  br label %return

if.else:                                          ; preds = %if.then4
  %1 = and i16 %bf.load, 16384
  %tobool11 = icmp ne i16 %1, 0
  %sh_prom12 = zext i32 %c to i64
  %shl13 = shl nuw i64 1, %sh_prom12
  %and14 = and i64 %shl13, 218169217
  %tobool15 = icmp ne i64 %and14, 0
  %2 = select i1 %tobool11, i1 true, i1 %tobool15
  br label %return

if.end16:                                         ; preds = %if.end2
  switch i32 %c, label %if.end29 [
    i32 127, label %land.lhs.true
    i32 155, label %return
  ]

land.lhs.true:                                    ; preds = %if.end16
  %vc_disp_ctrl19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load20 = load i16, i16* %vc_disp_ctrl19, align 8
  %bf.clear21 = and i16 %bf.load20, 1
  %tobool23.not = icmp eq i16 %bf.clear21, 0
  br i1 %tobool23.not, label %return, label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.end16
  br label %return

return:                                           ; preds = %if.end16, %land.lhs.true, %entry, %if.end29, %if.else, %if.then6
  %retval.0 = phi i1 [ %tobool7, %if.then6 ], [ %2, %if.else ], [ false, %if.end29 ], [ true, %entry ], [ true, %land.lhs.true ], [ true, %if.end16 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @con_flush(%struct.vc_data* noundef %vc, %struct.vc_draw_region* nocapture noundef %draw) unnamed_addr #0 {
entry:
  %x = getelementptr inbounds %struct.vc_draw_region, %struct.vc_draw_region* %draw, i64 0, i32 2
  %0 = load i32, i32* %x, align 8
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %1 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_putcs = getelementptr inbounds %struct.consw, %struct.consw* %1, i64 0, i32 6
  %2 = load void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)** %con_putcs, align 8
  %from = getelementptr inbounds %struct.vc_draw_region, %struct.vc_draw_region* %draw, i64 0, i32 0
  %3 = load i64, i64* %from, align 8
  %4 = inttoptr i64 %3 to i16*
  %to = getelementptr inbounds %struct.vc_draw_region, %struct.vc_draw_region* %draw, i64 0, i32 1
  %5 = load i64, i64* %to, align 8
  %sub.ptr.sub = sub i64 %5, %3
  %6 = lshr exact i64 %sub.ptr.sub, 1
  %conv = trunc i64 %6 to i32
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %7 = load i32, i32* %y, align 4
  call void %2(%struct.vc_data* noundef %vc, i16* noundef %4, i32 noundef %conv, i32 noundef %7, i32 noundef %0) #17
  store i32 -1, i32* %x, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_con_trol(%struct.tty_struct* nocapture noundef readonly %tty, %struct.vc_data* noundef %vc, i32 noundef %c) unnamed_addr #0 {
entry:
  %vc_state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 30
  %0 = load i32, i32* %vc_state, align 4
  %call = call fastcc i1 @ansi_control_string(i32 noundef %0) #18
  %1 = add i32 %c, -8
  %2 = icmp ult i32 %1, 6
  %3 = and i1 %2, %call
  br i1 %3, label %sw.epilog727, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %c, label %sw.epilog [
    i32 0, label %sw.epilog727
    i32 7, label %sw.bb3
    i32 8, label %sw.bb12
    i32 9, label %sw.bb13
    i32 10, label %sw.bb41
    i32 11, label %sw.bb41
    i32 12, label %sw.bb41
    i32 13, label %sw.bb47
    i32 14, label %sw.bb48
    i32 15, label %sw.bb56
    i32 24, label %sw.bb72
    i32 26, label %sw.bb72
    i32 27, label %sw.bb74
    i32 127, label %sw.epilog727
    i32 155, label %sw.bb77
  ]

sw.bb3:                                           ; preds = %if.end
  br i1 %call, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb3
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

if.else:                                          ; preds = %sw.bb3
  %vc_bell_duration = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 45
  %4 = load i32, i32* %vc_bell_duration, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %sw.epilog727, label %if.then8

if.then8:                                         ; preds = %if.else
  %vc_bell_pitch = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 44
  %5 = load i32, i32* %vc_bell_pitch, align 4
  call void @kd_mksound(i32 noundef %5, i32 noundef %4) #17
  br label %sw.epilog727

sw.bb12:                                          ; preds = %if.end
  call fastcc void @bs(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb13:                                          ; preds = %if.end
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %6 = load i32, i32* %x, align 8
  %shl = shl i32 %6, 1
  %conv = zext i32 %shl to i64
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %7 = load i64, i64* %vc_pos, align 8
  %sub = sub i64 %7, %conv
  store i64 %sub, i64* %vc_pos, align 8
  %arraydecay = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 40, i64 0
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %8 = load i32, i32* %vc_cols, align 4
  %sub14 = add i32 %8, -1
  %cmp15 = icmp ult i32 %sub14, 256
  %cond = select i1 %cmp15, i32 %sub14, i32 256
  %conv17 = zext i32 %cond to i64
  %add = add i32 %6, 1
  %conv20 = zext i32 %add to i64
  %call21 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay, i64 noundef %conv17, i64 noundef %conv20) #18
  %conv22 = trunc i64 %call21 to i32
  store i32 %conv22, i32* %x, align 8
  %cmp27 = icmp ugt i32 %conv22, 255
  br i1 %cmp27, label %if.then29, label %if.end34

if.then29:                                        ; preds = %sw.bb13
  %9 = load i32, i32* %vc_cols, align 4
  %sub31 = add i32 %9, -1
  store i32 %sub31, i32* %x, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %sw.bb13
  %10 = phi i32 [ %sub31, %if.then29 ], [ %conv22, %sw.bb13 ]
  %shl37 = shl i32 %10, 1
  %conv38 = zext i32 %shl37 to i64
  %11 = load i64, i64* %vc_pos, align 8
  %add40 = add i64 %11, %conv38
  store i64 %add40, i64* %vc_pos, align 8
  call fastcc void @notify_write(%struct.vc_data* noundef %vc, i32 noundef 9) #18
  br label %sw.epilog727

sw.bb41:                                          ; preds = %if.end, %if.end, %if.end
  call fastcc void @lf(%struct.vc_data* noundef %vc) #18
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %12 = load i16, i16* %vc_num, align 8
  %conv42 = zext i16 %12 to i32
  %call43 = call i32 @vt_get_kbd_mode_bit(i32 noundef %conv42, i32 noundef 3) #17
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %sw.epilog727, label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb41, %if.end
  call fastcc void @cr(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb48:                                          ; preds = %if.end
  %charset = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 4
  %bf.load = load i8, i8* %charset, align 1
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %charset, align 1
  %arrayidx = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 3, i64 1
  %13 = load i8, i8* %arrayidx, align 1
  %conv51 = zext i8 %13 to i32
  %call52 = call i16* @set_translate(i32 noundef %conv51, %struct.vc_data* noundef %vc) #17
  %vc_translate = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 42
  store i16* %call52, i16** %vc_translate, align 8
  %vc_disp_ctrl = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load53 = load i16, i16* %vc_disp_ctrl, align 8
  %bf.set55 = or i16 %bf.load53, 1
  store i16 %bf.set55, i16* %vc_disp_ctrl, align 8
  br label %sw.epilog727

sw.bb56:                                          ; preds = %if.end
  %charset58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 4
  %bf.load59 = load i8, i8* %charset58, align 1
  %bf.clear60 = and i8 %bf.load59, -2
  store i8 %bf.clear60, i8* %charset58, align 1
  %arrayidx64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 3, i64 0
  %14 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %14 to i32
  %call66 = call i16* @set_translate(i32 noundef %conv65, %struct.vc_data* noundef %vc) #17
  %vc_translate67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 42
  store i16* %call66, i16** %vc_translate67, align 8
  %vc_disp_ctrl68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load69 = load i16, i16* %vc_disp_ctrl68, align 8
  %bf.clear70 = and i16 %bf.load69, -2
  store i16 %bf.clear70, i16* %vc_disp_ctrl68, align 8
  br label %sw.epilog727

sw.bb72:                                          ; preds = %if.end, %if.end
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb74:                                          ; preds = %if.end
  store i32 1, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb77:                                          ; preds = %if.end
  store i32 2, i32* %vc_state, align 4
  br label %sw.epilog727

sw.epilog:                                        ; preds = %if.end
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb80
    i32 10, label %sw.bb126
    i32 11, label %sw.bb156
    i32 2, label %sw.bb240
    i32 3, label %sw.bb286
    i32 9, label %sw.bb678
    i32 8, label %sw.bb687
    i32 4, label %sw.bb699
    i32 5, label %sw.bb701
    i32 6, label %sw.bb718
    i32 7, label %sw.bb720
    i32 13, label %sw.epilog727
    i32 12, label %sw.epilog727
    i32 14, label %sw.epilog727
    i32 15, label %sw.epilog727
  ]

sw.bb80:                                          ; preds = %sw.epilog
  store i32 0, i32* %vc_state, align 4
  switch i32 %c, label %sw.epilog727 [
    i32 91, label %sw.bb82
    i32 93, label %sw.bb84
    i32 95, label %sw.bb86
    i32 94, label %sw.bb88
    i32 37, label %sw.bb90
    i32 69, label %sw.bb92
    i32 77, label %sw.bb93
    i32 68, label %sw.bb94
    i32 72, label %sw.bb95
    i32 80, label %sw.bb107
    i32 90, label %sw.bb109
    i32 55, label %sw.bb110
    i32 56, label %sw.bb111
    i32 40, label %sw.bb112
    i32 41, label %sw.bb114
    i32 35, label %sw.bb116
    i32 99, label %sw.bb118
    i32 62, label %sw.bb119
    i32 61, label %sw.bb122
  ]

sw.bb82:                                          ; preds = %sw.bb80
  store i32 2, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb84:                                          ; preds = %sw.bb80
  store i32 10, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb86:                                          ; preds = %sw.bb80
  store i32 13, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb88:                                          ; preds = %sw.bb80
  store i32 14, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb90:                                          ; preds = %sw.bb80
  store i32 8, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb92:                                          ; preds = %sw.bb80
  call fastcc void @cr(%struct.vc_data* noundef %vc) #18
  call fastcc void @lf(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb93:                                          ; preds = %sw.bb80
  call fastcc void @ri(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb94:                                          ; preds = %sw.bb80
  call fastcc void @lf(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb95:                                          ; preds = %sw.bb80
  %x97 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %15 = load i32, i32* %x97, align 8
  %cmp98 = icmp ult i32 %15, 256
  br i1 %cmp98, label %if.then100, label %sw.epilog727

if.then100:                                       ; preds = %sw.bb95
  %conv103 = zext i32 %15 to i64
  %arraydecay105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 40, i64 0
  call fastcc void @set_bit(i64 noundef %conv103, i64* noundef %arraydecay105) #18
  br label %sw.epilog727

sw.bb107:                                         ; preds = %sw.bb80
  store i32 15, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb109:                                         ; preds = %sw.bb80
  call fastcc void @respond_ID(%struct.tty_struct* noundef %tty) #18
  br label %sw.epilog727

sw.bb110:                                         ; preds = %sw.bb80
  call fastcc void @save_cur(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb111:                                         ; preds = %sw.bb80
  call fastcc void @restore_cur(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb112:                                         ; preds = %sw.bb80
  store i32 6, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb114:                                         ; preds = %sw.bb80
  store i32 7, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb116:                                         ; preds = %sw.bb80
  store i32 5, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb118:                                         ; preds = %sw.bb80
  call fastcc void @reset_terminal(%struct.vc_data* noundef %vc, i32 noundef 1) #18
  br label %sw.epilog727

sw.bb119:                                         ; preds = %sw.bb80
  %vc_num120 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %16 = load i16, i16* %vc_num120, align 8
  %conv121 = zext i16 %16 to i32
  call void @vt_clr_kbd_mode_bit(i32 noundef %conv121, i32 noundef 0) #17
  br label %sw.epilog727

sw.bb122:                                         ; preds = %sw.bb80
  %vc_num123 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %17 = load i16, i16* %vc_num123, align 8
  %conv124 = zext i16 %17 to i32
  call void @vt_set_kbd_mode_bit(i32 noundef %conv124, i32 noundef 0) #17
  br label %sw.epilog727

sw.bb126:                                         ; preds = %sw.epilog
  switch i32 %c, label %if.else143 [
    i32 80, label %if.then129
    i32 82, label %if.then141
  ]

if.then129:                                       ; preds = %sw.bb126
  %arrayidx134 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  store i32 0, i32* %arrayidx134, align 4
  %arrayidx134.1 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  store i32 0, i32* %arrayidx134.1, align 4
  %arrayidx134.2 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 2
  store i32 0, i32* %arrayidx134.2, align 4
  %arrayidx134.3 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 3
  store i32 0, i32* %arrayidx134.3, align 4
  %arrayidx134.4 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 4
  store i32 0, i32* %arrayidx134.4, align 4
  %arrayidx134.5 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 5
  store i32 0, i32* %arrayidx134.5, align 4
  %arrayidx134.6 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 6
  store i32 0, i32* %arrayidx134.6, align 4
  %arrayidx134.7 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 7
  store i32 0, i32* %arrayidx134.7, align 4
  %arrayidx134.8 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 8
  store i32 0, i32* %arrayidx134.8, align 4
  %arrayidx134.9 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 9
  store i32 0, i32* %arrayidx134.9, align 4
  %arrayidx134.10 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 10
  store i32 0, i32* %arrayidx134.10, align 4
  %arrayidx134.11 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 11
  store i32 0, i32* %arrayidx134.11, align 4
  %arrayidx134.12 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 12
  store i32 0, i32* %arrayidx134.12, align 4
  %arrayidx134.13 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 13
  store i32 0, i32* %arrayidx134.13, align 4
  %arrayidx134.14 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 14
  store i32 0, i32* %arrayidx134.14, align 4
  %arrayidx134.15 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 15
  store i32 0, i32* %arrayidx134.15, align 4
  %vc_npar = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  store i32 0, i32* %vc_npar, align 8
  store i32 11, i32* %vc_state, align 4
  br label %sw.epilog727

if.then141:                                       ; preds = %sw.bb126
  call void @reset_palette(%struct.vc_data* noundef %vc) #18
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

if.else143:                                       ; preds = %sw.bb126
  %18 = add i32 %c, -48
  %19 = icmp ult i32 %18, 10
  br i1 %19, label %if.then149, label %if.else151

if.then149:                                       ; preds = %if.else143
  store i32 12, i32* %vc_state, align 4
  br label %sw.epilog727

if.else151:                                       ; preds = %if.else143
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb156:                                         ; preds = %sw.epilog
  %conv158 = and i32 %c, 255
  %20 = zext i32 %conv158 to i64
  %arrayidx160 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %20
  %21 = load i8, i8* %arrayidx160, align 1
  %22 = and i8 %21, 68
  %cmp162.not = icmp eq i8 %22, 0
  br i1 %cmp162.not, label %if.else237, label %if.then164

if.then164:                                       ; preds = %sw.bb156
  %conv157 = trunc i32 %c to i8
  %call166 = call i32 @hex_to_bin(i8 noundef %conv157) #17
  %vc_npar168 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %23 = load i32, i32* %vc_npar168, align 8
  %inc169 = add i32 %23, 1
  store i32 %inc169, i32* %vc_npar168, align 8
  %idxprom170 = zext i32 %23 to i64
  %arrayidx171 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom170
  store i32 %call166, i32* %arrayidx171, align 4
  %cmp173 = icmp eq i32 %inc169, 7
  br i1 %cmp173, label %if.then175, label %sw.epilog727

if.then175:                                       ; preds = %if.then164
  %arrayidx177 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %24 = load i32, i32* %arrayidx177, align 4
  %mul = mul i32 %24, 3
  %arrayidx181 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %25 = load i32, i32* %arrayidx181, align 4
  %.tr = trunc i32 %25 to i8
  %conv183 = shl i8 %.tr, 4
  %idxprom184 = sext i32 %mul to i64
  %arrayidx185 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %idxprom184
  store i8 %conv183, i8* %arrayidx185, align 1
  %arrayidx189 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 2
  %26 = load i32, i32* %arrayidx189, align 4
  %inc191 = add i32 %mul, 1
  %27 = trunc i32 %26 to i8
  %conv196 = add i8 %conv183, %27
  store i8 %conv196, i8* %arrayidx185, align 1
  %arrayidx200 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 3
  %28 = load i32, i32* %arrayidx200, align 4
  %.tr1045 = trunc i32 %28 to i8
  %conv202 = shl i8 %.tr1045, 4
  %idxprom204 = sext i32 %inc191 to i64
  %arrayidx205 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %idxprom204
  store i8 %conv202, i8* %arrayidx205, align 1
  %arrayidx209 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 4
  %29 = load i32, i32* %arrayidx209, align 4
  %inc211 = add i32 %mul, 2
  %30 = trunc i32 %29 to i8
  %conv216 = add i8 %conv202, %30
  store i8 %conv216, i8* %arrayidx205, align 1
  %arrayidx220 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 5
  %31 = load i32, i32* %arrayidx220, align 4
  %.tr1046 = trunc i32 %31 to i8
  %conv222 = shl i8 %.tr1046, 4
  %idxprom224 = sext i32 %inc211 to i64
  %arrayidx225 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 41, i64 %idxprom224
  store i8 %conv222, i8* %arrayidx225, align 1
  %arrayidx228 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 6
  %32 = load i32, i32* %arrayidx228, align 4
  %33 = trunc i32 %32 to i8
  %conv234 = add i8 %conv222, %33
  store i8 %conv234, i8* %arrayidx225, align 1
  call fastcc void @set_palette(%struct.vc_data* noundef %vc) #18
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

if.else237:                                       ; preds = %sw.bb156
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb240:                                         ; preds = %sw.epilog
  %arrayidx250 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  store i32 0, i32* %arrayidx250, align 4
  %arrayidx250.1 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  store i32 0, i32* %arrayidx250.1, align 4
  %arrayidx250.2 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 2
  store i32 0, i32* %arrayidx250.2, align 4
  %arrayidx250.3 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 3
  store i32 0, i32* %arrayidx250.3, align 4
  %arrayidx250.4 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 4
  store i32 0, i32* %arrayidx250.4, align 4
  %arrayidx250.5 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 5
  store i32 0, i32* %arrayidx250.5, align 4
  %arrayidx250.6 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 6
  store i32 0, i32* %arrayidx250.6, align 4
  %arrayidx250.7 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 7
  store i32 0, i32* %arrayidx250.7, align 4
  %arrayidx250.8 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 8
  store i32 0, i32* %arrayidx250.8, align 4
  %arrayidx250.9 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 9
  store i32 0, i32* %arrayidx250.9, align 4
  %arrayidx250.10 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 10
  store i32 0, i32* %arrayidx250.10, align 4
  %arrayidx250.11 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 11
  store i32 0, i32* %arrayidx250.11, align 4
  %arrayidx250.12 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 12
  store i32 0, i32* %arrayidx250.12, align 4
  %arrayidx250.13 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 13
  store i32 0, i32* %arrayidx250.13, align 4
  %arrayidx250.14 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 14
  store i32 0, i32* %arrayidx250.14, align 4
  %arrayidx250.15 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 15
  store i32 0, i32* %arrayidx250.15, align 4
  %vc_npar241 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  store i32 0, i32* %vc_npar241, align 8
  store i32 3, i32* %vc_state, align 4
  switch i32 %c, label %sw.epilog281 [
    i32 91, label %if.then259
    i32 63, label %sw.bb262
    i32 62, label %sw.bb266
    i32 61, label %sw.bb271
    i32 60, label %sw.bb276
  ]

if.then259:                                       ; preds = %sw.bb240
  store i32 4, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb262:                                         ; preds = %sw.bb240
  %vc_priv = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load263 = load i16, i16* %vc_priv, align 8
  %bf.clear264 = and i16 %bf.load263, -897
  %bf.set265 = or i16 %bf.clear264, 128
  store i16 %bf.set265, i16* %vc_priv, align 8
  br label %sw.epilog727

sw.bb266:                                         ; preds = %sw.bb240
  %vc_priv267 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load268 = load i16, i16* %vc_priv267, align 8
  %bf.clear269 = and i16 %bf.load268, -897
  %bf.set270 = or i16 %bf.clear269, 384
  store i16 %bf.set270, i16* %vc_priv267, align 8
  br label %sw.epilog727

sw.bb271:                                         ; preds = %sw.bb240
  %vc_priv272 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load273 = load i16, i16* %vc_priv272, align 8
  %bf.clear274 = and i16 %bf.load273, -897
  %bf.set275 = or i16 %bf.clear274, 256
  store i16 %bf.set275, i16* %vc_priv272, align 8
  br label %sw.epilog727

sw.bb276:                                         ; preds = %sw.bb240
  %vc_priv277 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load278 = load i16, i16* %vc_priv277, align 8
  %bf.clear279 = and i16 %bf.load278, -897
  %bf.set280 = or i16 %bf.clear279, 512
  store i16 %bf.set280, i16* %vc_priv277, align 8
  br label %sw.epilog727

sw.epilog281:                                     ; preds = %sw.bb240
  %vc_priv282 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load283 = load i16, i16* %vc_priv282, align 8
  %bf.clear284 = and i16 %bf.load283, -897
  store i16 %bf.clear284, i16* %vc_priv282, align 8
  br label %sw.bb286

sw.bb286:                                         ; preds = %sw.epilog, %sw.epilog281
  %cmp287 = icmp eq i32 %c, 59
  br i1 %cmp287, label %land.lhs.true289, label %if.else296

land.lhs.true289:                                 ; preds = %sw.bb286
  %vc_npar290 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %34 = load i32, i32* %vc_npar290, align 8
  %cmp291 = icmp ult i32 %34, 15
  br i1 %cmp291, label %if.then293, label %if.then321

if.then293:                                       ; preds = %land.lhs.true289
  %inc295 = add nuw nsw i32 %34, 1
  store i32 %inc295, i32* %vc_npar290, align 8
  br label %sw.epilog727

if.else296:                                       ; preds = %sw.bb286
  %35 = add i32 %c, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %if.then302, label %if.end315

if.then302:                                       ; preds = %if.else296
  %vc_npar304 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %37 = load i32, i32* %vc_npar304, align 8
  %idxprom305 = zext i32 %37 to i64
  %arrayidx306 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom305
  %38 = load i32, i32* %arrayidx306, align 4
  %mul307 = mul i32 %38, 10
  %add313 = add i32 %mul307, %35
  store i32 %add313, i32* %arrayidx306, align 4
  br label %sw.epilog727

if.end315:                                        ; preds = %if.else296
  %39 = and i32 %c, -32
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %if.then321, label %if.end323

if.then321:                                       ; preds = %land.lhs.true289, %if.end315
  store i32 9, i32* %vc_state, align 4
  br label %sw.epilog727

if.end323:                                        ; preds = %if.end315
  store i32 0, i32* %vc_state, align 4
  switch i32 %c, label %if.end323.sw.epilog416_crit_edge [
    i32 104, label %sw.bb325
    i32 108, label %sw.bb333
    i32 99, label %sw.bb343
    i32 109, label %sw.bb369
    i32 110, label %sw.bb393
  ]

if.end323.sw.epilog416_crit_edge:                 ; preds = %if.end323
  %vc_priv417.phi.trans.insert = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load418.pre = load i16, i16* %vc_priv417.phi.trans.insert, align 8
  br label %sw.epilog416

sw.bb325:                                         ; preds = %if.end323
  %vc_priv326 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load327 = load i16, i16* %vc_priv326, align 8
  %41 = and i16 %bf.load327, 768
  %cmp329 = icmp eq i16 %41, 0
  br i1 %cmp329, label %if.then331, label %sw.epilog727

if.then331:                                       ; preds = %sw.bb325
  call fastcc void @set_mode(%struct.vc_data* noundef %vc, i32 noundef 1) #18
  br label %sw.epilog727

sw.bb333:                                         ; preds = %if.end323
  %vc_priv334 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load335 = load i16, i16* %vc_priv334, align 8
  %42 = and i16 %bf.load335, 768
  %cmp339 = icmp eq i16 %42, 0
  br i1 %cmp339, label %if.then341, label %sw.epilog727

if.then341:                                       ; preds = %sw.bb333
  call fastcc void @set_mode(%struct.vc_data* noundef %vc, i32 noundef 0) #18
  br label %sw.epilog727

sw.bb343:                                         ; preds = %if.end323
  %vc_priv344 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load345 = load i16, i16* %vc_priv344, align 8
  %43 = and i16 %bf.load345, 896
  %cmp349 = icmp eq i16 %43, 128
  br i1 %cmp349, label %if.then351, label %sw.epilog416

if.then351:                                       ; preds = %sw.bb343
  %arrayidx353 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %44 = load i32, i32* %arrayidx353, align 4
  %tobool354.not = icmp eq i32 %44, 0
  br i1 %tobool354.not, label %if.else365, label %if.then355

if.then355:                                       ; preds = %if.then351
  %arrayidx359 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %45 = load i32, i32* %arrayidx359, align 4
  %shl360 = shl i32 %45, 8
  %or = or i32 %shl360, %44
  %arrayidx362 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 2
  %46 = load i32, i32* %arrayidx362, align 4
  %shl363 = shl i32 %46, 16
  %or364 = or i32 %or, %shl363
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 23
  store i32 %or364, i32* %vc_cursor_type, align 4
  br label %sw.epilog727

if.else365:                                       ; preds = %if.then351
  %47 = load i32, i32* @cur_default, align 4
  %vc_cursor_type366 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 23
  store i32 %47, i32* %vc_cursor_type366, align 4
  br label %sw.epilog727

sw.bb369:                                         ; preds = %if.end323
  %vc_priv370 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load371 = load i16, i16* %vc_priv370, align 8
  %48 = and i16 %bf.load371, 896
  %cmp375 = icmp eq i16 %48, 128
  br i1 %cmp375, label %if.then377, label %sw.epilog416

if.then377:                                       ; preds = %sw.bb369
  call void @clear_selection() #17
  %arrayidx379 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %49 = load i32, i32* %arrayidx379, align 4
  %tobool380.not = icmp eq i32 %49, 0
  br i1 %tobool380.not, label %if.else389, label %if.then381

if.then381:                                       ; preds = %if.then377
  %shl384 = shl i32 %49, 8
  %arrayidx386 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %50 = load i32, i32* %arrayidx386, align 4
  %or387 = or i32 %50, %shl384
  %conv388 = trunc i32 %or387 to i16
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 24
  store i16 %conv388, i16* %vc_complement_mask, align 8
  br label %sw.epilog727

if.else389:                                       ; preds = %if.then377
  %vc_s_complement_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 25
  %51 = load i16, i16* %vc_s_complement_mask, align 2
  %vc_complement_mask390 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 24
  store i16 %51, i16* %vc_complement_mask390, align 8
  br label %sw.epilog727

sw.bb393:                                         ; preds = %if.end323
  %vc_priv394 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load395 = load i16, i16* %vc_priv394, align 8
  %52 = and i16 %bf.load395, 896
  %cmp399 = icmp eq i16 %52, 0
  br i1 %cmp399, label %if.then401, label %sw.epilog727

if.then401:                                       ; preds = %sw.bb393
  %arrayidx403 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %53 = load i32, i32* %arrayidx403, align 4
  switch i32 %53, label %sw.epilog727 [
    i32 5, label %if.then406
    i32 6, label %if.then412
  ]

if.then406:                                       ; preds = %if.then401
  call fastcc void @status_report(%struct.tty_struct* noundef %tty) #18
  br label %sw.epilog727

if.then412:                                       ; preds = %if.then401
  call fastcc void @cursor_report(%struct.vc_data* noundef %vc, %struct.tty_struct* noundef %tty) #18
  br label %sw.epilog727

sw.epilog416:                                     ; preds = %if.end323.sw.epilog416_crit_edge, %sw.bb369, %sw.bb343
  %bf.load418 = phi i16 [ %bf.load418.pre, %if.end323.sw.epilog416_crit_edge ], [ %bf.load371, %sw.bb369 ], [ %bf.load345, %sw.bb343 ]
  %54 = and i16 %bf.load418, 896
  %cmp422.not = icmp eq i16 %54, 0
  br i1 %cmp422.not, label %if.end429, label %if.then424

if.then424:                                       ; preds = %sw.epilog416
  %vc_priv417 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.clear427 = and i16 %bf.load418, -897
  store i16 %bf.clear427, i16* %vc_priv417, align 8
  br label %sw.epilog727

if.end429:                                        ; preds = %sw.epilog416
  switch i32 %c, label %sw.epilog727 [
    i32 71, label %sw.bb430
    i32 96, label %sw.bb430
    i32 65, label %sw.bb441
    i32 66, label %sw.bb457
    i32 101, label %sw.bb457
    i32 67, label %sw.bb473
    i32 97, label %sw.bb473
    i32 68, label %sw.bb489
    i32 69, label %sw.bb505
    i32 70, label %sw.bb519
    i32 100, label %sw.bb533
    i32 72, label %sw.bb546
    i32 102, label %sw.bb546
    i32 74, label %sw.bb567
    i32 75, label %sw.bb570
    i32 76, label %sw.bb573
    i32 77, label %sw.bb576
    i32 80, label %sw.bb579
    i32 99, label %sw.bb582
    i32 103, label %sw.bb588
    i32 109, label %sw.bb613
    i32 113, label %sw.bb614
    i32 114, label %sw.bb633
    i32 115, label %sw.bb668
    i32 117, label %sw.bb669
    i32 88, label %sw.bb670
    i32 64, label %sw.bb673
    i32 93, label %sw.bb676
  ]

sw.bb430:                                         ; preds = %if.end429, %if.end429
  %arrayidx432 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %55 = load i32, i32* %arrayidx432, align 4
  %tobool433.not = icmp eq i32 %55, 0
  br i1 %tobool433.not, label %if.end437, label %if.then434

if.then434:                                       ; preds = %sw.bb430
  %dec = add i32 %55, -1
  store i32 %dec, i32* %arrayidx432, align 4
  br label %if.end437

if.end437:                                        ; preds = %if.then434, %sw.bb430
  %56 = phi i32 [ %dec, %if.then434 ], [ 0, %sw.bb430 ]
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %57 = load i32, i32* %y, align 4
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %56, i32 noundef %57) #18
  br label %sw.epilog727

sw.bb441:                                         ; preds = %if.end429
  %arrayidx443 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %58 = load i32, i32* %arrayidx443, align 4
  %tobool444.not = icmp eq i32 %58, 0
  br i1 %tobool444.not, label %if.then445, label %if.end449

if.then445:                                       ; preds = %sw.bb441
  store i32 1, i32* %arrayidx443, align 4
  br label %if.end449

if.end449:                                        ; preds = %if.then445, %sw.bb441
  %59 = phi i32 [ 1, %if.then445 ], [ %58, %sw.bb441 ]
  %x451 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %60 = load i32, i32* %x451, align 8
  %y453 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %61 = load i32, i32* %y453, align 4
  %sub456 = sub i32 %61, %59
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %60, i32 noundef %sub456) #18
  br label %sw.epilog727

sw.bb457:                                         ; preds = %if.end429, %if.end429
  %arrayidx459 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %62 = load i32, i32* %arrayidx459, align 4
  %tobool460.not = icmp eq i32 %62, 0
  br i1 %tobool460.not, label %if.then461, label %if.end465

if.then461:                                       ; preds = %sw.bb457
  store i32 1, i32* %arrayidx459, align 4
  br label %if.end465

if.end465:                                        ; preds = %if.then461, %sw.bb457
  %63 = phi i32 [ 1, %if.then461 ], [ %62, %sw.bb457 ]
  %x467 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %64 = load i32, i32* %x467, align 8
  %y469 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %65 = load i32, i32* %y469, align 4
  %add472 = add i32 %63, %65
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %64, i32 noundef %add472) #18
  br label %sw.epilog727

sw.bb473:                                         ; preds = %if.end429, %if.end429
  %arrayidx475 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %66 = load i32, i32* %arrayidx475, align 4
  %tobool476.not = icmp eq i32 %66, 0
  br i1 %tobool476.not, label %if.then477, label %if.end481

if.then477:                                       ; preds = %sw.bb473
  store i32 1, i32* %arrayidx475, align 4
  br label %if.end481

if.end481:                                        ; preds = %if.then477, %sw.bb473
  %67 = phi i32 [ 1, %if.then477 ], [ %66, %sw.bb473 ]
  %x483 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %68 = load i32, i32* %x483, align 8
  %add486 = add i32 %67, %68
  %y488 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %69 = load i32, i32* %y488, align 4
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %add486, i32 noundef %69) #18
  br label %sw.epilog727

sw.bb489:                                         ; preds = %if.end429
  %arrayidx491 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %70 = load i32, i32* %arrayidx491, align 4
  %tobool492.not = icmp eq i32 %70, 0
  br i1 %tobool492.not, label %if.then493, label %if.end497

if.then493:                                       ; preds = %sw.bb489
  store i32 1, i32* %arrayidx491, align 4
  br label %if.end497

if.end497:                                        ; preds = %if.then493, %sw.bb489
  %71 = phi i32 [ 1, %if.then493 ], [ %70, %sw.bb489 ]
  %x499 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %72 = load i32, i32* %x499, align 8
  %sub502 = sub i32 %72, %71
  %y504 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %73 = load i32, i32* %y504, align 4
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %sub502, i32 noundef %73) #18
  br label %sw.epilog727

sw.bb505:                                         ; preds = %if.end429
  %arrayidx507 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %74 = load i32, i32* %arrayidx507, align 4
  %tobool508.not = icmp eq i32 %74, 0
  br i1 %tobool508.not, label %if.then509, label %if.end513

if.then509:                                       ; preds = %sw.bb505
  store i32 1, i32* %arrayidx507, align 4
  br label %if.end513

if.end513:                                        ; preds = %if.then509, %sw.bb505
  %75 = phi i32 [ 1, %if.then509 ], [ %74, %sw.bb505 ]
  %y515 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %76 = load i32, i32* %y515, align 4
  %add518 = add i32 %75, %76
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef %add518) #18
  br label %sw.epilog727

sw.bb519:                                         ; preds = %if.end429
  %arrayidx521 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %77 = load i32, i32* %arrayidx521, align 4
  %tobool522.not = icmp eq i32 %77, 0
  br i1 %tobool522.not, label %if.then523, label %if.end527

if.then523:                                       ; preds = %sw.bb519
  store i32 1, i32* %arrayidx521, align 4
  br label %if.end527

if.end527:                                        ; preds = %if.then523, %sw.bb519
  %78 = phi i32 [ 1, %if.then523 ], [ %77, %sw.bb519 ]
  %y529 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %79 = load i32, i32* %y529, align 4
  %sub532 = sub i32 %79, %78
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef %sub532) #18
  br label %sw.epilog727

sw.bb533:                                         ; preds = %if.end429
  %arrayidx535 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %80 = load i32, i32* %arrayidx535, align 4
  %tobool536.not = icmp eq i32 %80, 0
  br i1 %tobool536.not, label %if.end541, label %if.then537

if.then537:                                       ; preds = %sw.bb533
  %dec540 = add i32 %80, -1
  store i32 %dec540, i32* %arrayidx535, align 4
  br label %if.end541

if.end541:                                        ; preds = %if.then537, %sw.bb533
  %81 = phi i32 [ %dec540, %if.then537 ], [ 0, %sw.bb533 ]
  %x543 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %82 = load i32, i32* %x543, align 8
  call fastcc void @gotoxay(%struct.vc_data* noundef %vc, i32 noundef %82, i32 noundef %81) #18
  br label %sw.epilog727

sw.bb546:                                         ; preds = %if.end429, %if.end429
  %arrayidx548 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %83 = load i32, i32* %arrayidx548, align 4
  %tobool549.not = icmp eq i32 %83, 0
  br i1 %tobool549.not, label %if.end554, label %if.then550

if.then550:                                       ; preds = %sw.bb546
  %dec553 = add i32 %83, -1
  store i32 %dec553, i32* %arrayidx548, align 4
  br label %if.end554

if.end554:                                        ; preds = %if.then550, %sw.bb546
  %84 = phi i32 [ %dec553, %if.then550 ], [ 0, %sw.bb546 ]
  %arrayidx556 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %85 = load i32, i32* %arrayidx556, align 4
  %tobool557.not = icmp eq i32 %85, 0
  br i1 %tobool557.not, label %if.end562, label %if.then558

if.then558:                                       ; preds = %if.end554
  %dec561 = add i32 %85, -1
  store i32 %dec561, i32* %arrayidx556, align 4
  br label %if.end562

if.end562:                                        ; preds = %if.then558, %if.end554
  %86 = phi i32 [ %dec561, %if.then558 ], [ 0, %if.end554 ]
  call fastcc void @gotoxay(%struct.vc_data* noundef %vc, i32 noundef %86, i32 noundef %84) #18
  br label %sw.epilog727

sw.bb567:                                         ; preds = %if.end429
  %arrayidx569 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %87 = load i32, i32* %arrayidx569, align 4
  call fastcc void @csi_J(%struct.vc_data* noundef %vc, i32 noundef %87) #18
  br label %sw.epilog727

sw.bb570:                                         ; preds = %if.end429
  %arrayidx572 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %88 = load i32, i32* %arrayidx572, align 4
  call fastcc void @csi_K(%struct.vc_data* noundef %vc, i32 noundef %88) #18
  br label %sw.epilog727

sw.bb573:                                         ; preds = %if.end429
  %arrayidx575 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %89 = load i32, i32* %arrayidx575, align 4
  call fastcc void @csi_L(%struct.vc_data* noundef %vc, i32 noundef %89) #18
  br label %sw.epilog727

sw.bb576:                                         ; preds = %if.end429
  %arrayidx578 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %90 = load i32, i32* %arrayidx578, align 4
  call fastcc void @csi_M(%struct.vc_data* noundef %vc, i32 noundef %90) #18
  br label %sw.epilog727

sw.bb579:                                         ; preds = %if.end429
  %arrayidx581 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %91 = load i32, i32* %arrayidx581, align 4
  call fastcc void @csi_P(%struct.vc_data* noundef %vc, i32 noundef %91) #18
  br label %sw.epilog727

sw.bb582:                                         ; preds = %if.end429
  %arrayidx584 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %92 = load i32, i32* %arrayidx584, align 4
  %tobool585.not = icmp eq i32 %92, 0
  br i1 %tobool585.not, label %if.then586, label %sw.epilog727

if.then586:                                       ; preds = %sw.bb582
  call fastcc void @respond_ID(%struct.tty_struct* noundef %tty) #18
  br label %sw.epilog727

sw.bb588:                                         ; preds = %if.end429
  %arrayidx590 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %93 = load i32, i32* %arrayidx590, align 4
  switch i32 %93, label %sw.epilog727 [
    i32 0, label %land.lhs.true592
    i32 3, label %if.then608
  ]

land.lhs.true592:                                 ; preds = %sw.bb588
  %x594 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %94 = load i32, i32* %x594, align 8
  %cmp595 = icmp ult i32 %94, 256
  br i1 %cmp595, label %if.then597, label %sw.epilog727

if.then597:                                       ; preds = %land.lhs.true592
  %conv600 = zext i32 %94 to i64
  %arraydecay602 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 40, i64 0
  call fastcc void @set_bit(i64 noundef %conv600, i64* noundef %arraydecay602) #18
  br label %sw.epilog727

if.then608:                                       ; preds = %sw.bb588
  %arraydecay610 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 40, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay610) #18
  br label %sw.epilog727

sw.bb613:                                         ; preds = %if.end429
  call fastcc void @csi_m(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb614:                                         ; preds = %if.end429
  %arrayidx616 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %95 = load i32, i32* %arrayidx616, align 4
  %cmp617 = icmp ult i32 %95, 4
  br i1 %cmp617, label %if.then619, label %sw.epilog727

if.then619:                                       ; preds = %sw.bb614
  %vc_num620 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %96 = load i16, i16* %vc_num620, align 8
  %conv621 = zext i16 %96 to i32
  %cmp624.not = icmp eq i32 %95, 3
  %spec.select = select i1 %cmp624.not, i32 4, i32 %95
  call void @vt_set_led_state(i32 noundef %conv621, i32 noundef %spec.select) #17
  br label %sw.epilog727

sw.bb633:                                         ; preds = %if.end429
  %arrayidx635 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %97 = load i32, i32* %arrayidx635, align 4
  %tobool636.not = icmp eq i32 %97, 0
  br i1 %tobool636.not, label %if.then637, label %if.end641

if.then637:                                       ; preds = %sw.bb633
  store i32 1, i32* %arrayidx635, align 4
  br label %if.end641

if.end641:                                        ; preds = %if.then637, %sw.bb633
  %98 = phi i32 [ 1, %if.then637 ], [ %97, %sw.bb633 ]
  %arrayidx643 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %99 = load i32, i32* %arrayidx643, align 4
  %tobool644.not = icmp eq i32 %99, 0
  br i1 %tobool644.not, label %if.then645, label %if.end648

if.then645:                                       ; preds = %if.end641
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %100 = load i32, i32* %vc_rows, align 8
  store i32 %100, i32* %arrayidx643, align 4
  br label %if.end648

if.end648:                                        ; preds = %if.then645, %if.end641
  %101 = phi i32 [ %100, %if.then645 ], [ %99, %if.end641 ]
  %cmp653 = icmp ult i32 %98, %101
  br i1 %cmp653, label %land.lhs.true655, label %sw.epilog727

land.lhs.true655:                                 ; preds = %if.end648
  %vc_rows658 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %102 = load i32, i32* %vc_rows658, align 8
  %cmp659.not = icmp ugt i32 %101, %102
  br i1 %cmp659.not, label %sw.epilog727, label %if.then661

if.then661:                                       ; preds = %land.lhs.true655
  %sub664 = add i32 %98, -1
  %vc_top = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 12
  store i32 %sub664, i32* %vc_top, align 8
  %vc_bottom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 13
  store i32 %101, i32* %vc_bottom, align 4
  call fastcc void @gotoxay(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef 0) #18
  br label %sw.epilog727

sw.bb668:                                         ; preds = %if.end429
  call fastcc void @save_cur(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb669:                                         ; preds = %if.end429
  call fastcc void @restore_cur(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb670:                                         ; preds = %if.end429
  %arrayidx672 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %103 = load i32, i32* %arrayidx672, align 4
  call fastcc void @csi_X(%struct.vc_data* noundef %vc, i32 noundef %103) #18
  br label %sw.epilog727

sw.bb673:                                         ; preds = %if.end429
  %arrayidx675 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %104 = load i32, i32* %arrayidx675, align 4
  call fastcc void @csi_at(%struct.vc_data* noundef %vc, i32 noundef %104) #18
  br label %sw.epilog727

sw.bb676:                                         ; preds = %if.end429
  call fastcc void @setterm_command(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog727

sw.bb678:                                         ; preds = %sw.epilog
  %105 = add i32 %c, -20
  %106 = icmp ult i32 %105, 44
  br i1 %106, label %sw.epilog727, label %if.end685

if.end685:                                        ; preds = %sw.bb678
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb687:                                         ; preds = %sw.epilog
  store i32 0, i32* %vc_state, align 4
  switch i32 %c, label %sw.epilog727 [
    i32 64, label %sw.bb689
    i32 71, label %sw.bb693
    i32 56, label %sw.bb693
  ]

sw.bb689:                                         ; preds = %sw.bb687
  %vc_utf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load690 = load i16, i16* %vc_utf, align 8
  %bf.clear691 = and i16 %bf.load690, -16385
  store i16 %bf.clear691, i16* %vc_utf, align 8
  br label %sw.epilog727

sw.bb693:                                         ; preds = %sw.bb687, %sw.bb687
  %vc_utf694 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load695 = load i16, i16* %vc_utf694, align 8
  %bf.set697 = or i16 %bf.load695, 16384
  store i16 %bf.set697, i16* %vc_utf694, align 8
  br label %sw.epilog727

sw.bb699:                                         ; preds = %sw.epilog
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb701:                                         ; preds = %sw.epilog
  store i32 0, i32* %vc_state, align 4
  %cmp703 = icmp eq i32 %c, 56
  br i1 %cmp703, label %if.then705, label %sw.epilog727

if.then705:                                       ; preds = %sw.bb701
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %107 = load i16, i16* %vc_video_erase_char, align 8
  %108 = and i16 %107, -256
  %109 = or i16 %108, 69
  store i16 %109, i16* %vc_video_erase_char, align 8
  call fastcc void @csi_J(%struct.vc_data* noundef %vc, i32 noundef 2) #18
  %110 = load i16, i16* %vc_video_erase_char, align 8
  %111 = and i16 %110, -256
  %112 = or i16 %111, 32
  store i16 %112, i16* %vc_video_erase_char, align 8
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 9
  %113 = load i64, i64* %vc_origin, align 8
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  %114 = load i32, i32* %vc_screenbuf_size, align 8
  %div = lshr i32 %114, 1
  call fastcc void @do_update_region(%struct.vc_data* noundef %vc, i64 noundef %113, i32 noundef %div) #18
  br label %sw.epilog727

sw.bb718:                                         ; preds = %sw.epilog
  call fastcc void @vc_setGx(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef %c) #18
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

sw.bb720:                                         ; preds = %sw.epilog
  call fastcc void @vc_setGx(%struct.vc_data* noundef %vc, i32 noundef 1, i32 noundef %c) #18
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

sw.default:                                       ; preds = %sw.epilog
  store i32 0, i32* %vc_state, align 4
  br label %sw.epilog727

sw.epilog727:                                     ; preds = %sw.bb588, %land.lhs.true592, %if.end, %if.then401, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.bb701, %if.then705, %sw.bb687, %sw.bb678, %if.end429, %if.end648, %land.lhs.true655, %if.then661, %sw.bb614, %if.then619, %if.then597, %if.then608, %sw.bb582, %if.then586, %sw.bb393, %if.then412, %if.then406, %if.then381, %if.else389, %if.then355, %if.else365, %sw.bb333, %if.then341, %sw.bb325, %if.then331, %if.else237, %if.then175, %if.then164, %if.then149, %if.else151, %if.then141, %sw.bb80, %sw.bb95, %if.then100, %sw.bb41, %if.then6, %if.then8, %if.else, %if.end, %entry, %sw.bb12, %if.end34, %sw.bb47, %sw.bb48, %sw.bb56, %sw.bb72, %sw.bb74, %sw.bb77, %sw.bb82, %sw.bb84, %sw.bb86, %sw.bb88, %sw.bb90, %sw.bb92, %sw.bb93, %sw.bb94, %sw.bb107, %sw.bb109, %sw.bb110, %sw.bb111, %sw.bb112, %sw.bb114, %sw.bb116, %sw.bb118, %sw.bb119, %sw.bb122, %if.then129, %if.then259, %sw.bb262, %sw.bb266, %sw.bb271, %sw.bb276, %if.then293, %if.then302, %if.then321, %if.then424, %if.end437, %if.end449, %if.end465, %if.end481, %if.end497, %if.end513, %if.end527, %if.end541, %if.end562, %sw.bb567, %sw.bb570, %sw.bb573, %sw.bb576, %sw.bb579, %sw.bb613, %sw.bb668, %sw.bb669, %sw.bb670, %sw.bb673, %sw.bb676, %if.end685, %sw.bb689, %sw.bb693, %sw.bb699, %sw.bb718, %sw.bb720, %sw.default
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vc_con_write_normal(%struct.vc_data* noundef %vc, i32 noundef %tc, i32 noundef %c, %struct.vc_draw_region* nocapture noundef %draw) unnamed_addr #0 {
entry:
  %vc_attr1 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 18
  %0 = load i8, i8* %vc_attr1, align 1
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %1 = load i16, i16* %vc_hi_font_mask, align 8
  %conv = zext i16 %1 to i32
  %tobool.not = icmp eq i16 %1, 0
  %vc_utf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_utf, align 8
  %2 = and i16 %bf.load, 16385
  %3 = icmp eq i16 %2, 16384
  br i1 %3, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @is_double_width(i32 noundef %c) #18
  %tobool9.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool9.not, i8 1, i8 2
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry
  %width.0 = phi i8 [ 1, %entry ], [ %spec.select, %if.then ]
  %conv12 = sext i32 %tc to i64
  %call13 = call i32 @conv_uni_to_pc(%struct.vc_data* noundef %vc, i64 noundef %conv12) #17
  %neg = select i1 %tobool.not, i32 -256, i32 -512
  %and = and i32 %call13, %neg
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end55, label %if.then16

if.then16:                                        ; preds = %if.end11
  %4 = icmp ugt i32 %call13, -3
  br i1 %4, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.then16
  %bf.load23 = load i16, i16* %vc_utf, align 8
  %5 = and i16 %bf.load23, 16384
  %tobool27.not = icmp eq i16 %5, 0
  br i1 %tobool27.not, label %land.lhs.true37, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end21
  %bf.clear31 = and i16 %bf.load23, 1
  %tobool33 = icmp ne i16 %bf.clear31, 0
  %cmp35 = icmp slt i32 %c, 128
  %or.cond145 = or i1 %cmp35, %tobool33
  %and40 = and i32 %neg, %c
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond210 = select i1 %or.cond145, i1 %tobool41.not, i1 false
  br i1 %or.cond210, label %if.end55, label %if.else

land.lhs.true37:                                  ; preds = %if.end21
  %and40.old = and i32 %neg, %c
  %tobool41.not.old = icmp eq i32 %and40.old, 0
  br i1 %tobool41.not.old, label %if.end55, label %if.else

if.else:                                          ; preds = %lor.lhs.false28, %land.lhs.true37
  %call43 = call i32 @conv_uni_to_pc(%struct.vc_data* noundef %vc, i64 noundef 65533) #17
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end55

if.then46:                                        ; preds = %if.else
  %call47 = call i32 @conv_uni_to_pc(%struct.vc_data* noundef %vc, i64 noundef 63) #17
  %cmp48 = icmp slt i32 %call47, 0
  %spec.store.select = select i1 %cmp48, i32 63, i32 %call47
  %call52 = call fastcc i8 @vc_invert_attr(%struct.vc_data* noundef %vc) #18
  call fastcc void @con_flush(%struct.vc_data* noundef %vc, %struct.vc_draw_region* noundef %draw) #18
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true37, %lor.lhs.false28, %if.then46, %if.else, %if.end11
  %tc.addr.0 = phi i32 [ %spec.store.select, %if.then46 ], [ %call43, %if.else ], [ %call13, %if.end11 ], [ %c, %lor.lhs.false28 ], [ %c, %land.lhs.true37 ]
  %vc_attr.0 = phi i8 [ %call52, %if.then46 ], [ %0, %if.else ], [ %0, %if.end11 ], [ %0, %lor.lhs.false28 ], [ %0, %land.lhs.true37 ]
  %inverse.0.off0 = phi i1 [ true, %if.then46 ], [ false, %if.else ], [ false, %if.end11 ], [ false, %lor.lhs.false28 ], [ false, %land.lhs.true37 ]
  %conv93 = zext i8 %vc_attr.0 to i32
  %shl = shl nuw nsw i32 %conv93, 8
  %neg95 = xor i32 %conv, -1
  %and96 = and i32 %shl, %neg95
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %x = getelementptr inbounds %struct.vc_draw_region, %struct.vc_draw_region* %draw, i64 0, i32 2
  %x105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %from = getelementptr inbounds %struct.vc_draw_region, %struct.vc_draw_region* %draw, i64 0, i32 0
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %to127 = getelementptr inbounds %struct.vc_draw_region, %struct.vc_draw_region* %draw, i64 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end131, %if.end55
  %tc.addr.1 = phi i32 [ %tc.addr.0, %if.end55 ], [ %spec.store.select146, %if.end131 ]
  %next_c.0 = phi i32 [ %c, %if.end55 ], [ 32, %if.end131 ]
  %width.1 = phi i8 [ %width.0, %if.end55 ], [ 1, %if.end131 ]
  %bf.load56 = load i16, i16* %vc_utf, align 8
  %6 = and i16 %bf.load56, 1088
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %if.end68, label %if.then67

if.then67:                                        ; preds = %while.cond
  call fastcc void @con_flush(%struct.vc_data* noundef %vc, %struct.vc_draw_region* noundef %draw) #18
  %bf.load70.pre = load i16, i16* %vc_utf, align 8
  br label %if.end68

if.end68:                                         ; preds = %while.cond, %if.then67
  %bf.load70 = phi i16 [ %bf.load56, %while.cond ], [ %bf.load70.pre, %if.then67 ]
  %8 = and i16 %bf.load70, 1024
  %tobool74.not = icmp eq i16 %8, 0
  br i1 %tobool74.not, label %if.end76, label %if.then75

if.then75:                                        ; preds = %if.end68
  call fastcc void @cr(%struct.vc_data* noundef %vc) #18
  call fastcc void @lf(%struct.vc_data* noundef %vc) #18
  %bf.load78.pre = load i16, i16* %vc_utf, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end68
  %bf.load78 = phi i16 [ %bf.load78.pre, %if.then75 ], [ %bf.load70, %if.end68 ]
  %9 = and i16 %bf.load78, 64
  %tobool82.not = icmp eq i16 %9, 0
  br i1 %tobool82.not, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end76
  call fastcc void @insert_char(%struct.vc_data* noundef %vc, i32 noundef 1) #18
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end76
  call fastcc void @vc_uniscr_putc(%struct.vc_data* noundef %vc, i32 noundef %next_c.0) #18
  br i1 %tobool.not, label %if.end92, label %if.then86

if.then86:                                        ; preds = %if.end84
  %and87 = and i32 %tc.addr.1, 256
  %tobool88.not = icmp eq i32 %and87, 0
  %cond90 = select i1 %tobool88.not, i32 0, i32 %conv
  %and91 = and i32 %tc.addr.1, 255
  %or = or i32 %cond90, %and91
  br label %if.end92

if.end92:                                         ; preds = %if.then86, %if.end84
  %tc.addr.2 = phi i32 [ %or, %if.then86 ], [ %tc.addr.1, %if.end84 ]
  %or97 = or i32 %tc.addr.2, %and96
  %conv98 = trunc i32 %or97 to i16
  %10 = load i64, i64* %vc_pos, align 8
  %11 = inttoptr i64 %10 to i16*
  store i16 %conv98, i16* %11, align 2
  %call99 = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call99, label %land.lhs.true101, label %if.end108

land.lhs.true101:                                 ; preds = %if.end92
  %12 = load i32, i32* %x, align 8
  %cmp102 = icmp slt i32 %12, 0
  br i1 %cmp102, label %if.then104, label %if.end108

if.then104:                                       ; preds = %land.lhs.true101
  %13 = load i32, i32* %x105, align 8
  store i32 %13, i32* %x, align 8
  %14 = load i64, i64* %vc_pos, align 8
  store i64 %14, i64* %from, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %land.lhs.true101, %if.end92
  %15 = load i32, i32* %x105, align 8
  %16 = load i32, i32* %vc_cols, align 4
  %sub = add i32 %16, -1
  %cmp111 = icmp eq i32 %15, %sub
  br i1 %cmp111, label %if.then113, label %if.else122

if.then113:                                       ; preds = %if.end108
  %bf.load114 = load i16, i16* %vc_utf, align 8
  %17 = shl i16 %bf.load114, 6
  %bf.shl = and i16 %17, 1024
  %bf.clear120 = and i16 %bf.load114, -1025
  %bf.set = or i16 %bf.shl, %bf.clear120
  store i16 %bf.set, i16* %vc_utf, align 8
  %18 = load i64, i64* %vc_pos, align 8
  %add = add i64 %18, 2
  br label %if.end128

if.else122:                                       ; preds = %if.end108
  %inc = add i32 %15, 1
  store i32 %inc, i32* %x105, align 8
  %19 = load i64, i64* %vc_pos, align 8
  %add126 = add i64 %19, 2
  store i64 %add126, i64* %vc_pos, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.else122, %if.then113
  %storemerge = phi i64 [ %add126, %if.else122 ], [ %add, %if.then113 ]
  store i64 %storemerge, i64* %to127, align 8
  %tobool129.not = icmp eq i8 %width.1, 1
  br i1 %tobool129.not, label %while.end, label %if.end131

if.end131:                                        ; preds = %if.end128
  %call132 = call i32 @conv_uni_to_pc(%struct.vc_data* noundef %vc, i64 noundef 32) #17
  %cmp133 = icmp slt i32 %call132, 0
  %spec.store.select146 = select i1 %cmp133, i32 32, i32 %call132
  br label %while.cond

while.end:                                        ; preds = %if.end128
  call fastcc void @notify_write(%struct.vc_data* noundef %vc, i32 noundef %c) #18
  br i1 %inverse.0.off0, label %if.then138, label %cleanup

if.then138:                                       ; preds = %while.end
  call fastcc void @con_flush(%struct.vc_data* noundef %vc, %struct.vc_draw_region* noundef %draw) #18
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then138, %if.then16
  %retval.0 = phi i32 [ -1, %if.then16 ], [ 0, %if.then138 ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_conditional_schedule() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @vc_translate_unicode(%struct.vc_data* nocapture noundef %vc, i32 noundef %c, i8* nocapture noundef writeonly %rescan) unnamed_addr #13 {
entry:
  %and = and i32 %c, 192
  %cmp = icmp eq i32 %and, 128
  %vc_utf_count = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 38
  %0 = load i8, i8* %vc_utf_count, align 2
  %tobool.not = icmp eq i8 %0, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %vc_utf_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 39
  %1 = load i32, i32* %vc_utf_char, align 4
  %shl = shl i32 %1, 6
  %and2 = and i32 %c, 63
  %or = or i32 %shl, %and2
  store i32 %or, i32* %vc_utf_char, align 4
  %vc_npar = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %2 = load i32, i32* %vc_npar, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %vc_npar, align 8
  %dec = add i8 %0, -1
  store i8 %dec, i8* %vc_utf_count, align 2
  %tobool5.not = icmp eq i8 %dec, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr [6 x i32], [6 x i32]* @vc_translate_unicode.utf8_length_changes, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp10.not = icmp ugt i32 %or, %3
  br i1 %cmp10.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end7
  %idxprom12 = zext i32 %inc to i64
  %arrayidx13 = getelementptr [6 x i32], [6 x i32]* @vc_translate_unicode.utf8_length_changes, i64 0, i64 %idxprom12
  %4 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp ugt i32 %or, %4
  br i1 %cmp14, label %return, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false
  %call = call fastcc i32 @vc_sanitize_unicode(i32 noundef %or) #18
  br label %return

if.end17:                                         ; preds = %entry
  br i1 %tobool.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  store i8 1, i8* %rescan, align 1
  store i8 0, i8* %vc_utf_count, align 2
  br label %return

if.end22:                                         ; preds = %if.end17
  %cmp23 = icmp slt i32 %c, 128
  br i1 %cmp23, label %return, label %if.end25

if.end25:                                         ; preds = %if.end22
  %vc_npar26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  store i32 0, i32* %vc_npar26, align 8
  %and27 = and i32 %c, 224
  %cmp28 = icmp eq i32 %and27, 192
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  store i8 1, i8* %vc_utf_count, align 2
  %and31 = and i32 %c, 31
  %vc_utf_char32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 39
  store i32 %and31, i32* %vc_utf_char32, align 4
  br label %return

if.else:                                          ; preds = %if.end25
  %and33 = and i32 %c, 240
  %cmp34 = icmp eq i32 %and33, 224
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.else
  store i8 2, i8* %vc_utf_count, align 2
  %and37 = and i32 %c, 15
  %vc_utf_char38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 39
  store i32 %and37, i32* %vc_utf_char38, align 4
  br label %return

if.else39:                                        ; preds = %if.else
  %and40 = and i32 %c, 248
  %cmp41 = icmp eq i32 %and40, 240
  br i1 %cmp41, label %if.then42, label %if.else46

if.then42:                                        ; preds = %if.else39
  store i8 3, i8* %vc_utf_count, align 2
  %and44 = and i32 %c, 7
  %vc_utf_char45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 39
  store i32 %and44, i32* %vc_utf_char45, align 4
  br label %return

if.else46:                                        ; preds = %if.else39
  %and47 = and i32 %c, 252
  %cmp48 = icmp eq i32 %and47, 248
  br i1 %cmp48, label %if.then49, label %if.else53

if.then49:                                        ; preds = %if.else46
  store i8 4, i8* %vc_utf_count, align 2
  %and51 = and i32 %c, 3
  %vc_utf_char52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 39
  store i32 %and51, i32* %vc_utf_char52, align 4
  br label %return

if.else53:                                        ; preds = %if.else46
  %and54 = and i32 %c, 254
  %cmp55 = icmp eq i32 %and54, 252
  br i1 %cmp55, label %if.then56, label %return

if.then56:                                        ; preds = %if.else53
  store i8 5, i8* %vc_utf_count, align 2
  %and58 = and i32 %c, 1
  %vc_utf_char59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 39
  store i32 %and58, i32* %vc_utf_char59, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then35, %if.then49, %if.then56, %if.then42, %if.then29, %if.else53, %if.end22, %if.end7, %lor.lhs.false, %if.then, %if.then20, %if.end16
  %retval.0 = phi i32 [ %call, %if.end16 ], [ 65533, %if.then20 ], [ 65533, %if.then ], [ 65533, %lor.lhs.false ], [ 65533, %if.end7 ], [ %c, %if.end22 ], [ 65533, %if.else53 ], [ -1, %if.then29 ], [ -1, %if.then42 ], [ -1, %if.then56 ], [ -1, %if.then49 ], [ -1, %if.then35 ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @vc_translate_ascii(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %c) unnamed_addr #4 {
entry:
  %vc_toggle_meta = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_toggle_meta, align 8
  %0 = shl i16 %bf.load, 6
  %1 = and i16 %0, 128
  %2 = zext i16 %1 to i32
  %3 = or i32 %2, %c
  %vc_translate = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 42
  %4 = load i16*, i16** %vc_translate, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %5 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @vc_sanitize_unicode(i32 noundef %c) unnamed_addr #10 {
entry:
  %0 = and i32 %c, -2048
  %1 = icmp eq i32 %0, 55296
  %2 = and i32 %c, -2
  %3 = icmp eq i32 %2, 65534
  %4 = or i1 %3, %1
  %.c = select i1 %4, i32 65533, i32 %c
  ret i32 %.c
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @ansi_control_string(i32 noundef %state) unnamed_addr #10 {
entry:
  %0 = and i32 %state, -4
  %1 = icmp eq i32 %0, 12
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kd_mksound(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #17
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_get_kbd_mode_bit(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ri(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %y, align 4
  %vc_top = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 12
  %1 = load i32, i32* %vc_top, align 8
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vc_bottom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 13
  %2 = load i32, i32* %vc_bottom, align 4
  call fastcc void @con_scroll(%struct.vc_data* noundef %vc, i32 noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 1) #18
  br label %if.end8

if.else:                                          ; preds = %entry
  %cmp4.not = icmp eq i32 %0, 0
  br i1 %cmp4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.else
  %dec = add i32 %0, -1
  store i32 %dec, i32* %y, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 6
  %3 = load i32, i32* %vc_size_row, align 4
  %conv = zext i32 %3 to i64
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %4 = load i64, i64* %vc_pos, align 8
  %sub = sub i64 %4, %conv
  store i64 %sub, i64* %vc_pos, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5, %if.then
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @respond_ID(%struct.tty_struct* nocapture noundef readonly %tty) unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @respond_ID.vt102_id, i64 0, i64 0)) #17
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %0 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call fastcc void @respond_string(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @respond_ID.vt102_id, i64 0, i64 0), i64 noundef %call, %struct.tty_port* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_cur(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1
  %0 = bitcast %struct.vc_state* %state to i8*
  %saved_state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 2
  %1 = bitcast %struct.vc_state* %saved_state to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 20) #17
  %x = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state, i64 0, i32 0
  %2 = load i32, i32* %x, align 8
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %3 = load i32, i32* %y, align 4
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %2, i32 noundef %3) #18
  %charset = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 4
  %bf.load = load i8, i8* %charset, align 1
  %bf.clear = and i8 %bf.load, 1
  %idxprom = zext i8 %bf.clear to i64
  %arrayidx = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call5 = call i16* @set_translate(i32 noundef %conv, %struct.vc_data* noundef %vc) #17
  %vc_translate = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 42
  store i16* %call5, i16** %vc_translate, align 8
  call fastcc void @update_attr(%struct.vc_data* noundef %vc) #18
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load6 = load i16, i16* %vc_need_wrap, align 8
  %bf.clear7 = and i16 %bf.load6, -1025
  store i16 %bf.clear7, i16* %vc_need_wrap, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_clr_kbd_mode_bit(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_set_kbd_mode_bit(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_mode(%struct.vc_data* noundef %vc, i32 noundef %on_off) unnamed_addr #0 {
entry:
  %vc_npar = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %vc_priv = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %tobool83.not = icmp eq i32 %on_off, 0
  %vc_num85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 3
  %0 = trunc i32 %on_off to i16
  %bf.value77 = shl i16 %0, 6
  %bf.shl78 = and i16 %bf.value77, 64
  %bf.value71 = and i16 %0, 1
  %bf.value50 = shl i16 %0, 5
  %bf.shl51 = and i16 %bf.value50, 32
  %bf.shl44 = select i1 %tobool83.not, i16 0, i16 4096
  %bf.value26 = shl i16 %0, 4
  %bf.shl27 = and i16 %bf.value26, 16
  %bf.value19 = shl i16 %0, 3
  %bf.shl20 = and i16 %bf.value19, 8
  %bf.value = shl i16 %0, 2
  %bf.shl = and i16 %bf.value, 4
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 16
  %1 = select i1 %tobool83.not, i16 0, i16 8192
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.0130 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %bf.load = load i16, i16* %vc_priv, align 8
  %2 = and i16 %bf.load, 896
  %cmp1 = icmp eq i16 %2, 128
  %idxprom = sext i32 %i.0130 to i64
  %arrayidx = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  br i1 %cmp1, label %if.then, label %if.else65

if.then:                                          ; preds = %for.body
  switch i32 %3, label %for.inc [
    i32 1, label %sw.bb
    i32 1000, label %sw.bb55
    i32 5, label %sw.bb5
    i32 6, label %sw.bb17
    i32 7, label %sw.bb24
    i32 8, label %sw.bb31
    i32 9, label %sw.bb40
    i32 25, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load i16, i16* %vc_num85, align 8
  %conv4 = zext i16 %4 to i32
  br i1 %tobool83.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %sw.bb
  call void @vt_set_kbd_mode_bit(i32 noundef %conv4, i32 noundef 1) #17
  br label %for.inc

if.else:                                          ; preds = %sw.bb
  call void @vt_clr_kbd_mode_bit(i32 noundef %conv4, i32 noundef 1) #17
  br label %for.inc

sw.bb5:                                           ; preds = %if.then
  %bf.lshr7 = lshr i16 %bf.load, 2
  %bf.clear8 = and i16 %bf.lshr7, 1
  %bf.cast9 = zext i16 %bf.clear8 to i32
  %cmp10.not = icmp eq i32 %bf.cast9, %on_off
  br i1 %cmp10.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %sw.bb5
  %bf.clear15 = and i16 %bf.load, -5
  %bf.set = or i16 %bf.clear15, %bf.shl
  store i16 %bf.set, i16* %vc_priv, align 8
  %5 = load i32, i32* %vc_screenbuf_size, align 8
  call void @invert_screen(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef %5, i1 noundef false) #18
  call fastcc void @update_attr(%struct.vc_data* noundef %vc) #18
  br label %for.inc

sw.bb17:                                          ; preds = %if.then
  %bf.clear21 = and i16 %bf.load, -9
  %bf.set22 = or i16 %bf.clear21, %bf.shl20
  store i16 %bf.set22, i16* %vc_priv, align 8
  call fastcc void @gotoxay(%struct.vc_data* noundef %vc, i32 noundef 0, i32 noundef 0) #18
  br label %for.inc

sw.bb24:                                          ; preds = %if.then
  %bf.clear28 = and i16 %bf.load, -17
  %bf.set29 = or i16 %bf.clear28, %bf.shl27
  store i16 %bf.set29, i16* %vc_priv, align 8
  br label %for.inc

sw.bb31:                                          ; preds = %if.then
  %6 = load i16, i16* %vc_num85, align 8
  %conv38 = zext i16 %6 to i32
  br i1 %tobool83.not, label %if.else36, label %if.then33

if.then33:                                        ; preds = %sw.bb31
  call void @vt_set_kbd_mode_bit(i32 noundef %conv38, i32 noundef 2) #17
  br label %for.inc

if.else36:                                        ; preds = %sw.bb31
  call void @vt_clr_kbd_mode_bit(i32 noundef %conv38, i32 noundef 2) #17
  br label %for.inc

sw.bb40:                                          ; preds = %if.then
  %bf.clear45 = and i16 %bf.load, -12289
  %bf.set46 = or i16 %bf.clear45, %bf.shl44
  store i16 %bf.set46, i16* %vc_priv, align 8
  br label %for.inc

sw.bb48:                                          ; preds = %if.then
  %bf.clear52 = and i16 %bf.load, -33
  %bf.set53 = or i16 %bf.clear52, %bf.shl51
  store i16 %bf.set53, i16* %vc_priv, align 8
  br label %for.inc

sw.bb55:                                          ; preds = %if.then
  %bf.clear62 = and i16 %bf.load, -12289
  %bf.set63 = or i16 %bf.clear62, %1
  store i16 %bf.set63, i16* %vc_priv, align 8
  br label %for.inc

if.else65:                                        ; preds = %for.body
  switch i32 %3, label %for.inc [
    i32 3, label %sw.bb69
    i32 4, label %sw.bb75
    i32 20, label %sw.bb82
  ]

sw.bb69:                                          ; preds = %if.else65
  %bf.clear72 = and i16 %bf.load, -2
  %bf.set73 = or i16 %bf.clear72, %bf.value71
  store i16 %bf.set73, i16* %vc_priv, align 8
  br label %for.inc

sw.bb75:                                          ; preds = %if.else65
  %bf.clear79 = and i16 %bf.load, -65
  %bf.set80 = or i16 %bf.clear79, %bf.shl78
  store i16 %bf.set80, i16* %vc_priv, align 8
  br label %for.inc

sw.bb82:                                          ; preds = %if.else65
  %7 = load i16, i16* %vc_num85, align 8
  %conv89 = zext i16 %7 to i32
  br i1 %tobool83.not, label %if.else87, label %if.then84

if.then84:                                        ; preds = %sw.bb82
  call void @vt_set_kbd_mode_bit(i32 noundef %conv89, i32 noundef 3) #17
  br label %for.inc

if.else87:                                        ; preds = %sw.bb82
  call void @vt_clr_kbd_mode_bit(i32 noundef %conv89, i32 noundef 3) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.else36, %sw.bb5, %if.then12, %if.then2, %if.else, %if.then, %sw.bb55, %sw.bb48, %sw.bb40, %sw.bb24, %sw.bb17, %if.then84, %if.else87, %if.else65, %sw.bb75, %sw.bb69
  %inc = add i32 %i.0130, 1
  %8 = load i32, i32* %vc_npar, align 8
  %cmp.not = icmp ugt i32 %inc, %8
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @status_report(%struct.tty_struct* nocapture noundef readonly %tty) unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @status_report.teminal_ok, i64 0, i64 0)) #17
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %0 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call fastcc void @respond_string(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @status_report.teminal_ok, i64 0, i64 0), i64 noundef %call, %struct.tty_port* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cursor_report(%struct.vc_data* nocapture noundef readonly %vc, %struct.tty_struct* nocapture noundef readonly %tty) unnamed_addr #0 {
entry:
  %buf = alloca [40 x i8], align 1
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !12
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %y, align 4
  %vc_decom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_decom, align 8
  %2 = and i16 %bf.load, 8
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %vc_top = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 12
  %3 = load i32, i32* %vc_top, align 8
  %add = add i32 %3, 1
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 1, %entry ]
  %add1 = add i32 %cond, %1
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %4 = load i32, i32* %x, align 8
  %add3 = add i32 %4, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 noundef %add1, i32 noundef %add3) #17
  %conv = sext i32 %call to i64
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %5 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call fastcc void @respond_string(i8* noundef nonnull %0, i64 noundef %conv, %struct.tty_port* noundef %5) #18
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @gotoxay(%struct.vc_data* nocapture noundef %vc, i32 noundef %new_x, i32 noundef %new_y) unnamed_addr #13 {
entry:
  %vc_decom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_decom, align 8
  %0 = and i16 %bf.load, 8
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %vc_top = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 12
  %1 = load i32, i32* %vc_top, align 8
  %add = add i32 %1, %new_y
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %new_y, %entry ]
  call fastcc void @gotoxy(%struct.vc_data* noundef %vc, i32 noundef %new_x, i32 noundef %cond) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @csi_K(%struct.vc_data* noundef %vc, i32 noundef %vpar) unnamed_addr #0 {
entry:
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %0 = load i64, i64* %vc_pos, align 8
  %1 = inttoptr i64 %0 to i16*
  switch i32 %vpar, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %2 = load i32, i32* %vc_cols, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %3 = load i32, i32* %x, align 8
  %sub = sub i32 %2, %3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %x3 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %4 = load i32, i32* %x3, align 8
  %sub4 = sub i32 0, %4
  %add = add i32 %4, 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %x9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %5 = load i32, i32* %x9, align 8
  %sub10 = sub i32 0, %5
  %vc_cols11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %6 = load i32, i32* %vc_cols11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb1, %sw.bb
  %7 = phi i32 [ %5, %sw.bb7 ], [ %4, %sw.bb1 ], [ %3, %sw.bb ]
  %count.0 = phi i32 [ %6, %sw.bb7 ], [ %add, %sw.bb1 ], [ %sub, %sw.bb ]
  %offset.0 = phi i32 [ %sub10, %sw.bb7 ], [ %sub4, %sw.bb1 ], [ 0, %sw.bb ]
  %add14 = add i32 %7, %offset.0
  call fastcc void @vc_uniscr_clear_line(%struct.vc_data* noundef %vc, i32 noundef %add14, i32 noundef %count.0) #18
  %idx.ext = sext i32 %offset.0 to i64
  %add.ptr = getelementptr i16, i16* %1, i64 %idx.ext
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %8 = load i16, i16* %vc_video_erase_char, align 8
  %mul = shl i32 %count.0, 1
  call fastcc void @scr_memsetw(i16* noundef %add.ptr, i16 noundef %8, i32 noundef %mul) #18
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  %call = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call, label %if.then, label %cleanup

if.then:                                          ; preds = %sw.epilog
  %9 = ptrtoint i16* %add.ptr to i64
  call fastcc void @do_update_region(%struct.vc_data* noundef %vc, i64 noundef %9, i32 noundef %count.0) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @csi_L(%struct.vc_data* noundef %vc, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %0 = load i32, i32* %vc_rows, align 8
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %y, align 4
  %sub = sub i32 %0, %1
  %cmp = icmp ult i32 %sub, %nr
  %tobool.not = icmp eq i32 %nr, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %nr
  %nr.addr.0 = select i1 %cmp, i32 %sub, i32 %spec.store.select
  %vc_bottom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 13
  %2 = load i32, i32* %vc_bottom, align 4
  call fastcc void @con_scroll(%struct.vc_data* noundef %vc, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %nr.addr.0) #18
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @csi_M(%struct.vc_data* noundef %vc, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 5
  %0 = load i32, i32* %vc_rows, align 8
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %y, align 4
  %sub = sub i32 %0, %1
  %cmp = icmp ult i32 %sub, %nr
  %tobool.not = icmp eq i32 %nr, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %nr
  %nr.addr.0 = select i1 %cmp, i32 %sub, i32 %spec.store.select
  %vc_bottom = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 13
  %2 = load i32, i32* %vc_bottom, align 4
  call fastcc void @con_scroll(%struct.vc_data* noundef %vc, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %nr.addr.0) #18
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @csi_P(%struct.vc_data* noundef %vc, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %1 = load i32, i32* %x, align 8
  %sub = sub i32 %0, %1
  %cmp = icmp ult i32 %sub, %nr
  %tobool.not = icmp eq i32 %nr, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %nr
  %nr.addr.0 = select i1 %cmp, i32 %sub, i32 %spec.store.select
  call fastcc void @delete_char(%struct.vc_data* noundef %vc, i32 noundef %nr.addr.0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @csi_m(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %vc_npar = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %vc_def_color73 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 19
  %color77 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 2
  %reverse59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 9
  %blink56 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 8
  %underline53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 7
  %italic50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 6
  %intensity47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 5
  %vc_translate36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 42
  %vc_disp_ctrl37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %charset = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.0235 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i.0235 to i64
  %arrayidx = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 21, label %sw.bb7
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 7, label %sw.bb11
    i32 10, label %sw.bb13
    i32 11, label %sw.bb23
    i32 12, label %sw.bb34
    i32 22, label %sw.bb45
    i32 23, label %sw.bb48
    i32 24, label %sw.bb51
    i32 25, label %sw.bb54
    i32 27, label %sw.bb57
    i32 38, label %sw.bb60
    i32 48, label %sw.bb62
    i32 39, label %sw.bb64
    i32 49, label %sw.bb72
  ]

sw.bb:                                            ; preds = %for.body
  call fastcc void @default_attr(%struct.vc_data* noundef %vc) #18
  br label %for.inc

sw.bb1:                                           ; preds = %for.body
  store i32 2, i32* %intensity47, align 4
  br label %for.inc

sw.bb2:                                           ; preds = %for.body
  store i32 0, i32* %intensity47, align 4
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  store i8 1, i8* %italic50, align 8
  br label %for.inc

sw.bb7:                                           ; preds = %for.body, %for.body
  store i8 1, i8* %underline53, align 1
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  store i8 1, i8* %blink56, align 2
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  store i8 1, i8* %reverse59, align 1
  br label %for.inc

sw.bb13:                                          ; preds = %for.body
  %bf.load = load i8, i8* %charset, align 1
  %bf.clear = and i8 %bf.load, 1
  %idxprom16 = zext i8 %bf.clear to i64
  %arrayidx17 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 3, i64 %idxprom16
  %1 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %1 to i32
  %call = call i16* @set_translate(i32 noundef %conv, %struct.vc_data* noundef %vc) #17
  store i16* %call, i16** %vc_translate36, align 8
  %bf.load18 = load i16, i16* %vc_disp_ctrl37, align 8
  %bf.clear21 = and i16 %bf.load18, -4
  store i16 %bf.clear21, i16* %vc_disp_ctrl37, align 8
  br label %for.inc

sw.bb23:                                          ; preds = %for.body
  %call24 = call i16* @set_translate(i32 noundef 2, %struct.vc_data* noundef %vc) #17
  store i16* %call24, i16** %vc_translate36, align 8
  %bf.load27 = load i16, i16* %vc_disp_ctrl37, align 8
  %bf.set29 = and i16 %bf.load27, -4
  %bf.clear32 = or i16 %bf.set29, 1
  store i16 %bf.clear32, i16* %vc_disp_ctrl37, align 8
  br label %for.inc

sw.bb34:                                          ; preds = %for.body
  %call35 = call i16* @set_translate(i32 noundef 2, %struct.vc_data* noundef %vc) #17
  store i16* %call35, i16** %vc_translate36, align 8
  %bf.load38 = load i16, i16* %vc_disp_ctrl37, align 8
  %bf.set44 = or i16 %bf.load38, 3
  store i16 %bf.set44, i16* %vc_disp_ctrl37, align 8
  br label %for.inc

sw.bb45:                                          ; preds = %for.body
  store i32 1, i32* %intensity47, align 4
  br label %for.inc

sw.bb48:                                          ; preds = %for.body
  store i8 0, i8* %italic50, align 8
  br label %for.inc

sw.bb51:                                          ; preds = %for.body
  store i8 0, i8* %underline53, align 1
  br label %for.inc

sw.bb54:                                          ; preds = %for.body
  store i8 0, i8* %blink56, align 2
  br label %for.inc

sw.bb57:                                          ; preds = %for.body
  store i8 0, i8* %reverse59, align 1
  br label %for.inc

sw.bb60:                                          ; preds = %for.body
  %call61 = call fastcc i32 @vc_t416_color(%struct.vc_data* noundef %vc, i32 noundef %i.0235, void (%struct.vc_data*, %struct.rgb*)* noundef nonnull @rgb_foreground) #18
  br label %for.inc

sw.bb62:                                          ; preds = %for.body
  %call63 = call fastcc i32 @vc_t416_color(%struct.vc_data* noundef %vc, i32 noundef %i.0235, void (%struct.vc_data*, %struct.rgb*)* noundef nonnull @rgb_background) #18
  br label %for.inc

sw.bb64:                                          ; preds = %for.body
  %2 = load i8, i8* %vc_def_color73, align 2
  %3 = and i8 %2, 15
  %4 = load i8, i8* %color77, align 8
  %5 = and i8 %4, -16
  %or231 = or i8 %5, %3
  store i8 %or231, i8* %color77, align 8
  br label %for.inc

sw.bb72:                                          ; preds = %for.body
  %6 = load i8, i8* %vc_def_color73, align 2
  %7 = and i8 %6, -16
  %8 = load i8, i8* %color77, align 8
  %9 = and i8 %8, 15
  %or80230 = or i8 %9, %7
  store i8 %or80230, i8* %color77, align 8
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %10 = add i32 %0, -90
  %11 = icmp ult i32 %10, 18
  br i1 %11, label %if.then, label %if.end105

if.then:                                          ; preds = %sw.default
  %cmp97 = icmp ult i32 %0, 100
  br i1 %cmp97, label %if.then99, label %if.end

if.then99:                                        ; preds = %if.then
  store i32 2, i32* %intensity47, align 4
  %.pre = load i32, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then99, %if.then
  %12 = phi i32 [ %.pre, %if.then99 ], [ %0, %if.then ]
  %sub = add i32 %12, -60
  store i32 %sub, i32* %arrayidx, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end, %sw.default
  %13 = phi i32 [ %sub, %if.end ], [ %0, %sw.default ]
  %14 = add i32 %13, -30
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %if.then117, label %if.else

if.then117:                                       ; preds = %if.end105
  %idxprom122 = zext i32 %14 to i64
  %arrayidx123 = getelementptr [16 x i8], [16 x i8]* @color_table, i64 0, i64 %idxprom122
  %16 = load i8, i8* %arrayidx123, align 1
  %17 = load i8, i8* %color77, align 8
  %18 = and i8 %17, -16
  %or129232 = or i8 %18, %16
  store i8 %or129232, i8* %color77, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end105
  %19 = and i32 %13, -8
  %20 = icmp eq i32 %19, 40
  br i1 %20, label %if.then144, label %for.inc

if.then144:                                       ; preds = %if.else
  %sub148 = add nsw i32 %13, -40
  %idxprom149 = zext i32 %sub148 to i64
  %arrayidx150 = getelementptr [16 x i8], [16 x i8]* @color_table, i64 0, i64 %idxprom149
  %21 = load i8, i8* %arrayidx150, align 1
  %shl = shl i8 %21, 4
  %22 = load i8, i8* %color77, align 8
  %23 = and i8 %22, 15
  %or156 = or i8 %23, %shl
  store i8 %or156, i8* %color77, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb5, %sw.bb7, %sw.bb9, %sw.bb11, %sw.bb13, %sw.bb23, %sw.bb34, %sw.bb45, %sw.bb48, %sw.bb51, %sw.bb54, %sw.bb57, %sw.bb60, %sw.bb62, %sw.bb64, %sw.bb72, %if.else, %if.then144, %if.then117
  %i.1 = phi i32 [ %i.0235, %if.then117 ], [ %i.0235, %if.then144 ], [ %i.0235, %if.else ], [ %i.0235, %sw.bb72 ], [ %i.0235, %sw.bb64 ], [ %call63, %sw.bb62 ], [ %call61, %sw.bb60 ], [ %i.0235, %sw.bb57 ], [ %i.0235, %sw.bb54 ], [ %i.0235, %sw.bb51 ], [ %i.0235, %sw.bb48 ], [ %i.0235, %sw.bb45 ], [ %i.0235, %sw.bb34 ], [ %i.0235, %sw.bb23 ], [ %i.0235, %sw.bb13 ], [ %i.0235, %sw.bb11 ], [ %i.0235, %sw.bb9 ], [ %i.0235, %sw.bb7 ], [ %i.0235, %sw.bb5 ], [ %i.0235, %sw.bb2 ], [ %i.0235, %sw.bb1 ], [ %i.0235, %sw.bb ]
  %inc = add i32 %i.1, 1
  %24 = load i32, i32* %vc_npar, align 8
  %cmp.not = icmp ugt i32 %inc, %24
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call fastcc void @update_attr(%struct.vc_data* noundef %vc) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_set_led_state(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @csi_X(%struct.vc_data* noundef %vc, i32 noundef %vpar) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %vpar, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %vpar
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %1 = load i32, i32* %x, align 8
  %sub = sub i32 %0, %1
  %cmp = icmp ult i32 %spec.select, %sub
  %cond = select i1 %cmp, i32 %spec.select, i32 %sub
  call fastcc void @vc_uniscr_clear_line(%struct.vc_data* noundef %vc, i32 noundef %1, i32 noundef %cond) #18
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %2 = load i64, i64* %vc_pos, align 8
  %3 = inttoptr i64 %2 to i16*
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %4 = load i16, i16* %vc_video_erase_char, align 8
  %mul = shl i32 %cond, 1
  call fastcc void @scr_memsetw(i16* noundef %3, i16 noundef %4, i32 noundef %mul) #18
  %call = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call, label %if.then3, label %if.end7

if.then3:                                         ; preds = %entry
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 14
  %5 = load %struct.consw*, %struct.consw** %vc_sw, align 8
  %con_clear = getelementptr inbounds %struct.consw, %struct.consw* %5, i64 0, i32 4
  %6 = load void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32, i32)** %con_clear, align 8
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %x, align 8
  call void %6(%struct.vc_data* noundef %vc, i32 noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef %cond) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %entry
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @csi_at(%struct.vc_data* noundef %vc, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %0 = load i32, i32* %vc_cols, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %1 = load i32, i32* %x, align 8
  %sub = sub i32 %0, %1
  %cmp = icmp ult i32 %sub, %nr
  %tobool.not = icmp eq i32 %nr, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %nr
  %nr.addr.0 = select i1 %cmp, i32 %sub, i32 %spec.store.select
  call fastcc void @insert_char(%struct.vc_data* noundef %vc, i32 noundef %nr.addr.0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setterm_command(%struct.vc_data* noundef %vc) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 8, label %sw.bb30
    i32 9, label %sw.bb38
    i32 10, label %sw.bb43
    i32 11, label %sw.bb51
    i32 12, label %sw.bb70
    i32 13, label %sw.bb86
    i32 14, label %sw.bb87
    i32 15, label %sw.bb99
    i32 16, label %sw.bb101
  ]

sw.bb:                                            ; preds = %entry
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_can_do_color, align 8
  %1 = and i16 %bf.load, 2048
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %sw.epilog, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx2 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %2 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp ult i32 %2, 16
  br i1 %cmp, label %if.then, label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %2 to i64
  %arrayidx5 = getelementptr [16 x i8], [16 x i8]* @color_table, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx5, align 1
  %vc_ulcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 20
  store i8 %3, i8* %vc_ulcolor, align 1
  %underline = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 7
  %4 = load i8, i8* %underline, align 1, !range !27
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %sw.epilog, label %if.then7

if.then7:                                         ; preds = %if.then
  call fastcc void @update_attr(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %vc_can_do_color10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load11 = load i16, i16* %vc_can_do_color10, align 8
  %5 = and i16 %bf.load11, 2048
  %tobool15.not = icmp eq i16 %5, 0
  br i1 %tobool15.not, label %sw.epilog, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %sw.bb9
  %arrayidx18 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %6 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp ult i32 %6, 16
  br i1 %cmp19, label %if.then20, label %sw.epilog

if.then20:                                        ; preds = %land.lhs.true16
  %idxprom23 = zext i32 %6 to i64
  %arrayidx24 = getelementptr [16 x i8], [16 x i8]* @color_table, i64 0, i64 %idxprom23
  %7 = load i8, i8* %arrayidx24, align 1
  %vc_halfcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 22
  store i8 %7, i8* %vc_halfcolor, align 1
  %intensity = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 5
  %8 = load i32, i32* %intensity, align 4
  %cmp26 = icmp eq i32 %8, 0
  br i1 %cmp26, label %if.then27, label %sw.epilog

if.then27:                                        ; preds = %if.then20
  call fastcc void @update_attr(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %vc_attr = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 18
  %9 = load i8, i8* %vc_attr, align 1
  %vc_def_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 19
  store i8 %9, i8* %vc_def_color, align 2
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %10 = load i16, i16* %vc_hi_font_mask, align 8
  %cmp31 = icmp eq i16 %10, 256
  br i1 %cmp31, label %if.then33, label %if.end37

if.then33:                                        ; preds = %sw.bb30
  %11 = lshr i8 %9, 1
  store i8 %11, i8* %vc_def_color, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %sw.bb30
  call fastcc void @default_attr(%struct.vc_data* noundef %vc) #18
  call fastcc void @update_attr(%struct.vc_data* noundef %vc) #18
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %arrayidx40 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %12 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp ult i32 %12, 60
  %cond = select i1 %cmp41, i32 %12, i32 60
  %mul = mul nuw nsw i32 %cond, 60
  store i32 %mul, i32* @blankinterval, align 4
  call void @poke_blanked_console() #18
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %vc_npar = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %13 = load i32, i32* %vc_npar, align 8
  %cmp44.not = icmp eq i32 %13, 0
  br i1 %cmp44.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %sw.bb43
  %arrayidx48 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %14 = load i32, i32* %arrayidx48, align 4
  %vc_bell_pitch = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 44
  store i32 %14, i32* %vc_bell_pitch, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb43
  %vc_bell_pitch49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 44
  store i32 750, i32* %vc_bell_pitch49, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  %vc_npar52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %15 = load i32, i32* %vc_npar52, align 8
  %cmp53.not = icmp eq i32 %15, 0
  br i1 %cmp53.not, label %if.else67, label %if.then55

if.then55:                                        ; preds = %sw.bb51
  %arrayidx57 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %16 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp ult i32 %16, 2000
  br i1 %cmp58, label %if.else.i, label %cond.end64

if.else.i:                                        ; preds = %if.then55
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %16) #17
  %phi.cast = trunc i64 %call2.i to i32
  br label %cond.end64

cond.end64:                                       ; preds = %if.then55, %if.else.i
  %cond65 = phi i32 [ %phi.cast, %if.else.i ], [ 0, %if.then55 ]
  %vc_bell_duration = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 45
  store i32 %cond65, i32* %vc_bell_duration, align 8
  br label %sw.epilog

if.else67:                                        ; preds = %sw.bb51
  %vc_bell_duration68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 45
  store i32 31, i32* %vc_bell_duration68, align 8
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  %arrayidx72 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %17 = load i32, i32* %arrayidx72, align 4
  %cmp73.not = icmp eq i32 %17, 0
  br i1 %cmp73.not, label %sw.epilog, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %sw.bb70
  %sub = add i32 %17, -1
  %call78 = call i32 @vc_cons_allocated(i32 noundef %sub) #18
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %sw.epilog, label %if.then80

if.then80:                                        ; preds = %land.lhs.true75
  %call84 = call i32 @set_console(i32 noundef %sub) #18
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  call void @poke_blanked_console() #18
  br label %sw.epilog

sw.bb87:                                          ; preds = %entry
  %arrayidx89 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %18 = load i32, i32* %arrayidx89, align 4
  %cmp91 = icmp ult i32 %18, 60
  %cond96 = select i1 %cmp91, i32 %18, i32 60
  %mul98 = mul nuw nsw i32 %cond96, 15000
  store i32 %mul98, i32* @vesa_off_interval, align 4
  br label %sw.epilog

sw.bb99:                                          ; preds = %entry
  %19 = load i32, i32* @last_console, align 4
  %call100 = call i32 @set_console(i32 noundef %19) #18
  br label %sw.epilog

sw.bb101:                                         ; preds = %entry
  %vc_npar102 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %20 = load i32, i32* %vc_npar102, align 8
  %cmp103.not = icmp eq i32 %20, 0
  br i1 %cmp103.not, label %if.else119, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %sw.bb101
  %arrayidx107 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 1
  %21 = load i32, i32* %arrayidx107, align 4
  %22 = add i32 %21, -50
  %23 = icmp ult i32 %22, 65486
  br i1 %23, label %if.then115, label %if.else119

if.then115:                                       ; preds = %land.lhs.true105
  %conv118 = trunc i32 %21 to i16
  %vc_cur_blink_ms = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 46
  store i16 %conv118, i16* %vc_cur_blink_ms, align 4
  br label %sw.epilog

if.else119:                                       ; preds = %land.lhs.true105, %sw.bb101
  %vc_cur_blink_ms120 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 46
  store i16 200, i16* %vc_cur_blink_ms120, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then115, %if.else119, %sw.bb70, %land.lhs.true75, %if.then80, %cond.end64, %if.else67, %if.then46, %if.else, %sw.bb9, %land.lhs.true16, %if.then27, %if.then20, %sw.bb, %land.lhs.true, %if.then7, %if.then, %entry, %sw.bb99, %sw.bb87, %sw.bb86, %sw.bb38, %if.end37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_setGx(%struct.vc_data* noundef %vc, i32 noundef %which, i32 noundef %c) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %which to i64
  %arrayidx = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 3, i64 %idxprom
  switch i32 %c, label %sw.epilog [
    i32 48, label %sw.epilog.sink.split
    i32 66, label %sw.bb1
    i32 85, label %sw.bb2
    i32 75, label %sw.bb3
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %entry, %sw.bb1, %sw.bb2, %sw.bb3
  %.sink = phi i8 [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 0, %sw.bb1 ], [ 1, %entry ]
  store i8 %.sink, i8* %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %charset5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 4
  %bf.load = load i8, i8* %charset5, align 1
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, %which
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %call = call i16* @set_translate(i32 noundef %conv, %struct.vc_data* noundef %vc) #17
  %vc_translate = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 42
  store i16* %call, i16** %vc_translate, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @delete_char(%struct.vc_data* noundef %vc, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %0 = load i64, i64* %vc_pos, align 8
  %1 = inttoptr i64 %0 to i16*
  call fastcc void @vc_uniscr_delete(%struct.vc_data* noundef %vc, i32 noundef %nr) #18
  %idx.ext = zext i32 %nr to i64
  %add.ptr = getelementptr i16, i16* %1, i64 %idx.ext
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %2 = load i32, i32* %vc_cols, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %3 = load i32, i32* %x, align 8
  %4 = add i32 %3, %nr
  %sub1 = sub i32 %2, %4
  %mul = shl i32 %sub1, 1
  call fastcc void @scr_memcpyw(i16* noundef %1, i16* noundef %add.ptr, i32 noundef %mul) #18
  %5 = load i32, i32* %vc_cols, align 4
  %idx.ext3 = zext i32 %5 to i64
  %add.ptr4 = getelementptr i16, i16* %1, i64 %idx.ext3
  %6 = load i32, i32* %x, align 8
  %idx.ext7 = zext i32 %6 to i64
  %idx.neg = sub nsw i64 0, %idx.ext7
  %add.ptr8 = getelementptr i16, i16* %add.ptr4, i64 %idx.neg
  %idx.neg10 = sub nsw i64 0, %idx.ext
  %add.ptr11 = getelementptr i16, i16* %add.ptr8, i64 %idx.neg10
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %7 = load i16, i16* %vc_video_erase_char, align 8
  %mul12 = shl i32 %nr, 1
  call fastcc void @scr_memsetw(i16* noundef %add.ptr11, i16 noundef %7, i32 noundef %mul12) #18
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  %call = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %vc_cols, align 4
  %9 = load i32, i32* %x, align 8
  %sub16 = sub i32 %8, %9
  call fastcc void @do_update_region(%struct.vc_data* noundef %vc, i64 noundef %0, i32 noundef %sub16) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_uniscr_delete(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool.not = icmp eq %struct.uni_screen* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %y, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %x2 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %3 = load i32, i32* %x2, align 8
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %4 = load i32, i32* %vc_cols, align 4
  %idxprom3 = zext i32 %3 to i64
  %arrayidx4 = getelementptr i32, i32* %2, i64 %idxprom3
  %5 = bitcast i32* %arrayidx4 to i8*
  %add = add i32 %3, %nr
  %idxprom5 = zext i32 %add to i64
  %arrayidx6 = getelementptr i32, i32* %2, i64 %idxprom5
  %6 = bitcast i32* %arrayidx6 to i8*
  %sub7 = sub i32 %4, %add
  %conv = zext i32 %sub7 to i64
  %mul = shl nuw nsw i64 %conv, 2
  %call = call i8* @memcpy(i8* noundef %5, i8* noundef %6, i64 noundef %mul) #17
  %sub8 = sub i32 %4, %nr
  %idxprom9 = zext i32 %sub8 to i64
  %arrayidx10 = getelementptr i32, i32* %2, i64 %idxprom9
  %conv11 = zext i32 %nr to i64
  %call12 = call i8* @memset32(i32* noundef %arrayidx10, i32 noundef 32, i64 noundef %conv11) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vc_t416_color(%struct.vc_data* noundef %vc, i32 noundef %i, void (%struct.vc_data*, %struct.rgb*)* nocapture noundef readonly %set_color) unnamed_addr #0 {
entry:
  %c = alloca %struct.rgb, align 4
  %0 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %0, i8 0, i64 3, i1 false), !annotation !12
  %inc = add i32 %i, 1
  %vc_npar = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 31
  %1 = load i32, i32* %vc_npar, align 8
  %cmp = icmp ugt i32 %inc, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  switch i32 %2, label %cleanup [
    i32 5, label %land.lhs.true
    i32 2, label %land.lhs.true13
  ]

land.lhs.true:                                    ; preds = %if.end
  %add = add i32 %i, 2
  %cmp3.not = icmp ugt i32 %add, %1
  br i1 %cmp3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom7
  %3 = load i32, i32* %arrayidx8, align 4
  call fastcc void @rgb_from_256(i32 noundef %3, %struct.rgb* noundef nonnull %c) #18
  br label %if.end35

land.lhs.true13:                                  ; preds = %if.end
  %add14 = add i32 %i, 4
  %cmp16.not = icmp ugt i32 %add14, %1
  br i1 %cmp16.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %land.lhs.true13
  %add19 = add i32 %i, 2
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom20
  %4 = load i32, i32* %arrayidx21, align 4
  %conv = trunc i32 %4 to i8
  store i8 %conv, i8* %0, align 4
  %add23 = add i32 %i, 3
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom24
  %5 = load i32, i32* %arrayidx25, align 4
  %conv26 = trunc i32 %5 to i8
  %g = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 1
  store i8 %conv26, i8* %g, align 1
  %idxprom29 = sext i32 %add14 to i64
  %arrayidx30 = getelementptr %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 32, i64 %idxprom29
  %6 = load i32, i32* %arrayidx30, align 4
  %conv31 = trunc i32 %6 to i8
  %b = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 2
  store i8 %conv31, i8* %b, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then17, %if.then4
  %i.addr.0 = phi i32 [ %add, %if.then4 ], [ %add14, %if.then17 ]
  call void %set_color(%struct.vc_data* noundef %vc, %struct.rgb* noundef nonnull %c) #17, !callees !60
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %land.lhs.true13, %entry, %if.end35
  %retval.0 = phi i32 [ %i.addr.0, %if.end35 ], [ %inc, %entry ], [ %inc, %land.lhs.true13 ], [ %inc, %land.lhs.true ], [ %inc, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @rgb_foreground(%struct.vc_data* nocapture noundef %vc, %struct.rgb* nocapture noundef readonly %c) #13 {
entry:
  %r = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 0
  %0 = load i8, i8* %r, align 1
  %g = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 1
  %1 = load i8, i8* %g, align 1
  %cmp = icmp ugt i8 %0, %1
  %cond = select i1 %cmp, i8 %0, i8 %1
  %b = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 2
  %2 = load i8, i8* %b, align 1
  %cmp9 = icmp ugt i8 %cond, %2
  %cond16 = select i1 %cmp9, i8 %cond, i8 %2
  %3 = lshr i8 %cond16, 1
  %cmp21 = icmp ult i8 %3, %0
  %spec.select = select i1 %cmp21, i8 4, i8 0
  %cmp29 = icmp ult i8 %3, %1
  %4 = or i8 %spec.select, 2
  %hue.1 = select i1 %cmp29, i8 %4, i8 %spec.select
  %cmp40 = icmp ult i8 %3, %2
  %5 = zext i1 %cmp40 to i8
  %hue.2 = or i8 %hue.1, %5
  %cmp48 = icmp eq i8 %hue.2, 7
  %cmp51 = icmp ult i8 %cond16, 86
  %or.cond = select i1 %cmp48, i1 %cmp51, i1 false
  br i1 %or.cond, label %if.then53, label %if.else

if.then53:                                        ; preds = %entry
  %intensity = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 5
  store i32 2, i32* %intensity, align 4
  br label %if.end64

if.else:                                          ; preds = %entry
  %cmp55 = icmp ugt i8 %cond16, -86
  %intensity59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 5
  br i1 %cmp55, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.else
  store i32 2, i32* %intensity59, align 4
  br label %if.end64

if.else60:                                        ; preds = %if.else
  store i32 1, i32* %intensity59, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.else60, %if.then53
  %hue.3 = phi i8 [ 0, %if.then53 ], [ %hue.2, %if.then57 ], [ %hue.2, %if.else60 ]
  %color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 2
  %6 = load i8, i8* %color, align 8
  %7 = and i8 %6, -16
  %or6893 = or i8 %7, %hue.3
  store i8 %or6893, i8* %color, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @rgb_background(%struct.vc_data* nocapture noundef %vc, %struct.rgb* nocapture noundef readonly %c) #13 {
entry:
  %color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 2
  %0 = load i8, i8* %color, align 8
  %1 = and i8 %0, 15
  %r = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 0
  %2 = load i8, i8* %r, align 1
  %3 = lshr i8 %2, 1
  %4 = and i8 %3, 64
  %or17 = or i8 %4, %1
  %g = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 1
  %5 = load i8, i8* %g, align 1
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 32
  %or618 = or i8 %or17, %7
  %b = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 2
  %8 = load i8, i8* %b, align 1
  %9 = lshr i8 %8, 3
  %10 = and i8 %9, 16
  %or1019 = or i8 %or618, %10
  store i8 %or1019, i8* %color, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rgb_from_256(i32 noundef %i, %struct.rgb* nocapture noundef writeonly %c) unnamed_addr #11 {
entry:
  %cmp = icmp slt i32 %i, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = and i32 %i, 1
  %tobool.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool.not, i8 0, i8 -86
  %r = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 0
  store i8 %conv, i8* %r, align 1
  %and1 = and i32 %i, 2
  %tobool2.not = icmp eq i32 %and1, 0
  %conv4 = select i1 %tobool2.not, i8 0, i8 -86
  %g = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 1
  store i8 %conv4, i8* %g, align 1
  %and5 = and i32 %i, 4
  %tobool6.not = icmp eq i32 %and5, 0
  %conv8 = select i1 %tobool6.not, i8 0, i8 -86
  %b = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 2
  store i8 %conv8, i8* %b, align 1
  br label %if.end54

if.else:                                          ; preds = %entry
  %cmp9 = icmp ult i32 %i, 16
  br i1 %cmp9, label %if.then11, label %if.else27

if.then11:                                        ; preds = %if.else
  %and12 = and i32 %i, 1
  %tobool13.not = icmp eq i32 %and12, 0
  %conv15 = select i1 %tobool13.not, i8 85, i8 -1
  %r16 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 0
  store i8 %conv15, i8* %r16, align 1
  %and17 = and i32 %i, 2
  %tobool18.not = icmp eq i32 %and17, 0
  %conv20 = select i1 %tobool18.not, i8 85, i8 -1
  %g21 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 1
  store i8 %conv20, i8* %g21, align 1
  %and22 = and i32 %i, 4
  %tobool23.not = icmp eq i32 %and22, 0
  %conv25 = select i1 %tobool23.not, i8 85, i8 -1
  %b26 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 2
  store i8 %conv25, i8* %b26, align 1
  br label %if.end54

if.else27:                                        ; preds = %if.else
  %cmp28 = icmp ult i32 %i, 232
  %0 = trunc i32 %i to i8
  br i1 %cmp28, label %if.then30, label %if.else46

if.then30:                                        ; preds = %if.else27
  %div78.lhs.trunc = add i8 %0, -16
  %div7879 = udiv i8 %div78.lhs.trunc, 36
  %div78.zext = zext i8 %div7879 to i16
  %mul = mul nuw nsw i16 %div78.zext, 85
  %div318081 = lshr i16 %mul, 1
  %conv32 = trunc i16 %div318081 to i8
  %r33 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 0
  store i8 %conv32, i8* %r33, align 1
  %div358283 = udiv i8 %div78.lhs.trunc, 6
  %rem8485 = urem i8 %div358283, 6
  %rem84.zext = zext i8 %rem8485 to i16
  %mul36 = mul nuw nsw i16 %rem84.zext, 85
  %div378687 = lshr i16 %mul36, 1
  %conv38 = trunc i16 %div378687 to i8
  %g39 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 1
  store i8 %conv38, i8* %g39, align 1
  %1 = mul i8 %div358283, 6
  %rem418889.decomposed = sub i8 %div78.lhs.trunc, %1
  %rem4188.zext = zext i8 %rem418889.decomposed to i16
  %mul42 = mul nuw nsw i16 %rem4188.zext, 85
  %div439091 = lshr i16 %mul42, 1
  %conv44 = trunc i16 %div439091 to i8
  %b45 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 2
  store i8 %conv44, i8* %b45, align 1
  br label %if.end54

if.else46:                                        ; preds = %if.else27
  %2 = mul i8 %0, 10
  %conv49 = add i8 %2, -8
  %b50 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 2
  store i8 %conv49, i8* %b50, align 1
  %g51 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 1
  store i8 %conv49, i8* %g51, align 1
  %r52 = getelementptr inbounds %struct.rgb, %struct.rgb* %c, i64 0, i32 0
  store i8 %conv49, i8* %r52, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then11, %if.else46, %if.then30, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @insert_char(%struct.vc_data* noundef %vc, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 26
  %0 = load i64, i64* %vc_pos, align 8
  %1 = inttoptr i64 %0 to i16*
  call fastcc void @vc_uniscr_insert(%struct.vc_data* noundef %vc, i32 noundef %nr) #18
  %idx.ext = zext i32 %nr to i64
  %add.ptr = getelementptr i16, i16* %1, i64 %idx.ext
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %2 = load i32, i32* %vc_cols, align 4
  %x = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %3 = load i32, i32* %x, align 8
  %4 = add i32 %3, %nr
  %sub1 = sub i32 %2, %4
  %mul = shl i32 %sub1, 1
  call fastcc void @scr_memmovew(i16* noundef %add.ptr, i16* noundef %1, i32 noundef %mul) #18
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 29
  %5 = load i16, i16* %vc_video_erase_char, align 8
  %mul2 = shl i32 %nr, 1
  call fastcc void @scr_memsetw(i16* noundef %1, i16 noundef %5, i32 noundef %mul2) #18
  %vc_need_wrap = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_need_wrap, align 8
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, i16* %vc_need_wrap, align 8
  %call = call fastcc i1 @con_should_update(%struct.vc_data* noundef %vc) #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %vc_cols, align 4
  %7 = load i32, i32* %x, align 8
  %sub6 = sub i32 %6, %7
  call fastcc void @do_update_region(%struct.vc_data* noundef %vc, i64 noundef %0, i32 noundef %sub6) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vc_uniscr_insert(%struct.vc_data* nocapture noundef readonly %vc, i32 noundef %nr) unnamed_addr #0 {
entry:
  %vc_uni_screen = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 50
  %0 = load %struct.uni_screen*, %struct.uni_screen** %vc_uni_screen, align 8
  %tobool.not = icmp eq %struct.uni_screen* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %y = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 1
  %1 = load i32, i32* %y, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr %struct.uni_screen, %struct.uni_screen* %0, i64 0, i32 0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %x2 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 1, i32 0
  %3 = load i32, i32* %x2, align 8
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 4
  %4 = load i32, i32* %vc_cols, align 4
  %add = add i32 %3, %nr
  %idxprom3 = zext i32 %add to i64
  %arrayidx4 = getelementptr i32, i32* %2, i64 %idxprom3
  %5 = bitcast i32* %arrayidx4 to i8*
  %idxprom5 = zext i32 %3 to i64
  %arrayidx6 = getelementptr i32, i32* %2, i64 %idxprom5
  %6 = bitcast i32* %arrayidx6 to i8*
  %sub7 = sub i32 %4, %add
  %conv = zext i32 %sub7 to i64
  %mul = shl nuw nsw i64 %conv, 2
  %call = call i8* @memmove(i8* noundef %5, i8* noundef %6, i64 noundef %mul) #17
  %conv10 = zext i32 %nr to i64
  %call11 = call i8* @memset32(i32* noundef %arrayidx6, i32 noundef 32, i64 noundef %conv10) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @is_double_width(i32 noundef %ucs) unnamed_addr #0 {
entry:
  %ucs.addr = alloca i32, align 4
  store i32 %ucs, i32* %ucs.addr, align 4
  %0 = add i32 %ucs, -262142
  %1 = icmp ult i32 %0, -257790
  br i1 %1, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %ucs.addr to i8*
  %call = call i8* @bsearch(i8* noundef nonnull %2, i8* noundef bitcast ([12 x %struct.interval]* @is_double_width.double_width to i8*), i64 noundef 12, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @ucs_cmp) #17
  %cmp2 = icmp ne i8* %call, null
  %conv = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conv_uni_to_pc(%struct.vc_data* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @vc_invert_attr(%struct.vc_data* nocapture noundef readonly %vc) unnamed_addr #4 {
entry:
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 37
  %bf.load = load i16, i16* %vc_can_do_color, align 8
  %0 = and i16 %bf.load, 2048
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vc_attr = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 18
  %1 = load i8, i8* %vc_attr, align 1
  %2 = xor i8 %1, 8
  br label %return

if.end:                                           ; preds = %entry
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 27
  %3 = load i16, i16* %vc_hi_font_mask, align 8
  %cmp = icmp eq i16 %3, 256
  %vc_attr5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 18
  %4 = load i8, i8* %vc_attr5, align 1
  br i1 %cmp, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %and = and i8 %4, 17
  %and9 = lshr i8 %4, 4
  %5 = and i8 %and9, 14
  %or = or i8 %5, %and
  %and12 = shl i8 %4, 4
  %shl = and i8 %and12, -32
  %or13 = or i8 %or, %shl
  br label %return

if.end15:                                         ; preds = %if.end
  %and18 = and i8 %4, -120
  %and21 = lshr i8 %4, 4
  %6 = and i8 %and21, 7
  %or23 = or i8 %6, %and18
  %and26 = shl i8 %4, 4
  %shl27 = and i8 %and26, 112
  %or28 = or i8 %or23, %shl27
  br label %return

return:                                           ; preds = %if.end15, %if.then4, %if.then
  %retval.0 = phi i8 [ %or13, %if.then4 ], [ %or28, %if.end15 ], [ %2, %if.then ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @bsearch(i8* noundef, i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @ucs_cmp(i8* nocapture noundef readonly %key, i8* nocapture noundef readonly %elt) #4 {
entry:
  %0 = bitcast i8* %key to i32*
  %1 = load i32, i32* %0, align 4
  %e.sroa.5.0..sroa_idx7 = getelementptr inbounds i8, i8* %elt, i64 4
  %2 = bitcast i8* %e.sroa.5.0..sroa_idx7 to i32*
  %e.sroa.5.0.copyload = load i32, i32* %2, align 4
  %cmp = icmp ugt i32 %1, %e.sroa.5.0.copyload
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %e.sroa.0.0..sroa_idx = bitcast i8* %elt to i32*
  %e.sroa.0.0.copyload = load i32, i32* %e.sroa.0.0..sroa_idx, align 4
  %cmp1 = icmp ult i32 %1, %e.sroa.0.0.copyload
  %. = sext i1 %cmp1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_kbd_con_stop(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_kbd_con_start(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @con_driver_unregister_callback(%struct.work_struct* nocapture noundef readnone %ignored) #0 {
entry:
  call void @console_lock() #17
  br label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cleanup ]
  %arrayidx = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv
  %flag = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 6
  %0 = load i32, i32* %flag, align 4
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  call void @console_unlock() #17
  call fastcc void @vtconsole_deinit_device(%struct.con_driver* noundef %arrayidx) #18
  %1 = load %struct.class*, %struct.class** @vtconsole_class, align 8
  %node = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 3
  %2 = load i32, i32* %node, align 8
  call void @device_destroy(%struct.class* noundef %1, i32 noundef %2) #17
  call void @console_lock() #17
  %con = getelementptr inbounds %struct.con_driver, %struct.con_driver* %arrayidx, i64 0, i32 0
  %3 = load %struct.consw*, %struct.consw** %con, align 8
  %tobool1.not = icmp eq %struct.consw* %3, null
  br i1 %tobool1.not, label %if.end21, label %if.then9, !prof !54

if.then9:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 4240; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !61
  store %struct.consw* null, %struct.consw** %con, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then9
  %desc = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 1
  store i8* null, i8** %desc, align 8
  %dev = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 2
  store %struct.device* null, %struct.device** %dev, align 8
  store i32 0, i32* %node, align 8
  %4 = load i32, i32* %flag, align 4
  %cmp25.not = icmp eq i32 %4, 8
  br i1 %cmp25.not, label %if.end40, label %if.then39, !prof !54

if.then39:                                        ; preds = %if.end21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/vt/vt.c\22; .popsection; .long 14472b - 14470b; .short 4245; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !62
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end21
  store i32 0, i32* %flag, align 4
  %first = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 4
  store i32 0, i32* %first, align 4
  %last = getelementptr [16 x %struct.con_driver], [16 x %struct.con_driver]* @registered_con_driver, i64 0, i64 %indvars.iv, i32 5
  store i32 0, i32* %last, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup
  call void @console_unlock() #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @vtconsole_deinit_device(%struct.con_driver* nocapture noundef %con) unnamed_addr #13 {
entry:
  %flag = getelementptr inbounds %struct.con_driver, %struct.con_driver* %con, i64 0, i32 6
  %0 = load i32, i32* %flag, align 4
  %and = and i32 %0, -5
  store i32 %and, i32* %flag, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(%struct.class* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #10 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @vtconsole_init_device(%struct.con_driver* nocapture noundef %con) unnamed_addr #13 {
entry:
  %flag = getelementptr inbounds %struct.con_driver, %struct.con_driver* %con, i64 0, i32 6
  %0 = load i32, i32* %flag, align 4
  %or = or i32 %0, 4
  store i32 %or, i32* %flag, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @show_bind(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #18
  call void @console_lock() #17
  %con1 = bitcast i8* %call to %struct.consw**
  %0 = load %struct.consw*, %struct.consw** %con1, align 8
  %call2 = call i32 @con_is_bound(%struct.consw* noundef %0) #18
  call void @console_unlock() #17
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call2) #17
  %conv = sext i32 %call3 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @store_bind(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef returned %count) #0 {
entry:
  %call1 = call i64 @simple_strtoul(i8* noundef %buf, i8** noundef null, i32 noundef 0) #17
  call void @console_lock() #17
  call void @console_unlock() #17
  ret i64 %count
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_get_drvdata(%struct.device* nocapture noundef readonly %dev) unnamed_addr #4 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  %0 = load i8*, i8** %driver_data, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @show_name(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #18
  %flag = getelementptr inbounds i8, i8* %call, i64 36
  %0 = bitcast i8* %flag to i32*
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)
  %desc = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %desc to i8**
  %3 = load i8*, i8** %2, align 8
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef %cond, i8* noundef %3) #17
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.class* @__class_create(%struct.module* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blank_screen_t(%struct.timer_list* nocapture noundef readnone %unused) #0 {
entry:
  store i1 true, i1* @blank_timer_expired, align 4
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull @console_work) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef 48) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.then16, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #18
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef 48) #17
  %tobool8.not = icmp eq i64 %call6, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !54

if.then16:                                        ; preds = %entry, %if.end
  %res.03 = phi i64 [ %call6, %if.end ], [ 48, %entry ]
  %sub = sub i64 48, %res.03
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.03) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %res.04 = phi i64 [ %res.03, %if.then16 ], [ 0, %if.end ]
  ret i64 %res.04
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #18
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #17
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memdup_user(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strncpy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #16

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #15 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }
attributes #22 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #23 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 4001}
!8 = !{i64 2153592949}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153594330}
!11 = !{i64 2153599512}
!12 = !{!"auto-init"}
!13 = !{i64 2153601287}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = !{i64 2153603164}
!22 = !{i64 2153610746}
!23 = !{i64 2153728219}
!24 = !{i64 2153607110}
!25 = !{i64 2153605335}
!26 = !{i64 2153752614}
!27 = !{i8 0, i8 2}
!28 = !{i64 2153614505}
!29 = !{i64 2153617550}
!30 = !{i64 2153628115}
!31 = !{i64 1553997}
!32 = !{i64 2153666115, i64 2153666152, i64 2153666169, i64 2153666204, i64 2153666226, i64 2153666252, i64 2153666275, i64 2153666293, i64 2153666456, i64 2153666497, i64 2153666519, i64 2153666565}
!33 = !{i64 2153670125, i64 2153670163, i64 2153670180, i64 2153670214, i64 2153670236, i64 2153670262, i64 2153670280, i64 2153670442, i64 2153670483, i64 2153670505, i64 2153670551}
!34 = !{i64 2153674028, i64 2153674066, i64 2153674083, i64 2153674117, i64 2153674139, i64 2153674165, i64 2153674183, i64 2153674345, i64 2153674386, i64 2153674408, i64 2153674454}
!35 = !{i64 2153677956, i64 2153677994, i64 2153678011, i64 2153678045, i64 2153678067, i64 2153678093, i64 2153678111, i64 2153678273, i64 2153678314, i64 2153678336, i64 2153678382}
!36 = !{i64 2153681958, i64 2153681995, i64 2153682012, i64 2153682047, i64 2153682069, i64 2153682095, i64 2153682118, i64 2153682136, i64 2153682299, i64 2153682340, i64 2153682362, i64 2153682408}
!37 = !{i64 2153687115, i64 2153687152, i64 2153687169, i64 2153687204, i64 2153687226, i64 2153687252, i64 2153687275, i64 2153687293, i64 2153687452, i64 2153687493, i64 2153687515, i64 2153687561}
!38 = !{i64 4096726, i64 4096809, i64 4097033, i64 4097253, i64 4097276}
!39 = !{i64 4101428, i64 4101452}
!40 = !{i64 2151654212}
!41 = !{i64 2153742242, i64 2153742279, i64 2153742296, i64 2153742331, i64 2153742353, i64 2153742379, i64 2153742402, i64 2153742420, i64 2153742583, i64 2153742624, i64 2153742646, i64 2153742692}
!42 = !{i64 2153746371}
!43 = !{i64 2153726353}
!44 = !{i64 2153730285}
!45 = !{i64 2153715321}
!46 = !{i64 2153748303}
!47 = !{i64 2153750764}
!48 = !{i64 2149068369}
!49 = !{i64 2148026748, i64 2148026780, i64 2148026825, i64 2148026873, i64 2148026899}
!50 = !{i64 2147962049, i64 2147962560, i64 2147962590, i64 2147962616, i64 2147962648, i64 2147962677}
!51 = !{i64 2153608885}
!52 = !{i64 2149566225}
!53 = !{i64 2149570282}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2147988831, i64 2147988864, i64 2147988917, i64 2147988976, i64 2147989010, i64 2147989065, i64 2147989094, i64 2147989114}
!56 = !{i64 2149593048}
!57 = !{i64 2149396130}
!58 = !{i64 2153690446}
!59 = !{i64 2147982293, i64 2147982326, i64 2147982378, i64 2147982437, i64 2147982471, i64 2147982526, i64 2147982555, i64 2147982575}
!60 = !{void (%struct.vc_data*, %struct.rgb*)* @rgb_background, void (%struct.vc_data*, %struct.rgb*)* @rgb_foreground}
!61 = !{i64 2153732909}
!62 = !{i64 2153734637}
